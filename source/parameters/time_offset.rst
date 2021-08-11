.. _parameters_time_offset:

########################
Time Offset Parameter
########################

The "Time Offset Parameter" is a |parameter| of the |Group_Layer|. It brings the animation of the entire contents of the referenced layer forward by the given value. Using negative values it is possible to delay the grouped layer, too.

Note that the "Time Offset Parameter" applies to the contents of the |Group_Layer|, not to the layer itself. So if the parameters of the Group Layer itself are animated, such as its |Origin|, the "Time Offset Parameter" won't cause them to change.

The "Time Offset" can be animated, just like any other parameter, so it can be used in various non-obvious ways:

* Repeat: Set the offset to 0s at 0s and to -10s at 10s, and the first 10 seconds of the encapsulated layer will play twice (at 0s through 10s, and 10 through 20s). At 20s it will continue to play as normal, but delayed by 10s.
* Fast Forward: Set the offset to 0s at 0s and to 10s at 5s, and the first 10 seconds of the encapsulated layer will play at double speed (at 0s through 5s). After 5s it will continue to play at normal speed.
* Reverse: Set the offset to 10s at 0s, and to -10s at 10s, and the first 10 seconds of the encapsulated layer will play backwards. After 10s, it will play forward, from the beginning.

Examples
--------

See |Time-offset-demo.sifz| for an example of each of the above.

See |this_example| for another use of the Time Offset Parameter, exploring the |Time_Loop_Layer|.

Control the animation speed of a Group
--------------------------------------

|Convert| the "Time Offset Parameter" to linear, and it will offers two sub parameters: "Rate" & "Offset"

* Stop the animation : Setting the "Rate" to -1s.
* Slow down it : Setting it to something between -1s and 0s.
* Play reversed : Set the "Rate" less than -1s.
* Play accelerated : Set the "Rate" up than 0s.

.. |parameter| replace:: :ref:`Parameter <parameters>`
.. |Group_Layer| replace:: :ref:`Group Layer <layer_group>`
.. |Origin| replace:: :ref:`Origin <parameters_origin>`
.. |Time_Loop_Layer| replace:: :ref:`Time Loop Layer <layer_time_loop>`
.. |Convert| replace:: :ref:`Convert <converters>`
.. |Time-offset-demo.sifz| replace:: :download:`Time-offset-demo.sifz <time_offset_dat/Time-offset-demo.sifz>`
.. |this_example| replace:: :ref:`this example <layer_time_loop  Contrived Example>`
