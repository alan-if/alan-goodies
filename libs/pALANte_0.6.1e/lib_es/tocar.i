-- tocar.i
-- Library version 0.6.0e

-- 0.4.1 - converted to ALANv3


Add To Every thing
  Is
    tocable.
End Add To thing.

Synonyms
  toco, toca, palpo, palpa, palpar, acaricio, acaricia, acariciar,
  sobo, soba, sobar, manoseo, manosea, manosear = tocar.
Syntax
  tocar = tocar (obj)
    Where obj Isa thing
      Else "Eso no lo puedes tocar."
  tocar = tocar el (obj).

  tocar_con = tocar (obj1) con (obj2)
    Where obj1 Isa thing
      Else "Eso no lo puedes tocar."
    And obj2 Isa object
      Else "Solo puedes utilizar objetos para tocar."
  tocar_con = tocar (obj1) con el (obj2).
  tocar_con = tocar el (obj1) con (obj2).
  tocar_con = tocar el (obj1) con el (obj2).

Add To Every object
  Verb tocar
    Check obj Is tocable
      Else "Eso es intocable."
    Does
      "Tocas" Say The obj. "."
  End Verb.

  Verb tocar_con
    When obj1
      Check obj1 Is tocable
        Else "Eso es intocable."
      And obj1 <> obj2
        Else "No tiene sentido tocar algo con si mismo."
    Does
    "Tocas" Say The obj1. "con" Say The obj2. "."
  End Verb.
End Add To.
