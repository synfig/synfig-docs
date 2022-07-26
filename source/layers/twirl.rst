.. _layer_twirl:

########################
   Twirl Layer
########################
.. figure:: twirl_dat/Layer_distortion_twirl_icon.png
   :alt: Layer_distortion_twirl_icon.png
   :width: 64px


.. _layer_twirl  About Twirl Layers:

About Twirl Layers
------------------

``Twirl`` is the layer which deforms lower layers so that it seem as the
vortex. The intensity of the vortex is set over the rotation angle -
higher, the more intense.

Size of vortex is determinated by the radius of a circle, and distortion
can be activate separately for both the sides – inner and outer.

.. _layer_twirl  Sample:

Sample
------

.. figure:: twirl_dat/Twirl-distort_inside.png
   :alt: Twirl-distort_inside.png
Distort Inside Parameter On
   
.. figure:: twirl_dat/Twirl-distort_outside.png
   :alt: Twirl-distort_outside.png
Distort Outside Parameter On  

.. figure:: twirl_dat/Twirl-both.png
   :alt: Twirl-both.png
Both Distort Parameters On

.. _layer_twirl  Parameters of Twirl Layers:

Parameters of Twirl Layers
--------------------------

The parameters of the twirl layers are:

+------------------------------------------------------------------------------+------------------------+------------+
| Name                                                                         | Value                  | Type       |
+------------------------------------------------------------------------------+------------------------+------------+
|     |Type\_vector\_icon.png| |Center_Parameter|                              |   0.00000u,0.000000u   |   vector   |
+------------------------------------------------------------------------------+------------------------+------------+
|     |Type\_real\_icon.png| Radius                                            |   1.00000u             |   real     |
+------------------------------------------------------------------------------+------------------------+------------+
|     |Type\_angle\_icon.png| Rotations                                        |   0.00                 |   angle    |
+------------------------------------------------------------------------------+------------------------+------------+
|     |Type\_bool\_icon.png| Distort Inside                                    |                        |   bool     |
+------------------------------------------------------------------------------+------------------------+------------+
|     |Type\_bool\_icon.png| Distort Outside                                   |                        |   bool     |
+------------------------------------------------------------------------------+------------------------+------------+

.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_angle_icon.png| image:: images/Type_angle_icon.png
   :width: 16px
.. |Type_bool_icon.png| image:: images/Type_bool_icon.png
   :width: 16px

.. |Center_Parameter| replace:: :ref:`Center <parameters_origin>`