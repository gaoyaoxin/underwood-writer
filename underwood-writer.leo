<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://webpages.charter.net/edreamleo/front.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="peckj.20130326132404.1463" a="E"><vh>To Do</vh>
<v t="peckj.20130327100701.1498"><vh>Write README.MD</vh></v>
<v t="peckj.20130327100701.1495"><vh>Help</vh>
<v t="peckj.20130327100701.1496"><vh>General help</vh></v>
<v t="peckj.20130327100701.1497"><vh>About</vh></v>
</v>
<v t="peckj.20130326132404.1465"><vh>Configuration (drop a .rc in to ~?)</vh></v>
<v t="peckj.20130329100814.1707"><vh>Bug: Swapping themes also swaps the last two characters in the editor</vh></v>
<v t="peckj.20130327100701.1493"><vh>Catch exceptions in file loading/saving</vh></v>
<v t="peckj.20130327100701.1492"><vh>Prevent loss of unsaved changes</vh></v>
<v t="peckj.20130327100701.1487"><vh>Organize menus</vh></v>
<v t="peckj.20130327100701.1488"><vh>Keyboard shortcuts</vh>
<v t="peckj.20130327100701.1489"><vh>Ctrl+s for save</vh></v>
<v t="peckj.20130327100701.1490"><vh>Ctrl+o for open</vh></v>
</v>
<v t="peckj.20130326132404.1464"><vh>File loading/saving</vh>
<v t="peckj.20130327100701.1485"><vh>Save file</vh></v>
<v t="peckj.20130327100701.1486"><vh>Save file as</vh></v>
<v t="peckj.20130327100701.1483"><vh>Load file</vh></v>
<v t="peckj.20130327100701.1484"><vh>Update title</vh></v>
</v>
<v t="peckj.20130326132404.1466"><vh>Character insertion - wrap</vh></v>
</v>
<v t="peckj.20130322085304.1435" a="E"
expanded="peckj.20130322085304.1440,peckj.20130327100701.1474,peckj.20130327100701.1472,peckj.20130322085304.1450,peckj.20130327100701.1477,peckj.20130322085304.1444,"><vh>@file underwood.py</vh></v>
<v t="peckj.20130322085304.1448"><vh>@file setup.py</vh></v>
<v t="peckj.20130322085304.1458" a="E"><vh>scripts (ctrl+b to run)</vh>
<v t="peckj.20130327100701.1476"><vh>file test</vh></v>
<v t="peckj.20130322085304.1455"><vh>color chart</vh></v>
<v t="peckj.20130322085304.1457"><vh>print font families</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="peckj.20130322085304.1455">from Tkinter import *

MAX_ROWS = 36
FONT_SIZE = 10 # (pixels)

