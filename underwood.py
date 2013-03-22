#!/usr/bin/env python
#@+leo-ver=5-thin
#@+node:peckj.20130322085304.1435: * @file underwood.py
#@@first
#@@language python

#@+<< imports >>
#@+node:peckj.20130322085304.1439: ** << imports >>
import Tkinter
#@-<< imports >>
#@+others
#@+node:peckj.20130322085304.1440: ** app class
class UnderwoodWriter(Tkinter.Tk):
  #@+others
  #@+node:peckj.20130322085304.1442: *3* ctor
  def __init__(self, parent):
    Tkinter.Tk.__init__(self, parent)
    self.parent = parent
    self.theme = 'Light'
    self.initialize()
  #@+node:peckj.20130322085304.1443: *3* initialize
  def initialize(self):
    # use a grid layout manager
    self.grid()
    
    # the menubar
    self.menubar = Tkinter.Menu(self)
    self.menubar.add_command(label="Swap Theme", command=self.swap_themes)
    self.config(menu=self.menubar)
    
    # the text editor
    self.editortext = Tkinter.Text(self, height=10, width=50, background='white')
    self.editorscroll = Tkinter.Scrollbar(self)
    self.editortext.configure(yscrollcommand=self.editorscroll.set)
    self.editortext.pack(side='left')
    self.editorscroll.grid(column=1,row=0, sticky='NS')
    self.editortext.grid(column=0, row=0, sticky='EWNS')
    self.editortext.bind("<BackSpace>", self.editor_backspace)
    self.editortext.bind("<Key>", self.editor_keypress)
    
    # status label
    self.labelVariable = Tkinter.StringVar()
    label = Tkinter.Label(self, textvariable=self.labelVariable, 
                          anchor="w", fg="black", bg="grey")
    label.grid(column=0, row=1, columnspan=2, sticky='EW')
    self.labelVariable.set(u"Hello")
    
    # enable resizing
    self.grid_columnconfigure(0, weight=1) # resize column 0 when necessary
    self.grid_rowconfigure(0, weight=1) # resize row 0 when necessary
    self.resizable(True, True) # resize both horizontal + vertical
    self.update()
    self.geometry(self.geometry()) # prevent window resizing itself
    
    # focusing
    self.focus_on_editor()
    
    # apply theme
    self.colorize_themes()
  #@+node:peckj.20130322085304.1447: *3* focus_on_editor
  def focus_on_editor(self):
    self.editortext.focus_set()
  #@+node:peckj.20130322085304.1450: *3* themes
  #@+node:peckj.20130322085304.1451: *4* swap_themes
  def swap_themes(self):
    if self.theme == 'Light':
      self.theme = 'Dark'
    else:
      self.theme = 'Light'
    self.colorize_themes()
  #@+node:peckj.20130322085304.1452: *4* colorize_themes
  def colorize_themes(self):
    if self.theme == 'Light':
      # apply light theme
      self.editortext.configure(
        background='white',
        foreground='black'
      )
    else:
      # apply dark theme
      self.editortext.configure(
        background='black',
        foreground='white'
      )
  #@+node:peckj.20130322085304.1444: *3* action listeners
  #@+node:peckj.20130322085304.1449: *4* editor_backspace
  def editor_backspace(self, event):
    print "backspace pressed." # debugging
    # to do: prevent edits further than 10 characters back
  #@+node:peckj.20130322085304.1453: *4* editor_keypress
  def editor_keypress(self, event):
    # update markers
    # update status bar
    # etc
    pass
  #@-others
    
  
#@+node:peckj.20130322085304.1441: ** __main__
if __name__ == "__main__":
  app = UnderwoodWriter(None)
  app.title('Underwood Writer')
  app.mainloop()
#@-others
#@-leo
