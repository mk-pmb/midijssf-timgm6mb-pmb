
<!--#echo json="package.json" key="name" underline="=" -->
midijssf-timgm6mb-pmb
=====================
<!--/#echo -->

<!--#echo json="package.json" key="description" -->
MIDI.js sound font: timgm6mb. Converted TimGM6mb.sf2 from Debian package
timgm6mb-soundfont, GPL v2.
<!--/#echo -->




<!--#toc stop="scan" -->


Build
-----

Run `npm start` (or `nodejs convert.js`) to (re)build the wavetable files.

* [How to obtain the original `.sf2` on Windows][deb-win]



Known issues
------------

* This package contains samples in multiple audio formats,
  including the quite large FLAC version.
  If you want a smaller package with fewer formats (e.g., just MP3),
  the license grants you permission to make and publish a reduced
  version of this package.



&nbsp;

  [deb-win]: https://github.com/mk-pmb/midijssf-from-sf2-pmb/blob/master/docs/windows/import_ubuntu2win.md




License
-------
<!--#echo json="package.json" key=".license" -->
GPL-2
<!--/#echo -->

* Copyright (C) 2004 Tim Brechbill (http://www.timbrechbill.com)
* Converted and re-packaged by @mk-pmb
