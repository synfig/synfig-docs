.. _animation_mode:

#####################
Animation Mode
#####################


Summary
-------

Each |Canvas| is either in Animate Editing Mode or it isn't.

When Animate Editing Mode is ON
-------------------------------

When on Animate Editing Mode, each time you edit a parameter (whether directly in the |Parameters_Panel| or indirectly by moving a Handle), a |Waypoint| is created to remember the change, and the position on the |Timetrack_Panel| at which the change happened : you are creating an animation.

Depending on the value of the |Editing_Lock_Keyframes| setting, waypoints may also be created in the next and previous |Keyframe| as well.

When Animate Editing Mode is OFF
--------------------------------
When not in Animate Editing Mode, changes to a parameter will be applied throughout the entire timeline of the animation.

If there are already waypoints on the timetrack (|ValueNodes|) for the parameter in question, this causes a warning and your edit will be not allowed. A warning message asking you : "Do you want to apply offset to this animation?" will offers the opportunity to apply an offset for this parameter for the entire timeline of the animation.

.. figure:: animate_editing_mode_dat/Animate_editing_mode_warning_offset.png
   :align: center
   :alt: Animate_editing_mode_warning_offset

Toggle Animate Editing Mode
---------------------------

Animate Editing Mode can be toggled on and off by clicking the round button to the right of the timetrack at the bottom of the canvas window. It will only be visible if your canvas has a non-zero end time, and will only be active if you're not currently using a tool which disables the timetrack, such as the |Spline_Tool| or the |Draw_Tool|.

+-----------------------------------------------------------------------------------------+------------------------------------+---------------------------------------------------------------------------------+
| **Name**                                                                                | **Icon**                           | **Behavior**                                                                    |
+-----------------------------------------------------------------------------------------+------------------------------------+---------------------------------------------------------------------------------+
|     Animate Editing Mode Off                                                            | |Animate_Editing_Mode_Off_Icon|    |   Changes will be applied throughout the entire timeline of the animation.      |
+-----------------------------------------------------------------------------------------+------------------------------------+---------------------------------------------------------------------------------+
|     Animate Editing Mode On                                                             | |Animate_Editing_Mode_On_Icon|     |   Changes will create a |Waypoint| to remember the value.                       |
+-----------------------------------------------------------------------------------------+------------------------------------+---------------------------------------------------------------------------------+

When toggling the Animate Editing Mode ON, the |Canvas_Window| will be highlighted with red border line.






.. |Animate_Editing_Mode_Off_Icon| image:: animate_editing_mode_dat/Animate_mode_off_icon.png
.. |Animate_Editing_Mode_On_Icon| image:: animate_editing_mode_dat/Animate_mode_on_icon.png

.. |Canvas| replace:: :ref:`Canvas <canvas>`
.. |Parameters_Panel| replace:: :ref:`Parameters Panel <panel_parameters>`
.. |Waypoint| replace:: :ref:`Waypoint <waypoints>`
.. |Timetrack_Panel| replace:: :ref:`Timetrack Panel <panel_timetrack>`
.. |Editing_Lock_Keyframes| replace:: :ref:`Lock Keyframes <editing_lock_keyframe>`
.. |Keyframe| replace:: :ref:`Keyframes <keyframes>`
.. |ValueNodes| replace:: :ref:`ValueNodes <valuenode>`
.. |Spline_Tool| replace:: :ref:`Spline Tool <tool_spline>`
.. |Draw_Tool| replace:: :ref:`Draw Tool <tool_draw>`
.. |Canvas_Window| replace:: :ref:`Canvas Window <canvas>`