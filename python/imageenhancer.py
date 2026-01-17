from wand.image import Image # wand python libary for image resize and blur
import os # os libary to generate whole path
maheshLogo = r"C:\Users\deepak\Downloads\Mlogo1.JPG"
maheshLogo2 = r"C:\Users\deepak\Downloads\Mlogo2.JPG"
with Image(filename=maheshLogo) as img:
    img.resize(1050,600)
    print(img.size)
    img.save(filename=maheshLogo2)