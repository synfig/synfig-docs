.. _panel_layers:

########################
   Layers Panel
########################
.. figure:: panel_layers_dat/History_panel.png
   :alt: History_panel.png
   :width: 60px

Summary
-------

The Layers Dialog allows you to view and manipulate the layer hierarchy
in your scene. This is where you can determine which objects get drawn
first, and create `groups of layers <Group_Layer>`__ for the purpose of
applying effects.

.. figure:: panel_layers_dat/Layers_0.63.06.png
   :alt: Layers_0.63.06.png


Elements of the Layers Dialog
-----------------------------

The Layers Dialog contains a detailed list of the `Layers <Layer>`__ in
your scene. Each row represents a layer, and the columns are:

**Show/Hide checkbox**
    Turns the layer on or off in the composition. This parameter is not
    keyable.
**Icon**
    The icon representing the layer type. For
    `Regions <Region_Layer>`__, `Outlines <Outline_Layer>`__, and , the
    icons will be those of the `Spline Tool <Spline_Tool>`__, the `Width
    Tool <Width_Tool>`__, and the `Gradient Tool <Gradient_Tool>`__,
    respectively. For both `Group\_Layer <Group_Layer>`__ and
    `Switch\_Group\_Layer <Switch_Group_Layer>`__, an expand icon
    (generally an arrow) precede the layer icon. This expander can be
    controlled with ``+`` and ``-`` respectively to open or close the
    group.
**Name**
    The name of the layer you're currently working on.
**Z Depth**
    The Z Depth column indicates the Z position of the layer, which can
    also affect layer compositing. It does not always appear, for
    example, if the time of the canvas is “0”, this column will
    disappear.

Layer Commands
~~~~~~~~~~~~~~

Below the layer list, are buttons (and a drop down menu containing any
buttons that don't fit on the palette). These expose the most useful
layers' commands, more commands can be found in the `Canvas Layer
Menu <Canvas_Layer_Menu>`__ from the `Canvas Menu
Caret <Canvas_Menu_Caret>`__, or in the context menu of the Layer Panel.

Moving layers
~~~~~~~~~~~~~

To move multiple layers first select them by holding ``ctrl`` or
``shift``. Then at the last of the layers you want to move click it but
do not release the mouse button, instead release the keyboard controller
(``ctrl`` or ``shift``). Now you can drag the layers to where you want
them, release mouse button to drop the layers in place.

`Gradients <Category:Gradients>`__

