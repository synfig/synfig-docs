.. _layer_region:

########################
    Region Layer
########################

.. figure:: region_dat/Layer_geometry_region_icon.png
   :alt: Layer_geometry_region_icon.png
   :width: 64px

.. _layer_region  About Region Layers:

About Region Layers
-------------------

The Region Layer is much like the |Outline_Layer|,
except that the shapes it describes are filled in, rather than just
being an outline.

To create a Region Layer use the |Spline_Tool| and check
``Create Region`` in the |Tool_Options_Panel|.
Once you finish the definition of the geometry of your outline and after
pressing the ``Make Spline`` button (or selecting another tool or state)
you create the Region Layer with the
|New_Layer_Defaults_Brush_Colors| ``Fill Color``.

Depending on the options you choose in the |Tool_Options_Panel| other like |Star_Tool| or
|Circle_Tool| can also create Region Layers.

Using the |Canvas_Layer_Menu| ``Make Advanced Outline``,
``Make Outline`` or ``Make Region`` commands you can also create those
layers.

.. _layer_region  Parameters of Region Layers:

Parameters of Region Layers
---------------------------

The parameters of the region layers are:

+-----------------------------------------------------------------+-------------------------+------------------+
| **Name**                                                        | **Value**               | **Type**         |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_real\_icon.png| |Z_Depth_Parameter|                  |   0.000000              |   real           |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_real\_icon.png| |Amount_Parameter|                   |   1.000000              |   real           |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_integer\_icon.png| |Blend_Method|                    |   Composite             |   integer        |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_color\_icon.png| |Colors_Dialog|                     | |p_color_green.png|     |   color          |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
|                                                                 |                         |                  |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_vector\_icon.png| Origin                             |   0.000000u,0.000000u   |   vector         |
+-----------------------------------------------------------------+-------------------------+------------------+
|     |Type\_bool\_icon.png| |Invert_Parameter|                   | |p_checkbox_off.png|    |   bool           |
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

The parameters are exactly the same as in the |Outline_Layer|, except that region layers don't have the
following 7 parameters, which are all specific to outlines:

-  |Outline_Layer_Outline_width|
-  |Outline_Layer_Expand|
-  |Outline_Layer_Sharp_cups|
-  |Outline_Layer_Rounded_Begin|
-  |Outline_Layer_Rounded_End|
-  |Outline_Layer_Loopyness|
-  |Outline_Layer_Homogeneous|

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


.. |Z_Depth_Parameter| replace:: :ref:`Z Depth Parameter <parameters_zdepth>`
.. |Amount_Parameter| replace:: :ref:`Opacity <opacity>`
.. |Blend_Method| replace:: :ref:`Blend Method <parameters_blend_method>`
.. |Colors_Dialog| replace:: :ref:`Color <colors_dialog>`
.. |Invert_Parameter| replace:: :ref:`Inver Parameter <parameters_invert>`

.. |Outline_Layer| replace:: :ref:`Outline Layer <layer_outline>`
.. |Outline_Layer_Outline_width| replace:: :ref:`Outline Width <layer_outline  Outline width>`
.. |Outline_Layer_Expand| replace:: :ref:`Expand <layer_outline  Expand>`
.. |Outline_Layer_Sharp_cups| replace:: :ref:`Sharp Cusps <layer_outline  Sharp cups>`
.. |Outline_Layer_Rounded_Begin| replace:: :ref:`Rounded Begin <layer_outline  Rounded Begin>`
.. |Outline_Layer_Rounded_End| replace:: :ref:`Rounded End <layer_outline Rounded End>`
.. |Outline_Layer_Loopyness| replace:: :ref:`Loopyness <layer_outline  Loopyness>`
.. |Outline_Layer_Homogeneous| replace:: :ref:`Homogeneous <layer_outline  Homogeneous>`