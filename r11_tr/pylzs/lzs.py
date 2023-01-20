#!/usr/bin/env python
# encoding: utf-8

import array
import itertools
import struct

class Lzs():
    N = 4096
    F = 18
    NIL = N
    THRESHOLD = 2
    TXT_BUF_SIZE = N + F - 1
    UNUSE = 0xcc

    def __init__(self):
        self._dad = array.array('i', itertools.repeat(self.NIL, self.N + 1))
        self._lson = array.array('i', itertools.repeat(self.UNUSE, self.N + 1))
        self._rson = array.array('i', itertools.repeat(self.UNUSE, self.N + 256 + 1))
        self._text_buf = array.array('B', itertools.repeat(0, self.TXT_BUF_SIZE))
        self._dad[self.N] = self.UNUSE
        for x in range(self.N + 1, self.N + 256 + 1):
            self._rson[x] = self.NIL
        for x in range(self.N - self.F, self.N + self.F - 1):
            self._text_buf[x] = self.UNUSE
        self._match_position = 0
        self._match_length = 0

    def _insert_node(self, r):
        cmp = 1
        p = self.N + 1 + self._text_buf[r]
        self._rson[r] = self.NIL
        self._lson[r] = self.NIL
        self._match_length = 0
        while True:
            if cmp >= 0:
                if self._rson[p] != self.NIL:
                    p = self._rson[p]
                else:
                    self._rson[p] = r
                    self._dad[r] = p
                    return
            else:
                if self._lson[p] != self.NIL:
                    p = self._lson[p]
                else:
                    self._lson[p] = r
                    self._dad[r] = p
                    return
            i = 1
            while i < self.F:
                cmp = self._text_buf[r + i] - self._text_buf[p + i]
                if cmp != 0:
                    break
                i += 1
            if i > self._match_length:
                self._match_position = p
                self._match_length = i
                if i >= self.F:
                    break

        self._dad[r] = self._dad[p]
        self._lson[r] = self._lson[p]
        self._rson[r] = self._rson[p]

        self._dad[self._lson[p]] = r
        self._dad[self._rson[p]] = r
        if self._rson[self._dad[p]] == p:
            self._rson[self._dad[p]] = r
        else:
            self._lson[self._dad[p]] = r
        self._dad[p] = self.NIL

    def _delete_node(self, p):
        assert (p >= 0 and p < self.N + 1)
        q = 0
        if self._dad[p] == self.NIL:
            return
        if self._rson[p] == self.NIL:
            q = self._lson[p]
        elif self._lson[p] == self.NIL:
            q = self._rson[p]
        else:
            q = self._lson[p]
            if self._rson[q] != self.NIL:
                while True:
                    q = self._rson[q]
                    if self._rson[q] == self.NIL:
                        break
                self._rson[self._dad[q]] = self._lson[q]
                self._dad[self._lson[q]] = self._dad[q]
                self._lson[q] = self._lson[p]
                self._dad[self._lson[p]] = q
            self._rson[q] = self._rson[p]
            self._dad[self._rson[p]] = q
        self._dad[q] = self._dad[p]
        if self._rson[self._dad[p]] == p:
            self._rson[self._dad[p]] = q
        else:
            self._lson[self._dad[p]] = q
        self._dad[p] = self.NIL

    def encode(self, data):
        if len(data) == 0:
            return ''
        out_body = ''
        code_buf = array.array('B', itertools.repeat(self.UNUSE, self.F - 1))
        code_buf[0] = 0
        code_buf_ptr = mask = 1
        s = 0
        r = self.N - self.F
        read_len = 0
        data_in = 0
        while read_len < self.F and data_in < len(data):
            self._text_buf[r + read_len] = ord(data[data_in])
            read_len += 1
            data_in += 1
        for i in range(1, self.F + 1):
            self._insert_node(r - i)
        self._insert_node(r)
        while True:

            if self._match_length > read_len:
                self._match_length = read_len

            if self._match_length <= self.THRESHOLD:
                self._match_length = 1
                code_buf[0] |= mask
                code_buf[code_buf_ptr] = self._text_buf[r]
                code_buf_ptr += 1
            else:
                code_buf[code_buf_ptr] = self._match_position & 0xff
                code_buf_ptr += 1
                code_buf[code_buf_ptr] = ((self._match_position >> 4) & 0xf0) | (self._match_length - self.THRESHOLD - 1)
                code_buf_ptr += 1

            mask = (mask << 1) & 0xff
            if mask == 0:
                for i in range(code_buf_ptr):
                    out_body += chr(code_buf[i])
                code_buf[0] = 0
                code_buf_ptr = mask = 1

            last_match_length = self._match_length
            j = 0
            while j < last_match_length and data_in < len(data):
                c = ord(data[data_in])
                j += 1
                data_in += 1
                self._delete_node(s)
                self._text_buf[s] = c
                if s < self.F - 1:
                    self._text_buf[s + self.N] = c
                s = (s + 1) & (self.N - 1)
                r = (r + 1) & (self.N - 1)
                self._insert_node(r)
            while j < last_match_length:
                j += 1
                self._delete_node(s)
                s = (s + 1) & (self.N - 1)
                r = (r + 1) & (self.N - 1)
                read_len -= 1
                if read_len != 0:
                    self._insert_node(r)

            if read_len <= 0:
                break
        if code_buf_ptr > 1:
            for i in range(code_buf_ptr):
                out_body += chr(code_buf[i] & 0xff)

        return struct.pack('<l', len(out_body)) + out_body

    def decode(self, data):
        pass


if __name__ == '__main__':
    pass
