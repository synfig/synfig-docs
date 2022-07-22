.. _layer_skeleton_deformation:

##############################
   Skeleton Deformation Layer
##############################
.. figure:: skeleton_dat/Layer_other_skeleton_icon.png
   :alt: Layer_other_skeleton_icon.png
   :width: 64px

.. _layer_skeleton_deformation  About Skeleton Deformation Layers:

About Skeleton Deformation Layers
---------------------------------

Skeleton Deformation Layer is for
raster deformation (pixel level) and can be used to image layers or
whatever is in the context of the skeleton deformation layer (the
rendered result of what's below it).

Skeleton Deformation acts like a normal “raster” layer (i.e. Blur,
Warp), it is a raster deformation.

The Skeleton Distortion layer allows to set the distortion area and mesh
resolution.

The |Layers_Panel|'s Show/Hide checkbox of the Skeleton
Deformation Layer activate/deactivate the deformation and the visibility
of the distortion area.

.. _layer_skeleton_deformation  Parameters of Skeleton Deformation Layers:

Parameters of Skeleton Deformation Layers
-----------------------------------------

The parameters of the Skeleton Deformation Layers are:

+-----------------------------------------------------------+------------------------+-------------+
| **Name**                                                  | **Value**              | **Type**    |
+-----------------------------------------------------------+------------------------+-------------+
||Type\_real\_icon.png| |Z_Depth_Parameter|                 |   0.000000             |   real      |
+-----------------------------------------------------------+------------------------+-------------+
||Type\_real\_icon.png| |Amount_Parameter|                  |   1.000000             |   real      |
+-----------------------------------------------------------+------------------------+-------------+
||Type_integer_icon.png| |Blend_Method|                     |   Composite            |   integer   |
+-----------------------------------------------------------+------------------------+-------------+
| |Type_integer_icon.png| |Blur_Layer|                      |   Fast Gaussian Blur   |   integer   |
+-----------------------------------------------------------+------------------------+-------------+
| |Type\_list\_icon.png|  Bones                             |                        |   list      |
+-----------------------------------------------------------+------------------------+-------------+
|  |Type\_vector\_icon.png| Point 1                         |                        |   vector    |
+-----------------------------------------------------------+------------------------+-------------+
|  |Type\_vector\_icon.png| Point 2                         |                        |   vector    |
+-----------------------------------------------------------+------------------------+-------------+
| |Type_integer_icon.png| Horizontal subdivisions           |   32                   |   integer   |
+-----------------------------------------------------------+------------------------+-------------+
| |Type_integer_icon.png| Vertical subdivisions             |   32                   |   integer   |
+-----------------------------------------------------------+------------------------+-------------+

.. _layer_skeleton_deformation  Usage of the Skeleton Deformation Layer:

Usage of the Skeleton Deformation Layer
---------------------------------------

.. _layer_skeleton_deformation  Set the distortion area:

Set the distortion area
~~~~~~~~~~~~~~~~~~~~~~~

The Skeleton Deformation Layer's bound rectangle define the distortion
area. You can modify it by dragging the handles of the first and second
corners (``Point 1`` up left and ``Point 2`` down right).

.. _layer_skeleton_deformation  Build the skeleton:

Build the skeleton
~~~~~~~~~~~~~~~~~~

To setup the bones of the Skeleton Deformation Layer, first, deactivate
the deformation unchecking the ``Show`` checkbox of from the |Layers_Panel|. Now you can move the first bone using its
``Origin`` handle, change its orientation with the ``Angle`` handle and
its length using the ``Local Length Scale`` handle. Right click in any
handle of bones and choose ``Create Child Bone`` to create another bone
and adjust it with its handles. Any child bones will follow recursively
his parents position.

Once setup the armature, control the influence. Enable |Width_Handle| (``Alt+5``) and set the influence area for each
bone.

.. _layer_skeleton_deformation  Reset the Pose:

Reset the Pose
~~~~~~~~~~~~~~

Once you have terminated to setup the bones of your skeleton, from the
|Layers_Panel|, right click on the Skeleton Deformation Layer and from the
contextual menu choose ``Reset Pose`` to create the initial pose
(without deformation) of the skeleton.

Now you can animate your skeleton !

.. _layer_skeleton_deformation  Video Howto:

Video Howto
~~~~~~~~~~~

-  `Bone-driven Image Distortion (part
   4) <https://www.youtube.com/watch?v=M8zW1qCq8ng>`__

.. _layer_skeleton_deformation  Why using skeleton deformation layer parts of the image are disappearing?:

Why using skeleton deformation layer parts of the image are disappearing?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If parts of the image are disappearing when you enable the Skeleton Deformation Layer (and have checked that
you don't have Cairo rendering ([Setup\_Dialog#Render\_Tab]) enabled),
is't surely because the image is cropped by bone influence area. You
need to turn off bone distortion layer (from the |Layers_Panel|, select it, enable width handles (``Alt+5``) and
set the influence area for each bone.


.. _layer_skeleton_deformation  Specific parameters for Skeleton Deformation Layers:

Specific parameters for Skeleton Deformation Layers
---------------------------------------------------

Some of the parameters of Skeleton Deformation Layers are common
parameter that are shared for several types of Layers. Click on the
links to see their definitions. Only the particular parameters for the
Skeleton Deformation Layers are described here.

.. _layer_skeleton_deformation  Bones:

Bones
~~~~~

The ``Bones`` parameter is a list of Bone elements.

The parameters of a ``Bone`` are:

+--------------------------------------------------------------------------------------------+----------------------+---------------------+
| **Name**                                                                                   | **Value**            | **Type**            |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_string\_icon.png| Name                                                          |   Bone 1             |   string            |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     Parent                                                                                 |   No Parent          |   bone\_valuenode   |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_vector\_icon.png| |Origin_Parameter|                                            |   0.00000, 0.00000   |   vector            |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_angle\_icon.png|  Angle                                                         |   0.00°              |   angle             |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png|  Local Length Scale                                             |   1.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png|  Bone Width                                                     |   0.10000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png|  Recursive Length Scale                                         |   1.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png|  Tip Width                                                      |   0.10000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png|  Z Depth                                                        |   0.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png|  Length Setup                                                   |   1.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+

.. _layer_skeleton_deformation  Name:

Name
^^^^

.. _layer_skeleton_deformation  Parent:

Parent
^^^^^^

.. _layer_skeleton_deformation  Origin:

Origin
^^^^^^

Coordinate of the ``Origin`` of the Bone.

.. _layer_skeleton_deformation  Angle:

Angle
^^^^^

Angle of the Bone.

.. _layer_skeleton_deformation  Local Length Scale:

Local Length Scale
^^^^^^^^^^^^^^^^^^

.. _layer_skeleton_deformation  Bone Width:

Bone Width
^^^^^^^^^^

.. _layer_skeleton_deformation  Recursive Length Scale:

Recursive Length Scale
^^^^^^^^^^^^^^^^^^^^^^

.. _layer_skeleton_deformation  Tip Width:

Tip Width
^^^^^^^^^

.. _layer_skeleton_deformation  Z Depth:

Z Depth
^^^^^^^

This parameter can be used to change the 'depth' (order) of a Bone in a
Skeleton Layer.

.. _layer_skeleton_deformation  Length Setup:

Length Setup
^^^^^^^^^^^^

.. _layer_skeleton_deformation  Point 1:

Point 1
~~~~~~~

The parameter ``Point 1`` is a Vector point defining the upper left
corner of the distortion area.

.. _layer_skeleton_deformation  Point 2:

Point 2
~~~~~~~

The parameter ``Point 2`` is a Vector point defining the bottom right
corner of the distortion area.

.. _layer_skeleton_deformation  Horizontal Subdivisions:

Horizontal Subdivisions
~~~~~~~~~~~~~~~~~~~~~~~

Horizontal definition of the meshes. This integer value affect the
distortion quality.

.. _layer_skeleton_deformation  Vertical Subdivisions:

Vertical Subdivisions
~~~~~~~~~~~~~~~~~~~~~

Vertical definition of the meshes. This integer value affect the
distortion quality.

.. _layer_skeleton_deformation  See also:

See also
--------

-  |Cutout_Tool| to select a piece of the composition
   by adding a mask.
-  Vector art specific |Skeleton_Layer|.

.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Bones_icon.png| image:: images/Bones_icon.png
   :width: 16px
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_string_icon.png| image:: images/Type_string_icon.png
   :width: 16px

.. |Type_angle_icon.png| image:: images/Type_angle_icon.png
   :width: 16px

.. |Type_list_icon.png| image:: images/Type_list_icon.png
   :width: 16px

.. |Skeleton_Layer| replace:: :ref:`Skeleton Layer <layer_skeleton>`
.. |Layers_Panel| replace:: :ref:`Layers Panel <panel_layers>`
.. |Z_Depth_Parameter| replace:: :ref:`Z Depth Parameter <parameters_zdepth>`
.. |Amount_Parameter| replace:: :ref:`Opacity <opacity>`
.. |Blend_Method| replace:: :ref:`Blend Method <parameters_blend_method>`
.. |Blur_Layer| replace:: :ref:`Blur Layer <layer_blur>`
.. |Width_Handle| replace:: :ref:`Width Handle <handles>`
.. |Origin_Parameter| replace:: :ref:`Origin <parameters_origin>`
.. |Cutout_Tool| replace:: :ref:`Cutout Tool <tool_cutout>`