.. _interface:

########################
    Interface
########################
Synfig Studio start in one window, and dock a number of individual
`panels <Panel>`__ into that window. The default layout of user
interface is divided in three parts : the toolbox, the canvas and the
other panels.

.. figure:: interface_dat/Interface-preview.png
   :alt: SynfigStudio - User Interface
   :width: 900px

This page tries to give you a short introduction to the different
elements you will find after opening synfig.

The Toolbox window
------------------

.. figure:: interface_dat/ToolBox.png
   :alt: The Toolbox
   :width: 400px

The Toolbox Panel is a major piece of Synfig : even if you have several open projects,
there will only be one Toolbox.

The toolbox is separated into two areas:

-  The upper palette contains the **tools** which allow you to create
   and manipulate objects. In synfig we will talk of `layers <layer>`__,
   as each object lies in its own layer. You can find a detailed
   description of each tool here.

-  The lowest palette contains the **default settings** for new layers:
   fore- and background colors ([New\_Layer\_Defaults#Brush\_Colors]),
   Brush Size ([New\_Layer\_Defaults#Brush\_Size]) and Current Gradient
   ([New\_Layer\_Defaults#Current\_Gradient]). You can find a detailed
   description of each default settings `here <New_Layer_Defaults>`__.

The Canvas window
-----------------

|The Canvas| Once you have opened a file or created a new project you'll
see the Canvas Window. This is where you'll create your animation!

In addition of set of menus at the top of the screen, or the top of the
drawing window, Synfig has a **`caret <Canvas_Menu_Caret>`__**: the
little black triangle in the upper left corner of the canvas. Beneath
are all the menus you would expect and that allow you to access most of
Synfig's features.

The area with the grey check-board pattern is your **working area** in
which you can create elements/layers and manipulate them.

The `timeline <Timebar>`__ that you can see in the picture here only
appears when you have defined a non-zero duration in the
`properties <Canvas_Properties_Dialog>`__ of your project. To the left
you can see the number of the current frame and on the right side
buttons to `lock/unlock <Lock_Keyframes>`__ the keyframes and to switch
the `animation status <Animate_Editing_Mode>`__. The `Doc:Animation
Basics <Doc:Animation_Basics>`__ Tutorial gives a good introduction on
how to work with this buttons.

In the picture above there are three elements on the canvas, the black
curve - called `Spline <Spline>`__ - is selected. The little orange and
brown dots along the spline control the curve and are called
`handles <handle>`__. Also you can see the
`Group\_Transformation\_Widget <Group_Transformation_Widget>`__ of the
selected `Group Layer <Group_Layer>`__.

Show/Hide Menu Bar
~~~~~~~~~~~~~~~~~~

With the menu entry \ ``|Show Menu Bar|`` you can hide the menu bar. To
show again the menu bar use the same entry from the `Canvas Menu
Caret <Canvas_Menu_Caret>`__.

The other panels
----------------

The Navigator, Tool Options and Layers Panel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|Navigator and Layers Panel| 

To the right side, three areas, each of
which can show different  panels: in this picture the `Navigator
Panel <Navigator_Panel>`__, the `Tool Options
Panel <Tool_Options_Panel>`__ and the `Layers Panel <Layers_Panel>`__
are active.

You can access detailed descriptions of the other panels here.

The Parameter and Time Track Panel
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

|Parameters and Time Track panels| 

Finally, at the bottom you can see
the `Parameters Panel <Parameters_Panel>`__, where you can find detailed
`parameters <Parameter>`__ and settings for the active element like
colour, width, opacity, location and so on. To the right is the
`Timetrack Panel <Timetrack_Panel>`__ that allows you to create and
modify `waypoints <waypoints>`__.


.. |The Canvas| image:: interface_dat/Canvas_1.0.png
   :width: 900px
.. |Navigator and Layers Panel| image:: interface_dat/Info_ToolOption_Layer_Panel.png
   :width: 200px
.. |Parameters and Time Track panels| image:: interface_dat/Parameters_TimeTrack_Panel.png
   :width: 600px




