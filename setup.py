#@+leo-ver=5-thin
#@+node:peckj.20130322085304.1448: * @file setup.py
from distutils.core import setup
import py2exe

setup(
  options = {'py2exe': {'compressed': True}},
  windows = [{'script': "underwood.py"}],
  zipfile = None,
)
#@-leo
