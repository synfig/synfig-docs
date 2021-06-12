.. _layer_scale:

########################
    Scale Layer
########################
.. figure:: scale_dat/Layer_transform_zoom_icon.png
   :alt: Layer_transform_zoom_icon.png
   :width: 64px

.. _layer_scale  About Scale Layers:

About Scale Layers
------------------

A ``Scale Layer`` scales the size of any |Primitive_Layer| (|Region_Layer|,
|Layer_Gradients|, etc.) below it. ``Scale Layer`` is part
of |Layers_Transform| category.

.. _layer_scale  Parameters of Scale Layers:

Parameters of Scale Layers
--------------------------

The parameters of the Scale Layers are:

+--------------------------------------------------------------+-------------------------+------------+
| **Name**                                                     | **Value**               | **Type**   |
+--------------------------------------------------------------+-------------------------+------------+
|     |Type\_real\_icon.png| |Amount_Parameter|                |   1.000000              |   real     |
+--------------------------------------------------------------+-------------------------+------------+
|     |Type\_vector\_icon.png| |Origin_Parameter|              |   0.000000u,0.000000u   |   vector   |
+--------------------------------------------------------------+-------------------------+------------+

The Amount parameter may take the inverse of the exponential function
(the natural log), as a raw value. For example:

-  the natural log of 2.00 is 0.693147181, which up-scales to 200.0%
-  the natural log of 1.00 is 0.0, which scales by 0.0%
-  the natural log of 0.50 is -0.693147181, which down-scales to 50.0%
-  the natural log of 0.10 is -2.302585092994045, which down-scales to
   10.0%
-  the natural log of 0.01 is -4.605170185988091, which down-scales to
   1.0%

The |Origin_Parameter| is the center of the scale.

In versions prior to 0.63.05 Scale Layer was called  “Zoom layer”.

.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
