-- read.i
-- Library version 0.5.0

-- 0.4.1 - converted to ALANv3


Add To Every object
  Is
    Not leible.
End Add To object.

Synonyms
  lee, leo = leer.
Syntax
  leer = leer (obj)
    Where obj Isa object
      Else "Eso no se puede leer."

Add To Every object
  Verb leer
    Check obj Is leible
      Else "No hay nada escrito en" Say The obj. "."
    Does
      "Lees" Say The obj. "."
    End Verb.
End Add To.
