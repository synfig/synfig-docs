.. _layer_group:

########################
    Group Layer
########################
.. figure:: group_dat/Layer_other_group_icon.png
   :alt: Layer_other_group_icon.png
   :width: 64px

About Group Layer
-----------------

The ``Group Layer`` is a special layer that can hold other layers. It is
generated via the `Group <Group>`__ command accessed via the context
menu in the `Layers Panel <Layers Panel>`__ or through the in the `Canvas Menu
Caret <Canvas_Menu_Caret>`__.

As well as grouping a set of layers, it can also apply transformations
to the contained layers like translation, scaling, and even modify their
time offset.

A ``Group Layer`` can also be created through the `New Layer Menu <Category:Layer_Menu#New_Layer_Menu>`__, using ``New Layer -> Other -> Group Layer``.

Parameters of Group Layer
-------------------------

The parameters of the ``Group Layer`` are:

+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
| **Name**                                                                               | **Value**                             | **Type**           |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__                             |   0.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Amount <Amount_Parameter>`__                               |   1.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |type\_integer\_icon.png| `Blend Method <Blend_Method>`__                          |   Composite                           |   integer          |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_vector\_icon.png| `Origin <Origin_Parameter>`__                             |   0.000000u,0.000000u                 |   vector           |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     `Transformation <Group_Layer#Transformation_Parameter>`__                          |   0.000000, 0.000000, 0.00°, 60, 60   |   transformation   |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_canvas\_icon\_0.63.06.png| `Canvas <Group_Layer#Canvas_Parameter>`__        |                                       |   canvas           |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Speed <Group_Layer#Speed>`__                               |   1.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Zoom <Zoom_Parameter>`__                                   |   0.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_time\_icon.png| `Time Offset <Time_Offset_Parameter>`__                     |   Of                                  |   time             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_bool\_icon.png| `Lock Selection <Lock_Selection>`__                         | |p_checkbox_off.png|                  |   bool (Static)    |
|                                                                                        |                                       |                    |
|                                                                                        |                                       |                    |
|                                                                                        |                                       |                    |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_vector\_icon.png| `Focus Point <Focus_Point>`__                             |   0.000000u,0.000000u                 |   vector           |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Outline Grow <Group_Layer#Outline_Grow_Parameter>`__       |   0.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_bool\_icon.png| `Z Range <Group_Layer#Z_Depth_Range_Enabled>`__             | |p_checkbox_off.png|                  |   bool             |
|                                                                                        |                                       |                    |
|                                                                                        |                                       |                    |
|                                                                                        |                                       |                    |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Z Range Position <Group_Layer#Z_Depth_Range_Position>`__   |   0.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Z Range Depth <Group_Layer#Z_Depth_Range_Depth>`__         |   1.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+
|     |Type\_real\_icon.png| `Z Range Blur <Group_Layer#Z_Depth_Range_Transition>`__     |   0.000000                            |   real             |
+----------------------------------------------------------------------------------------+---------------------------------------+--------------------+

Transformation Parameter
~~~~~~~~~~~~~~~~~~~~~~~~

The ``Transformation`` parameter is a composite parameter, it holds an
Offset, a rotation Angle, a Skew Angle and a Scale value for the group.
The ``Transformation`` parameter is already `converted to
composite <Convert#Composite>`__ when the `Group Layer <Group_Layer>`__
is created and so directly exposes the `Offset <Offset_Parameter>`__,
`Rotation <Rotation_Parameter>`__, `Skew <Skew_Parameter>`__ and
`Scale <Scale_Parameter>`__ subparameters.

See also `Group\_Transformation\_Widget <Group_Transformation_Widget>`__

Canvas Parameter
~~~~~~~~~~~~~~~~

.. figure:: images/Type_canvas_icon_0.63.06.png
   :alt: Type_canvas_icon_0.63.06.png
   :width: 64px

