.. _tool_spline:

########################
    Spline Tool
########################

|spline_dat/Tool_bline_icon.png| \ **ALT-B**\ 

.. |spline_dat/Tool_bline_icon.png| image:: spline_dat/Tool_bline_icon.png
   :width: 64px

.. _tool_spline  Introduction:

Introduction
------------

|Spline| are the most used objects in any normal animation
done with Synfig, and the Spline Tool allows you to create them.

.. _tool_spline  Usage:

Usage
-----

Select the ``Spline Tool`` in the or use keyboard the shortcut ``Alt+b``
to enable it. To leave that mode just select another from the
|Toolbox|.

.. _tool_spline  It is easy to use this tool:

It is easy to use this tool
~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  Each single click creates a new ``Vertex``. Its ``Tangent`` values
   are set to (0,0) and the ``Vertex`` becomes a sharp corner.
-  Click and drag creates a new ``Vertex`` and allows the modification
   of the ``Tangent`` value at that ``Vertex``. Extending the
   ``Tangent`` smooths the corners.
-  Each new ``Vertex`` is attached to the previous by a
   ``Bézier Spline`` defined by the vertices' position and tangents.
-  The ``Spline`` is created sequentially, one ``Vertex`` follows the
   previous one.
-  The end point of the previous ``Spline`` arc guides the next arc
   created until you close it. The next created ``Spline`` will be
   independent of the previously created one.
-  You can tweak the newly created Vertices by clicking on their
   |Handle| and dragging them.
-  You can also right click on a ``Vertex`` handle or a ``Tangent``
   handle and it will provide a context menu:

   -  For ``Tangent`` handles: ``Split Tangent's Angle`` and
      ``Split Tangent's Radius`` will split the ``Tangent`` so that you
      can independently modify the arch of an end point of a Bézier
      curve. On the opposite, ``Merge Tangent's Angle`` and
      ``Merge Tangent's Radius`` will merge the independent ``Tangents``
      so that you can align the arches of the end points of two
      connecting Bézier curves.
   -  For ``Vertex`` handles: ``Loop Spline`` or ``Unloop Spline``
      (depending if already looped or not) allows you to close or open
      the ``Spline``. ``Delete Vertex`` allows you to delete the
      ``Vertex``.

-  You can also right click in the middle of a Bézier curve.
   ``Insert Vertex`` allows the insertion of a ``Vertex`` (and sets its
   Tangents intelligently according to the neighboring Vertices) where
   you clicked.

.. _tool_spline  To finish the Spline:

To finish the Spline
~~~~~~~~~~~~~~~~~~~~

#. Select another tool in the .
#. Or click on the gear button |Gear_icon.png| of the |Tool_Options_Panel|.

To clear out the working Spline, press the ``Esc`` button.

Category:Toolbox

.. |Gear_icon.png| image:: spline_dat/Gear_icon.png

.. _tool_spline  Options:

Options
-------

|Spline_Tool_Options.png| 

This tool has the following options:

-  **Name**: Sets the name of the Spline that you will create, in this
   case “Spline070”. If the ending part of the string contains an
   integer number, this input text box will parse it and increase that
   number for the next created Spline. Otherwise, it will add a three
   digit number while creating the next one.
-  **Layer Type**: Sets whether to create |Region_Layer|,
   |Outline_Layer|, |Advanced_Outline_Layer|, |Plant_Layer| and/or
   |Curve_Gradient_Layer| Layers.
-  |Blend_Method_Parameter|: Sets the blending
   method used to composite on the layers below.
-  **Opacity**: Sets the |Amount_Parameter| for new
   layers. Defaults to **1.00** (Completely opaque).
-  **Brush Size**: Sets the size of the line for |Outline_Layer| and/or |Advanced_Outline_Layer|.
-  **Feather**: Sets the |Feather_Parameter| of
   the |Region_Layer| or Outline Layer created.
-  **Link Origin**: If checked, links the |Origin_Parameter| for the |Plant_Layer|,
   |Region_Layer| or Outline if two of them (or all them) are
   checked.
-  **Auto Export**: If checked, exports automatically the Vertices Parameter (that's a |Spline| type
   parameter)

| 

.. |Spline_Tool_Options.png| image:: spline_dat/Spline_Tool_Options.png

.. _tool_spline  Other sources of information:

Other sources of information
----------------------------

``TODO: Add sources``


.. |Bline\_icon.png| image:: Bline_icon.png
   :width: 64px
.. |Gear\_icon.png| image:: Gear_icon.png



.. |Spline| replace:: `Spline <https://en.wikipedia.org/wiki/Spline_(mathematics)>`__
.. |Toolbox| replace:: :ref:`Toolbox <panel_toolbox>`
.. |Handle| replace:: :ref:`Handle <handles>`
.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`
.. |Outline_Layer| replace:: :ref:`Outline Layer <layer_outline>`
.. |Advanced_Outline_Layer| replace:: :ref:`Advanced Outline Layer <layer_advanced_outline>`
.. |Region_Layer| replace:: :ref:`Region Layer <layer_region>`
.. |Plant_Layer| replace:: :ref:`Plant Layer <layer_plant>`
.. |Curve_Gradient_Layer| replace:: :ref:`Curve Gradient Layer <layer_curve_gradient>`
.. |Blend_Method_Parameter| replace:: :ref:`Blend Method Parameter <parameters_blend_method>`
.. |Amount_Parameter| replace:: :ref:`Opcaity <opacity>`
.. |Feather_Parameter| replace:: :ref:`Feather Parameter <parameters_feather>`
.. |Origin_Parameter| replace:: :ref:`Origin Parameter <parameters_origin>`
.. |Video_Tutorials| replace:: 