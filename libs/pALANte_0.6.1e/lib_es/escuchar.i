-- escuchar.i
-- Library version 0.6.1e

-- 0.4.1 - converted to ALANv3


Synonyms
  escucha, escucho, oye, oigo, oir = escuchar.
Syntax
  escuchar_el = escuchar el (obj)
    Where obj Isa Thing
      Else "¡No puedes escuchar eso!"
  escuchar_el = escuchar (obj).

Add To Every thing
  Verb escuchar_el
    Does
      "Escuchas" Say The obj. "."
  End Verb.
End Add To.


Syntax
  escuchar = escuchar.


Verb escuchar
  Does
    "No oyes nada inusual."
End Verb.
