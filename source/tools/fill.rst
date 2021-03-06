.. _tool_fill:

########################
     Fill Tool
########################

|Tool_fill_icon.png| \ **ALT-F**\ 

The ``Fill Tool`` allows you to change the color of some of the geometry
type layers very quickly. It uses the default ``foreground color`` to be
applied to the color of the layer you click on.

Usage
-----

To use this tool simply click on the ``Fill Tool`` button and after that
click onto a non transparent part of a visible layer.

The ``Fill Tool`` acts the same that if you right click the color
parameter of any of the Layers that have it and select
``Apply Default Color`` from the context menu.

If the layer accepts the ``Fill Tool`` message it would change its color
to the current ``foreground color``. If the layer doesn't accept the
message from the ``Fill Tool`` it complains and shows a message error.

Those are the layers that currently are affected by the Fill Tool:

-  `Region Layer <Region_Layer>`__
-  `Outline Layer <Outline_Layer>`__
-  `Circle Layer <Circle_Layer>`__
-  `Rectangle Layer <Rectangle_Layer>`__
-  `Polygon Layer <Polygon_Layer>`__
-  `Star Layer <Star_Layer>`__
-  `Checkerboard Layer <Checkerboard_Layer>`__

The rest of visual layers doesn't accept the ``Fill Tool`` usage over
them because they use a gradient to fill the visual area (like the
Gradient Layers, the `Plant Layer <Plant_Layer>`__ and others) or simply
it is not possible determine if you're clicking over the layer or over a
transparent area although it has a single color definition for the
visual area (`Text Layer <Text_Layer>`__ for example).

Options
-------

-  None

.. raw:: mediawiki

   {{FillToolOptions}}

.. |Tool_fill_icon.png| image:: fill_dat/Tool_fill_icon.png
   :width: 64px
