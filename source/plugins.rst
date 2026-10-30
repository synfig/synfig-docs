.. _plugins:


########################
    Plugins
########################

.. _plugins  Summary:

Summary
====

The Plugins feature allows to run custom python scripts directly from Synfig Studio menu. Each script takes .sif file as first argument and should modify its contents in some way. After script execution finished, the file is automatically reopened back in Synfig Studio.

All plugins are located in the "Plug-Ins" submenu of the canvas.

.. _plugins  Rationale:

Rationale
====

People often write some scripts to make useful things on Synfig (sif) files. The most of these scripts are written in Python. But for ordinary users running custom scripts from terminal is tricky. With plugins feature user can install scripts as easy as they copy files and transparently run them in the same way as they use standard Synfig Studio commands. Also, runing scripts from menu is much faster than from terminal and it greatly improves the workflow for advanced users. Having this feature allows to easily add simple functions to Synfig Studio by writting scripts in Python.

.. _plugins  How to install plugins:

How to install plugins
====

Plugin is a directory, containing the python script (*.py file), a metadata file named plugin.xml and maybe some other files if they are required by the Python script.

To install the plugin user should copy its directory into the following location:

* **Windows Vista/7/8:** C:\\Users\\USERNAME\\Synfig\\plugins
* **Windows XP:** C:\\Documents and Settings\\USERNAME\\Synfig\\plugins
* **Linux:** ~/.config/synfig/plugins
* **OSX:** /Users/USERNAME/Library/Synfig/plugins

The system-wide location for the plugins is USER_DIRECTORY/SYNFIG_CONFIGURATION_DIR/plugins

.. _plugins  Where to find plugins:

Where to find plugins
----

* `Yoyobuae:FreeForm Deform <https://github.com/yoyobuae/synfig-plugins>`_
* `Morevna:Plugins feature in Synfig Studio <http://morevnaproject.org/2012/06/11/plugins-feature-in-synfig-studio/>`_
* `Berteh:Import Labels and Timings <https://github.com/berteh/synfig-import-labels>`_
* `Controller  Plugin (by Veer Metri) <https://github.com/veermetri05/controller-plugin>`_
* `Synfig forum: scripts/plugin thread <https://forums.synfig.org/c/development/scripting>`_

.. _plugins  Plugin structure:

Plugin structure
====

A plugin keeps all its files inside a directory, with files as follows:

* a XML file named plugin.xml for metadata [mandatory] :ref:`plugin.xml`
* one or more Python scripts to be run [mandatory]
* none or one or XML file for UI dialog to be shown before running the plugin script (named according to script filename) [optional] (since Synfig Studio 1.5.3) :ref:`plugins  UI`

Synfig parses the file called plugin.xml found in each plugin directory, which defines plugin metadata and how to invoke the script.

The scripts should be written for Python 3.

The optional UI files must have .ui extension and the contents must be in Glade format, as it will be constructed via Gtk::Builder.

.. _plugin.xml:

plugin.xml
=====

This section describes the xml elements available for plugin.xml and what they do.

.. _plugins  <plugin>:

<plugin>
----

Root element. Can contain the following:

* <name> The name of the plugin, must have at least the default version [translatable string]
* <author> The author name [string] (since 1.5.3)
* <release> The release name [translatable string] (since 1.5.3)
* <version> The version number [integer] (since 1.5.3)
* <url> A url pointing to the plugin project/website [string] (since 1.5.3)
* <description> A description text to guide the user [translatable string] (since 1.5.3)
* <exec> Script to run when the user clicks on the Plugin menu. Can be omitted if there are importers or exporters [filepath]
* <exporter> Defines an exporter, a plugin can have multiple of these
* <importer> Defines an importer, a plugin can have multiple of these


.. _plugins  <name>:

<name>
----

Name of the plugin, can be specified multiple times to provide translations

Mandatory.

Example:

.. code-block:: xml

    <name>This is the default name</name>
    <name xml:lang="de">This is name it will show if you set German as your language</name>

.. _plugins  <author>:

<author>
----

Name of the plugin author.

Recommended.
Available since 1.5.3.


Example:

.. code-block:: xml

    <author>John Smith</author>

.. _plugins  <release>:

<release>
----

A release name of the plugin version, can be specified multiple times to provide translations.
Some software like to use codename for their releases, and this is the field for it.

