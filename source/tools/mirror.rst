.. _tool_mirror:

########################
     Mirror Tool
########################
|Tool_mirror.png| \ **ALT-M**\ 

.. _tool_mirror  Introduction:

Introduction
------------

The Mirror Tool will mirror all the selected |Handle| about
a horizontal or vertical axis passing through the mouse cursor.

.. _tool_mirror  Options:

Options
-------

.. figure:: mirror_dat/Mirror_Tool_Options.png
   :alt: Mirror_Tool_Options.png

   
-  **Horizontal** : Horizontal axis mirror.
-  **Vertical** : Vertical axis mirror.

| 

.. _tool_mirror  Usage:

Usage
-----

For example, to mirror a spline horizontally:

-  select the Mirror Tool, either by clicking in the
   |Toolbox| or hitting ``Alt+m``
-  check ``Horizontal`` in the |Tool_Options_Panel|
-  select the Spline Layer
-  select all handles in the spline by hitting ``Ctrl+a``
-  drag one of the selected handles a little

As soon as you start dragging, the handles will all flip about a
vertical axis passing through the duck you're dragging. You will be able
to drag the handles around, but the motion will be constrained to only
move left and right.

.. |Tool_mirror.png| image:: mirror_dat/Tool_mirror.png
   :width: 64px

.. |Handle| replace:: :ref:`Handle <handles>`
.. |Toolbox| replace:: :ref:`Toolbox <panel_toolbox>`
.. |Tool_Options_Panel| replace:: :ref:`Tool Options Panel <panel_tool_options>`