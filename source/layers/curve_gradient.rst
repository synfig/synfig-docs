.. _layer_curve_gradient:

###########################
    Curve Gradient Layer
###########################
.. figure:: curve_gradient_dat/Layer_gradient_curve_icon.png
   :alt: Layer_gradient_curve_icon.png
   :width: 64px

.. _layer_curve_gradient  About Curve Gradient Layer:

About Curve Gradient Layer
--------------------------

As you already guessed, a Curve Gradient is a gradient that follows a
curve. One side of the curve will be filled with the color at the
beginning of the current gradient (see the |Gradient_Editor_Dialog|), and the other side will be filled
by the color at the end of the gradient. In other words, the gradient
will fully cover your canvas (as the other gradients do), and you'll
have to play with the |Blend_Method| if you want to
bind it to a specific shape.

There are two ways to display a gradient: the default one (fast), and an
improved one that can remove any render artifacts you have with the
first one. To switch from one method to the other, check/uncheck the
``Fast`` |Parameter| from the |Parameters_Panel|.

.. _layer_curve_gradient  Parameters of Curve Gradient Layer:

Parameters of Curve Gradient Layer
----------------------------------

The parameters of the ``Curve Gradient Layer`` are:

+--------------------------------------------------------------------+---------------------------+--------------+
| **Name**                                                           | **Value**                 | **Type**     |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Real\_icon.png| |Z_Depth_Parameter|                           |   0.000000                |   real       |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Real\_icon.png| |Amount_Parameter|                            |   1.000000                |   real       |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Integer\_icon.png| |Blend_Method|                             |   Composite               |   integer    |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Vector\_icon.png| |Origin_Parameter|                          |   0.000000pt,0.000000pt   |   vector     |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Real\_icon.png| Width                                         |   5.500000pt              |   real       |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |List\_icon.png| Vertices                                      |   List                    |   spline     |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Gradient\_icon.png| |Gradient_Editor_Dialog|                  |   |p_gradient.png|        |   gradient   |
|                                                                    |                           |              |
|                                                                    |                           |              |
|                                                                    |                           |              |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Bool\_icon.png| Loop                                          |  |p_checkbox_off.png|     |   bool       |
|                                                                    |                           |              |
|                                                                    |                           |              |
|                                                                    |                           |              |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Bool\_icon.png| ZigZag                                        |  |p_checkbox_off.png|     |   bool       |
|                                                                    |                           |              |
|                                                                    |                           |              |
|                                                                    |                           |              |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Bool\_icon.png| Perpendicular                                 |  |p_checkbox_off.png|     |   bool       |
|                                                                    |                           |              |
|                                                                    |                           |              |
|                                                                    |                           |              |
+--------------------------------------------------------------------+---------------------------+--------------+
|     |Bool\_icon.png| |Curve_Gradient_Layer_Fast_Option|            |  |p_checkbox_off.png|     |   bool       |
|                                                                    |                           |              |
|                                                                    |                           |              |
|                                                                    |                           |              |
+--------------------------------------------------------------------+---------------------------+--------------+


.. _layer_curve_gradient  Creating a Curve Gradient:

Creating a Curve Gradient
-------------------------

There are several ways to create a gradient that follows a curve.

-  With the |Spline_Tool|, check ``Gradient`` in the
   |Tool_Options_Panel|. It will create a
   gradient that follows the curve you draw.

-  In the |Canvas_Layer_Menu_New_Layer_Menu| (from
   the |Canvas_Menu_Caret| or with a right click
   on a layer in the |Layers_Panel|), select *Gradients
   > Curve Gradient*. It will create a gradient with a default shape. On
   the |Parameters_Panel|, right click on
   ``Vertices``, and select *Convert > Spline*, so you can edit the
   shape of the gradient.

-  To make a Curve Gradient follow an **existing** shape, place the
   ``Curve Gradient Layer`` above the layer containing the shape in the
   |Layers_Panel|. Select those two layers, then on the
   Parameters Panel, right-click on ``Vertices`` (greyed) and select
   ``Link``.

-  Alternately, to make a Curve Gradient follow an existing Spline shape
   (|Outline_Layer|, |Region_Layer|, or other
   Curve Gradient), select the shape you want it to follow, right-click
   its Vertices Parameter in the |Parameters_Panel|
   and chose |Export| from the menu. Type a name in the
   dialog that pops up. Then select the ``Curve Gradient Layer`` where
   you want to use this exported shape. Open the |Library_Panel|, find the shape you just exported and select
   it. Then right-click on the Vertices parameter of the exported Layer
   where you want to use the shape and select ``Connect`` from the menu.

.. _layer_curve_gradient  Spreading the gradient:

Spreading the gradient
----------------------

Your Curve Gradient is now created, but it may not look at all like a
gradient. Instead it may looks like each side of the curve was filled
with a solid color. That's because the width of the gradient is too
small. Make sure that the ``Curve Gradient Layer`` is selected, and in
the |Parameters_Panel|, increase the ``Width``
value. Your gradient will appear.

An easier way to increase the gradient size is to use the Width
|Handle|. In the |Canvas_Menu_Caret| select
*View > Show/Hide Handles > Show Width Handles*. The Width Handles
appear in purple on the Canvas. Grab one of them to adjust the width.
Each Width Handle can be adjusted independently. The width of the
gradient will follow the width of the Spline at each point, so it's
possible to have the gradient very wide in some places and less wide in
others.

.. _layer_curve_gradient  Fast Option:

Fast Option
-----------

Within the |Parameters_Panel| of the
``Curve Gradient Layer`` is a ``Fast`` option. I'm unsure exactly what
speed up it produces, but it does cause a visual artifact when the
gradient is constrained with transparency as show in the |Gradient_Editor_Dialog| page, and curve vertices are
set to width = 0.

.. figure:: curve_gradient_dat/FastGradientCurve.webp
   :alt: FastGradientCurve.webp

The ``Fast`` option can be turned **Off** in the curve gradient layer's
|Parameters_Panel|.

.. |Real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |List_icon.png| image:: images/Type_list_icon.png
   :width: 16px
.. |Gradient_icon.png| image:: images/Type_gradient_icon.png
   :width: 16px
.. |Bool_icon.png| image:: images/Type_bool_icon.png
   :width: 16px
.. |p_checkbox_off.png| image:: images/p_checkbox_off.png
.. |p_gradient.png| image:: images/p_gradient.png
