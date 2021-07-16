# Vampiro

_Vampiro: Memorias de Rexxe_ v1.0.1, ported to ALAN by [Bruce Humphrey], 2010; based on the original adventure by Jaume Alcazo Castellarnau, 1998 (BSD License).

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Directory Contents](#directory-contents)
- [About Vampiro](#about-vampiro)
- [License](#license)
- [Changes](#changes)
- [Reference Links](#reference-links)

<!-- /MarkdownTOC -->

-----

# Directory Contents

- [`vampiro.alan`][vampiro.alan] — _Vampiro_ v1.0.1.
- [`vampiro.ifid`][vampiro.ifid] — original IFID.
- [`vampiro.a3sol`][vampiro.a3sol] — walkthrough commands script.
- [`vampiro.a3log`][vampiro.a3log] — generated walkthrough transcript.
- [`build.sh`][build.sh] — compiles and tests `vampiro.alan`.

The _Vampiro_ source files ([`vampiro.alan`][vampiro.alan] and [`vampiro.ifid`][vampiro.ifid]) were extracted from the `vampiro101.zip` archive, downloaded from CAAD:

- https://www.caad.es/?q=node/1717

The [`vampiro.a3sol`][vampiro.a3sol] walkthrough was taken from [Sarganar]'s Inform7 implementation of _Vampiro_ (therein named `solution.txt`), downloaded from CAAD:

- https://www.caad.es/informate/vampiro/vampiro_i7.rar


# About Vampiro

- <https://wiki.caad.es/Vampiro_(Alan)>

_Vampiro: Memorias de Rexxe_ is [Bruce Humphrey]'s ALAN port of an adventure by Jaume Alcazo Castellarnau (1998, BSD License).

Alcazo's original _Vampiro_ was created in [SINTAC G3], a Spanish text adventure development system for DOS.

In 2000, [José Luis Díaz] «Zak McKracken» had just finished working on [InformATE]  (the Spanish version of the Inform 6 libary), so he decided to port _Vampiro_ to Inform 6 to provide a sample adventure for his new library.
He then realized that _Vampiro_, due to its simplicity and fairly small size, could become the Spanish equivalent of [Roger Firth]'s _[Cloak of Darkness]_, i.e. a sample adventure which authors of new IF systems could quickly implement as their first demo.
He therefore launched **[Proyecto Vampiro]** (the Vampire Project), a web page promoting the adoption of Alcazo's _Vampiro_ as a reference demo for all Spanish IF systems, along the lines of the _[Cloak of Darkness]_ project (i.e. providing the adventure's specs, sample transcripts, and its world map).

Therefore, when [Bruce Humphrey] completed [pALANte]  (the Spanish port of the Alan Library), in 2010, he decided to create an Alan port of _Vampiro_ as a demo adventure.

# License

The _Vampiro_ sample adventure was ported to Alan by [Bruce Humphrey], based on the original adventure by Jaume Alcazo Castellarnau, which was released under BSD License.
Although we couldn't find any license file or info in the Alan version of _Vampiro_, [its page at WikiCAAD] mentions that it's BSD licensed.

# Changes

<!-- MarkdownTOC:excluded -->
## 2021-04-06

The following minor changes were carried out by [Tristano Ajmone] to the original `vampiro.alan` v1.0.1 source:

- The code was reformatted according to code style conventions of this repository.
- A couple of typos were fixed (LL 831-832), where special characters `$n` and `$t` were typed as `&n` and `&t` instead:

    ```alan
         &n&tTeclea AYUDA para obtener la solución de la aventura.
         Gracias por jugar.&n&n"
    ```

    these were obvious typing mistakes, and were fixed to:

    ```alan
         $n$tTeclea AYUDA para obtener la solución de la aventura.
         Gracias por jugar.$n$n"
    ```

    which is undoubtedly what the original author intended.

- The external link provided in the comments (L 8):

    ```alan
    -- http://www.caad.es/informate/vampiro/
    ```

    was tweaked to use the secure version of the HTTP protocol (`http:` &rarr; `https:`):

    ```alan
    -- https://www.caad.es/informate/vampiro/
    ```

Since these are all trivial changes, not affecting in any significant way the original work, the original version number of the adventure wasn't changed.


# Reference Links

- [WikiCAAD » Vampiro (Alan)]
- [CAAD » Proyecto Vampiro]
- [WikiCAAD » Proyecto Vampiro]

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[InformATE]: https://wiki.caad.es/InformATE "WikiCAAD page on InformATE"
[SINTAC G3]: https://wiki.caad.es/Sintac "WikiCAAD page on SINTAC (Sistema INTegrado para el desarrollo de Aventuras Conversacionales)"
[Cloak of Darkness]: http://www.firthworks.com/roger/cloak/index.html "Visit the 'Cloak of Darkness' project"
[pALANte]: https://www.caad.es/?q=node/1718 "CAAD page on pALANte"

<!-- Vampiro -->

[Proyecto Vampiro]: https://www.caad.es/informate/vampiro/ "Página principal del Proyecto Vampiro."
[CAAD » Proyecto Vampiro]: https://www.caad.es/informate/vampiro/ "Página principal del Proyecto Vampiro."
[WikiCAAD » Proyecto Vampiro]: https://wiki.caad.es/Proyecto_Vampiro
[WikiCAAD » Vampiro (Alan)]: https://wiki.caad.es/Vampiro_(Alan)

[its page at WikiCAAD]: https://wiki.caad.es/Vampiro_(Alan) "WikiCAAD » Vampiro (Alan)"

<!-- project files and folders -->

[vampiro.a3log]: ./vampiro.a3log "View transcript file"
[vampiro.a3sol]: ./vampiro.a3sol "View walkthrough script"
[vampiro.alan]: ./vampiro.alan "View source file"
[vampiro.ifid]: ./vampiro.ifid "View IFID file"
[build.sh]: ./build.sh "View source file"

<!-- people -->

[Bruce Humphrey]: https://alanif.blogspot.com/ "Visit Bruce Humphrey's blog on ALAN Spanish"
[José Luis Díaz]: https://wiki.caad.es/Zak_McKracken "View José Luis Díaz «Zak McKracken»'s page on WikiCAAD"
[Roger Firth]: http://www.firthworks.com/roger/index.html "Visit Roger Firth's personal homepage"
[Sarganar]: https://wiki.caad.es/Sarganar "View Sarganar's page on WikiCAAD"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->
