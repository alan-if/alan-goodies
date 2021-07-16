-- examinar.i
-- Library version 0.6.1e

-- 0.4.1 - converted To ALANv3


Add To Every Thing
IS
  examinable.
  buscable.
End Add To Thing.

Add To Every Actor
IS
  NOT buscable.
End Add To Actor.

----

Synonyms
  x, ex, examina, examino, estudio, estudia, estudiar = examinar.

Syntax
  examinar = examinar (obj) *
    Where obj Isa Thing
      Else "¡No puedes examinar" say the obj. "!"
  examinar = examinar el (obj) *.

Add To Every Thing
  Verb examinar
    Check obj Is examinable
      Else "No puedes examinar" Say The obj. "."
    Does
      "No hay nada particular acerca de" Say The obj. "."
  End Verb.
End Add To.


----
Synonyms
  veo, ve, ver, m, l, 'look' = mirar.

Syntax
  mirar = mirar.

Verb mirar
  Does
    Look.
End Verb.

Syntax
  mirar_en = 'mirar' 'en' (obj)
    Where obj Isa Thing
      Else "No puedes mirar dentro de" Say The obj. "."
    And obj Isa Container
      Else "No puedes mirar dentro de" Say The obj. "."
  mirar_en = mirar dentro (obj).
  mirar_en = mirar dentro de (obj).
  mirar_en = mirar (obj).

Add To Every object
  Verb mirar_en
    Check obj Is examinable
      Else "No puedes mirar en" Say The obj. "."
    Does
      List obj.
  End Verb.
End Add To.


----

Syntax
  buscar = buscar (obj)
    Where obj Isa Thing
      Else "¡No puedes buscar en eso!"
  buscar = buscar en (obj).
  buscar = buscar dentro (obj).
  buscar = buscar dentro de (obj).

Add To Every object
  Verb buscar
    Check obj Is buscable
      Else "No puedes buscar en" Say The obj. "."
    Does
      "No encuentras nada de interés."
  End Verb.
End Add To.