Optional. Available since 1.5.3.

Example:

.. code-block:: xml

    <release>White Tiger</release>
    <release xml:lang="es">Tigre Blanco</release>

.. _plugins  <version>:

<version>
----

Each release of a plugin must be identified by integer number from a increasing monotonic sequence,
i. e. if the first plugin release is identified as version 1, the version of the next releases must
be an integer greater than 1.

Mandatory. Available since 1.5.3.

Example:

.. code-block:: xml

    <version>3</version>

.. _plugins  <url>:

<url>
----

A url pointing to the plugin project/website.

Optional. Available since 1.5.3.

Example:

.. code-block:: xml

    <url>https://github.com/synfig/synfig/tree/master/synfig-studio/plugins/add-skeleton-simple</url>

.. _plugins  <description>:

<description>
----

A description about what the plugin does; it can be specified multiple times to provide translations.

Optional. Available since 1.5.3.

Example:

.. code-block:: xml

    <description>Creates a simple skeleton for a humanoid being.</description>
    <description xml:lang="fr">Some description in French.</description>

.. _plugins  <exec>:

<exec>
----

Defines a script to run, the text contents must be a path (relative to the plugin directory) of a script to run.

If present inside <plugin>, the plugin will be shown in the Plugins menu, and the script will be invoked when you click on the corresponding menu item.

It has a few attributes, all optional.

type
  Selects the interpreter (currently only Python is supported)

  * **python**

  Optional. 

stdout
  What to do with the script standard output:
  
  * **ignore** output is discarded (default)
  * **log** the output is shown in the Synfig log
  * **message** an error message is shown to the user

  Optional. Since 1.4.0

stderr
  Same as above (stdout), but for standard error. Default to **message**.

  Optional. Since 1.4.0

current_time
  If script should receive the current time in canvas as argument when plugin runs.

  * **unused**: plugin does not need this info, and such data will not be passed to it (default)
  * **mandatory**: plugin depends on this info. If user does not provide it, an error message will pop up warning him/her.
  * **optional**: plugin can run without that info, so if it does not exist, it is not a problem.

  See :ref:`plugins how to request canvas state`

  Optional. Since 1.5.3

selected_layers
  If script should receive the XPath of currently selected layers as argument when plugin runs.
  It accepts the same values as ``current_time``  above.

  See :ref:`plugins how to request canvas state`

  Optional. Since 1.5.3

Example:

.. code-block:: xml

    <exec>myscript.py</exec>

Changing stream behaviour:

.. code-block:: xml

    <exec stdout="log" stderr="ignore">myscript.py</exec>


.. _plugins  <exporter>:

<exporter>
----

Defines a new exporter, used to convert synfig files into other formats.

A plugin can define multiple exporters.

Exporters will be shown in the Export dialog.

The exporter contains the following sub-elements:

* <exec> must have exactly one of these
* <extension> must have at least one of them
* <description> must have the default version

Example:

.. code-block:: xml

   <exporter>
      <extension>svg</extension>
      <extension>svgz</extension>
      <description>Scalable Vector Graphics (*.svg, *.svgz)</description>
      <exec>svg-exporter.py</exec>
   </exporter>

.. _plugins  <importer>:

<importer>
----

Works the same as <exporter>, but provides script to convert from other formats into synfig.

A plugin can define multiple importers.

Importers will be shown in the Open file dialog.

Example:

.. code-block:: xml

   <importer>
      <extension>svg</extension>
      <extension>svgz</extension>
      <description>Scalable Vector Graphics (*.svg, *.svgz)</description>
      <exec>svg-exporter.py</exec>
   </importer>


.. _plugins  <extension>:

<extension>
----

For <importer> and <exporter>, which extensions are supported.

Multiple <extension> elements may be present in an importer or exporter (at least one is required)

Example:

.. code-block:: xml

    <extension>svg</extension>

.. _plugins  <description>:

<description>
----

For <importer> and <exporter>, the text to be shown in the file dialog.

Similarly to <name> this can be translated using xml:lang

Example:

.. code-block:: xml

    <description>Scalable Vector Graphics (*.svg, *.svgz)</description>

.. _plugins  UI:

UI files
=====

