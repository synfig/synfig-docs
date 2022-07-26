.. _opacity:

########################
    Opacity
########################

This parameter controls the layer visibility (it is more like an alpha
value).

Example :

-  **0** means the layer is invisible,
-  **1** means the layer is visible.

**How to show or hide a layer, or fade the effect of a blur?**

In the |Parameters_Panel|, look for an option
labeled ``Opacity`` - this controls how much of the
blended result of the layer is composited with the blend of the layers
beneath it.

In other words, for a typical layer, this will 'fade it out'. For a
|Blur_Layer| set to
“|Blend_Method_Straight|”, this will fade *between* the
blurred version and the unblurred version of the canvas. If you want it
to become less blurry, adjust the |Blur_Layer_Size|.

If you want to affect multiple layers at the same time, you have several
options:

-  You can |Group_Layer| your layers and use the group's
   Opacity Parameter,
-  |Export| one of the layers Opacity Parameter and |Linking| others layer's Opacity Parameter,
-  |Linking| all layer's Opacity Parameter.
   Select the layers you want to affect in the |Layers_Panel|, right click to Opacity Parameter
   in the |Parameters_Panel| and choose ``Link``.


.. |Parameters_Panel| replace:: :ref:`Parameters Panel <panel_parameters>`
.. |Blur_Layer| replace:: :ref:`Blur Layer <layer_blur>`
.. |Blend_Method_Straight| replace:: :ref:`Blend Method: Straight <parameters_blend_method  Straight>`
.. |Blur_Layer_Size| replace:: :ref:`Blur Layer: Size <layer_blur  Size>`
.. |Group_Layer| replace:: :ref:`Group Layer <layer_group>`
.. |Export| replace:: :ref:`Export <export>`
.. |Linking| replace:: :ref:`Linking <linking>`
.. |Layers_Panel| replace:: :ref:`Layers Panel <panel_layers>`