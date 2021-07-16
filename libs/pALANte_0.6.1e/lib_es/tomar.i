-- take.i
-- Library version 0.6.1e

-- 0.6.1e - versión española
-- 0.6.0 - removed guard for taking things from animate containers since
--         Alan v3.0.29 supports Extract clause on containers
-- 0.5.0 - cleaned up formatting, made use of "." not making a leading space
-- 0.4.1 - converted to ALANv3



Add To Every thing
  Is
    inanimado.
End Add To thing.

Add To Every object
  Is
    tomable.
End Add To object.

Add To Every actor
  Is
    Not inanimado.
End Add To actor.

Synonyms
  toma, tomo, agarro, agarra, agarrar, cojo, coge, coger,
  recojo, recoge, recoger = tomar.

  deja, dejo, descarto, descarta, descartar, suelto,
  suelta, soltar = dejar.

Syntax
  tomar = tomar (obj) *
    Where obj Isa object
      Else "¡No puedes tomar" say the obj. "!"
  tomar = tomar 'el' (obj).


Add To Every object
  Verb tomar
    Check obj Is tomable
      Else "¡No puedes tomar" say the obj. "!"
    And obj Not In llevado
      Else "Ya lo tienes - lo llevas puesto."
    And obj Not In hero
      Else "Ya lo tienes."
    And peso Of obj <=50
      Else "Es demasiado pesado."
    Does
      Locate obj In hero.
      "Tomas" say the obj. "."
  End Verb.
End Add To.


Syntax
  dejar = dejar (obj) *.
  dejar = dejar 'el' (obj) *.


Add To Every object
  Verb dejar
    Check obj In hero
      Else "No lo llevas."
    Does
      Locate obj Here.
      "Dejas" say the obj. "."
  End Verb.
End Add To.


Syntax
  tomar_de = 'tomar' (obj) 'de' (cont)
    Where obj Isa object
      Else "Solo puedes tomar objetos."
    And cont Isa thing
      Else "¡No puedes tomar objetos de eso!"
    And cont Isa Container
      Else "¡No puedes tomar objetos de eso!"

Add To Every object
  Verb tomar_de
    When obj
      Check obj Not In hero
        Else "Ya llevas" Say The obj. "."
      And obj In cont
        Else Say The obj. "no está."
    Does
      If cont=hero Then
        "¡No necesitas tomar cosas de ti mismo!"
      Else
        Locate obj In hero.
        "Tomas" Say The obj. "."
      End If.
  End Verb.
End Add.
