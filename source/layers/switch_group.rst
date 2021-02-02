.. _layer_switch_group:

############################
    Switch Group Layer
############################

.. figure:: switch_group_dat/Layer_other_switch_icon.png
   :alt: Layer_other_switch_icon.png
   :width: 64px

About Switch Group Layer
------------------------

The ``Switch Group Layer`` is a special layer that can group many
layers, only displaying one layer at a time.

A ``Switch Group Layer`` can be created through the New Layer Menu
([Category:Layer\_Menu#New\_Layer\_Menu]), using
``New Layer -> Other -> Switch Group Layer|`` or through the .

Parameters of Switch Group Layer
--------------------------------

The parameters of the ``Switch Group Layer`` are:

+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
| **Name**                                                                                  | **Value**                             | **Type**             |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_real\_icon.png| `Z Depth <Z_Depth_Parameter>`__                                |   0.000000                            |   real               |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_real\_icon.png| `Amount <Amount_Parameter>`__                                  |   1.000000                            |   real               |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_integer\_icon.png| `Blend Method <Blend_Method>`__                             |   Composite                           |   integer (static)   |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_vector\_icon.png| `Origin <Origin_Parameter>`__                                |   0.000000u,0.000000u                 |   vector             |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|      Transformation Parameter                                                             |   0.000000, 0.000000, 0.00°, 60, 60   |   transformation     |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_canvas\_icon\_0.63.06.png| Canvas Parameter                                    |                                       |   canvas             |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_real\_icon.png| `Speed <Speed_Parameter>`__                                    |   1.000000                            |   real               |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_time\_icon.png| `Time Offset <Time_Offset_Parameter>`__                        |   Of                                  |   time               |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_bool\_icon.png| `Lock Selection <Lock_Selection>`__                            |  |p_checkbox_off.png|                 |   bool (Static)      |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_real\_icon.png| Outline Grow                                                   |   0.000000                            |   real               |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+
|     |Type\_vector\_icon.png| `Active Layer Name <Active_Layer_Name>`__                    |   <empty>                             |   string             |
+-------------------------------------------------------------------------------------------+---------------------------------------+----------------------+

The displayed layer is chosen by the ``Active Layer Name`` parameter. If
there are several layers with the same name in the
``Switch Group Layer``, then only the topmost one is displayed.

Video Usage
-----------

`Simple frame by frame
animation <https://www.youtube.com/watch?v=Z5Bj2BzG36U&t=390>`__


.. |Type_real_icon.png| image:: images/Type_real_icon.png
   :width: 16px
.. |Type_integer_icon.png| image:: images/Type_integer_icon.png
   :width: 16px
.. |Type_vector_icon.png| image:: images/Type_vector_icon.png
   :width: 16px
.. |Type_canvas_icon_0.63.06.png| image:: images/Type_canvas_icon_0.63.06.png
   :width: 16px
.. |Type_time_icon.png| image:: images/Type_time_icon.png
   :width: 16px
.. |Type_bool_icon.png| image:: images/Type_bool_icon.png
   :width: 16px
.. |p_checkbox_off.png| image:: images/p_checkbox_off.png    

