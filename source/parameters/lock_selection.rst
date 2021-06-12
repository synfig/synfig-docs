.. _lock_selection:

########################
    Lock Selection
########################

The ``Lock Selection`` parameter is a boolean value (default value
**Off**), present in all |Group_Layer|. These are the
layers that are created when you |Group| a set of layers.

If the ``Lock Selection`` parameter is turned *'On*, then:

-  If you click on a grouped layer in the |WorkArea|
   window, the |Group_Layer| will be selected, rather
   than the layer you clicked on. For example, you draw an
   |Outline_Layer|, and then group it. By default the
   ``Lock Selection`` is **Off**, and clicking on your outline in the
   |WorkArea| will select the outline layer. With
   ``Lock Selection`` **On**, the group layer will be selected instead.

-  Right-clicking on a group layer offers a context menu entry to
   ``Select All Child Layers``, which recursively selects all the layers
   under the current layer. If the ``Lock Selection`` is engaged for any
   group layer in the hierarchy, it stops the layers inside that group
   layer from being selected by this operation.

-  Hitting ``CTRL|A`` to select all the |Handle| in the
   currently selected layers will select the
   |Group_Transformation_Widget|'s
   handles of selection-locked group layers, whereas it won't when their
   ``Lock Selection`` are **Off**.

The effect of these three behaviors is for a group layer to act as if it
was a primitive layer, hiding the details of its contents from selection
or manipulation.
