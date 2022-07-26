.. _tool_rectangle:

########################
    Rectangle Tool
########################

|Tool_rectangle_icon.png| \ **ALT-R**\ 

.. _tool_rectangle  Introduction:

Introduction
------------

The ``Rectangle Tool`` is a who creates |Rectangle_Layer| and easy creation of splined rectangles.
Click where you want any corner of the rectangle to be, and drag to the
opposite corner.

The ``Rectangle Tool`` can also be used to create |Outline_Layer|, |Advanced_Outline_Layer|, |Region_Layer|,
|Plant_Layer| and |Curve_Gradient_Layer| .

.. _tool_rectangle  Options:

Options
-------

|Rectangle_Tool_Options.png|

The |Tool_Options_Panel| allows you to specify:

-  **Name** : Used for the new layer name; any number in this field will
   automatically increment with each layer created.
-  **Layer Type** : Create |Rectangle_Layer| and/or
   |Region_Layer|, |Outline_Layer|, |Advanced_Outline_Layer|, |Plant_Layer| and
   |Curve_Gradient_Layer| (Splines).
-  |Blend_Method_Parameter| : How to combine the
   new layer with the background.
-  **Opacity** : Sets the |Amount_Parameter| for
   new layers. Defaults to **1.00** (Completely opaque).
-  **Brush Size** : Sets the |Outline_Layer_Outline_width| or the size of the gradient
   (only for |Outline_Layer|, |Advanced_Outline_Layer| and |Curve_Gradient_Layer|).
-  **Expansion** : Expand the rectangle from his corners (only for
   |Rectangle_Layer|. Is related to his |Expansion_Amount_Parameter|).
-  |Feather_Parameter| : Width of the area to be
   dissolved at the edge (not for |Rectangle_Layer|,
   |Plant_Layer| and |Curve_Gradient_Layer|).
-  **Invert** : Whether invert the create(d) layer(s). Is related to his
   |Invert_Parameter|.
-  **Link Origins** : Whether Link the Offset of Splines.
 

.. _tool_rectangle  Usage:

Usage
-----

Click on the |Canvas| where you want to have corner of the
rectangle to be, drag to the opposite corner, and release the mouse
button when you are done.


.. |Tool_rectangle_icon.png| image:: rectangle_dat/Tool_rectangle_icon.png
   :width: 64px
.. |Rectangle_Tool_Options.png| image:: rectangle_dat/Rectangle_Tool_Options.png


.. |Rectangle_Layer| replace:: :ref:`Rectangle Layer <layer_rectangle>`
.. |Outline_Layer| replace:: :ref:`Outline Layer <layer_outline>`
.. |Advanced_Outline_Layer| replace:: :ref:`Advanced Outline Layer <layer_advanced_outline>`
.. |Region_Layer| replace:: :ref:`Region Layer <layer_region>`
.. |Plant_Layer| replace:: :ref:`Plant Layer <layer_plant>`
.. |Curve_Gradient_Layer| replace:: :ref:`Curve Gradient Layer <layer_curve_gradient>`
.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`
.. |Blend_Method_Parameter| replace:: :ref:`Blend Method Parameter <parameters_blend_method>`
.. |Amount_Parameter| replace:: :ref:`Opcaity <opacity>`
.. |Outline_Layer_Outline_width| replace:: :ref:`Outline Layer: Outline Width <layer_outline  Outline width>`
.. |Expansion_Amount_Parameter| replace:: Expansion Amount Parameter
.. |Feather_Parameter| replace:: :ref:`Feather Parameter <parameters_feather>`
.. |Invert_Parameter| replace:: :ref:`Invert Parameter <parameters_invert>`
.. |Canvas| replace:: :ref:`Canvas <canvas>`