.. _layer_polygon:

########################
    Polygon Layer
########################
.. figure:: polygon_dat/Layer_geometry_polygon_icon.png
   :alt: Layer_geometry_polygon_icon.png
   :width: 64px

.. _layer_polygon  About Polygon Layer:

About Polygon Layer
-------------------

Polygon Layers are made by the |Polygon_Tool|. Their
use is deprecated, with |Region_Layer| being the
preferred layer type.

Note that you can make regular polygons with even numbers of sides using
the |Star_Layer#Regular_2N-sided_Polygons|.

.. _layer_polygon  Parameters of the Polygon Layers:

Parameters of the Polygon Layers
--------------------------------

The parameters of the Polygon layers are:

+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
| Name                                                                                    | Value                   | Type               |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_real\_icon.png| |Z_Depth_Parameter|                                          |   0.000000              |   real             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_real\_icon.png| |Amount_Parameter|                                           |   1.000000              |   real             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_integer\_icon.png| |Blend_Method|                                            |   Composite             |   integer          |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_color\_icon.png| |Color_Editor_Dialog|                                       | |p_color_green.png|     |   color            |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_vector\_icon.png| |Origin_Parameter|                                         |   0.000000u,0.000000u   |   vector           |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_bool\_icon.png| |Invert_Parameter|                                           |                         |   bool             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_bool\_icon.png| |Antialiasing_Parameter|                                     |                         |   bool             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_real\_icon.png| |Feather_Parameter|                                          |   0.000000u             |   real             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_integer\_icon.png| |Feather_Parameter_Type_of_Feather|                       |   Fast Gaussian Blur    |   integer          |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_integer\_icon.png| |Winding_Style_Parameter|                                 |   Non Zero              |   integer          |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_list\_icon.png|  Vector List Parameter                                       |   List                  |   list (Dynamic)   |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+


.. _layer_polygon  Examples:

Examples
--------

Here are some example polygons (in case you forgot what they look like):

.. figure:: polygon_dat/Polygons.png
   :alt: Polygons.png
:download:`Polygons.sifz<polygon_dat/Polygons.sifz>`


Note that the edges can cross each other. When they do, the |Winding_Style_Parameter| comes into play.

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
.. |Polygons.png| image:: Polygons.png
.. |p_color_green.png| image:: images/p_color_green.png

.. |Polygon_Tool| replace:: :ref:`Polygon Tool <tool_polygon>`
.. |Region_Layer| replace:: :ref:`Region Layer <layer_region>`
.. |Star_Layer#Regular_2N-sided_Polygons| replace:: :ref:`Star Layer: 2N-sided Polygons <layer_star  Regular 2N-sided Polygons>`

.. |Z_Depth_Parameter| replace:: :ref:`Z Depth Parameter <parameters_zdepth>`
.. |Amount_Parameter| replace:: :ref:`Opacity <opacity>`
.. |Blend_Method| replace:: :ref:`Blend Method <parameters_blend_method>`
.. |Color_Editor_Dialog| replace:: :ref:`Color <colors_dialog>`
.. |Origin_Parameter| replace:: :ref:`Origin <parameters_origin>`
.. |Invert_Parameter| replace:: :ref:`Invert <parameters_invert>`
.. |Antialiasing_Parameter| replace:: :ref:`Antialiasing <parameters_antialiasing>`
.. |Feather_Parameter| replace:: :ref:`Feather Parameter <parameters_feather>`
.. |Feather_Parameter_Type_of_Feather| replace:: :ref:`Type of Feather <parameters_feather Type of Feather>`
.. |Winding_Style_Parameter| replace:: :ref:`Winding Style Parameter <parameters_winding_style>`