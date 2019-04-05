# Alan Libraries

Archived copies of legacy Alan Libraries, no longer actively maintained but required to compile old adventures.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [ALAN Library v0.6.2](#alan-library-v062)
- [Some Background on the Libraries](#some-background-on-the-libraries)

<!-- /MarkdownTOC -->

-----

# Introduction

This directory tree is intended as an archive for legacy versions of the ALAN Library, to allow users to compile old adventures which depend on them. Efforts are made to ensure that the archived copies are the latest known version of each library.

Since the goal is to enable compiling legacy code, the libraries sources are edited to ensure that they can compile with the latest Alan release. Some of these libraries are quite old, and the Alan language has undergone significant changes in the meantime, some of which might have broken backward compatibility.


# ALAN Library v0.6.2

- [`/ALAN-Library_0.6/`][ALAN-Library_0.6]

A recovered copy of ALAN Library v0.6.2 (the last version of the 0.6.x series), for compiling old Alan adventures.
Edited by [Tristano Ajmone] to ensure compatibility with Alan 3.0beta6.

This ALAN Library was the result of the collaborative joint effort of Göran Forslund, Stephen Griffiths and Thomas Nilsson (now Thomas Nilefalk).

License: [Artistic License 2.0](./ALAN-Library_0.6/COPYING)

# Some Background on the Libraries

> __Tristano's Note__ — Having joined the ALAN community when Anssi's StdLib 2.1 was already the new established library, I haven't had any actual experience with previous versions of the ALAN Library. The following information might be inaccurate. Corrections are welcome.

From what I've gathered, the evolution of the ALAN standard libraries is roughly as follows.

- The original __ALAN Library__, up to v0.4.0 (2001–2002), was designed for ALAN 2.
- __ALAN Library v0.4.1__ was ported to work with ALAN 3, and was updated up to v0.6.2 (2002–2007).
- __[ALAN Library 1]__ (2010–2011) was a new library design (redesign?) by [Anssi Räisänen], where the library code was organized into four main sumodules.
- The __[ALAN Standard Library 2]__ (2016–) was designed by [Anssi Räisänen], this being a new library altogether, targeting specifically ALAN 3 new features and introducing extensive features in formally organized library structure. This is the current ALAN Library in use today, v2.1 being the latest release. 

The original ALAN Library, up to v0.6.2 was the result of the collaborative joint effort of Göran Forslund, Stephen Griffiths and Thomas Nilsson (now Thomas Nilefalk). The [ALAN Library 1] was designed by [Anssi Räisänen]. The new [ALAN Standard Library 2]  (aka StdLib) is the work of [Anssi Räisänen].

All three libraries are distributed under the Artistic License 2.0.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[ALAN Library 1]: https://www.alanif.se/download-alan-v3/download-library/library-v1-00 "Go to the download page of ALAN Library v1.0 on ALAN website"

[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[ALAN repository]: https://bitbucket.org/alanif/alan "Visit the official ALAN repository on Bitbucket"



<!-- project files & folders -->

[ALAN-Library_0.6]: ./ALAN-Library_0.6/ "Navigate folder"

<!-- people -->

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->