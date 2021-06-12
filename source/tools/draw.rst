.. _tool_draw:

########################
   Draw Tool
########################

|draw_dat/Tool_draw_icon.png| \ **ALT-B**\ 

.. |draw_dat/Tool_draw_icon.png| image:: draw_dat/Tool_draw_icon.png
   :width: 64px


The ``Draw Tool`` is the one that most artists will be familiar with.
This is best used with a drawing tablet, although it can be used with a
mouse.

The ``Draw Tool`` can generate a |Region_Layer|, an
|Outline_Layer| and an |Advanced_Outline_Layer| with pressure output from the tablet
mapped to the line's width.

.. _tool_draw  Options:

Options
-------
|Draw_Tool_Options.png|

The |Tool_Options_Panel| allows you to specify:

-  **Name** : Used for the new layer; any number in this field will automatically increment with each layer created
-  **Layer Type** : Whether create |Outline_Layer| and/or
   |Advanced_Outline_Layer|,
   |Region_Layer| layers (Splines)
-  |Blend_Method_Parameter| : The blending method
   used to composite on the layers below
-  **Opacity** : Sets the |Amount_Parameter| for
   new layers. Defaults to 1.00 (Completely opaque)
-  **Brush Size** : Sets the |Outline_Layer_Outline_width| or the size of the gradient
   (only for |Outline_Layer|, |Advanced_Outline_Layer| and |Curve_Gradient_Layer|)
-  **Pressure Sensitive**

   -  **Min Pressure** : The value of this option clamps the lower end
      of the Pressure sensitivity to a specific value, essentially
      determining how thin the thinnest possible segment is relative to
      the |New_Layer_Defaults_Brush_Size| parameter in
      the |Toolbox|.

-  **Smoothness** : Determines how much tablet jitter is removed, and as
   a result, how many vertices the resulting splines are composed of.
   Could by Local or Global

   -  **Local** : Adjust the Spline between the Splines points.
   -  **Global** : Adjust the Spline globally.

-  **Width Max Error** : for advanced outline layer.
-  **Round End** : The ends of the spline will be rounded, only for
   |Outline_Layer|, |Advanced_Outline_Layer| layers.
-  **Auto Loop** : When the stroke of the ``Draw Tool`` ends near the
   beginning of the stroke, automatically connect the last
   |Handle| to the first.
-  **Auto Extend** : When the stroke begins and/or end at or near an
   endpoint |Handle| of another |Outline_Layer|,
   the resulting |Outline_Layer| is simply appended to the
   existing |Outline_Layer|
-  **Auto Link** : When the stroke begins and/or ends at or near a
   vertex Handle in another |Outline_Layer|, and the outline
   isn't being extended by the ``Auto Extend`` option above, the first
   and/or last vertex of the resulting |Outline_Layer| is
   |Linking| to the Handle on the existing |Outline_Layer|.
-  **Feather** : Set the |Feather_Parameter| on
   the layer
-  **Auto Export** : Automatically |Export| the Spline list
   points into the Values Base Nodes of the |Library_Panel|

.. |Draw_Tool_Options.png| image:: draw_dat/Draw_Tool_Options.png  

.. _tool_draw  Buttons:

Buttons
-------

**Fill Last Stroke** : |Tool_fill_icon.png| Hit this button after
having created a shape with the ``Draw Tool`` to create a |Region_Layer|, filled with the
|New_Layer_Defaults_Brush_Colors| ``Fill Color``, of the
last trace you have drawn.

.. |Tool_fill_icon.png| image:: draw_dat/Tool_fill_icon.png
   :width: 20px


