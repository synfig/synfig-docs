.. _layer_polygon:

########################
    Polygon Layer
########################
.. figure:: polygon_dat/Layer_geometry_polygon_icon.png
   :alt: Layer_geometry_polygon_icon.png
   :width: 64px

About Polygon Layer
-------------------

Polygon Layers are made by the `Polygon Tool <Polygon_Tool>`__. Their
use is deprecated, with `Region Layers <Region_Layer>`__ being the
preferred layer type.

Note that you can make regular polygons with even numbers of sides using
the `Star Layer <Star_Layer#Regular_2N-sided_Polygons>`__.

Parameters of the Polygon Layers
--------------------------------

The parameters of the Polygon layers are:

+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
| Name                                                                                    | Value                   | Type               |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__                              |   0.000000              |   real             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_real\_icon.png| `Amount <Amount_Parameter>`__                                |   1.000000              |   real             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_integer\_icon.png| `Blend Method <Blend_Method>`__                           |   Composite             |   integer          |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_color\_icon.png| `Color <Color_Editor_Dialog>`__                             | |p_color_green.png|     |   color            |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_vector\_icon.png| `Origin <Origin_Parameter>`__                              |   0.000000u,0.000000u   |   vector           |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_bool\_icon.png| `Invert <Invert_Parameter>`__                                |                         |   bool             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_bool\_icon.png| `Antialiasing <Antialiasing_Parameter>`__                    |                         |   bool             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_real\_icon.png| `Feather <Feather_Parameter>`__                              |   0.000000u             |   real             |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_integer\_icon.png| `Type of Feather <Feather_Parameter#Type_of_Feather>`__   |   Fast Gaussian Blur    |   integer          |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_integer\_icon.png| `Winding Style <Winding_Style_Parameter>`__               |   Non Zero              |   integer          |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+
|     |Type\_list\_icon.png| `Vector List <Vector_List_Parameter>`__                      |   List                  |   list (Dynamic)   |
+-----------------------------------------------------------------------------------------+-------------------------+--------------------+


Examples
--------

Here are some example polygons (in case you forgot what they look like):

.. figure:: polygon_dat/Polygons.png
   :alt: Polygons.png
:download:`Polygons.sifz<polygon_dat/Polygons.sifz>`


Note that the edges can cross each other. When they do, the `Winding
Style Parameter <Winding_Style_Parameter>`__ comes into play.

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
