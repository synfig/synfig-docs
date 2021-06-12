.. _static_parameters:

########################
    Static Parameters
########################

Some |Parameter| can be defined has statics : they will
**not accept changes** over the time.

Once Static Parameters are toggled to no static
(ie |ValueNode| , like any other parameters in Synfig)
they can be animated, so that they change over time. This can be
confusing, **make sure** you aren't in |Animate_Editing_Mode| toggling from ``Static`` to no static
parameter, unless you know what you're doing!

-  Static parameter representation in
   parameter panel: |Animate_mode_off_icon.png|
-  Change static to no static (right click over param panel)
-  ex: |Time_Loop_Layer| parameter static by design

.. |Animate_mode_off_icon.png| image:: static_parameters_dat/Animate_mode_off_icon.png
   :width: 16px