COLORS = ['snow', 'ghost white', 'white smoke', 'gainsboro', 'floral white', 'old lace',
    'linen', 'antique white', 'papaya whip', 'blanched almond', 'bisque', 'peach puff',
    'navajo white', 'lemon chiffon', 'mint cream', 'azure', 'alice blue', 'lavender',
    'lavender blush', 'misty rose', 'dark slate gray', 'dim gray', 'slate gray',
    'light slate gray', 'gray', 'light grey', 'midnight blue', 'navy', 'cornflower blue', 'dark slate blue',
    'slate blue', 'medium slate blue', 'light slate blue', 'medium blue', 'royal blue',  'blue',
    'dodger blue', 'deep sky blue', 'sky blue', 'light sky blue', 'steel blue', 'light steel blue',
    'light blue', 'powder blue', 'pale turquoise', 'dark turquoise', 'medium turquoise', 'turquoise',
    'cyan', 'light cyan', 'cadet blue', 'medium aquamarine', 'aquamarine', 'dark green', 'dark olive green',
    'dark sea green', 'sea green', 'medium sea green', 'light sea green', 'pale green', 'spring green',
    'lawn green', 'medium spring green', 'green yellow', 'lime green', 'yellow green',
    'forest green', 'olive drab', 'dark khaki', 'khaki', 'pale goldenrod', 'light goldenrod yellow',
    'light yellow', 'yellow', 'gold', 'light goldenrod', 'goldenrod', 'dark goldenrod', 'rosy brown',
    'indian red', 'saddle brown', 'sandy brown',
    'dark salmon', 'salmon', 'light salmon', 'orange', 'dark orange',
    'coral', 'light coral', 'tomato', 'orange red', 'red', 'hot pink', 'deep pink', 'pink', 'light pink',
    'pale violet red', 'maroon', 'medium violet red', 'violet red',
    'medium orchid', 'dark orchid', 'dark violet', 'blue violet', 'purple', 'medium purple',
    'thistle', 'snow2', 'snow3',
    'snow4', 'seashell2', 'seashell3', 'seashell4', 'AntiqueWhite1', 'AntiqueWhite2',
    'AntiqueWhite3', 'AntiqueWhite4', 'bisque2', 'bisque3', 'bisque4', 'PeachPuff2',
    'PeachPuff3', 'PeachPuff4', 'NavajoWhite2', 'NavajoWhite3', 'NavajoWhite4',
    'LemonChiffon2', 'LemonChiffon3', 'LemonChiffon4', 'cornsilk2', 'cornsilk3',
    'cornsilk4', 'ivory2', 'ivory3', 'ivory4', 'honeydew2', 'honeydew3', 'honeydew4',
    'LavenderBlush2', 'LavenderBlush3', 'LavenderBlush4', 'MistyRose2', 'MistyRose3',
    'MistyRose4', 'azure2', 'azure3', 'azure4', 'SlateBlue1', 'SlateBlue2', 'SlateBlue3',
    'SlateBlue4', 'RoyalBlue1', 'RoyalBlue2', 'RoyalBlue3', 'RoyalBlue4', 'blue2', 'blue4',
    'DodgerBlue2', 'DodgerBlue3', 'DodgerBlue4', 'SteelBlue1', 'SteelBlue2',
    'SteelBlue3', 'SteelBlue4', 'DeepSkyBlue2', 'DeepSkyBlue3', 'DeepSkyBlue4',
    'SkyBlue1', 'SkyBlue2', 'SkyBlue3', 'SkyBlue4', 'LightSkyBlue1', 'LightSkyBlue2',
    'LightSkyBlue3', 'LightSkyBlue4', 'SlateGray1', 'SlateGray2', 'SlateGray3',
    'SlateGray4', 'LightSteelBlue1', 'LightSteelBlue2', 'LightSteelBlue3',
    'LightSteelBlue4', 'LightBlue1', 'LightBlue2', 'LightBlue3', 'LightBlue4',
    'LightCyan2', 'LightCyan3', 'LightCyan4', 'PaleTurquoise1', 'PaleTurquoise2',
    'PaleTurquoise3', 'PaleTurquoise4', 'CadetBlue1', 'CadetBlue2', 'CadetBlue3',
    'CadetBlue4', 'turquoise1', 'turquoise2', 'turquoise3', 'turquoise4', 'cyan2', 'cyan3',
    'cyan4', 'DarkSlateGray1', 'DarkSlateGray2', 'DarkSlateGray3', 'DarkSlateGray4',
    'aquamarine2', 'aquamarine4', 'DarkSeaGreen1', 'DarkSeaGreen2', 'DarkSeaGreen3',
    'DarkSeaGreen4', 'SeaGreen1', 'SeaGreen2', 'SeaGreen3', 'PaleGreen1', 'PaleGreen2',
    'PaleGreen3', 'PaleGreen4', 'SpringGreen2', 'SpringGreen3', 'SpringGreen4',
    'green2', 'green3', 'green4', 'chartreuse2', 'chartreuse3', 'chartreuse4',
    'OliveDrab1', 'OliveDrab2', 'OliveDrab4', 'DarkOliveGreen1', 'DarkOliveGreen2',
    'DarkOliveGreen3', 'DarkOliveGreen4', 'khaki1', 'khaki2', 'khaki3', 'khaki4',
    'LightGoldenrod1', 'LightGoldenrod2', 'LightGoldenrod3', 'LightGoldenrod4',
    'LightYellow2', 'LightYellow3', 'LightYellow4', 'yellow2', 'yellow3', 'yellow4',
    'gold2', 'gold3', 'gold4', 'goldenrod1', 'goldenrod2', 'goldenrod3', 'goldenrod4',
    'DarkGoldenrod1', 'DarkGoldenrod2', 'DarkGoldenrod3', 'DarkGoldenrod4',
    'RosyBrown1', 'RosyBrown2', 'RosyBrown3', 'RosyBrown4', 'IndianRed1', 'IndianRed2',
    'IndianRed3', 'IndianRed4', 'sienna1', 'sienna2', 'sienna3', 'sienna4', 'burlywood1',
    'burlywood2', 'burlywood3', 'burlywood4', 'wheat1', 'wheat2', 'wheat3', 'wheat4', 'tan1',
    'tan2', 'tan4', 'chocolate1', 'chocolate2', 'chocolate3', 'firebrick1', 'firebrick2',
    'firebrick3', 'firebrick4', 'brown1', 'brown2', 'brown3', 'brown4', 'salmon1', 'salmon2',
    'salmon3', 'salmon4', 'LightSalmon2', 'LightSalmon3', 'LightSalmon4', 'orange2',
    'orange3', 'orange4', 'DarkOrange1', 'DarkOrange2', 'DarkOrange3', 'DarkOrange4',
    'coral1', 'coral2', 'coral3', 'coral4', 'tomato2', 'tomato3', 'tomato4', 'OrangeRed2',
    'OrangeRed3', 'OrangeRed4', 'red2', 'red3', 'red4', 'DeepPink2', 'DeepPink3', 'DeepPink4',
    'HotPink1', 'HotPink2', 'HotPink3', 'HotPink4', 'pink1', 'pink2', 'pink3', 'pink4',
    'LightPink1', 'LightPink2', 'LightPink3', 'LightPink4', 'PaleVioletRed1',
    'PaleVioletRed2', 'PaleVioletRed3', 'PaleVioletRed4', 'maroon1', 'maroon2',
    'maroon3', 'maroon4', 'VioletRed1', 'VioletRed2', 'VioletRed3', 'VioletRed4',
    'magenta2', 'magenta3', 'magenta4', 'orchid1', 'orchid2', 'orchid3', 'orchid4', 'plum1',
    'plum2', 'plum3', 'plum4', 'MediumOrchid1', 'MediumOrchid2', 'MediumOrchid3',
    'MediumOrchid4', 'DarkOrchid1', 'DarkOrchid2', 'DarkOrchid3', 'DarkOrchid4',
    'purple1', 'purple2', 'purple3', 'purple4', 'MediumPurple1', 'MediumPurple2',
    'MediumPurple3', 'MediumPurple4', 'thistle1', 'thistle2', 'thistle3', 'thistle4',
    'gray1', 'gray2', 'gray3', 'gray4', 'gray5', 'gray6', 'gray7', 'gray8', 'gray9', 'gray10',
    'gray11', 'gray12', 'gray13', 'gray14', 'gray15', 'gray16', 'gray17', 'gray18', 'gray19',
    'gray20', 'gray21', 'gray22', 'gray23', 'gray24', 'gray25', 'gray26', 'gray27', 'gray28',
    'gray29', 'gray30', 'gray31', 'gray32', 'gray33', 'gray34', 'gray35', 'gray36', 'gray37',
    'gray38', 'gray39', 'gray40', 'gray42', 'gray43', 'gray44', 'gray45', 'gray46', 'gray47',
    'gray48', 'gray49', 'gray50', 'gray51', 'gray52', 'gray53', 'gray54', 'gray55', 'gray56',
    'gray57', 'gray58', 'gray59', 'gray60', 'gray61', 'gray62', 'gray63', 'gray64', 'gray65',
    'gray66', 'gray67', 'gray68', 'gray69', 'gray70', 'gray71', 'gray72', 'gray73', 'gray74',
    'gray75', 'gray76', 'gray77', 'gray78', 'gray79', 'gray80', 'gray81', 'gray82', 'gray83',
    'gray84', 'gray85', 'gray86', 'gray87', 'gray88', 'gray89', 'gray90', 'gray91', 'gray92',
    'gray93', 'gray94', 'gray95', 'gray97', 'gray98', 'gray99']

