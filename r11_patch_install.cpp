#include <windows.h>
#include <winbase.h>
#include <string>
#include <conio.h>
/*
BOOL WINAPI ReplaceFileA(
    LPCTSTR lpReplacedFileName,
    LPCTSTR lpReplacementFileName,
    LPCTSTR lpBackupFileName,
    DWORD dwReplaceFlags,
    LPVOID lpExclude,
    LPVOID lpReserved
);
#define REPLACEFILE_WRITE_THROUGH 0x1
*/

/* Patcher3.cpp
 * Initial code by Pengvado
 * Reworked by Roger Pepitone
 */

// http://thedailyreviewer.com/windowsxp/view/error-code-when-there-is-no-error-102269563
VOID ShowLastError(void) {
  LPVOID lpMsgBuf;
  DWORD error_code;
  int status;
  char sa1[1024];
  error_code = GetLastError ();
  if (error_code != 0) {
    status = FormatMessageA (FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM, NULL, error_code, 0, (LPTSTR) &lpMsgBuf, 0, NULL);
    if (!status) {
      wsprintf(sa1, "%s: Cannot display message for error %ld, status %ld",
	       "Program", error_code, GetLastError());
      //MessageBox(NULL, sa1,"", MB_OK | MB_ICONERROR);
      printf ("Status 0: %s\n", sa1);
    } else {
    //MessageBox(NULL, lpMsgBuf,"", MB_OK | MB_ICONERROR);
      printf ("Status %d: %s\n", status, (char*) lpMsgBuf);
      LocalFree((HLOCAL)lpMsgBuf);
    }
    SetLastError(0);
  }
  return; 
} 


struct sta {
    int pos;
    int len;
};

struct stb {
    char name[32];
    int stuff0;
    int stuff1;
    int stuff2;
    int len;
};

struct afs_file {
  char   sz_hdr[4];    // "AFS\0"
  DWORD  dw_entries;   // number of files
  sta    stas[1];      // note: variable sized
};


typedef struct tag_patch_file_record {
  char    sz_afs_file[16];
  char    sz_data_file[32];
  DWORD   dw_file_offset;
  DWORD   dw_file_size;
} patch_file_record;

typedef struct tag_patch_file {
  char              sz_patch_header[8];
  DWORD             dw_n_files;
  patch_file_record pfr_records[1]; // variable sized
} patch_file;

//typedef std::map<std::string, std::map<std::string, int> > patch_map;

struct Patch {
  HANDLE mh_file;
  HANDLE mh_file_mapping;
  patch_file *mppf_data;
  unsigned char *mpc_data;
  //patch_map mpm_files;
  DWORD mdw_size;
  BOOL mb_good;

  Patch (const char *);
  ~Patch();
  
  LONG has_file (const char *afs_file, const char *data_file);

private:
  Patch (const Patch &) {}
  void operator= (const Patch&) { }
};

LONG Patch::has_file (const char *afs_file, const char *data_file) {
  if (!mb_good) return -1;
  for (DWORD i = 0; i < mppf_data->dw_n_files; ++ i)
    if (!strcmpi (mppf_data->pfr_records[i].sz_afs_file, afs_file) &&
	!strcmpi (mppf_data->pfr_records[i].sz_data_file, data_file))
      return i;
  return -1;
}
Patch::~Patch() {
  if (mppf_data != NULL)
    UnmapViewOfFile (mppf_data);
  if (mh_file_mapping != INVALID_HANDLE_VALUE)
    CloseHandle (mh_file_mapping);
  if (mh_file != INVALID_HANDLE_VALUE)
    CloseHandle (mh_file);
}

