#!/usr/bin/env python
# encoding: utf-8

import unittest
import lzs

class LzsTest(unittest.TestCase):

    def setUp(self):
        self.enc_list = ('04.bin', '016.bin', '032.bin', 'raw.bin', )
        self.dec_list = ('04.lzs', '016.lzs', '032.lzs', 'raw.lzs', )

    def tearDown(self):
        pass

    def test_encode(self):
        for (e, d) in zip(self.enc_list, self.dec_list):
            in_file = open(e, 'rb')
            out_file = open(d, 'rb')
            plain = in_file.read()
            expected_com = out_file.read()
            in_file.close()
            out_file.close()
            actual_com = lzs.Lzs().encode(plain)
            self.assertEqual(expected_com, actual_com)

if __name__ == '__main__':
    unittest.main()