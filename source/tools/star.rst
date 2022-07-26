.. _tool_star:

########################
    Star Tool
########################


.. figure:: star_dat/Tool_star_icon.png
   :alt: Tool_star_icon.png
   :width: 64px

The Star Tool allows the easy creation of |Star_Layer|.

Select the Star Tool icon from the |Toolbox|, then click in
the |Canvas| where the center of the star should be
created and drag to specify the outer radius.

.. _tool_star  Options:

Options
-------

|Star_Tool_Options.png|

The |Tool_Options_Panel| allows you to specify:

-  **Name** : The name used for the new layer; any number in this field
   will automatically increment with each layer created
-  **Layer Type** : Whether create |Star_Layer| and/or
   |Outline_Layer|, |Region_Layer|,
   |Plant_Layer| and |Curve_Gradient_Layer|
   layers (Splines)
-  |Blend_Method_Parameter|: How to combine the
   new layer with the background.
-  **Opacity** : Sets the |Amount_Parameter| for
   new layers. Defaults to **1.00** (Completely opaque)
-  **Brush Size** : Sets the |Outline_Layer_Outline_width| or the size of the gradient
   (only for |Outline_Layer|, |Advanced_Outline_Layer| and |Curve_Gradient_Layer|)
-  **Star Points** : The number of peaks of the star.
-  **Offset** : The rotation offset of the created star.
-  **Radius Ratio** : The ratio between the peaks and the troughs of the
   star
-  **Regular Polygon** : Whether create a regular polygon instead of a
   star.
-  For Splines only, the tangent lengths for outer and inner vertices.
   Outer is limited to [-3,10] and inner is limited to [-3,3]. (*If you
   find useful open those limitations please write it in the talk page*)

   -  **Inner Width**
   -  **Inner Tangent**
   -  **Outer Width**
   -  **Outer Tangent**

-  **Invert** : Whether invert the create(d) layer(s)
-  |Feather_Parameter| : Width of the area to be
   dissolved at the edge (not for |Plant_Layer| and |Curve_Gradient_Layer|)
-  **Link Origins** : Whether Link the |Origin_Parameter| of Splines
-  **Spline Origins at Center** : Set the |Origin_Parameter| of the layer at the center of the
   star, else the center is set at the |Canvas| center

| 

.. |Star_Tool_Options.png| image:: star_dat/Star_Tool_Options.png


.. |Star_Layer| replace:: :ref:`Star Layer <layer_star>`
.. |Toolbox| replace:: :ref:`Toolbox <panel_toolbox>`
.. |Canvas| replace:: :ref:`Canvas <canvas>`
.. |Outline_Layer| replace:: :ref:`Outline Layer <layer_outline>`
.. |Advanced_Outline_Layer| replace:: :ref:`Advanced Outline Layer <layer_advanced_outline>`
.. |Region_Layer| replace:: :ref:`Region Layer <layer_region>`
.. |Plant_Layer| replace:: :ref:`Plant Layer <layer_plant>`
.. |Curve_Gradient_Layer| replace:: :ref:`Curve Gradient Layer <layer_curve_gradient>`
.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`
.. |Blend_Method_Parameter| replace:: :ref:`Blend Method Parameter <parameters_blend_method>`
.. |Amount_Parameter| replace:: :ref:`Opcaity <opacity>`
.. |Outline_Layer_Outline_width| replace:: :ref:`Outline Layer: Outline Width <layer_outline  Outline width>`
.. |Feather_Parameter| replace:: :ref:`Feather Parameter <parameters_feather>`
.. |Origin_Parameter| replace:: :ref:`Origin Parameter <parameters_origin>`