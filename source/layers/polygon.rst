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
|     |Type\_list\_icon.png| |Vector_List_Parameter|                                      |   List                  |   list (Dynamic)   |
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
