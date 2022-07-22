.. _tool_polygon:

########################
     Polygon Tool
########################

|Tool_polygon_icon.png|\  **ALT-P**\ 

.. _tool_polygon  Introduction:

Introduction
------------

This tool draws regions with straight edges. It is deprecated in favor
of the |Spline_Tool| which can draw straight edged
polygons and also curved shapes.

Here are some example polygons (in case you forgot what they look like):

.. figure:: polygon_dat/Polygons.png
   :alt: Polygons.png

   
|Sif_icon.png|\ `source file <Media:Polygons.sifz>`__

Note that the edges can cross each other. When they do, the |Winding_Style_Parameter| comes into play.

.. _tool_polygon  Options:

Options
-------

|Polygon_Tool_Options.png| 

The |Tool_Options_Panel| allows you to specify:

-  **Name** : Used for the new layer; any number in this field will
   automatically increment with each layer created
-  **Layer Type** : Whether create |Polygon_Layer|
   and/or |Outline_Layer|, |Advanced_Outline_Layer|, |Region_Layer|,
   |Plant_Layer| and |Curve_Gradient_Layer|
   layers (Splines)
-  |Blend_Method_Parameter| : The blending method
   used to composite on the layers below
-  **Opacity** : Sets the |Amount_Parameter| for
   new layers. Defaults to **1.00** (Completely opaque)
-  **Brush Size** : Sets the |Outline_Layer_Outline_width| or the size of the gradient
   (only for |Outline_Layer|, |Advanced_Outline_Layer| and |Curve_Gradient_Layer|)
-  **Invert** : Whether invert the create(d) layer(s). Is related to his
   |Invert_Parameter|.
-  |Feather_Parameter| : Width of the area to be
   dissolved at the edge (not for |Plant_Layer| and |Curve_Gradient_Layer|)
-  **Link Origins** : Whether Link the Offset of Splines
 
Usage 
+++++++++++
Just click over the different corners of the polygon.

To finish the creation of the spline you have different options :

-  Click again over the first vertex.
-  Using the gear ``Make Polygon`` button at the bottom of the |Tool_Options_Panel|.
-  Select any other tool from the |Toolbox_Panel|.


The ``Clear Current Polygon`` button at the bottom of the ``Tool Options Panel`` could be used to clear the current polygon.



.. |Tool_polygon_icon.png| image:: polygon_dat/Tool_polygon_icon.png
   :width: 64px
.. |Sif_icon.png| image:: polygon_dat/Sif_icon.png
   :width: 24px
.. |Polygon_Tool_Options.png| image:: polygon_dat/Polygon_Tool_Options.png

.. |Spline_Tool| replace:: :ref:`Spline Tool <tool_spline>`
.. |Winding_Style_Parameter| replace:: :ref:`Winding Style Parameter <parameters_winding_style>`
.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`
.. |Polygon_Layer| replace:: :ref:`Polygon Layer <tool_polygon>`
.. |Outline_Layer| replace:: :ref:`Outline Layer <layer_outline>`
.. |Advanced_Outline_Layer| replace:: :ref:`Advanced Outline Layer <layer_advanced_outline>`
.. |Region_Layer| replace:: :ref:`Region Layer <layer_region>`
.. |Plant_Layer| replace:: :ref:`Plant Layer <layer_plant>`
.. |Curve_Gradient_Layer| replace:: :ref:`Curve Gradient Layer <layer_curve_gradient>`
.. |Blend_Method_Parameter| replace:: :ref:`Blend Method Parameter <parameters_blend_method>`
.. |Amount_Parameter| replace:: :ref:`Opacity <opacity>`
.. |Outline_Layer_Outline_width| replace:: :ref:`Outline Layer: Outline Width <layer_outline  Outline width>`
.. |Invert_Parameter| replace:: :ref:`Invert Parameter <parameters_invert>`
.. |Feather_Parameter| replace:: :ref:`Feather Parameter <parameters_feather>`
.. |Toolbox_Panel| replace:: :ref:`Toolbox Panel <panel_toolbox>`