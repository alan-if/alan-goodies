-- smell.i
-- Library version 0.6.1e

-- 0.4.1 - converted to ALANv3

Synonyms
  huele, huelo, olisqueo, olisquea, olisquear, olfateo, olfatea, olfatear = oler.
Syntax
  oler0 = oler.

Verb oler0
  Does
    "No hueles nada insólito."
End Verb.


Syntax
  oler = oler (obj)
    Where obj Isa thing
      Else "¡No puedes oler eso!"
  oler = oler el (obj).

Add To Every thing
  Verb oler
    Does
      "Hueles" Say The obj. "."
    End Verb.
End Add To.
