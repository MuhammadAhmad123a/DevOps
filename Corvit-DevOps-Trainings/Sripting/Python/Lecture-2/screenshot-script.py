# C:\Users\user\AppData\Local\Programs\Python\Python311\Scripts>
# py -m pip install image
# py -c "import image"
# py -m pip install Pillow

import PIL
import time 
from PIL import ImageGrab

im=ImageGrab.grab()
savetime=time.strftime("%Y-%b-%d__%H_%M_%S",time.localtime())
im.save(savetime+"Screenshot.jpg")


