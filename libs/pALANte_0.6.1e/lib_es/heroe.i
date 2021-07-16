-- heroe.i
-- Library version 0.6.1e

Synonyms
  mi, me, yo, heroe, héroe = hero.

The hero Isa actor
Container
  Limits
    Count 10 Then
      "No puedes llevar más. Debes dejar algo antes."
    peso 50 Then
      "No puedes llevar más peso. Debes dejar algo antes."
    Header
      "Tienes"
    Else
      "No tienes nada."
End The hero.
