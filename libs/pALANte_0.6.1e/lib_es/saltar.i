-- saltar.i
-- versión 0.6.0e

-- 0.4.1 - converted to ALANv3

Synonyms
  salto, salta = saltar.
Syntax
  saltar_en = saltar en (obj)
    Where obj Isa Thing
      Else "¡No puedes saltar sobre eso!"
  saltar_en = saltar sobre (obj).
  saltar_en = saltar (obj).

Add To Every thing
  Verb saltar_en
    Does
      "Saltas sobre" Say The obj. "."
  End Verb.
End Add To.


Syntax
  saltar = saltar.

Verb saltar
  Does
    "Saltas arriba y abajo."
End Verb.
