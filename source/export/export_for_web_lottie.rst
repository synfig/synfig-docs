.. _export_for_web:

###########################
  Export for Web (Lottie)
###########################

.. note::

     Available since Synfig Studio 1.4.0.

Synfig Studio can export animations to `Lottie JSON format <https://airbnb.design/lottie/>`_, which allows to embed them into web pages, play them natively in web browser and on mobile platforms. This format is also `used <https://github.com/synfig/synfig/issues/704#issuecomment-508974632>`_ for creating Telegram's animated stickers!

Currently it is capable to export most main graphic elements, with animation and some converters applied to their parameters (see detailed list of supported layers and parameters on `this page <https://github.com/synfig/synfig/pull/756>`_).

.. raw:: html

  <iframe width="560" height="315" src="https://www.youtube.com/embed/cJq8yoP8Ji8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br><br>
  <iframe width="560" height="315" src="https://www.youtube.com/embed/Wjw2nO8kYlc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><br><br>

To export your animation file, choose "Plugins" - "Export to Lottie" from menu. This will export the currently opened file to Lottie format.

    .. image:: export_for_web_lottie_dat/lottie-export.png
    
After the export, you'll have 3 files in the same directory as your animation: **FILE.html**, **FILE.json** and **FILE.log**.

    * **FILE.json** is the main file where the Lottie format animation resides. Use it if you want to embed your animation to some webpage. Here is an `example implementation at codepen.io <https://codepen.io/airnan/project/editor/ZeNONO/>`_. FILE.json can be directly played using `lottiefiles.com <https://lottiefiles.com/>`_.
    * **FILE.html** can be used to watch exported animation in a browser like Firefox or Google Chrome.
    * **FILE.log** stores all messages/errors appeared during the export. If a layer is not supported, it will be notified in this file.

Limitations:

    * Exporting Bones (Skeleton) animation is not implemented yet.
    * Layers like region, outline, and polygon are exported frame-by-frame because there is no exact alternative provided by Lottie and hence the animations might lag on larger displays.
    * Animation of addition/deletion of spline points is not supported as Lottie format does not provides this feature.
