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

The ``Draw Tool`` can generate a `Region Layer <Region_Layer>`__, an
`Outline Layer <Outline_Layer>`__ and an `Advanced Outline
Layer <Advanced_Outline_Layer>`__ with pressure output from the tablet
mapped to the line's width.

Options
-------
|Draw_Tool_Options.png|

The `Tool Options Panel <Tool_Options_Panel>`__ allows you to specify:

-  **Name** : Used for the new layer; any number in this field will automatically increment with each layer created
-  **Layer Type** : Whether create `Outline <Outline_Layer>`__ and/or
   `Advanced Outline <Advanced_Outline_Layer>`__,
   `Region <Region_Layer>`__ layers (Splines)
-  `Blend Method <Blend_Method_Parameter>`__ : The blending method
   used to composite on the layers below
-  **Opacity** : Sets the `Amount Parameter <Amount_Parameter>`__ for
   new layers. Defaults to 1.00 (Completely opaque)
-  **Brush Size** : Sets the `Outline
   width <Outline_Layer#Outline_width>`__ or the size of the gradient
   (only for `Outline <Outline_Layer>`__, `Advanced
   Outline <Advanced_Outline_Layer>`__ and `Curve
   Gradient <Curve_Gradient_Layer>`__)
-  **Pressure Sensitive**

   -  **Min Pressure** : The value of this option clamps the lower end
      of the Pressure sensitivity to a specific value, essentially
      determining how thin the thinnest possible segment is relative to
      the `Brush Size <New_Layer_Defaults#Brush_Size>`__ parameter in
      the `Toolbox <Toolbox>`__.

-  **Smoothness** : Determines how much tablet jitter is removed, and as
   a result, how many vertices the resulting splines are composed of.
   Could by Local or Global

   -  **Local** : Adjust the Spline between the Splines points.
   -  **Global** : Adjust the Spline globally.

-  **Width Max Error** : for advanced outline layer.
-  **Round End** : The ends of the spline will be rounded, only for
   `Outline <Outline_Layer>`__, `Advanced
   Outline <Advanced_Outline_Layer>`__ layers.
-  **Auto Loop** : When the stroke of the ``Draw Tool`` ends near the
   beginning of the stroke, automatically connect the last
   `Handle <Handle>`__ to the first.
-  **Auto Extend** : When the stroke begins and/or end at or near an
   endpoint `Handle <Handle>`__ of another `outline <Outline_Layer>`__,
   the resulting `outline <Outline_Layer>`__ is simply appended to the
   existing `Outline Layer <Outline_Layer>`__
-  **Auto Link** : When the stroke begins and/or ends at or near a
   vertex Handle in another `outline <Outline_Layer>`__, and the outline
   isn't being extended by the ``Auto Extend`` option above, the first
   and/or last vertex of the resulting `outline <Outline_Layer>`__ is
   `linked <Linking>`__ to the Handle on the existing `Outline
   Layer <Outline_Layer>`__.
-  **Feather** : Set the `Feather Parameter <Feather_Parameter>`__ on
   the layer
-  **Auto Export** : Automatically `Export <Export>`__ the Spline list
   points into the Values Base Nodes of the `Library
   Panel <Library_Panel>`__

.. |Draw_Tool_Options.png| image:: draw_dat/Draw_Tool_Options.png  

Buttons
-------

**Fill Last Stroke** : |Tool_fill_icon.png| Hit this button after
having created a shape with the ``Draw Tool`` to create a `Region
Layer <Region_Layer>`__, filled with the
`current <New_Layer_Defaults#Brush_Colors>`__ ``Fill Color``, of the
last trace you have drawn.

.. |Tool_fill_icon.png| image:: draw_dat/Tool_fill_icon.png
   :width: 20px


