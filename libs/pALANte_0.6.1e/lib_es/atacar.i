-- atacar.i
-- Library version 0.6.1e

-- 0.6.1e - translated into Spanish.

-- 0.4.1 - converted to ALANv3


Add To Every thing
  Is
    Not dispararable.
End Add To thing.

Add To Every object
  Is
    Not arma.
    Not dispararable.
End Add To object.


Synonyms
  mata, mato, matar, golpea, golpeo, golpear, lucha, lucho, luchar, ataca, ataco, patea, pateo, patear = atacar.
  dispara, disparo = disparar.


Syntax
  atacar = atacar (act)
    Where act Isa thing
      Else "No puedes atacarle."

Add To Every thing
  Verb atacar
    Does
      "La violencia no es la solución. Por lo menos, no siempre."
  End Verb.
End Add To.



Syntax
  atacar_con = atacar (act) 'con' (obj)
    Where act Isa thing
      Else "No puedes atacar a eso."
    And obj Isa object
      Else "¡No puedes atacar nada con eso!"

Add To Every thing
  Verb atacar_con
    When obj
      Check obj In hero
        Else "No tienes ese objeto para atacar con."
      And obj Is arma
        Else "¡No tiene sentido atacar nada con eso!"
    Does
      "La violencia no es la solución."
  End Verb.
End Add To.


Syntax
  disparar = disparar (obj)
    Where obj Isa thing
      Else "No puedes disparar a eso."
  disparar = disparar 'a' (obj).


Add To Every thing
  Verb disparar
    Does
      If obj Is dispararable Then
        "Debes especificar contra que disparar."
      Else
        "Debes especificar con que quieres disparar al"
        Say The obj. "."
      End If.
  End Verb.
End Add To.



Syntax
  disparar_a = disparar (obj) 'a' (act)
    Where obj Isa object
      Else "No puedes disparar eso."
    And act Isa thing
      Else "No puedes disparar a eso."

  disparar_con = disparar (act) 'con' (obj)
    Where obj Isa object
      Else "No puedes disparar eso."
    And act Isa thing
      Else "No puedes disparar a eso."

Add To Every thing
  Verb disparar_a
    When obj
      Check obj In hero
        Else "No lo tienes."
      And obj Is dispararable
        Else "No puedes disparar a nada con eso."
    Does
      "La violencia no es la solución."
  End Verb.

  Verb disparar_con
    When obj
      Check obj In hero
        Else "No tienes eso."
      And obj Is dispararable
        Else "No puedes disparar a nada con eso."
    Does
      "La violencia no es la solución."
  End Verb.
End Add To.
