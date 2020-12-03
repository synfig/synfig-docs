.. _opacity:

########################
    Opacity
########################

Common use
==========

This parameter controls the layer visibility (it is more like an alpha
value).

Example :

-  **0** means the layer is invisible,
-  **1** means the layer is visible.

Show or hide a layer, or fade the effect of a blur?
---------------------------------------------------

In the `Parameters Panel <Parameters_Panel>`__, look for an option
labeled `Amount <Amount_Parameter>`__ - this controls how much of the
blended result of the layer is composited with the blend of the layers
beneath it.

In other words, for a typical layer, this will 'fade it out'. For a
`Blur Layer <Blur_Layer>`__ set to
“`Straight <Blend_Method#Straight>`__”, this will fade *between* the
blurred version and the unblurred version of the canvas. If you want it
to become less blurry, adjust the `Blur Layer's 'size'
parameter <Blur_Layer#Size>`__.

If you want to affect multiple layers at the same time, you have several
options :

-  You can `Group <Group_Layer>`__ your layers and use the group's
   `Amount Parameter <Amount_Parameter>`__,
-  `Export <Export>`__ one of the layers `Amount
   Parameter <Amount_Parameter>`__ and `link <Linking>`__ others layer's
   `Amount <Amount_Parameter>`__,
-  `Linking <Linking>`__ all layer's `Amount <Amount_Parameter>`__.
   Select the layers you want to affect in the `Layers
   Panel <Layers_Panel>`__, right click to `Amount <Amount_Parameter>`__
   in the `Parameters Panel <Parameters_Panel>`__ and choose ``Link``.

Specific cases
==============

Rotate and Scale Layers
-----------------------

This parameter control a rotation angle or a scale size

