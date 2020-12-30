.. _tool_polygon:

########################
     Polygon Tool
########################

|Tool_polygon_icon.png|\  **ALT-P**\ 

Introduction
------------

This tool draws regions with straight edges. It is deprecated in favor
of the `Spline Tool <Spline_Tool>`__ which can draw straight edged
polygons and also curved shapes.

Here are some example polygons (in case you forgot what they look like):

.. figure:: polygon_dat/Polygons.png
   :alt: Polygons.png

   
|Sif_icon.png|\ `source file <Media:Polygons.sifz>`__

Note that the edges can cross each other. When they do, the `Winding
Style Parameter <Winding_Style_Parameter>`__ comes into play.

Options
-------

|Polygon_Tool_Options.png| 

The `Tool Options
Panel <Tool_Options_Panel>`__ allows you to specify:

-  **Name** : Used for the new layer; any number in this field will
   automatically increment with each layer created
-  **Layer Type** : Whether create `Polygon Layer <Polygon_Layer>`__
   and/or `Outline <Outline_Layer>`__, `Advanced
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
-  **Invert** : Whether invert the create(d) layer(s). Is related to his
   `Invert\_Parameter <Invert_Parameter>`__.
-  `Feather <Feather_Parameter>`__ : Width of the area to be
   dissolved at the edge (not for `Plant <Plant_Layer>`__ and `Curve
   Gradient <Curve_Gradient_Layer>`__)
-  **Link Origins** : Whether Link the Offset of Splines
 
Usage 
+++++++++++
Just click over the different corners of the polygon.

To finish the creation of the spline you have different options :

-  Click again over the first vertex.
-  Using the gear ``Make Polygon`` button at the bottom of the `Tool
   Options Panel <Tool_Options_Panel>`__.
-  Select any other tool from the `Toolbox Panel <Toolbox_Panel>`__.

The ``Clear Current Polygon`` button at the bottom of the
``Tool Options Panel`` could be used to clear the current polygon.



.. |Tool_polygon_icon.png| image:: polygon_dat/Tool_polygon_icon.png
   :width: 64px
.. |Sif_icon.png| image:: polygon_dat/Sif_icon.png
   :width: 24px
.. |Polygon_Tool_Options.png| image:: polygon_dat/Polygon_Tool_Options.png

