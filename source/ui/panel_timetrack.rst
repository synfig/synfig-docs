.. _panel_timetrack:

########################
    Timetrack Panel
########################

|Time\_track\_icon.png| 

The ``Timetrack Panel`` shows a symbol ([Waypoints#Graphical\_Representation]) (usually a green dot) for every `Waypoint <Waypoint>`__ in the timeline. 
`Keyframes <Keyframe>`__ are represented by vertical lines through the timeline. 
The `time cursor <Time_Cursor>`__ shows you with another vertical line at which frame you currently are at.

.. figure:: panel_timetrack_dat/Timetrack_panel_0.63.06.png
   :alt: Timetrack_panel_0.63.06.png

  
When you change an object parameter while in `Animate Editing
Mode <Animate_Editing_Mode>`__, for example by moving an object, a
`Waypoint <Waypoint>`__ is inserted. The rows of the ``Timetrack Panel``
are aligned with the `Parameters Panel <Parameters_Panel>`__. If you are
animating the individual vertices, you have to expand the vertices list
to see their individual waypoints.

You can drag those `Waypoints <Waypoint>`__ through time, and you can
change their interpolation method ([Waypoints#Interpolation]) by
right-clicking (eg. a sudden step change instead of a smooth
transition). You can also change the default interpolation method from
the Toolbox Panel in the `New Layer Defaults <New_Layer_Defaults>`__ section. The very
bottom control sets the default method, and is initially set to
`Clamped <Clamped>`__.

.. figure:: panel_timetrack_dat/Timetrack_panel_Context_menu_0.63.06.png
   :alt: Timetrack_panel_Context_menu_0.63.06.png

Holding ``CTRL`` allows you to select more than one waypoint for a given
valuenode at a time.

-  When nothing is selected, clicking on a point in either normal mode
   or additive mode will select the time point closest to the click.
   Subtractive click will do nothing
-  When things are already selected, clicking on a selected point does
   nothing (in both normal and add mode). Add mode clicking on an
   unselected point adds it to the set. Normal clicking on an unselected
   point will select only that one time point. Subtractive clicking on
   any point will remove it from the the set if it is included.

Normal click out of a waypoint unselect all.


Holding ``SHIFT`` when beginning to drag waypoints will copy them rather
than moving them.

Holding ``ALT`` while clicking waypoints will delete them.

Further reading:

-  `Keyframe <Keyframe>`__
-  `Waypoint <Waypoint>`__
-  `Timebar <Timebar>`__

Interested in futur things ? ``Waypoints ... what could be the future of...?`` <http://www.synfig.org/forums/viewtopic.php?f=14&t=5013>` in the synfig forum.


.. |Time_track_icon.png| image:: panel_timetrack_dat/Time_track_icon.png
   :width: 60px