Since Synfig Studio 1.5.3, plugins can present a simple configuration dialog
to use right before running the python script itself.

Configuration dialog
======

The dialog, if provided by the plugin, will be shown every time before the plugin actually runs.
It is static: it will not enable/disable widgets according to user interaction, neither validate data unless the widgets themselves perform validation.

How to provide the configuration dialog
=======

Synfig Studio will automatically search for a file in the plugin script folder, with the same filename, except the extension, that must be ".ui".

- The .ui file must be in Glade format, as it will be constructed via Gtk::Builder.
- Synfig Studio runs on Gtk3, not Gtk4, so write a compatible .ui file.
- Currently, we still target to support Gtk 3.18. For now, avoid widgets provided later than this version.
- The root widget of the .ui file will be embedded in a dialog with two buttons: OK and Cancel.
- The root widget MUST be have its ID set as "`dialog_contents`".
- The configuration fields MUST be named (set "name", not "ID"). Keep in mind that the field name will be used to identify the data to be passed to script; so, set a unique name to each one.
- Supported control widgets (i.e. their data will be passed to plugin script):

  - Entry,
  - ComboBox (use item id),
  - ComboBoxText (use item id),
  - SpinButton,
  - FileChooserButton (a single file per button, for now),
  - ColorButtonChooser,
  - FontButtonChooser (the font value will be in `PangoDescription <https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html>`_ format),
  - CheckButton,
  - Switch,
  - ToggleButton,
  - Scale,
  - ScaleButton,
  - SpinButton,
  - Volume,
  - AppChooserButton
- Currently it doesn't support RadioButton widget.
- You can use visual (e.g. Label) and helper (e.g. Containers) widgets freely.

How to get what was set by user on the configuration dialog
=======

If the dialog exists and user presses its OK button, the plugin script will receive, as its **second** argument, a filename. 
If using Python, get it via ``sys.argv[2]``.

The file contains a `JSON <https://json.org>`_ dictionary. The dict entry named "dialog" contains a nested dictionary with the data provided/chosen by user. The file may contain extra data, such as the Canvas state, as described in next section.

The "dialog" dictionary is a list of key-value pair, being the key the widget name (not ID) and the value that one provided by user.

Notes:

- ComboBox(Text) value is the ID of selected item, not the text presented to user.
- Boolean values (e.g. CheckButton) are "1" or "0".
- All field values will be passed as strings.
- The data file is temporary: it will deleted as soon as plugins finish running (successfully or not)

Example of data file contents
=======

.. code-block:: json

    {
      "dialog": {
        "my_entry": "what user typed",
        "the_checkbox": "1"
      }
    }

.. _plugins  Canvas State:

Canvas State
======

Synfig Studio can now pass the current canvas view state, and the plugin script can request them selectively.

These info are supported:

- current time (in seconds)
- the selected layers (list of pseudo XPath)

.. _plugins how to request canvas state:

How to request
=======

The metafile plugin.xml was extended to let plugin author tells Synfig Studio what info it needs.

The ``<exec>`` element now has two optional attributes:

- To receive current time, add this attribute to "exec" element: ``current_time="mandatory"``.
- To receive XPath of selected layers, add this attribute to "exec" element: ``selected_layers="optional"``.

Both attribute accepts one of three possible values:

- "unused": plugin does not need this info, and such data will not be passed to it (default)
- "mandatory": plugin depends on this info. If user does not provide it, an error message will pop up warning him/her.
- "optional": plugin can run without that info, so if it does not exist, it is not a problem.

Example: If ``selected_layers="mandatory"`` attribute exists, the user MUST select at least one layer to run the plugin. Otherwise, Synfig Studio will warn user and abort the plugin execution (by not starting it).

.. _plugins how to get canvas state:

How to get the data
=======

If any of the canvas state request attribute exists, the plugin script will receive, as its **second** argument, a filename. 
If using Python, get it via ``sys.argv[2]``.

The file contains a `JSON <https://json.org>`_ dictionary. The dict entry named "canvas_state" contains a nested dictionary with the requested data. The file may contain extra data, such as the Config Dialog entries, as described in previous section.

The possible keys for "canvas_state" dict are:

- "current_time": value will be in seconds.
- "selected_layers": an JSON array of pseudo `XPath <https://en.wikipedia.org/wiki/XPath>`_ to selected layers.