root = Tk()
root.title("Named colour chart")
row = 0
col = 0
for color in COLORS:
  e = Label(root, text=color, background=color, 
        font=(None, -FONT_SIZE))
  e.grid(row=row, column=col, sticky=E+W)
  row += 1
  if (row &gt; 36):
    row = 0
    col += 1

root.mainloop()</t>
<t tx="peckj.20130322085304.1457">import Tkinter, tkFont

root = Tkinter.Tk()
for f in tkFont.families():
  g.es(f)
</t>
<t tx="peckj.20130322085304.1458"></t>
<t tx="peckj.20130326132404.1463"></t>
<t tx="peckj.20130326132404.1464" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e">Be sure to update self.title with status indicators</t>
<t tx="peckj.20130326132404.1465" annotate="7d71002855087072696f7269747971014b02550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f646571035504747970657104550466696c6571055507796f666673657471064b005508636c656f49636f6e710755013171086805583d000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c707269322e706e677109550478706164710a4b0155057768657265710b550e6265666f7265486561646c696e65710c5507786f6666736574710d4b02550772656c50617468710e580d000000636c656f5c707269322e706e67710f75612e">Use ConfigParser
Menu option Settings -&gt; Edit Configuration File
  (Set backbuffer to -1, disable editor_backspace, editor_keypress, and editor_click,
   and open the config file in the texteditor.  Exit on save.)