Patch::Patch (const char *filename) :
  mh_file (INVALID_HANDLE_VALUE),
  mh_file_mapping (INVALID_HANDLE_VALUE),
  mppf_data (NULL),
  mb_good (FALSE)
{
  
  mh_file = CreateFile (filename, 
			GENERIC_READ,        // dwDesiredAccess
			0,                   // dwShareMode,
			NULL,                // LPSECURITY_ATTRIBUTES
			OPEN_EXISTING,       // dwCreationDisposition
			0,                   // dwFlagsAndAttributes
			NULL);               // hTemplateFile
  if (mh_file == INVALID_HANDLE_VALUE) return;
  
  mh_file_mapping = CreateFileMapping (mh_file,
				       NULL,          // LPSECURITY_ATTRIBUTES,
				       PAGE_READONLY, // flProtect
				       0,             // dwMaximumSizeHi
				       0,             // dwMaximumSizeLow
				       NULL);         // lpName
  if (mh_file_mapping == INVALID_HANDLE_VALUE) return;
  
  void *data = MapViewOfFile (mh_file_mapping,  // hFileMappingObject
			      FILE_MAP_READ,    // dwDesiredAccess
			      0,                // dwFileOffsetHigh
			      0,                // dwFileOffsetLow
			      0);               // dwNumberOfBytesToMap
  if (data == NULL) return;
  MEMORY_BASIC_INFORMATION mbi;
  VirtualQuery (data, &mbi, sizeof(mbi));
  mdw_size = mbi.RegionSize;
  
  if (mdw_size < sizeof (patch_file)) return;
    
  mppf_data = (patch_file *) data;
  mpc_data = (unsigned char *) data;
  
  if (memcmp (mppf_data->sz_patch_header, "R11PTC1\0",
	      sizeof (mppf_data->sz_patch_header)) != 0)
    return;
  if (sizeof (patch_file)
      + (mppf_data->dw_n_files - 1) * sizeof (patch_file_record) > mdw_size)
    return;
  for (DWORD i = 0; i < mppf_data->dw_n_files; ++ i) {
    patch_file_record *ppfr = &mppf_data->pfr_records[i];
    
    if (ppfr->dw_file_size < 0 ||
	ppfr->dw_file_size + ppfr->dw_file_offset > mdw_size)
      return;

    /*
    printf ("Patch Record %ld: AFS=\"%s\", data='%s', size=%ld, offset=%ld.\n",
	    i, ppfr->sz_afs_file, ppfr->sz_data_file, 
	    ppfr->dw_file_size, ppfr->dw_file_offset);
    */
  }
  
  mb_good = TRUE;
}

#define ALIGN(x)   ((x + 0x7ff) & ~0x7ff)
char ZeroBuf[0x800];

BOOL file_exists (const char *filename) {
  WIN32_FIND_DATAA find_data;
  HANDLE hFind = FindFirstFileA (filename, &find_data);
  UINT filename_len = strlen (filename);
  //std::cout << "Looking for " << filename << ".\n";
  //printf ("Looking for '%s'\n", filename);
  if (hFind) {
    do {
      UINT found_len = strlen (find_data.cFileName);
      if (!strcmp (find_data.cFileName, filename + filename_len - found_len) &&
	  filename[filename_len - found_len - 1] == '\\') {
	//printf ("  Matched '%s'.\n", find_data.cFileName);
	CloseHandle (hFind) ;
	return TRUE;
      } else {
	//printf ("  Not matched '%s'.\n", find_data.cFileName);
	/*
	printf ("  Not matched '%s' : %d %d.\n", find_data.cFileName, 
		!strcmp (find_data.cFileName, filename + filename_len - found_len),
		filename[filename_len - found_len - 1] == '\\');
	*/
      }
    } while (FindNextFileA (hFind, &find_data));
    CloseHandle (hFind);
  }
  //printf ("Not found.\n");
  return FALSE;
}
 
#define PRECACHE_BLOCK    (20*1024*1024)

