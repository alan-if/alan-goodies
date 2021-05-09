# ALAN Standard Library v1.00

A copy of the last release of the **ALAN Standard Library version 1** (2010–2011), by [Anssi Räisänen], for compiling old Alan3 adventures.

Last updated on September 30, 2011.

License: [Artistic License 2.0][COPYING].

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [Library Info](#library-info)
- [Changes](#changes)
- [Changelog](#changelog)
- [License](#license)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/StdLib1/`][StdLib1/] — Standard Library v1.00:
    + [`library.i`][library.i] — main module that imports all others:
        * [`classes.i`][classes.i]
        * [`locations.i`][locations.i]
        * [`messages.i`][messages.i]
        * [`verbs.i`][verbs.i]
    + [`COPYING`][COPYING] — [Artistic License 2.0].
    + [`CHANGELOG.txt`][CHANGELOG.txt] — original ChangeLog.
    + [`QuickRef.txt`][QuickRef.txt] — Quick Reference guide.
    + [`README.txt`][README.txt] — original README doc.
- [`testgame.alan`][testgame.alan] — sample adventure.


# Library Info

- [`/StdLib1/QuickRef.txt`][QuickRef.txt]
- [`/StdLib1/README.txt`][README.txt]

The **ALAN Standard Library version 1** (2010–2011) was created by [Anssi Räisänen] as the natural successor of the **ALAN Library v0.x** (2000–2007) which was originally created for Alan2 and then adapted for Alan3 (v0.4.0, June 2002).

> **NOTE** — You can find a copy of the latest **ALAN Library v0.6.2** in this repository: [`../ALAN-Library_0.6/`][Lib 0.6].

Whereas the original **ALAN Library** was merely adapted from Alan2 to compile with Alan3, the **Standard Library 1** (aka **StdLib 1**) was rewritten to take full advantage of Alan3's new features.
Even though its foundations are traceable back to the codebase of its predecessor, the novel approach introduced by the **StdLib 1** marks a clear transition in design from Alan2 to Alan3.

For detailed information on the history and evolution of the various Alan libraries, and their features, consult the [_Alan Libraries_ page] at the [Alan Wiki].

To the best of my knowledge, **Standard Library v1.00** (2011-09-30) was the latest release in the v1.xx series, later succeeded by the **[ALAN Standard Library 2]** (2016–), also by [Anssi Räisänen].

This is a old version of the Standard Library for Alan3.
It's archival here is mainly for historical reasons, to allow compiling old adventures that depend on it, and to preserve the ALAN-IF legacy.

For in-depth info about the library features and its usage, refer to its [`QuickRef.txt`][QuickRef.txt] and [`README.txt`][README.txt] documents, respectively.


# Changes

The original library files were taken from the `library1.00.zip` archive, downloaded from the Alan website:

- https://www.alanif.se/download-alan-v3/download-library/library-v1-00

All files underwent cosmetic editing by [Tristano Ajmone] to meet the code styles conventions of this repository, but none of the original contents (wording or code) were altered in any meaningful way.

These changes include: enforcing consistent indentation (spaces instead of Tabs); wrapping long lines at column 80; reformatting code comments to improve readability; changing filenames letter casing; and other minor changes which are merely aesthetic.

> **NOTE** — [Tristano Ajmone] is a co-maintainer of the **[ALAN Standard Library 2]** project on GitHub, and was granted permission by [Anssi Räisänen] to make similar changes to its codebase, in order to align the project with the needs of Git version control and the various standards and tools recently adopted by the Alan ecosystem.
>
> All changes to the **Standard Library v1.00** sources were based on similar changes to the **[ALAN Standard Library 2]**, and driven by Tristano's acquired experience on its code styles and conventions.

Even though the **StdLib 1** code dates back to 2011, it still works perfectly with the latest Alan release, so no fixes to the original codebase were required.

# Changelog

- [`/StdLib1/CHANGELOG.txt`][CHANGELOG.txt]

Here's an outline of the **StdLib 1** version history:

|   version   | release date |
|-------------|--------------|
| v1.00       | 2011/09/30   |
| v0.95       | 2010/10/01   |
| v.09        | 2010/09/19   |
| 1st version | ???          |

For the full history of the **StdLib 1** features changes, see the [`CHANGELOG.txt`][CHANGELOG.txt] file.


# License

- [`/StdLib1/COPYING`][COPYING]

The **Standard Library 1** is © Copyright 2010–2011 by [Anssi Räisänen], released under the terms of the [Artistic License 2.0].

In practical terms this means that the licensing is chosen so that it should be
possible to:

- Freely distribute games produced using the library, including for profit.
- Modify the source code of the library for inclusion in games, including commercial games.
- Redistribute compiled and/or source versions of the original library.
- Redistribute compiled and/or source of modified versions of the library provided they are done so under a compatible license with appropriate attribution.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0 "Artistic License 2.0 at the Open Source Initiative"
[ALAN Standard Library 2]: https://github.com/AnssiR66/AlanStdLib "Visit the official repository of the ALAN Standard Library 2"

[Alan Wiki]: https://github.com/alan-if/alan/wiki "Visit the official Alan Wiki on GitHub"
[_Alan Libraries_ page]: https://github.com/alan-if/alan/wiki/Alan-Libraries "Go to the 'Alan Libraries' page at the Alan Wiki"

<!-- project files & folders -->

[StdLib1/]: ./StdLib1/ "Navigate to folder"
[Lib 0.6]: ../ALAN-Library_0.6/ "Navigate to ALAN Library v0.6.2 folder"

[COPYING]: ./StdLib1/COPYING "View Artistic License 2.0 file"
[CHANGELOG.txt]: ./StdLib1/CHANGELOG.txt "View source file"
[classes.i]: ./StdLib1/classes.i "View source file"
[library.i]: ./StdLib1/library.i "View source file"
[locations.i]: ./StdLib1/locations.i "View source file"
[messages.i]: ./StdLib1/messages.i "View source file"
[QuickRef.txt]: ./StdLib1/QuickRef.txt "View source file"
[README.txt]: ./StdLib1/README.txt "View source file"
[verbs.i]: ./StdLib1/verbs.i "View source file"

[testgame.alan]: ./testgame.alan "View source adventure"

<!-- people -->

[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
