.. _parameters_zoom:

########################
Zoom Parameter
########################


The Zoom Parameter in the |Group_Layer| allows you to zoom in or out on the contents of the grouped layers.

The Default Value is 0, which means no zoom at all. Positive values will allow you to zoom in, while negative values will allow you to zoom out.

The zoom is exponential - each increase of 1 in the parameter zooms in by a factor of `2.72 <http://en.wikipedia.org/wiki/E_%28mathematical_constant%29>`__. A zoom of 2 will zoom in by a factor of 2.72 * 2.72 or around 7.4 times. The same factor can be applied to zooming out.

.. |Group_Layer| replace:: :ref:`Group Layer <layer_group>`
