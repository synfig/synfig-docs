.. _valuenode:

########################
    ValueNode
########################
A |ValueNode| is a value that can change over time.

A |ValueNode| represents a description of a value and how
it changes (or doesn't!) over time.

|ValueNode| are the things we see as the value for every
parameter of every |Layers|. The |Waypoint|
visible in the |Timetrack_Panel| are also part of
the |ValueNode| - waypoints are how Animated
|ValueNode| work out what value to be at each point in
time.

Each |ValueNode| (and hence each |Parameter|
in Synfig has one of 13 `Types <Dev:Types>`__.

.. _valuenode  Kinds of ValueNodes:

Kinds of ValueNodes
===================

There are three kinds of |ValueNode| in Synfig. In the
following examples the |ValueNode|'s type is a `real
number <http://en.wikipedia.org/wiki/Real_number>`__ in each case:

.. _valuenode  Constant ValueNodes:

Constant ValueNodes
-------------------

These have a single value for all time, and no waypoints. An example of
such a |ValueNode| would be:

|  ``“3.4, for ever”``

.. _valuenode  Animated ValueNodes:

Animated ValueNodes
-------------------

These have |Waypoints| that specify their value at
particular points in time. For times which don't have a value specified,
the value is calculated by interpolating between the waypoints. An
example would be:

|  ``"3.4 at the beginning of the animation,``
|  ``move smoothly up to 7.6 at time = 10 seconds,``
|  ``then jump instantly to 2.0``
|  ``and stay there until the end of time"``

.. _valuenode  Converted ValueNodes:

Converted ValueNodes
--------------------

These are |ValueNode| which have been
|Convert| into sub-parameters, each of which is itself a
|ValueNode|. Right-clicking on a parameter and selecting a
type from the 'convert' sub-menu allows you to convert a
|ValueNode|. Converted |ValueNode| don't
have waypoints themselves, but their sub-parameters may do. An example
would be:

| ``“start at 3.4 and linearly increase by 1.2 per second”``

.. _valuenode  Actions on ValueNodes:

Actions on ValueNodes
=====================

.. _valuenode  Convert:

Convert
-------

|Convert| a |ValueNode| into a Linkable type.
It disconnects from the previous value node then creates a new Linkable
|ValueNode| and connects the parameter to that new nalue
node.

.. _valuenode  Disconnect:

Disconnect
----------

Creates a Constant value node based on the value of the parameter at the
frame where the action is executed. It disconnect from the previous
value node and connect the parameter to that new constant value node.

|ValueNode| are not discarded completely until all
parameter that were connected to get disconnected. So when you
disconnect from a value node it doesn't mean that the
|ValueNode| is completely lost. Maybe other parameters
still connected to the value node too, so it is not deleted.

.. _valuenode  Export:

Export
------

|Export|, take a |ValueNode| (animated,
constant or linkable) and labels it with a unique name. The exported
|ValueNode| is now known at any place of the document (by
any layer) so any other parameter can Connect to it. All exported
|ValueNode| are stored in the |Library_Panel|.

.. _valuenode  Connect:

Connect
-------

When a Exported |ValueNode| is selected in the |Library_Panel| it is available to be |Connect|
to any parameter, so the parameter is plugged to that exported value
node. When you Connect a parameter to an exported value node, the
parameter is disconnected from the previous value node. Parameters and
Exported value nodes can be Connected only of they are type compatible
(i.e. angle with angle and not angle with vector).

.. _valuenode  Link:

Link
----

When two or more parameters are selected at the same time (usually from
two layers) it is possible to |Linking| the
|ValueNode|. In this case all except one of the selected
previous parameters are disconnected from its value nodes and then
connected to the value node selected from the selected. The decision on
which value node is kept and used as link value node is taken inside the
code and cannot be user decided (but it should be).
