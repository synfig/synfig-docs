.. _valuenode:

########################
    ValueNode
########################
A `ValueNode <ValueNode>`__ is a value that can change over time.

A `ValueNode <ValueNode>`__ represents a description of a value and how
it changes (or doesn't!) over time.

`ValueNodes <ValueNode>`__ are the things we see as the value for every
parameter of every `layer <Layers>`__. The `waypoints <Waypoint>`__
visible in the `Timetrack Panel <Timetrack_Panel>`__ are also part of
the `ValueNode <ValueNode>`__ - waypoints are how Animated
`ValueNodes <ValueNode>`__ work out what value to be at each point in
time.

Each `ValueNode <ValueNode>`__ (and hence each `Parameter <Parameter>`__
in Synfig has one of 13 `Types <Dev:Types>`__.

Kinds of ValueNodes
===================

There are three kinds of `ValueNodes <ValueNode>`__ in Synfig. In the
following examples the `ValueNode <ValueNode>`__'s type is a `real
number <http://en.wikipedia.org/wiki/Real_number>`__ in each case:

Constant ValueNodes
-------------------

These have a single value for all time, and no waypoints. An example of
such a `ValueNode <ValueNode>`__ would be:

“``3.4,``\ `` ``\ ``for``\ `` ``\ ``ever``”

Animated ValueNodes
-------------------

These have `Waypoints <Waypoints>`__ that specify their value at
particular points in time. For times which don't have a value specified,
the value is calculated by interpolating between the waypoints. An
example would be:

| ``"3.4 at the beginning of the animation,``
| ``move smoothly up to 7.6 at time = 10 seconds,``
| ``then jump instantly to 2.0``
| ``and stay there until the end of time"``

Converted ValueNodes
--------------------

These are `ValueNodes <ValueNode>`__ which have been
`Converted <Convert>`__ into sub-parameters, each of which is itself a
`ValueNode <ValueNode>`__. Right-clicking on a parameter and selecting a
type from the 'convert' sub-menu allows you to convert a
`ValueNode <ValueNode>`__. Converted `ValueNodes <ValueNode>`__ don't
have waypoints themselves, but their sub-parameters may do. An example
would be:

`` ``\ “``start``\ `` ``\ ``at``\ `` ``\ ``3.4``\ `` ``\ ``and``\ `` ``\ ``linearly``\ `` ``\ ``increase``\ `` ``\ ``by``\ `` ``\ ``1.2``\ `` ``\ ``per``\ `` ``\ ``second``”

Actions on ValueNodes
=====================

Convert
-------

`Converts <Convert>`__ a `ValueNode <ValueNode>`__ into a Linkable type.
It disconnects from the previous value node then creates a new Linkable
`ValueNode <ValueNode>`__ and connects the parameter to that new nalue
node.

Disconnect
----------

Creates a Constant value node based on the value of the parameter at the
frame where the action is executed. It disconnect from the previous
value node and connect the parameter to that new constant value node.

`ValueNodes <ValueNode>`__ are not discarded completely until all
parameter that were connected to get disconnected. So when you
disconnect from a value node it doesn't mean that the
`ValueNode <ValueNode>`__ is completely lost. Maybe other parameters
still connected to the value node too, so it is not deleted.

Export
------

`Export <Export>`__, take a `ValueNode <ValueNode>`__ (animated,
constant or linkable) and labels it with a unique name. The exported
`ValueNode <ValueNode>`__ is now known at any place of the document (by
any layer) so any other parameter can Connect to it. All exported
`ValueNodes <ValueNode>`__ are stored in the `Library
Panel <Library_Panel>`__.

Connect
-------

When a Exported `ValueNode <ValueNode>`__ is selected in the `Library
Panel <Library_Panel>`__ it is available to be `connected <Connect>`__
to any parameter, so the parameter is plugged to that exported value
node. When you Connect a parameter to an exported value node, the
parameter is disconnected from the previous value node. Parameters and
Exported value nodes can be Connected only of they are type compatible
(i.e. angle with angle and not angle with vector).

Link
----

When two or more parameters are selected at the same time (usually from
two layers) it is possible to `link <Linking>`__ the
`ValueNodes <ValueNode>`__. In this case all except one of the selected
previous parameters are disconnected from its value nodes and then
connected to the value node selected from the selected. The decision on
which value node is kept and used as link value node is taken inside the
code and cannot be user decided (but it should be).
