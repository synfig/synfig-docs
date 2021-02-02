.. _layer_skeleton_deformation:

##############################
   Skeleton Deformation Layer
##############################
.. figure:: skeleton_dat/Layer_other_skeleton_icon.png
   :alt: Layer_other_skeleton_icon.png
   :width: 64px

About Skeleton Deformation Layers
---------------------------------

`Skeleton Deformation Layer <Skeleton_Deformation_Layer>`__ is for
raster deformation (pixel level) and can be used to image layers or
whatever is in the context of the skeleton deformation layer (the
rendered result of what's below it).

Skeleton Deformation acts like a normal “raster” layer (i.e. Blur,
Warp), it is a raster deformation.

The Skeleton Distortion layer allows to set the distortion area and mesh
resolution.

The `Layers Panel <Layers_Panel>`__'s Show/Hide checkbox of the Skeleton
Deformation Layer activate/deactivate the deformation and the visibility
of the distortion area.

Parameters of Skeleton Deformation Layers
-----------------------------------------

The parameters of the Skeleton Deformation Layers are:

+-----------------------------------------------------------+------------------------+-------------+
| **Name**                                                  | **Value**              | **Type**    |
+-----------------------------------------------------------+------------------------+-------------+
||Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__     |   0.000000             |   real      |
+-----------------------------------------------------------+------------------------+-------------+
||Type\_real\_icon.png| `Amount <Amount_Parameter>`__       |   1.000000             |   real      |
+-----------------------------------------------------------+------------------------+-------------+
||Type_integer_icon.png| `Blend Method <Blend_Method>`__    |   Composite            |   integer   |
+-----------------------------------------------------------+------------------------+-------------+
| |Type_integer_icon.png| `Type <Blur_Layer>`__             |   Fast Gaussian Blur   |   integer   |
+-----------------------------------------------------------+------------------------+-------------+
| |Type\_list\_icon.png| `Bones <Bones>`__                  |                        |   list      |
+-----------------------------------------------------------+------------------------+-------------+
|  |Type\_vector\_icon.png| Point 1                         |                        |   vector    |
+-----------------------------------------------------------+------------------------+-------------+
|  |Type\_vector\_icon.png| Point 2                         |                        |   vector    |
+-----------------------------------------------------------+------------------------+-------------+
| |Type_integer_icon.png| Horizontal subdivisions           |   32                   |   integer   |
+-----------------------------------------------------------+------------------------+-------------+
| |Type_integer_icon.png| Vertical subdivisions             |   32                   |   integer   |
+-----------------------------------------------------------+------------------------+-------------+

Usage of the Skeleton Deformation Layer
---------------------------------------

Set the distortion area
~~~~~~~~~~~~~~~~~~~~~~~

The Skeleton Deformation Layer's bound rectangle define the distortion
area. You can modify it by dragging the handles of the first and second
corners (``Point 1`` up left and ``Point 2`` down right).

Build the skeleton
~~~~~~~~~~~~~~~~~~

To setup the bones of the Skeleton Deformation Layer, first, deactivate
the deformation unchecking the ``Show`` checkbox of from the `Layers
Panel <Layers_Panel>`__. Now you can move the first bone using its
``Origin`` handle, change its orientation with the ``Angle`` handle and
its length using the ``Local Length Scale`` handle. Right click in any
handle of bones and choose ``Create Child Bone`` to create another bone
and adjust it with its handles. Any child bones will follow recursively
his parents position.

Once setup the armature, control the influence. Enable `Width
Handle <Width_Handle>`__ (``Alt+5``) and set the influence area for each
bone.

Reset the Pose
~~~~~~~~~~~~~~

Once you have terminated to setup the bones of your skeleton, from the
`Layers Panel <Layers_Panel>`__, right click on the `Skeleton
Deformation Layer <Skeleton_Deformation_Layer>`__ and from the
contextual menu choose ``Reset Pose`` to create the initial pose
(without deformation) of the skeleton.

Now you can animate your skeleton !

Video Howto
~~~~~~~~~~~

-  `Bone-driven Image Distortion (part
   4) <https://www.youtube.com/watch?v=M8zW1qCq8ng>`__

Why using skeleton deformation layer parts of the image are disappearing?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If parts of the image are disappearing when you enable the `Skeleton
Deformation Layer <Skeleton_Deformation_Layer>`__ (and have checked that
you don't have Cairo rendering ([Setup\_Dialog#Render\_Tab]) enabled),
is't surely because the image is cropped by bone influence area. You
need to turn off bone distortion layer (from the `Layers
Panel <Layers_Panel>`__, select it, enable width handles (``Alt+5``) and
set the influence area for each bone.


Specific parameters for Skeleton Deformation Layers
---------------------------------------------------

Some of the parameters of Skeleton Deformation Layers are common
parameter that are shared for several types of Layers. Click on the
links to see their definitions. Only the particular parameters for the
Skeleton Deformation Layers are described here.

Bones
~~~~~

The ``Bones`` parameter is a list of Bone elements.

The parameters of a ``Bone`` are:

+--------------------------------------------------------------------------------------------+----------------------+---------------------+
| **Name**                                                                                   | **Value**            | **Type**            |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_string\_icon.png| Name                                                          |   Bone 1             |   string            |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|    `Parent <Parent_Parameter>`__                                                           |   No Parent          |   bone\_valuenode   |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_vector\_icon.png| `Origin <Origin_Parameter>`__                                 |   0.00000, 0.00000   |   vector            |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_angle\_icon.png| `Angle <Angle_Parameter>`__                                    |   0.00°              |   angle             |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png| `Local Length Scale <Local_Length_Scale_Parameter>`__           |   1.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png| `Bone Width <Bone_Width_Parameter>`__                           |   0.10000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png| `Recursive Length Scale <Recursive_Length_Scale_Parameter>`__   |   1.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png| `Tip Width <Tip_Width_Parameter>`__                             |   0.10000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__                                 |   0.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+
|     |Type\_real\_icon.png| `Length Setup <Length_Setup_Parameter>`__                       |   1.00000            |   real              |
+--------------------------------------------------------------------------------------------+----------------------+---------------------+

Name
^^^^

Parent
^^^^^^

Origin
^^^^^^

Coordinate of the ``Origin`` of the Bone.

Angle
^^^^^

Angle of the Bone.

Local Length Scale
^^^^^^^^^^^^^^^^^^

Bone Width
^^^^^^^^^^

Recursive Length Scale
^^^^^^^^^^^^^^^^^^^^^^

Tip Width
^^^^^^^^^

Z Depth
^^^^^^^

This parameter can be used to change the 'depth' (order) of a Bone in a
Skeleton Layer.

Length Setup
^^^^^^^^^^^^

Point 1
~~~~~~~

The parameter ``Point 1`` is a Vector point defining the upper left
corner of the distortion area.

Point 2
~~~~~~~

The parameter ``Point 2`` is a Vector point defining the bottom right
corner of the distortion area.

Horizontal Subdivisions
~~~~~~~~~~~~~~~~~~~~~~~

Horizontal definition of the meshes. This integer value affect the
distortion quality.

Vertical Subdivisions
~~~~~~~~~~~~~~~~~~~~~

Vertical definition of the meshes. This integer value affect the
distortion quality.

See also
--------

-  `Cutout\_Tool <Cutout_Tool>`__ to select a piece of the composition
   by adding a mask.
-  Vector art specific `Skeleton Layer <Skeleton_Layer>`__.

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
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_angle_icon.png| image:: images/Type_angle_icon.png
   :width: 16px
.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_list_icon.png| image:: images/Type_list_icon.png
   :width: 16px
