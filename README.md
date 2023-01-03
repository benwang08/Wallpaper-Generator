# Wallpaper Generator
Description:  
---
Generate cool abstract wallpaper from an input image.

3D images generated with ray tracing and anti-alising with various approximations for matte, glass, and metal materials.

Example:
| Input | Color Palette | Wallpaper |
| :---:   | :---: | :---: |
| ![image](https://user-images.githubusercontent.com/73961415/210298565-fd2054d8-4215-4b84-8036-c3b55d2e0bbb.png) | ![image](https://user-images.githubusercontent.com/73961415/210298579-f69e1050-ea53-4bd1-baf3-a7a2e3040019.png) | ![image](https://user-images.githubusercontent.com/73961415/210298589-ed4c5ef2-2bee-4230-b726-cb8f4aa4e57f.png) |
  
Requirements:  
---
  * g++ v9 or newer
  * make

Instructions:  
---
Add an input image to the folder (ex. "INPUT_IMG.jpg")

Program reads and writes in .ppm format. Imagemagick can be used to easily convert to P3 ppm:
```
  $ sudo apt install imagemagick
  $ convert INPUT_IMG.jpg -compress none INPUT_IMG.ppm
```
To run: 
```
  $ make all
```
Scan takes in 3 arguments (img source, output wallpaper width, output wallpaper height) and produces two files ("color_palette.ppm" and "data.txt")
Example with output image resolution 1920x1080:
```
  $ ./scan INPUT_IMG.ppm 1920 1080
```
Generator takes in 0 arguments and uses created "data.txt" to render a random abstract wallpaper
Produces file called "Wallpaper.ppm"
```
  $ ./generator
```



