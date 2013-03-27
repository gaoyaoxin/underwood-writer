#!/usr/bin/env python
#@+leo-ver=5-thin
#@+node:peckj.20130322085304.1435: * @file underwood.py
#@@first
#@@language python

#@+<< imports >>
#@+node:peckj.20130322085304.1439: ** << imports >>
import Tkinter
import tkFont
import string
import os
#@-<< imports >>
#@+others
#@+node:peckj.20130322085304.1440: ** app class
class UnderwoodWriter(Tkinter.Tk):
  #@+others
  #@+node:peckj.20130322085304.1442: *3* ctor
  def __init__(self, parent):
    Tkinter.Tk.__init__(self, parent)
    self.parent = parent
    self.theme = None
    self.counts = None
    self.endpos = None
    self.printablechars = None
    self.editiablechars = None
    self.title('Underwood Writer')
    self.set_up_icon()
    self.initialize()


  #@+node:peckj.20130327100701.1474: *3* initialization code
  #@+node:peckj.20130322085304.1443: *4* initialize
  def initialize(self):
    # set up printable chars (ugly, find a better way)
    self.printablechars = string.printable.replace('\t\n\r\x0b\x0c', '')
    
    # set up end position
    self.endpos = (1, 0)
    
    # set up editable chars
    self.editablechars = 10
    
    # set up initial counts
    self.counts = {'chars': 0, 'words': 0, 'lines': 1}
      
    # set up the theme dictionaries
    self.lighttheme = {
      'editor_fg': 'gray23',
      'editor_bg': 'seashell2',
      'editor_insert': 'gray11',
      'statusbar_fg': 'gray23',
      'statusbar_bg': 'ivory3'
    }
    self.darktheme = {
      'editor_fg': 'seashell2',
      'editor_bg': 'gray11',
      'editor_insert': 'seashell3',
      'statusbar_fg': 'ivory3',
      'statusbar_bg': 'gray23'
    }
    
    # use a grid layout manager
    self.grid()
    
    # the menubar
    self.menubar = Tkinter.Menu(self)
    self.menubar.add_command(label="Swap Theme", command=self.swap_themes)
    self.config(menu=self.menubar)
    
    # the text editor
    # investigate setting a font
    self.editortext = Tkinter.Text(self, height=30, width=80, padx=10, pady=10)
    self.editorscroll = Tkinter.Scrollbar(self)
    self.editortext.configure(yscrollcommand=self.editorscroll.set)
    self.editorscroll.configure(command=self.editortext.yview)
    self.editorscroll.grid(column=1,row=0, sticky='NS')
    self.editortext.grid(column=0, row=0, sticky='EWNS')
    self.editortext.bind("<BackSpace>", self.editor_backspace)
    self.editortext.bind("<Key>", self.editor_keypress)
    self.editortext.bind("<Button-1>", self.editor_click)
    self.editortext.bind("<Button-2>", self.editor_click)
    self.editortext.bind("<Button-3>", self.editor_click)
    self.editortext.bind("<B1-Motion>", self.editor_click)
    self.editortext.bind("<B2-Motion>", self.editor_click)
    self.editortext.bind("<B3-Motion>", self.editor_click)
    self.editortext.bind("<ButtonRelease-1>", self.editor_click)
    self.editortext.bind("<ButtonRelease-2>", self.editor_click)
    self.editortext.bind("<ButtonRelease-3>", self.editor_click)
    
    # status label
    self.labelVariable = Tkinter.StringVar()
    self.statuslabel = Tkinter.Label(self, textvariable=self.labelVariable, 
                          anchor="w")
    self.statuslabel.grid(column=0, row=1, columnspan=2, sticky='EW')
    self.set_statuslabel()
    
    # enable resizing
    self.grid_columnconfigure(0, weight=1) # resize column 0 when necessary
    self.grid_rowconfigure(0, weight=1) # resize row 0 when necessary
    self.resizable(True, True) # resize both horizontal + vertical
    self.update()
    self.geometry(self.geometry()) # prevent window resizing itself
    
    # focusing
    self.focus_on_editor()
    
    # apply theme
    self.theme = self.darktheme
    self.colorize_themes()
  #@+node:peckj.20130327100701.1475: *4* set_up_icon
  def set_up_icon(self):
    iconName = os.path.join(os.getcwd(), 'underwood.gif')
    try:
      img = Tkinter.PhotoImage(file=iconName)
      self.call('wm', 'iconphoto', self._w, img)
    except:
      pass # error loading icon, but it's not a deal breaker
  #@+node:peckj.20130327100701.1473: *3* status bar
  #@+node:peckj.20130326125409.1460: *4* update_counts
  def update_counts(self):
    content = self.editortext.get(1.0, Tkinter.END)
    self.counts['chars'] = len(content) - 1
    self.counts['lines'] = content.count('\n')
    self.counts['words'] = len(content.split())
    
  #@+node:peckj.20130326125409.1461: *4* set_statuslabel
  def set_statuslabel(self):
    (row, column) = self.editortext.index(Tkinter.INSERT).split('.')
    deletable = len(self.editortext.get("%s.%s" % self.endpos, Tkinter.INSERT))
    chars = self.plural('character', self.counts['chars'])
    words = self.plural('word', self.counts['words'])
    lines = self.plural('line', self.counts['lines'])
    
    slabel = u"%s | %s | %s | %s:%s (%s)" % (chars, words, lines, 
                                             row, column, deletable)
    self.labelVariable.set(slabel)
  #@+node:peckj.20130327100701.1472: *3* helpers
  #@+node:peckj.20130322085304.1447: *4* focus_on_editor
  def focus_on_editor(self):
    self.editortext.focus_set()
  #@+node:peckj.20130326132404.1468: *4* plural
  def plural(self, word, count):
    if count != 1:
      word += 's'
    return "%s %s" % (count, word)
  #@+node:peckj.20130322085304.1450: *3* themes
  #@+node:peckj.20130322085304.1451: *4* swap_themes
  def swap_themes(self):
    if self.theme == self.lighttheme:
      self.theme = self.darktheme
    else:
      self.theme = self.lighttheme
    self.colorize_themes()
  #@+node:peckj.20130322085304.1452: *4* colorize_themes
  def colorize_themes(self):
    self.editortext.configure(
      background=self.theme['editor_bg'],
      foreground=self.theme['editor_fg'],
      insertbackground=self.theme['editor_insert']
    )
    self.statuslabel.configure(
      background=self.theme['statusbar_bg'],
      foreground=self.theme['statusbar_fg']
    )
    # does not work...
    self.editorscroll.configure(
      background=self.theme['statusbar_bg'],
      activebackground=self.theme['statusbar_fg']
    )
    self.menubar.configure(
      background=self.theme['statusbar_bg'],
      foreground=self.theme['statusbar_fg']
    )
  #@+node:peckj.20130322085304.1444: *3* action listeners
  #@+node:peckj.20130322085304.1449: *4* editor_backspace
  def editor_backspace(self, event):
    # prevent edits further than 10 characters back
    currpos = self.editortext.index(Tkinter.INSERT)
    delpos = "%s.%s" % self.endpos
    delpos = self.editortext.index(delpos)
    if self.editortext.compare(currpos, ">", delpos):
      # allow deletion
      self.editortext.delete(currpos + '-1c')
    
    # update status bar
    self.update_counts()
    self.set_statuslabel()
    
    return 'break' # disable further handling
  #@+node:peckj.20130322085304.1453: *4* editor_keypress
  def editor_keypress(self, event):
    # insert character (wrapping at 72 chars per line, auto hyphenating maybe?)
    if event.char in self.printablechars:
      self.editortext.insert(Tkinter.END, event.char)
    elif event.char == '\n' or event.char == '\r':
      self.editortext.insert(Tkinter.END, '\n')
    elif event.char == '\t':
      self.editortext.insert(Tkinter.END, ' ')
    
    # update markers
    newpos = "%s-%sc" % (self.editortext.index(Tkinter.END), self.editablechars + 1)
    newpos = self.editortext.index(newpos)
    newpos = map(lambda x: int(x), newpos.split('.'))
    if newpos[0] > self.endpos[0] or (
       newpos[1] > self.endpos[1] and newpos[0] >= self.endpos[0]):
      self.endpos = (newpos[0], newpos[1])
    
    # update status bar
    self.update_counts()
    self.set_statuslabel()
    # 
    return 'break'
  #@+node:peckj.20130326132404.1462: *4* editor_click
  def editor_click(self, event):
    # set cursor to the end of the text widget
    end = self.editortext.index(Tkinter.END)
    self.editortext.mark_set(Tkinter.INSERT, end)
    return 'break'
  #@-others
    
  
#@+node:peckj.20130322085304.1441: ** __main__
if __name__ == "__main__":
  app = UnderwoodWriter(None)
  app.mainloop()
#@-others
#@-leo
