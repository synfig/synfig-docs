.. _tool_transform:

########################
     Transform tool
########################
|Tool_normal.png| \ **ALT-A**\ 

Introductions
-------------

The ``Transform Tool`` lets you select an object and manipulate its
handle (move, rotate or scale).

Usage
-----

| Clicking an object in the `canvas window <:Category:Canvas_Window>`__
  with the ``Transform tool`` selects it. You can select multiple
  objects by holding down the ``Control`` key and clicking on the
  additional objects.
| *If the layer is a “no edge layer” (gradient for example) you cannot
  click on the layers below, even if you have clicked in the transparent
  area of the layer. This allow to select only current visible layers.
  Consider also that some layers have not yet defined a way to click on
  them to be selected (* `Text Layer <Text_Layer>`__ *for example).*
| If, with the ``Transform Tool``, you can not select an object because
  it is obscured by another object you can select its layer in the
  `Layers Panel <Layers_Panel>`__.

| Once a layer is selected, its `Handle <Handle>`__ is displayed. The
  ``Transform tool`` works on selected handles only.
| Click on a handle to select it. A selected handle becomes highlighted.
  You can select more handles by ``CTRL`` Click on each one. You can
  also drag a `Selection box <Selection_box>`__ around the handles to
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

Options
-------

* None

.. note::
   The “Transform Tool” was called the “Normal Tool” before Synfig version 0.62.01.

.. |Tool_normal.png| image:: transform_dat/Tool_normal.png
   :width: 64px
