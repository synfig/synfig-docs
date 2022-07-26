.. _tool_gradient:

########################
  Gradient Tool
########################

|Tool_gradient_icon.png| \ **ALT-G**\ 

.. _tool_gradient  Introduction:

Introduction
------------

The ``Gradient Tool`` is used to create smooth transitions between two
or more colors in an object.

.. _tool_gradient  Options:

Options
-------
|Gradient_Tool_Options.png|

When you select the Gradient Tool, the |Tool_Options_Panel|
will show the options for the Gradient Tool.

These allow you to:

-  **Name** : Set a name for the layer you are about to create. The name
   of the layer can always be changed later via the |Layers_Panel| or the |Parameters_Panel| if necessary, but the type of gradient
   needs to be chosen now.
-  **Layer Type** : Choose the type of gradient to create (Linear,
   Radial, Conical, Spiral).
-  |Blend_Method_Parameter| : The blending method
   used to composite on the layers below
-  **Opacity** : Sets the |Amount_Parameter| for
   new layers. Defaults to **1.00** (Completely opaque)

| For help with editing gradient colors see the section on |Gradient_Editor_Dialog|.

.. |Gradient_Tool_Options.png| image:: gradient_dat/Gradient_Tool_Options.png

.. _tool_gradient  The 4 types of gradients:

The 4 types of gradients
------------------------

|Linear_Gradient_Layer|

|Linear_gradient.png|

This produces a simple transition in a straight line. Set your
foreground and background colors. Click where you want the 
gradient to begin, and drag to where you want the transition 
to end. The gradient will be created perpendicular to the line 
you drag out. At any time, you can edit the gradient by moving 
either endpoint in any direction. You must use the 
|Transform_Tool| to be able to edit the 
endpoints.

|Radial_Gradient_Layer|

|Radial_gradient.png|

This produces circular colors with the transition being at the 
center of those circles. Click where you want the center of the 
circles to be, and drag to set the radius of the transition. Use 
the |Transform_Tool| to edit the position 
(center endpoint), or the radius (surface endpoint), of the 
radial gradient.

|Conical_Gradient_Layer|

|Conical_gradient.png|

This has the appearance of looking down on a tip of a cone. 
The gradient is along the circular arc of the center and goes in 
all directions. Click to set the center, and drag to indicate the 
direction in which the foreground and background colors should go. 
To edit afterwards, use the |Transform_Tool|. 
The center endpoint can be adjusted to move the center of the 
gradient. The other endpoint adjusts the direction of the gradient.

|Spiral_Gradient_Layer|

|Spiral_gradient.png|

This produces a spiral gradient. Click to set the center of the 
spiral and drag to set the 'tightness'. To edit afterwards, use the 
|Transform_Tool|.

Documentation writers note: You can download the project to generate the screenshot:  
:download:`Gradient_options.zip <gradient_dat/Gradient_options.zip>`

.. |Tool_gradient_icon.png| image:: gradient_dat/Tool_gradient_icon.png
   :width: 64px
.. |Linear_gradient.png| image:: gradient_dat/Linear_gradient.png
.. |Radial_gradient.png| image:: gradient_dat/Radial_gradient.png
   :width: 228px
.. |Conical_gradient.png| image:: gradient_dat/Conical_gradient.png
.. |Spiral_gradient.png| image:: gradient_dat/Spiral_gradient.png


.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`
.. |Layers_Panel| replace:: :ref:`Layers Panel <panel_layers>`
.. |Blend_Method_Parameter| replace:: :ref:`Blend Method Parameter <parameters_blend_method>`
.. |Amount_Parameter| replace:: :ref:`Opacity <opacity>`
.. |Gradient_Editor_Dialog| replace:: :ref:`Gradient Editor Dialog <gradient_editor_dialog>`
.. |Transform_Tool| replace:: :ref:`Transform Tool <tool_transform>`
.. |Radial_Gradient_Layer| replace:: :ref:`Radial Gradient Layer <layer_radial_gradient>`
.. |Conical_Gradient_Layer| replace:: :ref:`Conical Gradient Layer <layer_conical_gradient>`
.. |Spiral_Gradient_Layer| replace:: :ref:`Spiral Gradient Layer <layer_spiral_gradient>`
.. |Parameters_Panel| replace:: :ref:`Parameters Panel <panel_parameters>`