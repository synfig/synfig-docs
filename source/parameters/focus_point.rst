.. _parameters_focus_point:

################
Focus Point
################

The "Focus Point" parameter is present only in the |Group_Layer| layer. It has a Vector value. It defines which point in the grouped layers will stay still as the Group layer's |Zoom_Parameter| changes.

The Focus Point is relative to the Group layer's |Origin| and defaults to (0,0) so its handle will be hidden behind the green Origin |handle| initially. Its handle can be seen by turning the Origin handles off temporarily (by hitting Alt1) or by editing its value to something small by non-zero in the |Parameters_Panel|.

It's best to edit the Focus Point parameter while the Group's Zoom is set to 0. Otherwise you'll be seeing a scaled version of the contents.


.. |Group_Layer| replace:: :ref:`Group Layer <layer_group>`
.. |Zoom_Parameter| replace:: :ref:`Zoom Parameter <parameters_zoom>`
.. |Origin| replace:: :ref:`Origin <parameters_origin>`
.. |handle| replace:: :ref:`Handle <handles>`
.. |Parameters_Panel| replace:: :ref:`Parameters Panel <panel_parameters>`