BOOL Patch_AFS_File (Patch &thepatch, const char *afs_file_name) {
  BOOL rv = FALSE;
  char base_afs_file[1000];
  char backup_afs_file[1000];
  HANDLE hAFSFile = INVALID_HANDLE_VALUE;
  HANDLE hAFSMapping = INVALID_HANDLE_VALUE;
  HANDLE hOutFile = INVALID_HANDLE_VALUE;
  void *pv_afs_data = NULL;
  afs_file *new_headers = NULL;
  stb *new_stbs = NULL;
  BOOL has_orig = FALSE;
  BOOL has_backup = FALSE;
  MEMORY_BASIC_INFORMATION mbi;
  int afs_size = 0;
  int toc_size = 0;
  sta *statoc = NULL;
  sta *stas = NULL;
  DWORD n = 0;
  int entries = -1;
  int off = 0;
  int afs_precache_ptr;


  //if (strcmp (afs_file_name, "etc.afs") != 0) return TRUE;

  memset (ZeroBuf, 0x800, '\0');
  strcpy (base_afs_file, "FILE\\");
  strcat (base_afs_file, afs_file_name);
  strcpy (backup_afs_file, "FILE\\orig.");
  strcat (backup_afs_file, afs_file_name);

  has_orig   = file_exists (base_afs_file);
  has_backup = file_exists (backup_afs_file);
  if (has_orig && has_backup) {
    printf ("Have both, removing original\n");
    DeleteFile (base_afs_file);
    //ShowLastError();
  } else if (has_orig && !has_backup) {
    printf ("Have original only, renaming\n");
    if (!MoveFile (base_afs_file, backup_afs_file)) {
      printf ("Error renaming %s to %s\n", base_afs_file, backup_afs_file);
      ShowLastError();
      goto at_end;
    }
    //ShowLastError();
  } else if (!has_orig && has_backup) {
    printf ("Have backup only, doing nothing\n");
    //ShowLastError();
  } else { // !has_orig && !has_backup)
    printf ("Missing afs file '%s'.\n", afs_file_name);
    goto at_end;
  }
  hAFSFile = CreateFile (backup_afs_file, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, NULL);
  if (hAFSFile == INVALID_HANDLE_VALUE) {
    printf ("Unable to open %s\n", backup_afs_file);
    ShowLastError();
    goto at_end;
  }
  //ShowLastError();
  hAFSMapping = CreateFileMapping (hAFSFile, NULL, PAGE_READONLY, 0, 0, NULL);
  if (hAFSMapping == INVALID_HANDLE_VALUE) {
    printf ("Unable to CreateFileMapping for %s\n", backup_afs_file);
    ShowLastError();
    goto at_end;
  }
  //ShowLastError();

  pv_afs_data = MapViewOfFile (hAFSMapping, FILE_MAP_READ, 0,0,0);
  if (pv_afs_data == NULL) {
    printf ("Unable to MapViewOfFile for %s\n", backup_afs_file);
    ShowLastError();
    goto at_end;
  }
  //ShowLastError();

  VirtualQuery (pv_afs_data, &mbi, sizeof(mbi));
  //ShowLastError();
  afs_size = mbi.RegionSize;
  
  if ((SIZE_T) afs_size < sizeof (afs_file)) {
    printf ("Size of %s = %ld, < sizeof (afs_file) = %d\n", 
	    afs_file_name, (SIZE_T) afs_size, sizeof(afs_file));
    //ShowLastError();
    goto at_end;
  }
  
  afs_file *p_afs_data = (afs_file*) pv_afs_data;
  unsigned char *map = (unsigned char *) pv_afs_data;
  /*
  printf ("Raw header:\n");
  for (int i = 0; i < 64; ++ i) {
    printf ("%02x ", (int) (unsigned char) map[i]);
  }
  printf (".\n");
  */
  if (memcmp (p_afs_data->sz_hdr, "AFS\0", 4) != 0) {
    printf ("%s does not start with \"AFS\\0\"\n", afs_file_name);
    goto at_end;
  }
  entries = p_afs_data->dw_entries;
  /*
  printf ("Set entries to %d\n", entries);
  printf ("Set entries to %ld\n", p_afs_data->dw_entries);
  printf ("Now entries is %d\n", entries);
  printf ("afs_data->sz_hdr == %s.\n", p_afs_data->sz_hdr);
  printf ("afs_data->dw_entries == %ld\n", p_afs_data->dw_entries);
  for (int i = 0; i < 10; ++ i) {
    printf ("afs_data->stas[%d].pos == %d\n", i, p_afs_data->stas[i].pos);
    printf ("afs_data->stas[%d].len == %d\n", i, p_afs_data->stas[i].len);
  }
  */

  stas = p_afs_data->stas;
  for (int i = 0; i < entries; ++ i) {
    //printf ("Checking stas[%d].pos + stas[%d].len <= afs_size { %d + %d ?<= %d }\n", i, i, stas[i].pos, stas[i].len, afs_size);
    //assert (stas[i].pos + stas[i].len <= afs_size);
    //printf ("Checking stas[%d].len > 0  { %d ?> 0 )\n", i, stas[i].len);
    //assert (stas[i].len > 0);
    if (stas[i].pos + stas[i].len > afs_size ||	stas[i].len <= 0) {
      printf ("Out of bounds data for AFS record %d\n", i);
      goto at_end;
    }
  }
  for (int i = 1; i < entries; ++ i) {
    //printf ("Checking %x = stas[%d].pos == (stas[%d].pos + stas[%d].len + 0x7ff) & ~0x7ff == (%x + %x + 0x7ff) & ~0x7ff == %x\n", stas[i].pos, i, i-1, i-1, stas[i-1].pos, stas[i-1].len, (stas[i-1].pos + stas[i-1].len + 0x7ff) & ~0x7ff);
    //assert (stas[i].pos == ((stas[i-1].pos + stas[i-1].len + 0x7ff) & ~0x7ff));
    if (stas[i].pos != (stas[i-1].pos + stas[i-1].len + 0x7ff) & ~0x7ff) {
      printf ("File %d doesn't start right after end of file %d\n", i, i-1);
      goto at_end;
    }
  }

  statoc = stas + entries;
  if (*(uint64_t*) statoc == 0) {
    statoc = (sta *) (map + stas[0].pos - 8);
    printf ("Using alternate TOC location\n");
  }
  //assert (sizeof (stb) == 48);
  if (sizeof (stb) != 48) {
    printf ("sizeof (stb) != 48\n");
    goto at_end;
  }
  /*
  printf ("STATOC: Pos = %x, len = %d, entries = %d, exp. len = %d.\n",
	  statoc->pos, statoc->len, entries, 48 * entries);
  */
  if (statoc->len != entries * 48) {
    printf ("Bad size for statoc\n");
    goto at_end;
  }
  //assert (statoc->len == entries * 48);
  if (statoc->pos + statoc->len > afs_size) {
    printf ("STATOC goes out of bounds\n");
    goto at_end;
  }
  //assert (statoc->pos + statoc->len <= afs_size);
  
  //struct stb *stbs = (stb *) (map + statoc->pos);
  new_stbs = (stb *) malloc (statoc->len);
  memcpy (new_stbs, map + statoc->pos, statoc->len);

  // Don't use this with mac.afs

  off = ALIGN (entries * 8 + 16);
  
  new_headers = (afs_file*) calloc (1, off);
  strcpy (new_headers->sz_hdr, "AFS\0");
  new_headers->dw_entries = entries;

  
  hOutFile = CreateFile (base_afs_file, GENERIC_READ | GENERIC_WRITE, 0, NULL, CREATE_NEW, 0, NULL);
  if (hOutFile == INVALID_HANDLE_VALUE) {
    printf ("Error opening %s for output\n", base_afs_file);
    ShowLastError();
    goto at_end;
  }
  if (SetFilePointer (hOutFile, off, NULL, FILE_BEGIN) != (DWORD) off) {
    printf ("Error with first seek for output file %s\n", base_afs_file);
    ShowLastError();
    goto at_end;
  }

  afs_precache_ptr = 0;
  for (int i = 0; i < entries; ++ i) {
    LONG j = thepatch.has_file (afs_file_name, new_stbs[i].name);
    //void *p;
    unsigned char *p;
    int len;
    if (j == -1) {
      printf ("  Entry %d of %d in %s (%s): copied     \r",
	      i + 1, entries, afs_file_name, new_stbs[i].name);
      //printf ("  Using %s from %s\n", new_stbs[i].name, afs_file_name);
      p = map + stas[i].pos;
      len = stas[i].len;

      if (stas[i].pos > afs_precache_ptr) {
	// Avoid switching between read & write too much: precache a big block
	char ch;
	afs_precache_ptr = stas[i].pos + PRECACHE_BLOCK;
	if (afs_precache_ptr > afs_size)
	  afs_precache_ptr = afs_size;
	for (int k = stas[i].pos; k < afs_precache_ptr; ++ k) {
	  ch = map[k];
	}
      }
    } else {
      printf ("  Entry %d of %d in %s (%s): replaced     \r",
	      i + 1, entries, afs_file_name, new_stbs[i].name);
      //printf ("  Using %s from patch\n", new_stbs[i].name);
      p = thepatch.mpc_data + thepatch.mppf_data->pfr_records[j].dw_file_offset;
      len = thepatch.mppf_data->pfr_records[j].dw_file_size;

      /*
      printf ("thepatch.mpc_data = {");
      for (int k = 0; k < 1024; ++ k) {
	if (k % 16 == 0) putchar ('\n');
	printf ("%02x ", (unsigned char) thepatch.mpc_data[k]);
      }
      printf ("}\n");
      printf ("Offset = %lx, len = %lx\n", 
	      thepatch.mppf_data->pfr_records[j].dw_file_offset, 
	      thepatch.mppf_data->pfr_records[j].dw_file_size);
      printf ("mpc_data for file (%d chars) {", len);
      for (int k = 0; k < len; ++ k) {
	if (k % 16 == 0) putchar ('\n');
	printf ("%02x ", thepatch.mpc_data[thepatch.mppf_data->pfr_records[j].dw_file_offset + k]);
      }
      printf ("}\np[] = \n");
      for (int k = 0; k < len; ++ k) {
	if (k % 16 == 0) putchar ('\n');
	printf ("%02x ", p[k]);
      }
      printf ("}\n");
      */      
      
      /*
      printf ("RAW (%d chars) = ", len);
      for (int k = 0; k < 20; ++ k)
	printf (" %02x", ((unsigned char *)p)[k]);
      printf (" ... ");
      for (int k = -20; k < 0; ++ k)
	printf (" %02x", ((unsigned char *)p)[len - k]);
      */
      /*
      printf ("RAW (%d chars) = ", len);
      for (int k = 0; k < len; ++ k) {
	if (k % 16 == 0) putchar ('\n');
	printf ("%02x ", ((unsigned char *)p)[len - k ]);
      }
      printf (".\n");
      */
    }
    if (!WriteFile (hOutFile, p, len, &n, NULL) || 
	!WriteFile (hOutFile, ZeroBuf, ALIGN(len) - len, &n, NULL)) {
      printf ("Error writing %s to %s\n", new_stbs[i].name, afs_file_name);
      ShowLastError();
      goto at_end;
    }
    new_headers->stas[i].pos = off;
    new_headers->stas[i].len = new_stbs[i].len = len;
    //new_headers->stas[i].len = new_stbs[i].len = (sizeof(stb) * entries);
    off = ALIGN (off + len);
    //off = ALIGN (off + sizeof(stb) * entries);
  }
  if (!WriteFile (hOutFile, new_stbs, entries * sizeof (stb), &n, NULL)) {
    printf ("Error writing stbs to %s\n", afs_file_name);
    ShowLastError();
    goto at_end;
  }
  if (SetFilePointer (hOutFile, 0, NULL, FILE_BEGIN) != 0 ||
      !WriteFile (hOutFile, new_headers, 8+8*entries, &n, NULL)) {
    printf ("Error writing new headers to %s\n", afs_file_name);
    ShowLastError();
    goto at_end;
  }
  toc_size = sizeof(stb) * entries;
  if (SetFilePointer (hOutFile, new_headers->stas[0].pos - 8, NULL, FILE_BEGIN) != DWORD (new_headers->stas[0].pos - 8)) {
    printf ("Error seeking to %x in %s for alt TOC\n", new_headers->stas[0].pos - 8, afs_file_name);
    ShowLastError();
    goto at_end;
  }
  if (!WriteFile (hOutFile, &off, sizeof (off), &n, NULL)) {
    printf ("Error writing off (%d of size %d) for alt TOC in %s\n", off, sizeof(off), afs_file_name);
    ShowLastError();
    goto at_end;
  }    
  if (!WriteFile (hOutFile, &toc_size, sizeof (toc_size), &n, NULL)) {
    printf ("Error writing toc_size (%d of size %d) for alt TOC in %s\n", toc_size, sizeof(toc_size), afs_file_name);
    ShowLastError();
    //printf ("Error writing TOC to alternate location %x in %s\n", new_headers->stas[0].pos - 8, afs_file_name);
    goto at_end;
  }
  rv = TRUE;



 at_end:
  if (rv) 
    printf ("\nSuccessfully modded '%s'.\n", afs_file_name);
  else
    printf ("\nError modding '%s'.\n", afs_file_name);
  //ShowLastError();

  if (new_headers != NULL) free (new_headers);
  if (new_stbs != NULL) free (new_stbs);
  if (hOutFile != INVALID_HANDLE_VALUE) CloseHandle (hOutFile);
  //ShowLastError();
  if (pv_afs_data != NULL) UnmapViewOfFile (pv_afs_data);
  //ShowLastError();
  if (hAFSMapping != INVALID_HANDLE_VALUE) CloseHandle (hAFSMapping);
  //ShowLastError();
  if (hAFSFile != INVALID_HANDLE_VALUE) CloseHandle (hAFSFile);
  //ShowLastError();
  return rv;
}

