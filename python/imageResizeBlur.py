from wand.image import Image # wand python libary for image resize and blur
import os # os libary to generate whole path
wallpaperdir = r"C:\Users\deepak\Pictures\Wallpaper" # Wallpaper path
dir_list = os.listdir(wallpaperdir) # listing all files in path
file_paths = [os.path.join(wallpaperdir, filename) for filename in dir_list] # creating a new list of image path to process
# logic for converting size to 1920x1080, bluring image and overlaying/composite the main image over blur image
for wallpaper in file_paths:
    with Image(filename=wallpaper) as img:
        if(img.size) != (1920,1080): # Will ignore image of proper resolution
            print(img.size)
            img.gaussian_blur(sigma=5)
            img.resize(1920,1080)
            print(img.size)
            with Image(filename=wallpaper) as main:
                img.composite(main, left=420)
                img.save(filename=wallpaper)