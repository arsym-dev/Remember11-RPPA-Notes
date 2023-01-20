#include "lzs.h"
#include "Python.h"

static PyObject * clzs_encode_file(PyObject *self, PyObject *args)
{
    char *arg1 = (char *) 0 ;
    char *arg2 = (char *) 0 ;

    if (!PyArg_ParseTuple(args, (char *)"ss", &arg1, &arg2))
        return NULL;
    return (PyObject*)Py_BuildValue("i", encode_file(arg1, arg2));
}

static PyObject * clzs_decode_file(PyObject *self, PyObject *args)
{
    char *arg1 = (char *) 0 ;
    char *arg2 = (char *) 0 ;

    if (!PyArg_ParseTuple(args, (char *)"ss", &arg1, &arg2))
        return NULL;
    return (PyObject*)Py_BuildValue("i", decode_file(arg1, arg2));
}

static PyMethodDef clzsMethods[] =
{
    { "encode_file", clzs_encode_file, METH_VARARGS },
    { "decode_file", clzs_decode_file, METH_VARARGS },
    
    { NULL, NULL },
};

/*
void initclzs()
{
    Py_InitModule("clzs", clzsMethods);
}
*/

static struct PyModuleDef analyseffi = 
{
    PyModuleDef_HEAD_INIT,
    "clzs", /* name of module */
    "",          /* module documentation, may be NULL */
    -1,          /* size of per-interpreter state of the module, or -1 if the module keeps state in global variables. */
    clzsMethods
};

PyMODINIT_FUNC PyInit_clzs(void)
{
    return PyModule_Create(&analyseffi);
}