/* If file input_name exists, rename it to output_name and return true.
 * Else if output_name exists, return true
 * Otherwise, return false.
 *
 * (Attempt to rename file.  Return true on success, or if it appears a prior
 *  run had success.)
 */
bool rename_if_present (const char *input_name, const char *output_name, const char *orig_name) {
  //printf ("Output '%s' -> %s\n", output_name, file_exists(output_name) ? "true" : " false");
  //printf ("Input '%s' -> %s\n", input_name, file_exists(input_name) ? "true" : " false");
  //printf ("\n\n");
  //return false;
  if (file_exists (input_name)) {
    //ShowLastError();
    if (file_exists (output_name)) {
      //ShowLastError();
      /* If input and output exist, but orig doesnt, rename output to orig and input to output (done because FILE\mac.afs is read-only and Vista won't let you delete that. */
      /* If input, output both exist, but orig is NULL or exists, delete output and rename input to output */
      if (orig_name != NULL && !file_exists (orig_name)) {
	if (!MoveFile (output_name, orig_name)) {
	  printf ("Error renaming output '%s' to orig '%s'\n", output_name, orig_name);
	  ShowLastError();
	  return false;
	}
	printf ("Renamed output '%s' to orig '%s'\n", output_name, orig_name);
	//ShowLastError();
      } else if (!DeleteFile (output_name)) {
	printf ("Error removing old '%s'\n", output_name);
	ShowLastError();
	return false;
      }
      if (!MoveFile (input_name, output_name)) {
	printf ("Error converting '%s' to '%s' after removing old\n", input_name, output_name);
	ShowLastError();
	return false;
      }
      //ShowLastError();
    } else {
      /* If the input file exists, and the output doesn't, just rename input to output */
      if (!MoveFile (input_name, output_name)) {
	printf ("Error converting '%s' to '%s'\n", input_name, output_name);
	ShowLastError();
	return false;
      }
    }
    bool tmp_rv = file_exists (output_name);
    printf ("Conversion of '%s' to '%s' : %s\n", input_name, output_name, tmp_rv ? "good" : "fail");
    //ShowLastError();
    return tmp_rv;
  } else if (file_exists (output_name)) {
    /* If input doesn't exist but output does, assume it's already converted */
    printf ("Input '%s' absent, but output '%s' present\n", input_name, output_name);
    //ShowLastError();
    return true;
  }
  return false;
}

