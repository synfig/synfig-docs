###############################
    Importing image sequences
###############################

General informations
====================

The list importer allows you to import a text file containing a list of
still images and have it be treated as a single animated layer.

To use it, simply create a text file with the filename of each still
frame listed per-line. Save this text file with the extension
``lst`` (That is ``LST`` in lowercase). Import it into Synfig like you
would any other image.

.. warning::
   Important for lst file creation
   
   The list importer is quite sensitive and may fail to import if the .lst file contains extra space caracters or non unix line terminator.
   
   See `this forum thread <https://forums.synfig.org/t/solved-my-lst-import-is-blank-doesnt-bring-mouths-frm-papagayo/2517>`__  for more info. 

The default framerate is 15 frames per second. If you would like to use
a different frame-rate, add a line to the file like this:

``FPS 24``

Now the frame-rate will be 24 frames per second.

The list importer allows also import
`Papagayo <http://www.lostmarble.com/papagayo/index.shtml>`__ output
lipsync voice files.

As well as Papagayo only export the phonemes it is assumed by default
that the image file is a jpeg image with “jpg” extension. This means
that the standard phonemes image files must be called like this:

| AI.jpg
| E.jpg
| etc.jpg
| FV.jpg
| L.jpg
| MBP.jpg
| O.jpg
| rest.jpg
| U.jpg
| WQ.jpg

If you want to change the type of image file just insert a valid
extension before the phonemes. It should be done manually as well as the
FPS thing.

This is how a valid “lst” file from papagayo looks after inserting the
FPS and the change to other image file type:

| MohoSwitch1
| FPS 24
| png
| 4 O
| 7 L
| 10 AI
| 13 rest
| 22 rest
| 23 MBP
| 26 E
| 29 etc
| 31 AI
| 33 MBP
| 35 O
| 37 etc
| 39 E
| 41 etc
| 43 E
| 45 etc
| 47 E
| 49 rest

It says: “*Hola, me llamo Genete*”

In this case it has been changed to png.

Allowed image types are:

-  jpg (default)
-  png,
-  ppm
-  tiff
-  gif
-  SVG (since 1.5.2)

Useful scripts
======================

-  :download:`Convert-movie-to-png-seq.sh <image_sequences_dat/convert-movie-to-png-seq.sh>`: Nautilus (Gnome file manager) script
   which creates a png-sequence from a given movie file and creates a
   list-file which you can then import into Synfig. By Rylleman,
   `Synfig forum
   thread <https://forums.synfig.org/t/script-to-convert-movies-to-synfig-compliant-image-sequences/443>`__
   for more info,
-  `Listail - List File Generator <https://github.com/andeon/listail>`__
   : Listail create a list of images to 'lst' file, consisting of a
   frame rate followed by a list of images to display.
   `listail <https://github.com/andeon/listail>`__ by Anderson Prado
   (AndeOn).

