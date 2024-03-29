.. _tool_transform:

########################
     Transform tool
########################
|Tool_normal.png| \ **ALT-A**\ 

.. _tool_transform  Introductions:

Introductions
-------------

The ``Transform Tool`` lets you select an object and manipulate its
handle (move, rotate or scale).

.. _tool_transform  Usage:

Usage
-----

| Clicking an object in the |Canvas_Window|
  with the ``Transform tool`` selects it. You can select multiple
  objects by holding down the ``Control`` key and clicking on the
  additional objects.
| *If the layer is a “no edge layer” (gradient for example) you cannot
  click on the layers below, even if you have clicked in the transparent
  area of the layer. This allow to select only current visible layers.
  Consider also that some layers have not yet defined a way to click on
  them to be selected (* |Text_Layer| *for example).*
| If, with the ``Transform Tool``, you can not select an object because
  it is obscured by another object you can select its layer in the
  |Layers_Panel|.

| Once a layer is selected, its |Handle| is displayed. The
  ``Transform tool`` works on selected handles only.
| Click on a handle to select it. A selected handle becomes highlighted.
  You can select more handles by ``CTRL`` Click on each one. You can
  also drag a |Selection_box| around the handles to
  select them.
| ``Ctrl+A`` will select all handles in the selected layers. (``Ctrl+D``
  will deselect all handles)
| Dragging a Selection box while pressing ``CTRL`` will toggle handle
  selection. Currently selected handles within the Selection box will
  become deselected and currenly non selected handles will become
  selected.

Clicking on selected handles with the ``Transform tool`` will allow you
to drag them around in the canvas. Make sure you click on them, clicking
outside will deselect the handles.

Pressing ``shift`` while dragging allows you to restrict the movement to
the X or Y coordinates.

Pressing ``CTRL`` while clicking handles will allow you to rotate them
around a calculated center for the currently selected handles.

Pressing ``ALT`` while dragging handles will scale them around their
calculated common centre. Pressing ``SHIFT`` while scaling will preserve
the ratio of the handles.

If you want to constrain a tangent handle to X or Y movement you have
to press ``SHIFT`` after you start to drag it.

Otherwise, pressing ``SHIFT`` before dragging a tangent will split it
into separate left and right tangents.

.. _tool_transform  Options:

Options
-------

* None

.. note::
   The “Transform Tool” was called the “Normal Tool” before Synfig version 0.62.01.

.. |Tool_normal.png| image:: transform_dat/Tool_normal.png
   :width: 64px

.. |Canvas_Window| replace:: :ref:`Canvas Window <canvas>`
.. |Layers_Panel| replace:: :ref:`Layers Panel <panel_layers>`
.. |Handle| replace:: :ref:`Handle <handles>`
.. |Selection_box| replace:: Selection box 
.. |Text_Layer| replace:: :ref:`Text Layer <layer_text>`