Notes:

- Only the requested data will be in the file.
- The XPath for each layer is not 100% compliant.:
  * It may start with a filename, if selected layer comes from an imported `sif` file. In this case, it will be followed by `#` character, to mark the file path end.
  * It may have a starting ":" and that means the root canvas element of the file.
  * If it is an exported canvas (or from an exported value node), it won't have the initial path, but its ID. So place properly `defs` path.

Examples of file contents
=======

.. code-block:: json

    {
      "canvas_state": {
        "current_time": "1.35"
      }
    }

Only "time" was requested.

.. code-block:: json

    {
      "canvas_state": {
        "selected_layers": [
          ":layer[2]"
        ]
      }
    }

Only "layers" was requested, and user only selected one layer before calling the plugin. That layer is in the root canvas, being the second one from bottom to top. 

.. code-block:: json

    {
      "canvas_state": {
        "current_time": "1.35",
        "selected_layers": [
          ":layer[2]",
          ":layer[7]"
        ]
      }
    }

.. _plugins  Script Invocation:

Script Invocation
====

.. _plugins  Plugins Menu:

Plugins Menu
----

For scripts run when the user clicks on the plugin name in the Plugins menu, synfig will save a copy of the open canvas and pass the path to that file as the argument to the script.

The script can then modify that file and synfig will reload the canvas to reflect any changes.

.. _plugins  Exporter:

Exporter
----

For an exporter, synfig will pass two arguments to the script: the first is the path to a synfig file containing the open canvas; the second is the file name.

.. _plugins  Importer:

Importer
----

For an importer, synfig will pass the file selected in the open dialog as first argument, and the path to a temporary synfig file as second argument.

Once the script is completed, synfig will load that second file, so the plugin script should populate it appropriately.


.. _plugins  Tutorial:

Tutorial
========

.. raw:: html

    <div style="position: relative; padding-bottom: 56.25%; height: 0; overflow: hidden; max-width: 100%; height: auto;">
        <iframe src="https://www.youtube.com/embed/De9UhUkzNiY" frameborder="0" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe>
    </div>
    
.. _plugins  Details:

Details
-------

Each plugin located in a separate subdirectory with unique name. The part of the name before first "-" symbol is used to set the group plugin belongs to (not implemented yet). The main information about plugin (plugins name and script to execute) is stored in the plugin.xml file. It's self-explanatory :

plugin.xml :

.. code-block:: xml

    <?xml version="1.0" encoding="UTF-8"?>
    <plugin>
    <name>Unhide All Layers</name>
    <name xml:lang="es">Activa todas las capas</name>
    <name xml:lang="eu">Erakutsi geruza guztiak</name>
    <name xml:lang="eu_ES">Erakutsi geruza guztiak</name>
    <name xml:lang="fr">Afficher Tous les Calques</name>
    <name xml:lang="lt">Parodyti visus sluoksnius</name>
    <name xml:lang="ru">Показать все скрытые слои</name>
    <exec>view-unhide-all-layers.py</exec>
    </plugin>

view-unhide-all-layers.py :

.. code-block:: python

    #!/usr/bin/env python

    #
    # Copyright (c) 2012 by Konstantin Dmitriev <k....z...gmail.com>
    #
    # This program is free software; you can redistribute it and/or modify
    # it under the terms of the GNU General Public License as published by
    # the Free Software Foundation; either version 2 of the License, or
    # (at your option) any later version.

    import os
    import sys

    def process(filename):

        # Read the input file
        inputfile_f = open(filename, 'r')
        inputfile_contents = inputfile_f.readlines()
        inputfile_f.close()

        # Now write results to the same file
        inputfile_f = open(filename, 'w')

        for line in inputfile_contents:
            if "<layer " in line:
                inputfile_f.write(line.replace(' active="false" ',' active="true" '))
            else:
                inputfile_f.write(line)
        inputfile_f.close()

    if len(sys.argv) < 2:
        sys.exit()
    else:
        process(sys.argv[1])

All scripts are interpreted with python 3.

In Linux and Mac OSX case Synfig Studio looks for "python" or "python3" binary. For windows case Python binary is expected at INSTALL_PREFIX/python/python.exe. New environment variable SYNFIG_PYTHON_BINARY allows to set custom path to the python 3 binary.
