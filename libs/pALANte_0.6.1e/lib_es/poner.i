-- poner.i
-- versión 0.6.1e

-- 0.4.1 - converted to ALANv3

Synonyms
  meto, mete, meter, pongo, pone, pon, inserto, inserta, insertar = poner.


Syntax
  poner = poner (obj) *
    Where obj Isa Object
      Else "No lo puedes poner en ningún sitio."

Add To Every Object
  Verb poner
    Check obj In Hero
      Else "No tienes eso."
    Does
      Locate obj Here.
      "Dejado."
  End Verb.
End Add To.


Syntax
  poner_en = poner (obj1) en (obj2)
    Where obj1 Isa Object
      Else "No puedes poner eso en ningún lugar."
    And obj2 Isa Container
      Else "No puedes poner nada en" Say the obj1. "."
  poner_en = poner el (obj1) en (obj2).
  poner_en = poner (obj1) en el (obj2).

  poner_en = dejar el (obj1) en el (obj2).
  poner_en = dejar (obj1) en el (obj2).
  poner_en = dejar el (obj1) en (obj2).
  poner_en = dejar (obj1) en (obj2).

Add To Every Object
  Verb poner_en
    When obj1
      Check obj1 In hero
        Else "No tienes" Say The obj1. "."
      And obj1 <> obj2
        Else "¡No puedes poner algo dentro de si mismo!"
      And obj2 <> hero
        Else "¡No puedes poner" Say obj1. "dentro de tí!"
    Does
      Locate obj1 In obj2.
      "Hecho."
    End Verb.
End Add To.


Syntax
  poner_cerca = poner (obj1) cerca (obj2)
    Where obj1 Isa Object
      Else "C"
    And obj2 Isa thing
      Else "No puedes poner nada cerca " say The obj2. "."
  poner_cerca = poner (obj1) cerca de (obj2).
  poner_cerca = poner (obj1) cerca del (obj2).
  poner_cerca = poner el (obj1) cerca (obj2).
  poner_cerca = poner el (obj1) cerca de (obj2).
  poner_cerca = poner el (obj1) cerca del (obj2).

  poner_detras = poner (obj1) detras (obj2)
    Where obj1 Isa Object
      Else "No puedes poner eso en ningún lugar."
    And obj2 Isa thing
      Else "No puedes poner nada tras " say The obj2. "."
  poner_detras = poner (obj1) detras de (obj2).
  poner_detras = poner (obj1) detras del (obj2).
  poner_detras = poner el (obj1) detras (obj2).
  poner_detras = poner el (obj1) detras de (obj2).
  poner_detras = poner el (obj1) detras del (obj2).
  poner_detras = poner (obj1) tras de (obj2).
  poner_detras = poner (obj1) tras del (obj2).
  poner_detras = poner el (obj1) tras (obj2).
  poner_detras = poner el (obj1) tras de (obj2).
  poner_detras = poner el (obj1) tras del (obj2).

  poner_sobre = poner (obj1) sobre (obj2)
    Where obj1 Isa Object
      Else "No puedes poner eso en ningún lugar."
    And obj2 Isa thing
      Else "No se puede poner nada sobre" Say the obj1. "."
  poner_sobre = poner (obj1) sobre de (obj2).
  poner_sobre = poner (obj1) sobre del (obj2).
  poner_sobre = poner el (obj1) sobre (obj2).
  poner_sobre = poner el (obj1) sobre de (obj2).
  poner_sobre = poner el (obj1) sobre del (obj2).

  poner_bajo = poner (obj1) debajo (obj2)
    Where obj1 Isa Object
      Else "No puedes poner eso en ningún lugar."
    And obj2 Isa thing
      Else "No puedes poner nada bajo" Say the obj1. "."
  poner_bajo = poner (obj1) debajo de (obj2).
  poner_bajo = poner (obj1) debajo del (obj2).
  poner_bajo = poner el (obj1) debajo (obj2).
  poner_bajo = poner el (obj1) debajo de (obj2).
  poner_bajo = poner el (obj1) debajo del (obj2).

Add To Every Object
  Verb poner_cerca, poner_detras, poner_sobre, poner_bajo
    When obj1
      Check obj1 In hero
        Else
          "No tienes" Say The obj1. "."
      And obj2 Not In hero
        Else
          "Llevas" Say The obj2.
          ". Si quieres tomar" Say the obj1. "simplemente dilo."
    Does
      "¡Naaah!. Prefiero poner" Say The obj1. "en el suelo."
      Locate obj1 At obj2.
    End Verb.
End Add To.
