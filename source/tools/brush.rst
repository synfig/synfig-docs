.. _tool_brush:

########################
     Brush Tool
########################

.. note::
   This feature is still in development. 

|Tool_brush_icon.png| \ **ALT-?**\ 

.. _tool_brush  Introduction:

Introduction
------------

The ``Brush Tool`` allows you to draw freehand over the top of a |Import_Image_Layer| using the
`MyPaint <http://mypaint.intilinux.com/>`__ brushes. Combined with
|Switch_Group_Layer| you can create frame by
frame animations.

-  It is possible to paint on the |Import_Image_Layer|
-  Basic pressure sensitivity is supported.
-  Image size is automatically expanded when you paint outside of image
   boundaries.
-  An |Import_Image_Layer| is automatically created if
   the current layer isn't an |Import_Image_Layer|.

.. _tool_brush  Options:

Options
-------

.. figure:: brush_dat/Brush_Tool_Options.png
   :alt: Brush_Tool_Options.png

   
-  Eraser check box. When checked, the brush acts as a rubber.
-  Display the set of configured brushes (MyPaint brushes format). By
   default, Synfig is installed with a selected set of brushes from
   “Concept Design (C\_D)” pack by `Ramon
   Miranda <http://www.ramonmiranda.com/2011/09/mypaint-concept-design-set-es.html>`__.
   From the |Preferences_Dialog_System|,
   you can configure the ``Brush Presets Path`` to use other brushes
   package (for example the ones listed by
   `MyPaint <https://github.com/mypaint/mypaint/wiki/Brush-Packages>`__)

| The ``Brush Tool`` uses the color of the |New_Layer_Defaults_Brush_Colors| and the |New_Layer_Defaults_Brush_Size| set in the
  |Toolbox| to paint.

.. _tool_brush  Other sources of information:

Other sources of information
----------------------------

Here you can find a video about brush usage and frame by frame animation

`Development: Frame-by-frame animation (Part
4) <https://www.youtube.com/watch?v=Z5Bj2BzG36U>`__

.. |Tool_brush_icon.png| image:: brush_dat/Tool_brush_icon.png
   :width: 64px


.. |Import_Image_Layer| replace:: :ref:`Image Layer <import_image_layer>`
.. |Switch_Group_Layer| replace:: :ref:`Switch Group Layer <layer_switch_group>`
.. |Preferences_Dialog_System| replace:: :ref:`Preferences Dialog System <preferences_dialog_system>`
.. |New_Layer_Defaults_Brush_Colors| replace:: :ref:`New Layer Defaults: Brush Color <new_layer_defaults Brush Colors>`
.. |New_Layer_Defaults_Brush_Size| replace:: :ref:`New Layer Defaults: Brush Size <new_layer_defaults Brush Size>`
.. |Toolbox| replace:: :ref:`Toolbox <panel_toolbox>`