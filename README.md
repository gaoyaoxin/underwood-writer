<!--@+leo-ver=5-thin-->
<!--@+node:peckj.20130408133929.1695: * @file README.md-->
Underwood Writer
================

A minimalist, write-only editor that focuses on making writers produce first, edit second.

overview
--------
Underwood Writer is a plain text editor with a few unusual features designed to induce a
return to the era of rough drafts.  Notably, Underwood Writer does the following:

  - Disables copy, cut, paste, and editing features other than backspacing
  - Limits backspaces to the last ten characters typed
  - Automatically wraps your text after 72 characters
  - Writes in monospaced text with no fancy font styling
  - Saves and reads plain text (utf-8) only
  
It's that second one that is truly the heart of Underwood Writer.  By preventing
the user from erasing past ten previous characters, it forces the writer to continue
on with their story, preventing premature editing.  It lends a bit of the permanence
of writing with a typewriter to the digital age, but still allows you to correct
simple spelling mistakes, for example.

Additional features of Underwood Writer are:

  - Spartan user interface, with no unnecessary distractions
  - Two themes (light + dark) for easing eye strain
  - Dynamic, comprehensive, and compact status bar, providing:
    - Character count
    - Word count
    - Line count
    - Current cursor position
    - Number of erasable characters
  - Dynamic title bar, displaying:
    - File modification status (* if unsaved)
    - Current working file name
  - Unsaved changes warnings when appropriate
  
Using Underwood Writer
----------------------
Underwood Writer is written in Python and Tkinter, so all it requires is
an installation of Python 2.7 for your platform.  After that, it's simply
a matter of running `underwood.py`.

### Windows
Windows users have it even easier - Underwood Writer is available as a
binary package!  Download it [here](blah), extract it all to a single
directory, and double-click `underwood.exe`.

License
-------
BSD Licensed.  See [license/license.txt](https://raw.github.com/gatesphere/underwood-writer/master/license/license.txt) for more information.
    
<!--@-leo-->
