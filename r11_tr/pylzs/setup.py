#!/usr/bin/env python
# encoding: utf-8

from distutils.core import setup, Extension

MOD = 'clzs'
setup(name=MOD, ext_modules=[
    Extension(MOD, sources=['lib/wrapper.c', 'lib/lzs.c'])])