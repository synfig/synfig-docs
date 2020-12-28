.. _tool_circle:

########################
     Circle Tool
########################

|Tool_circle_icon.png| \ **ALT-C**\ 

Introduction
------------

The ``Circle Tool`` is used for creating new `circle
layers <Circle_Layer>`__. Click where you want the
`center <Circle_Layer#Origin>`__ of the circle to be, and drag to set
the `radius <Circle_Layer#Radius>`__.

The ``Circle tool`` can also be used to create `outline
layers <Outline_Layer>`__, `region layers <Region_Layer>`__, `curve
gradient layers <Curve_Gradient_Layer>`__, and `plant
layers <Plant_Layer>`__, each with approximately circular
`Splines <Spline>`__.

Options
-------

|Circle_Tool_Options.png| 

The `Tool Options
Panel <Tool_Options_Panel>`__ allows you to specify:

-  **Name** : Used for the new layer; any number in this field will
   automatically increment with each layer created
-  **Layer Type** : Whether create `Star Layer <Star_Layer>`__ and/or
   `Outline <Outline_Layer>`__, `Advanced
   Outline <Advanced_Outline_Layer>`__, `Region <Region_Layer>`__,
   `Plant <Plant_Layer>`__ and `Curve Gradient <Curve_Gradient_Layer>`__
   layers (Splines)
-  `Blend Method <Blend_Method_Parameter>`__ : The blending method
   used to composite on the layers below
-  **Opacity** : Sets the `Amount Parameter <Amount_Parameter>`__ for
   new layers. Defaults to **1.00** (Completely opaque)
-  **Brush Size** : Sets the `Outline
   width <Outline_Layer#Outline_width>`__ or the size of the gradient
   (only for `Outline <Outline_Layer>`__, `Advanced
   Outline <Advanced_Outline_Layer>`__ and `Curve
   Gradient <Curve_Gradient_Layer>`__)
-  **Spline Points** : Specify the number of Spline Points that will be
   used in the new Splines (for other than `Circle
   Layer <Circle_Layer>`__)
-  **Offset** : Offset of the tangent of the Spline Points (for other
   than `Circle Layer <Circle_Layer>`__)
-  **Invert** : Whether invert the create(d) layer(s). Is related to his
   `Invert\_Parameter <Invert_Parameter>`__.
-  `Feather <Feather_Parameter>`__ : Width of the area to be
   dissolved at the edge (not for `Plant <Plant_Layer>`__ and `Curve
   Gradient <Curve_Gradient_Layer>`__)
-  **Falloff** : Determines the falloff function for the feather (only
   for `Circle Layer <Circle_Layer>`__)
-  **Link Origins** : Whether Link the Offset of Splines
-  **Spline Origins at Center** : Set the origin of the layer at the
   center of the circle, else the center is set at the
   `Canvas <Canvas>`__ center

| 

Usage
-----

Click on the canvas where you want to have the center of the circle and
drag to obtain the desired radius value, and release the mouse button
when you are done.

.. |Tool_circle_icon.png| image:: circle_dat/Tool_circle_icon.png
   :width: 64px
.. |Circle_Tool_Options.png| image:: circle_dat/Circle_Tool_Options.png

