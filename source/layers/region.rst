.. _layer_region:

########################
    Region Layer
########################

.. figure:: region_dat/Layer_geometry_region_icon.png
   :alt: Layer_geometry_region_icon.png
   :width: 64px

About Region Layers
-------------------

The Region Layer is much like the `Outline Layer <Outline_Layer>`__,
except that the shapes it describes are filled in, rather than just
being an outline.

To create a Region Layer use the `Spline Tool <Spline_Tool>`__ and check
``Create Region`` in the `Tool Options Panel <Tool_Options_Panel>`__.
Once you finish the definition of the geometry of your outline and after
pressing the ``Make Spline`` button (or selecting another tool or state)
you create the Region Layer with the
`current <New_Layer_Defaults#Brush_Colors>`__ ``Fill Color``.

Depending on the options you choose in the `Tool Options
Panel <Tool_Options_Panel>`__ other like `Star Tool <Star_Tool>`__ or
`Circle Tool <Circle_Tool>`__ can also create Region Layers.

Using the `Layer Menu <Canvas_Layer_Menu>`__ ``Make Advanced Outline``,
``Make Outline`` or ``Make Region`` commands you can also create those
layers.

Parameters of Region Layers
---------------------------

The parameters of the region layers are:

+-----------------------------------------------------------------+-------------------------+------------------+
| **Name**                                                        | **Value**               | **Type**         |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__      |   0.000000              |   real           |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_real\_icon.png| `Amount <Amount_Parameter>`__        |   1.000000              |   real           |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_integer\_icon.png| `Blend Method <Blend_Method>`__   |   Composite             |   integer        |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_color\_icon.png| `Color <Colors_Dialog>`__           | |p_color_green.png|     |   color          |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_vector\_icon.png| Origin                             |   0.000000u,0.000000u   |   vector         |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_bool\_icon.png| `Invert <Invert_Parameter>`__        | |p_checkbox_off.png|    |   bool           |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_bool\_icon.png| Antialiasing                         | |p_checkbox_off.png|    |   bool           |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_real\_icon.png| Feather                              |   1.000000u             |   real           |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_integer\_icon.png| Type of Feather                   |   Fast Gaussian Blur    |   integer        |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_integer\_icon.png| Winding Style                     |   Non Zero              |   integer        |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_list\_icon.png| Vertices                             |   List                  |   list(Spline)   |
+-----------------------------------------------------------------+-------------------------+------------------+

The parameters are exactly the same as in the `Outline
Layer <Outline_Layer>`__, except that region layers don't have the
following 7 parameters, which are all specific to outlines:

-  `Outline width <Outline_Layer#Outline_width>`__
-  `Expand <Outline_Layer#Expand>`__
-  `Sharp cups <Outline_Layer#Sharp_cups>`__
-  `Rounded Begin <Outline_Layer#Rounded_Begin>`__
-  `Rounded End <Outline_Layer#Rounded_End>`__
-  `Loopyness <Outline_Layer#Loopyness>`__
-  `Homogeneous <Outline_Layer#Homogeneous>`__

.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Type_color_icon.png| image:: images/Type_color_icon.png
   :width: 16px
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_bool_icon.png| image:: images/Type_bool_icon.png
   :width: 16px
.. |Type_list_icon.png| image:: images/Type_list_icon.png
   :width: 16px
.. |p_color_green.png| image:: images/p_color_green.png
.. |p_checkbox_off.png| image:: images/p_checkbox_off.png
