.. _plugins:

########################
    Plugins
########################

Summary
====

The Plugins feature allows to run custom python scripts directly from Synfig Studio menu. Each script takes .sif file as first argument and should modify its contents in some way. After script execution finished, the file is automatically reopened back in Synfig Studio.

With the current script feature, has it work with the file itself you can't retrieve the current Time_Cursor position when the script is invoked. But you can know the value of a Parameter or ValueNode at a certain time (the ones fixed by Waypoints), because the ValueNode#Animated ValueNodes|Animated Value Nodes are stored (other problem is to know the interpolated value, which is not trivial for other thing rather than Linear or Constant interpolation)

All plugins are located in the "Plug-Ins" submenu of the canvas.

Rationale
====

People often write some scripts to make useful things on Synfig (sif) files. The most of these scripts are written in python. But for ordinary users running custom scripts from terminal is tricky. With plugins feature user can install scripts as easy as they copy files and transparently run them in the same way as they use standard Synfig Studio commands. Also, runing scripts from menu is much faster than from terminal and it greatly improves the workflow for advanced users. Having this feature allows to easily add simple functions to Synfig Studio by writting scripts in python.

How to install plugins
====

Plugin is a directory, containing the python script (*.py file), plugin.xml and maybe some other files if they are required by python script.

To install the plugin user should copy its directory into the following location:

* **Windows Vista/7/8:** C:\Users\USERNAME\Synfig\plugins
* **Windows XP:** C:\Documents and Settings\USERNAME\Synfig\plugins
* **Linux:** ~/.config/synfig/plugins
* **OSX:** /Users/USERNAME/Library/Synfig/plugins

The system-wide location for the plugins is USER_DIRECTORY/SYNFIG_CONFIGURATION_DIR/plugins

Where to find plugins
----

* `Yoyobuae:FreeForm Deform <https://github.com/yoyobuae/synfig-plugins>`_
* `Morevna:Plugins feature in Synfig Studio <http://morevnaproject.org/2012/06/11/plugins-feature-in-synfig-studio/>`_
* `Berteh:Import Labels and Timings <https://github.com/berteh/synfig-import-labels>`_
* `Synfig forum: scripts/plugin thread <https://forums.synfig.org/c/development/scripting>`_

Plugin structure
====

A plugin keeps all its files inside a directory as described above.

Synfig parses the file called plugin.xml found in each plugin directory, which defines plugin metadata and how to invoke the script.

This section describes the xml elements available and what they do.

<plugin>
----

Root element. Can contain the following:

* <name> The name of the plugin, must have at least the default version
* <exec> Script to run when the user clicks on the Plugin menu. Can be omitted if there are importers or exporters
* <exporter> Defines an exporter, a plugin can have multiple of these
* <importer> Defines an importer, a plugin can have multiple of these

<name>
----

Name of the plugin, can be specified multiple times to provide translations


Example:
::
    <name>This is the default name</name>
    <name xml:lang="it">This is name it will show if you set Italian as your language</name>

<exec>
----

Defines a script to run, the text contents must be a path (relative to the plugin directory) of a script to run.

If present inside <plugin>, the plugin will be shown in the Plugins menu, and the script will be invoked when you click on the corresponding menu item.

It has a few attributes, all optional.

{|class=wikitable
!name
!default
!effect
|-
!type
|python
|selects the interpreter (currently only Python is supported)
|-
!stdout
|ignore
|What to do with the script standard output:
* **ignore** output is discarded
* **log** the output is shown in the Synfig log
* **message** an error message is shown to the user
|-
!stderr
|message
|Same as above, but for standard error
|}

Example:
::
    <exec>myscript.py</exec>

Changing stream behaviour:

::
<exec stdout="log" stderr="ignore">myscript.py</exec>


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
::
   <exporter>
      <extension>svg</extension>
      <extension>svgz</extension>
      <description>Scalable Vector Graphics (*.svg, *.svgz)</description>
      <exec>svg-exporter.py</exec>
   </exporter>

<importer>
----

Works the same as <exporter>, but provides script to convert from other formats into synfig.

A plugin can define multiple importers.

Importers will be shown in the Open file dialog.

Example:
::
   <importer>
      <extension>svg</extension>
      <extension>svgz</extension>
      <description>Scalable Vector Graphics (*.svg, *.svgz)</description>
      <exec>svg-exporter.py</exec>
   </importer>


<extension>
----

For <importer> and <exporter>, which extensions are supported.

Multiple <extension> elements may be present in an importer or exporter (at least one is required)

Example:
::
    <extension>svg</extension>

<description>
----

For <importer> and <exporter>, the text to be shown in the file dialog.

Similarly to <name> this can be translated using xml:lang

Example:
::
<description>Scalable Vector Graphics (*.svg, *.svgz)</description>


Script Invocation
====

Plugins Menu
----

For scripts run when the user clicks on the plugin name in the Plugins menu, synfig will save a copy of the open canvas and pass the path to that file as the argument to the script.

The script can then modify that file and synfig will reload the canvas to reflect any changes.

Exporter
----

For an exporter, synfig will pass two arguments to the script: the first is the path to a synfig file containing the open canvas; the second is the file name.

Importer
----

For an importer, synfig will pass the file selected in the open dialog as first argument, and the path to a temporary synfig file as second argument.

Once the script is completed, synfig will load that second file, so the plugin script should populate it appropriately.


= Tutorial =

<videoflash>De9UhUkzNiY|425|344</videoflash>


= Details =

Each plugin located in a separate subdirectory with unique name. The part of the name before first "-" symbol is used to set the group plugin belongs to (not implemented yet). The main information about plugin (plugins name and script to execute) is stored in the plugin.xml file. It's self-explanatory :

::
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
::
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
