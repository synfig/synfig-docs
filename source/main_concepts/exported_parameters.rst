.. _exported_parameters:

########################
    Exported Parameters
########################


Exporting and converting a |ValueNode| are among the most interesting features of Synfig. A combination of them allows the user to organize complex animations modifying just a few |parameters|.
You can right-click any parameter in the |Parameters_Panel| and Export it. This adds it to the |Library_Panel|, and allows it to be used as the value of other parameters. You cannot export two parameters with the same name.

.. _exported_parameters Unexport:
Unexport
--------

You can delete an exported parameter. To do this right click on the exported parameter (or the |ValueNode|) and select "Unexport". It will delete the current selected exported Value Node but it will not affect to any parameter that was connected to the exported |ValueNode|.

Exported canvases cannot be deleted for the time being.

.. _exported_parameters Scope:

Scope
-----

Exported |ValueNode| are visible in the |Library_Panel| only for the current edited canvas. So if you export the canvas parameter and then double click in the |Canvas_Dialog| you will open the canvas in edit mode in another window. You can export a parameter while editing that canvas, and then the exported parameter will be visible only in the canvas scope. It will allow have same exported name for several |ValueNode| in different canvases.

.. _exported_parameters Rename:

Rename
------

You can also rename an exported parameter. Just make right click on the exported parameter (or the exported Value Node. It will not affect to the connected parameters that will remain connected to that renamed |ValueNode|.

.. _exported_parameters Convert:

Convert
-------

You can convert any exported |ValueNode| using the |Convert| right click menu. But there is a difference: converting a connected parameter will disconnect from its exported |ValueNode|. But if you convert a Value Node all the connected parameter will follow the converted Value Node.

.. _exported_parameters Reuse:

Reuse
-----

Sometimes you would like to do the same combination of exported values and convert types. And it is so tedious to repeat each time. There is a way to avoid this and reuse the exported and converted values.


.. |ValueNode| replace:: :ref:`Value Node <valuenode>`
.. |parameters| replace:: :ref:`parameters <parameters>`
.. |Parameters_Panel| replace:: :ref:`Parameters Panel <panel_parameters>`
.. |Library_Panel| replace:: :ref:`Library Panel <panel_library>`
.. |Canvas_Dialog| replace:: :ref:`Canvas Dialog <panel_canvas_browser>`
.. |Convert| replace:: :ref:`Convert <converters>`