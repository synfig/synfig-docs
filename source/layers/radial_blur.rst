.. _layer_radial_blur:

########################
   Radial Blur Layer
########################
.. figure:: radial_blur_dat/Layer_blur_blur_icon.png
   :alt: Layer_blur_blur_icon.png
   :width: 64px

About Radial Blur Layers
------------------------

Radial control of the size of the blur.

Parameters of Radial Blur Layers
--------------------------------

The parameters of the ``Radial Blur Layer`` are:

+-----------------------------------------------------------------+-------------------------+-------------+
| Name                                                            | Value                   | Type        |
+-----------------------------------------------------------------+-------------------------+-------------+
|     |Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__      |   0.000000              |   real      |
+-----------------------------------------------------------------+-------------------------+-------------+
|     |Type\_real\_icon.png| `Amount <Amount_Parameter>`__        |   1.000000              |   real      |
+-----------------------------------------------------------------+-------------------------+-------------+
|     |Type\_integer\_icon.png| `Blend Method <Blend_Method>`__   |   Composite             |   integer   |
+-----------------------------------------------------------------+-------------------------+-------------+
|     |Type\_vector\_icon.png| `Origin <Origin_Parameter>`__      |   0.000000u,0.000000u   |   vector    |
+-----------------------------------------------------------------+-------------------------+-------------+
|     |Type\_real\_icon.png| `Size <Size_Parameter>`__            |   0.200000              |   real      |
+-----------------------------------------------------------------+-------------------------+-------------+
|     |Type\_bool\_icon.png| `Fade Out <Fade_Out_Parameter>`__    |                         |   bool      |
+-----------------------------------------------------------------+-------------------------+-------------+

Samples
-------

If you wonder how the animations were made 
(:download:`sample file <radial_blur_dat/Radial_blur.sifz>`):


-  a `Star Layer <Star_Layer>`__ is positioned at center of the Frame,
   with an `Outline Layer <Outline_Layer>`__ of width 0.05u
-  the animations have 120 frames, and the `Size <#Size>`__ parameter of
   the blur goes from 0u,0u to 1u,1u
-  the `rendering <Render_dialog>`__ settings are set to Quality 9 and
   Anti-Aliasing 1

First sample is without `Fade Out <#Fade_Out>`__:

   
   |Radial\_blur.gif|  |Radial\_blur\_fade\_out.gif|
   

See also
--------

-  A short description of the blur layers can be found here:
   `Layer <Layer>`__
-  `Blur Layer <Blur_Layer>`__ mostly used types of blur.
-  `Motion Blur Layer <Motion_Blur_Layer>`__ a type of blur that aims to
   simulate a motion blur (the one that happens when the object's
   movement is too fast for the exposure time). It is controlled by a
   single parameter called ``Aperture``.

.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_bool_icon.png| image:: images/Type_bool_icon.png
   :width: 16px
.. |Radial_blur.gif| image:: radial_blur_dat/Radial_blur.gif
.. |Radial_blur_fade_out.gif| image:: radial_blur_dat/Radial_blur_fade_out.gif






