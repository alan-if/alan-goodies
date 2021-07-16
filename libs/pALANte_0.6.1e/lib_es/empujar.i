-- empujar.i
-- Library version 0.6.0e

-- 0.4.1 - converted to ALANv3

Add To Every Thing
Is
  empujable.
End Add To Thing.

Synonyms
  empujo, empuja = empujar.
Syntax
  empujar = empujar (obj)
    Where obj Isa Thing
      Else "¡No puedes empujar eso!."
  empujar = empujar 'el' (obj).

Add To Every object
  Verb empujar
    Check obj Is empujable
      Else "No puedes empujar eso."
    Does
      "Empujas" Say The obj. "."
  End Verb.
End Add To.

Syntax
  empujar_con = empujar (obj1) 'con' (obj2)
    Where obj1 Isa thing
      Else "You can't empujar that."
    And obj2 Isa object
      Else "You can use only objects to empujar things with."
  empujar_con = empujar (obj1) 'con' 'el' (obj2).
  empujar_con = empujar 'el' (obj1) 'con' (obj2).
  empujar_con = empujar 'el' (obj1) 'con' 'el' (obj2).

Add To Every object
  Verb empujar_con
    When obj1
      Check obj1 Is empujable
        Else "No puedes empujar eso."
    Does
      "Usando" Say The obj2. "empujas" Say The obj1. "."
  End Verb.
End Add To.
