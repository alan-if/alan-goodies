# Predefined Classes Diagram

Diagram of Alan predefined classes in SVG, generated via [Dia Diagram Editor].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Folder Contents](#folder-contents)
- [Diagram Preview](#diagram-preview)
- [Diagram Info](#diagram-info)
- [System Requirements](#system-requirements)

<!-- /MarkdownTOC -->

-----


# Folder Contents

- [`BUILD_SVG.bat`](./BUILD_SVG.bat) — Create SVG from Dia sourcefile.
- [`predefined-classes.dia`](./predefined-classes.dia) — Dia sourcefile.
- [`predefined-classes.svg`](./predefined-classes.svg) — Converted diagram in SVG format.


# Diagram Preview

![predefined-classes.svg][predefined-classes.svg]

# Diagram Info

This diagram was created for the new edition of _[The Alan Manual]_, based on the original raster diagram found in the Manual. The diagram appears in  [Section 2.4] of the Manual.

Background colors were added to the class-boxes to distinguish between native classes that can be subclassed (in yellow) from those which can't (in grey).

# System Requirements

In order to edit the diagram's sourcefile, or to run the scripts in this folder, you'll need to install [Dia Diagram Editor], a free and open source cross platform tool for editing diagrams.

Execution of [`BUILD_SVG.bat`](./BUILD_SVG.bat) requires that Dia's binary (`dia.exe`) is made available on the system PATH.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Dia]: http://dia-installer.de/ "Visit Dia's website"
[Dia Diagram Editor]: http://dia-installer.de/ "Visit Dia's website"

[predefined-classes.svg]: ./predefined-classes.svg

[The Alan Manual]: https://github.com/alan-if/alan-docs/tree/master/manual

[Section 2.4]: https://htmlpreview.github.io/?https://github.com/alan-if/alan-docs/blob/master/manual/manual.html#_the_predefined_classes "Live HTML preview of Alan Manual §2.4"

<!-- EOF -->