int WINAPI WinMain  (HINSTANCE hInstance, HINSTANCE hPrevInstance,
		     LPSTR lpCmdLine, int nCmdShow) {
  Patch thepatch ("r11eng.patch");
  BOOL rv = thepatch.mb_good;
  if (thepatch.mb_good) {
    rv = TRUE;
    UINT i, j;
    UINT n_afs_files = 0;

    UINT n_files = thepatch.mppf_data->dw_n_files;

    // Count the number of distinct .afs files mentioned
    for (i = 0; i < n_files; ++ i) {
      for (j = 0; j < i; ++ j)
	if (!strcmp (thepatch.mppf_data->pfr_records[i].sz_afs_file,
		     thepatch.mppf_data->pfr_records[j].sz_afs_file))
	  break;
      if (j == i)
	++ n_afs_files;
    }

    UINT n_processed_afs_files = 0;

    for (i = 0; i < n_files; ++ i) {
      // If this is the first record for a particular AFS file
      for (j = 0; j < i; ++ j)
	if (!strcmp (thepatch.mppf_data->pfr_records[i].sz_afs_file,
		     thepatch.mppf_data->pfr_records[j].sz_afs_file))
	  break;
      if (j < i)
	continue;
      
      ++ n_processed_afs_files;
      printf ("\nProcessing AFS file %s, (%d of %d)\n",
	      thepatch.mppf_data->pfr_records[i].sz_afs_file, 
	      n_processed_afs_files, n_afs_files);
      rv &= Patch_AFS_File (thepatch, thepatch.mppf_data->pfr_records[i].sz_afs_file);
    }
  }

  rv &= rename_if_present (".\\R11-en.bin", ".\\R11-English.exe", NULL);
  rv &= rename_if_present (".\\initbin.dat", "FILE\\init.rp", NULL);
  rv &= rename_if_present (".\\mac.afs", "FILE\\mac.afs", "FILE\\orig.mac.afs");

  if (rv)
    printf ("Patch applied successfully\n");
  else 
    printf ("Error performing patch\n");

  printf ("\n\nPress a key to exit\n");
  getch();

  return 0;
}