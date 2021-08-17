.. _timebar:

########################
    Timebar
########################

The ``Timebar`` is the area above the |Timetrack_Panel|, the |Graphs_Panel| and
optionally at the bottom of the Canvas Window.

In the Timebar you could find informations about :

-  ``Project duration`` : as a frame ruler.
-  ``Current Time`` : The horizontal orange/blue line. You can click and
   drag within it to scrub your timeline.
-  |Keyframe| : Their time, activation state and the
   selected one (not in the |Graphs_Panel|'s Timebar).

.. figure:: timebar_dat/Synfig_timebar_0.63.06.png
   :alt: Synfig_timebar_0.63.06.png

 
To change the scale of the Timeline put your mousepointer over the grey
frame ruler and use your mouse wheel to zoom in or out.

The Timebar at the bottom of the Canvas Window is optionally displayed by toggling the
|Time\_track\_icon.png| button at bottom left of the Canvas window.

.. note::
   Good to know : Timeline visibility
   
   The timeline at the bottom of the Canvas Window will not appear when you have defined
   zero duration in the |Canvas_Properties_Dialog|.

.. _timebar  Keyframes in the Timebar:

Keyframes in the Timebar
------------------------
.. figure:: timebar_dat/Keyframe_State_Representation.png
   :alt: Three keyframes with three different states : Normal, Selected and Deactivated

   Three keyframes with three different states : **Normal**,
   **Selected** and **Deactivated**

You can adjust the Time |Keyframe#Time| of a keyframe by a normal drag
and drop. To adjust it's Length |Keyframe#Length|, hold ``Alt`` key
when releasing the mouse button.

During a keyframe drag and drop operation a tooltip indicator will be
displayed with some time informations.

Right click over a keyframe or in upper part of the ``Timebar`` open the
Keyframe Menu giving access to the
keyframes actions.


.. |Time_track_icon.png| image:: timebar_dat/Time_track_icon.png
   :width: 20px




.. |Timetrack_Panel| replace:: :ref:`Timetrack Panel <panel_timetrack>`
.. |Graphs_Panel| replace:: :ref:`Graphs Panel <panel_graphs>`
.. |Keyframe| replace:: :ref:`Keyframe <keyframes>`
.. |Canvas_Properties_Dialog| replace:: :ref:`Canvas: Properties Dialog <canvas_properties_dialog>`
.. |Keyframe#Length| replace:: :ref:`Keyframe: Length <keyframes  Length>`
.. |Keyframe#Time| replace:: :ref:`Keyframe: Time <keyframes Time>`