# Alan IF Spanish

Spanish Alan IF library v0.6.1e (April, 2010), by [Bruce Humphrey].

Based on the English library v0.6.1dev and the pALANte library v0.1 by Marcos Donnantuoni.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About](#about)
- [Usage Example](#usage-example)
- [License](#license)
- [Reference Links](#reference-links)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`/lib_es/`][lib_es/] — **pALANte**, the ALAN Spanish Library v0.6.1e:
    + [`palante.i`][palante.i] — main library module that loads all others:
        * `*.i` — various library modules.
    + [`leeme.txt`][leeme.txt] — Spanish ReadMe of the pALANte library.
    + [`ReadMe`][ReadMe] — ReadMe from the original English library.
    + [`indice.txt`][indice.txt] — INDEX of the pALANte library.
- [`vampiro/`][vampiro/] — The _[Vampiro]_ sample adventure, by [Bruce Humphrey].

# About

Marcos Donnantuoni and Bruce Humphrey — among others — began working on the Spanish localisation of Alan back in 2005, but the project was eventually abandoned, incomplete.

Then, in 2010, Bruce Humphrey took up the project again and completed the pALANte library and the _Vampiro_ sample adventure.

The files inside the [`/lib_es/`][lib_es/] folder were extracted from the `lib_es_0_6_1e.zip ` archive downloaded from:

- https://www.caad.es/?q=node/1718

The original sources were reformatted by [Tristano Ajmone] to conform to code style conventions of this repository, all changes were merely aesthetic, not affecting the source code.
The [`lib_es/COPYING`][COPYING] file of the [Artistic License 2.0] was added, since this is a derivative work of the [English Alan Library].


# Usage Example

```alan
-- Ejemplo de aventura mínima para ALAN

import 'palante.i'. -- importar la librería española


The inicio Isa location
  Name Inicio.  -- nombre que aparece en el intérprete
    Description
      "Toda historia empieza en un lugar..."
End The inicio.


-- Iniciar la aventura --
Start At inicio.
schedule ini_terms at limbo after 0. -- necesario para que funcione la
                                     -- librería castellana.

"$tInicio: Toda historia tiene un inicio...$n"
```


# License

- [`lib_es/COPYING`][COPYING]

The Spanish Alan Library is the work of [Bruce Humphrey] and Marcos Donnantuoni, based on the original [English Alan Library] by Göran Forslund, Stephen Griffiths and Thomas Nilsson (now [Thomas Nilefalk]).

Although the original Spanish library didn't contain any license file or info, we're assuming it's governed under the same [Artistic License 2.0] of the original [English Alan Library], since its a derivative work thereof.

- [`vampiro/`][vampiro/]

The _[Vampiro]_ sample adventure was ported to Alan by [Bruce Humphrey], based on the original adventure by Jaume Alcazo Castellarnau, which was released under BSD License.
Although we couldn't find any license file or info in the Alan version of _Vampiro_, [its page at WikiCAAD] mentions that it's BSD licensed.


# Reference Links

- [Wikipedia ES » Aventura conversacional]
- [BlogSpot » Alan IF en Español] — Bruce Humphrey's blog on creating Spanish text adventures using ALAN.

<!-- MarkdownTOC:excluded -->
## CAAD

- [CAAD] — Club de Aventuras AD:
    + [Librería pALANte para ALAN, v0.6.1e]
- [WikiCAAD » Alan]
- [WikiCAAD » Bruce Humphrey]
- [CAAD Forum]
- [CAAD FaceBook]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[CAAD FaceBook]: https://www.facebook.com/groups/33938974840/
[CAAD]: https://www.caad.es  "Visit the CAAD (Club de Aventuras AD) website"
[WikiCAAD » Alan]: https://wiki.caad.es/Alan
[CAAD Forum]: https://foro.caad.es
[Librería pALANte para ALAN, v0.6.1e]: https://www.caad.es/?q=node/1718

[Wikipedia ES » Aventura conversacional]: https://es.wikipedia.org/wiki/Aventura_conversacional

[BlogSpot » Alan IF en Español]: https://alanif.blogspot.com/
[WikiCAAD » Bruce Humphrey]: https://wiki.caad.es/Bruce_Humphrey

[English Alan Library]: ../alan_en/lib_en/ "Navigate to the English Alan Library folder"
[Artistic License 2.0]: https://opensource.org/licenses/Artistic-2.0  "View the Artistic License 2.0 at Open Source Initiative"

<!-- Vampiro -->

[Vampiro]: https://www.caad.es/?q=node/1717 "View original page of Vampiro at CAAD"
[its page at WikiCAAD]: https://wiki.caad.es/Vampiro_(Alan) "WikiCAAD » Vampiro (Alan)"

<!-- project files and folders -->

[lib_es/]: ./lib_es/ "Navigate to Spanish Alan IF library folder"
[vampiro/]: ./vampiro/ "Navigate to sample adventure"

[indice.txt]: ./lib_es/indice.txt "View file"
[leeme.txt]: ./lib_es/leeme.txt "View pALANte Library Index (Spanish)"
[palante.i]: ./lib_es/palante.i "View source file of main library module"
[ReadMe]: ./lib_es/ReadMe "View English README document"
[COPYING]: ./lib_es/COPYING "View Artistic License 2.0"

<!-- people -->

[Bruce Humphrey]: https://alanif.blogspot.com/ "Visit Bruce Humphrey's blog on ALAN Spanish"
[Thomas Nilefalk]: https://github.com/thoni56 "View Thomas Nilefalk's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
