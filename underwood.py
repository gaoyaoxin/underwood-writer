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
class simpleapp_tk(Tkinter.Tk):
  #@+others
  #@+node:peckj.20130322085304.1442: *3* ctor
  def __init__(self, parent):
    Tkinter.Tk.__init__(self, parent)
    self.parent = parent
    self.initialize()
  #@+node:peckj.20130322085304.1443: *3* initialize
  def initialize(self):
    # use a grid layout manager
    self.grid()
    
    # entry textbox
    self.entryVariable = Tkinter.StringVar()
    self.entry = Tkinter.Entry(self, textvariable=self.entryVariable)
    self.entry.grid(column=0, row=0, sticky='EW')
    self.entry.bind("<Return>", self.OnPressEnter)
    self.entryVariable.set(u"Enter text here.")
    
    # accept button
    button = Tkinter.Button(self, text=u'Click me!', command=self.OnButtonClick)
    button.grid(column=1, row=0)
    
    # status label
    self.labelVariable = Tkinter.StringVar()
    label = Tkinter.Label(self, textvariable=self.labelVariable, 
                          anchor="w", fg="white", bg="blue")
    label.grid(column=0, row=1, columnspan=2, sticky='EW')
    self.labelVariable.set(u"Hello")
    
    # enable resizing
    self.grid_columnconfigure(0, weight=1) # resize column 0 when necessary
    self.resizable(True, False) # horizontal resize only
    self.update()
    self.geometry(self.geometry())
    
    # focusing
    self.focus_on_entry()
  #@+node:peckj.20130322085304.1447: *3* focus_on_entry
  def focus_on_entry(self):
    self.entry.focus_set()
    self.entry.selection_range(0, Tkinter.END)
  #@+node:peckj.20130322085304.1444: *3* action listeners
  #@+node:peckj.20130322085304.1445: *4* OnButtonClick
  def OnButtonClick(self):
    self.labelVariable.set(self.entryVariable.get() + " (button clicked)")
    self.focus_on_entry()
  #@+node:peckj.20130322085304.1446: *4* OnPressEnter
  def OnPressEnter(self, event):
    self.labelVariable.set(self.entryVariable.get() + " (enter pressed)")
    self.focus_on_entry()
  #@-others
    
  
#@+node:peckj.20130322085304.1441: ** __main__
if __name__ == "__main__":
  app = simpleapp_tk(None)
  app.title('My application')
  app.mainloop()
#@-others
#@-leo
