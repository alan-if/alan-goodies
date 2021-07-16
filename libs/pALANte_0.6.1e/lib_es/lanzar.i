-- lanzar.i
-- versión 0.6.1e

-- 0.4.1 - converted to ALANv3

Synonyms
  lanzo, lanza, tiro, tira, tirar = lanzar.
Syntax
  lanzar = lanzar (obj) *
    Where obj Isa Object
      Else "Solo puedes lanzar objetos."

Add To Every object
  Verb lanzar
    Check obj In hero
      Else "¡No tienes" Say the obj. "!"
    Does
      "No puedes lanzar" Say term_s of obj. "muy lejos," Say The obj.
      "acaba" Say term_n of obj. "en el suelo."
      Locate obj Here.
    End Verb.
End Add To.


Syntax
  lanzar_a = lanzar (obj1) a (obj2)
    Where obj1 Isa object
      Else "Solo puedes lanzar objetos."
    And obj2 Isa thing
      Else "No puedes lanzar nada contra eso."
  lanzar_a = lanzar (obj1) a el (obj2).
  lanzar_a = lanzar el (obj1) a (obj2).
  lanzar_a = lanzar el (obj1) a el (obj2).
  lanzar_a = lanzar (obj1) (obj2).
  lanzar_a = lanzar (obj1) contra (obj2).
  lanzar_a = lanzar (obj1) contra el (obj2).
  lanzar_a = lanzar el (obj1) contra (obj2).
  lanzar_a = lanzar el (obj1) contra el (obj2).


Add To Every object
  Verb lanzar_a
    When obj1
      Check obj1 In hero
        Else "¡No tienes" say the obj1. "!"
      And obj2 Not In hero
        Else "¡Tú llevas" Say The obj2. "!"
      And obj2 <> hero
        Else "No puedes lanzar" Say The obj1. "contra ti mismo."
    Does
      Say The obj1. "rebota" Say term_n of obj1. "inocentemente en"
      Say The obj2. "y acaba" Say term_n of obj1. "en el suelo."
      Locate obj1 Here.
    End Verb.
End Add To.


Syntax
  lanzar_en = lanzar (obj1) en (obj2)
    Where obj1 Isa object
      Else "No seas así."
    And obj2 Isa Container
      Else "No puedes lanzar nada en eso."

Add To Every object
  Verb lanzar_en
    When obj1
      Check obj1 In hero
        Else "¡No tienes" Say the obj1. "!"
      And obj1 <> obj2
        Else "¡Ese sería un gran truco!"
      And obj2 <> hero
        Else "¡No puedes meterte" Say The obj1. "!"
    Does
      Locate obj1 In obj2.
      "Hecho."
    End Verb.
End Add.
