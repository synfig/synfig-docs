.. _tutorial_subtracting_shapes:

########################################
    Subtracting Shapes
########################################

.. _tutorial_subtracting_shapes  Introduction :

Introduction 
========================
In this tutorial we are going to draw a shape and subtract another shape 
from it. We assume that you know how to draw a circle using the |Circle_Tool|
and a rectangle using the |Rectangle_Tool|. If not then check |Circle_Tool| and |Rectangle_Tool|.

.. _tutorial_subtracting_shapes  Drawing the shapes:

Drawing the shapes
==========================

Click the |Circle_Tool| on the |Toolbox| and draw a circle on the
canvas with an outline of 3 pixels. Make sure that the create region layer and
the create outline layer in the |Tool_Options_Panel| of the 
|Circle_Tool| are selected.

Click the |Rectangle_Tool| on the |Toolbox| and draw a rectangle
on the canvas with an outline of 3 pixels. Again make sure that the create region
layer and the create outline layer in the |Tool_Options_Panel| of 
the |Rectangle_Tool| are selected.

For the sake of this example name the circle outline layer ``circleOutline``
and the circle region layer ``circle`` in the |Layers_Panel|. Again in 
the |Layers_Panel| rename the rectangle region layer ``baseShape`` and 
name the rectangle outline layer ``baseShapeoutline``. If it is not already 
the case then select the ``circleOutline`` layer and the ``circle`` layer 
and move them to the top using the green arrows in the |Layers_Panel|. Select 
all layers in the |Layers_Panel|, right-click and choose group. Name the 
group ``baseShape``. 

.. figure:: subtracting_shapes_dat/Cutoutshape1.png
   :alt: Layers Panel should look like this

   Layers Panel should look like this

.. _tutorial_subtracting_shapes  Subtracting the shape:

Subtracting the shape
==========================
.. figure:: subtracting_shapes_dat/Cutoutshape2.png

   Canvas should look like this

Click on the ``circle`` layer in the |Layers_Panel| or on the circle shape in the canvas and select the green handle in the middle of the circle and drag it over the ``baseShape``. Release the mouse.

.. figure:: subtracting_shapes_dat/Cutoutshape4.png

   Drag the circle
   
.. figure:: subtracting_shapes_dat/Cutoutshape5.png

   Canvas should look like this
   
Select the ``circleOutline`` layer in the |Layers_Panel| go to 
the |Parameters_Panel| and change the |Blend_Method| of the 
``circleOutline`` layer to |Blend_Method#Onto|
Select the ``circle`` layer in the |Layers_Panel|, go to 
the |Parameters_Panel| and change the |Blend_Method| of 
the ``circle`` layer to |Blend_Method#Alpha_Over| .

.. figure:: subtracting_shapes_dat/Cutoutshape17.png

   Parameters Panel with blend method of Circle layer and CircleOutline layer
   
.. figure:: subtracting_shapes_dat/Cutoutshape8.png 

   Outline Width is not the same

The circle layer was subtracted from the ``baseShape`` but the |Outline_Width| of the cut out part varies from the |Outline_Width| of the ``baseShape``. To adjust this we have to change the |Outline_Width| of the ``circleOutline`` layer. Select the ``circleOutline`` layer in the |Layers_Panel|, go to the |Parameters_Panel| and change the |Outline_Width| to 6 pixels.
After we adjusted the |Outline_Width| of the ``circleOutline`` layer the ``circle`` layer was subtracted correctly from the ``baseShape``.

.. figure:: subtracting_shapes_dat/Cutoutshape11.png 

   Final image

.. _tutorial_subtracting_shapes  Tip:

Tip
============
If we want to add a ``circle`` to the ``baseShape`` then all we have 
to do is change the |Blend_Method| of the ``circleOutline`` layer 
from |Blend_Method#Onto| to |Blend_Method#Behind| and change 
the |Blend_Method| of the ``circle`` layer from |Blend_Method#Alpha_Over| 
to |converter_composite|.

.. figure:: subtracting_shapes_dat/Cutoutshape13.png

   Circle added to the baseShape

Below we can see an image of a piece of cheese that is almost entirely 
constructed by subtracting and adding circles to a basic underlying shape.

.. figure:: subtracting_shapes_dat/Cutoutshape14.png

   All holes in the cheese image are subtracted circles




.. |Circle_Tool| replace:: :ref:`Circle Tool <tool_circle>`
.. |Rectangle_Tool| replace:: :ref:`Rectangle Tool <tool_rectangle>`
.. |Toolbox| replace:: :ref:`Toolbox <panel_toolbox>`
.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`
.. |Layers_Panel| replace:: :ref:`Layers Panel <panel_layers>`
.. |Parameters_Panel| replace:: :ref:`Parameters Panel <panel_parameters>`
.. |Blend_Method| replace:: :ref:`Blend Method <parameters_blend_method>`
.. |Blend_Method#Onto| replace:: :ref:`Blend Method: Onto <parameters_blend_method  Onto>`
.. |Blend_Method#Alpha_Over| replace:: :ref:`Blend Method: Alpha Over <parameters_blend_method Alpha Over>`
.. |Blend_Method#Behind| replace:: :ref:`Blend Method: Alpha Over <parameters_blend_method Behind>`
.. |Outline_Width| replace:: :ref:`Outline Width <layer_outline  Outline width>`
.. |converter_composite| replace:: :ref:`Converter: Composite <converter_composite>`