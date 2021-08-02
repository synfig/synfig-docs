.. _layer_duplicate:

########################
    Duplicate Layer
########################
.. figure:: duplicate_dat/Layer_other_duplicate_icon.png
   :alt: Layer_other_duplicate_icon.png
   :width: 64px

.. _layer_duplicate  About Duplicate Layer:

About Duplicate Layer
---------------------

The ``Duplicate Layer`` makes multiple copies of the layers under it in
real time.

The Duplicate Layer works like a loop over the content below it and
provides a changing variable to that content. This variable (the
|Export| Index) can now be used (|Connect|)
within that content.

.. _layer_duplicate  Parameters of Duplicate Layer:

Parameters of Duplicate Layer
-----------------------------

The parameters of the Duplicate Layers are:

+-----------------------------------------------------------+---------------+---------------+
| **Name**                                                  | **Value**     | **Type**      |
+-----------------------------------------------------------+---------------+---------------+
|     |Real\_icon.png| |Z_Depth_Parameter|                  |   0.000000    |   real        |
+-----------------------------------------------------------+---------------+---------------+
|     |Real\_icon.png| |Amount_Parameter|                   |   1.000000    |   real        |
+-----------------------------------------------------------+---------------+---------------+
|     |Integer\_icon.png| |Blend_Method|                    |   Composite   |   integer     |
+-----------------------------------------------------------+---------------+---------------+
|     |Real\_icon.png| Index |Valuenode\_icon.png|          |   3.000000    |   Duplicate   |
+-----------------------------------------------------------+---------------+---------------+

.. _layer_duplicate  The Index Parameter:

The Index Parameter
~~~~~~~~~~~~~~~~~~~

The ``Index`` is automatically |Export|. This is the only
ValueNode that will change from one copy to the next. This exported
value can then be selected in the |Library_Panel| and
|Connect| to the parameter(s) in the layer under the
duplicate dialog which should change in the copies.

The ``Index`` parameter has 3 sub-parameters, ``From``, ``To``, and
``Step``. The value of the exported ``Index`` parameter varies from the
value of ``From`` to the value of ``To`` in steps of size ``Step``.

``From`` can be higher or lower than ``To``. It doesn't matter whether
``Step`` is positive or negative. The steps will be in the direction
from ``From`` to ``To``.

The duplicated layers are placed in the layer stack in order, so that
those corresponding to the ``From`` value will appear lower down (i.e.
least visible with normal composite blend mode) than those corresponding
to the ``To`` value (most visible).

.. _layer_duplicate  How to use:

How to use
----------

-  :ref:`Snowflake with the Duplicate Layer Tutorial <tutorial_snowflake>` : |Duplicate_Layer| + |Rotate_Layer|

.. _layer_duplicate  Known Problems:

Known Problems
--------------

-  The Duplicate Layer doesn't do anything about bounding boxes. Doing
   so could help to speed up rendering when the duplicated layers are
   outside the visible area. It's not clear how useful or possible this
   would be. To calculate its bounding box, the duplicate layer would
   need to loop through all values of Index to get the underlying
   bounding boxes and union them together. Maybe it's worth doing
   anyway.

-  Editing a Spline below a Duplicate Layer becomes very difficult while
   a recent edit is still being rendered, because the Spline Handles
   move around as the render runs (if the duplications are at different
   positions or scale). I tried using the same mutex around the
   Duplicate ValueNode's operator() method as is used in the Duplicate
   Layer's code, but it lead to `a
   deadlock <http://dooglus.rincevent.net/random/deadlock.txt>`__.

.. |Real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Valuenode_icon.png| image:: images/Type_valuenode_icon.png
   :width: 16px

.. |Export| replace:: :ref:`Export <export>`
.. |Connect| replace:: :ref:`Connect <valuenode  Connect>`

.. |Z_Depth_Parameter| replace:: :ref:`Z Depth Parameter <parameters_zdepth>`
.. |Amount_Parameter| replace:: :ref:`Opacity <opacity>`
.. |Blend_Method| replace:: :ref:`Blend Method <parameters_blend_method>`
.. |Library_Panel| replace:: :ref:`Library Panel <panel_library>`
.. |Duplicate_Layer| replace:: :ref:`Duplicate Layer <layer_duplicate>`
.. |Rotate_Layer| replace:: :ref:`Rotate Layer <layer_rotate>`