This is “Group” by default if the ``Group Layer`` was created by
grouping other layers, or ``No Image Selected`` if it was created from
the `New Layer Menu <New_Layer_Menu>`__. This parameter lets you select
another canvas.

The Canvas parameter presents a drop-down menu of the exported canvases,
plus an extra entry called “Other...”. Selecting “Other...” presents the
user with a text entry box asking for the name of the canvas to use. The
name typed should have the following format (where [ ] indicates an
optional part, ( ) is for grouping, and \* means “0 or more times”):

   [[filename]#][:]id(:id)*

In its simplest form, this is just an *id*, ie. the exported name of one
of the child canvases of the current canvas.

Other possibilities are:

-  if a '#' is present, the part before the '#' is interpreted as the
   filename of an external .sif file to use.
-  if the '#' is the first character of the string (ie. the filename is
   blank) then the '#' is ignored, and the current canvas is used
   instead
-  if a ':' appears before the first *id*, it means to start at the root
   canvas of the current canvas
-  each subsequent :id steps down into the specified child

Examples:

-  **/usr/share/doc/synfig/examples/business\_card.sifz#:IndividualCard**
   -- gives the absolute path to a .sifz file, and says to use the
   canvas that was exported from its root canvas as “IndividualCard”
-  **../../examples/business\_card.sifz#:IndividualCard** -- the same,
   but with a relative path to the .sifz file
-  **#:sy:head:eyes:left** -- look in the current composition, and
   starting from the root, navigate down through the canvas tree. Find a
   child canvas of the root canvas called 'sy', look in 'sy' for a child
   canvas called 'head', and so on.
-  **:sy:head:eyes:left** -- exactly as above. an empty filename is the
   same as not using the '#' at all
-  **eyes:left** -- without a ':' before the first *id*, this starts at
   the current canvas (presumably the Group in question is in the “head”
   subcanvas of the “sy” subcanvas of the root)

Outline Grow Parameter
~~~~~~~~~~~~~~~~~~~~~~

This parameter allows to control thickness of all outline layers inside.
Assigning positive value to this parameter makes all child outlines
rendered thicker, while negative value makes them look thinner. This
feature is very helpful for tuning outlines in complex artwork and it
also allows to achieve some nice effects like constant outline width at
any zoom level.

Note: The ``Outline Grow`` parameter can not be applied to exported and
imported (external) Groups layers.

.. figure:: group_dat/Paste-canvas-outline-grow-param.png
   :alt: Paste-canvas-outline-grow-param.png


Z Range parameters
~~~~~~~~~~~~~~~~~~

Z Depth Range Enabled
^^^^^^^^^^^^^^^^^^^^^

When checked, only layers inside range are visible and the visible
layers are signaled with bolded font in the
`Layers\_Panel <Layers_Panel>`__

Z Depth Range Position
^^^^^^^^^^^^^^^^^^^^^^

Starting Z Depth position where layers are visible

Z Depth Range Depth
^^^^^^^^^^^^^^^^^^^

Depth where layers are visible in Z Depth range

Z Depth Range Transition
^^^^^^^^^^^^^^^^^^^^^^^^

Z Depth area where layers inside are partially visible.

Example of Z Range use : http://www.youtube.com/watch?v=UPpmOz0wUY4

Speed
~~~~~

Alters the velocity group's child animated layers (not the
``Group Layer`` itself)

Set it to zero, it would stop the animation. A value of one makes the
animation run at normal speed and a value of two makes it run double
speed. Minus one reverses the animation.

See Also
--------

`Switch\_Group\_Layer <Switch_Group_Layer>`__

.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |type_integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_canvas_icon_0.63.06.png| image:: images/Type_canvas_icon_0.63.06.png
   :width: 16px
.. |Type_time_icon.png| image:: images/Type_time_icon.png
   :width: 16px
.. |Type_bool_icon.png| image:: images/Type_bool_icon.png
   :width: 16px 
.. |p_checkbox_off.png| image:: images/p_checkbox_off.png
   