Sections for:
[defaults]
directory (save/load initial directory)
file (autoload file on start?  Good for novel writers.)
theme (light or dark)
backbuffer (#characters you can backspace)

[lighttheme]

[darktheme]

</t>
<t tx="peckj.20130326132404.1466" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1476">@language python
import Tkinter, Tkconstants, tkFileDialog

class TkFileDialogExample(Tkinter.Frame):

  def __init__(self, root):

    Tkinter.Frame.__init__(self, root)

    # options for buttons
    button_opt = {'fill': Tkconstants.BOTH, 'padx': 5, 'pady': 5}

    # define buttons
    Tkinter.Button(self, text='askopenfile', command=self.askopenfile).pack(**button_opt)
    Tkinter.Button(self, text='askopenfilename', command=self.askopenfilename).pack(**button_opt)
    Tkinter.Button(self, text='asksaveasfile', command=self.asksaveasfile).pack(**button_opt)
    Tkinter.Button(self, text='asksaveasfilename', command=self.asksaveasfilename).pack(**button_opt)
    Tkinter.Button(self, text='askdirectory', command=self.askdirectory).pack(**button_opt)

    # define options for opening or saving a file
    self.file_opt = options = {}
    options['defaultextension'] = '.txt'
    options['filetypes'] = [('all files', '.*'), ('text files', '.txt')]
    options['initialdir'] = 'C:\\'
    options['initialfile'] = 'myfile.txt'
    options['parent'] = root
    options['title'] = 'This is a title'

    # This is only available on the Macintosh, and only when Navigation Services are installed.
    #options['message'] = 'message'

    # if you use the multiple file version of the module functions this option is set automatically.
    #options['multiple'] = 1

    # defining options for opening a directory
    self.dir_opt = options = {}
    options['initialdir'] = 'C:\\'
    options['mustexist'] = False
    options['parent'] = root
    options['title'] = 'This is a title'

  def askopenfile(self):

    """Returns an opened file in read mode."""

    return tkFileDialog.askopenfile(mode='r', **self.file_opt)

  def askopenfilename(self):

    """Returns an opened file in read mode.
    This time the dialog just returns a filename and the file is opened by your own code.
    """

    # get filename
    filename = tkFileDialog.askopenfilename(**self.file_opt)

    # open file on your own
    if filename:
      return open(filename, 'r')

  def asksaveasfile(self):

    """Returns an opened file in write mode."""

    return tkFileDialog.asksaveasfile(mode='w', **self.file_opt)

  def asksaveasfilename(self):

    """Returns an opened file in write mode.
    This time the dialog just returns a filename and the file is opened by your own code.
    """

    # get filename
    filename = tkFileDialog.asksaveasfilename(**self.file_opt)

    # open file on your own
    if filename:
      return open(filename, 'w')

  def askdirectory(self):

    """Returns a selected directoryname."""

    return tkFileDialog.askdirectory(**self.dir_opt)

if __name__=='__main__':
  root = Tkinter.Tk()
  TkFileDialogExample(root).pack()
  root.mainloop()</t>
<t tx="peckj.20130327100701.1483" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1484" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1485" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1486" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1487" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1488" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1489" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1490" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1492" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32387103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1493" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32397103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f646571035504747970657104550466696c6571055507796f666673657471064b005508636c656f49636f6e710755013171086805583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b0155057768657265710b550e6265666f7265486561646c696e65710c5507786f6666736574710d4b02550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1495" annotate="7d71002855087072696f7269747971014b02550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f646571035504747970657104550466696c6571055507796f666673657471064b005508636c656f49636f6e710755013171086805583d000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c707269322e706e677109550478706164710a4b0155057768657265710b550e6265666f7265486561646c696e65710c5507786f6666736574710d4b02550772656c50617468710e580d000000636c656f5c707269322e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1496" annotate="7d71002855087072696f7269747971014b18550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c62756c6c65742e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c62756c6c65742e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1497" annotate="7d71002855087072696f7269747971014b18550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f64657103550577686572657104550e6265666f7265486561646c696e6571055507796f666673657471064b005507786f666673657471074b02550466696c657108583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c62756c6c65742e706e677109550478706164710a4b01550474797065710b68085508636c656f49636f6e710c550131710d550772656c50617468710e580f000000636c656f5c62756c6c65742e706e67710f75612e"></t>
<t tx="peckj.20130327100701.1498" annotate="7d71002855087072696f7269747971014b01550a707269736574646174657102550a323031332d30332d32377103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f646571035504747970657104550466696c6571055507796f666673657471064b005508636c656f49636f6e710755013171086805583d000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c707269312e706e677109550478706164710a4b0155057768657265710b550e6265666f7265486561646c696e65710c5507786f6666736574710d4b02550772656c50617468710e580d000000636c656f5c707269312e706e67710f75612e"></t>
<t tx="peckj.20130329100814.1707" annotate="7d71002855087072696f7269747971014b64550a707269736574646174657102550a323031332d30332d32397103752e" lineYOffset="4b032e" icons="5d71007d71012855026f6e71025505766e6f646571035504747970657104550466696c6571055507796f666673657471064b005508636c656f49636f6e710755013171086805583f000000433a5c63796777696e5c686f6d655c5065636b4a5c7265706f735c6c656f2d656469746f725c6c656f5c49636f6e735c636c656f5c63686b626c6b2e706e677109550478706164710a4b0155057768657265710b550e6265666f7265486561646c696e65710c5507786f6666736574710d4b02550772656c50617468710e580f000000636c656f5c63686b626c6b2e706e67710f75612e">Turned out to be because swap_themes didn't return 'break'.</t>
</tnodes>
</leo_file>
