-- open.i
-- Library version 0.6.1e

-- 0.4.1 - converted to ALANv3
-- 0.6.0 - atributos:
--    'abierto' indica el estado
--    'abrible' indica si se puede abrir
--    'cerrable' indica si se puede cerrar
--      'cerrojo' indica que está cerrado con llave
--      'cerrojable' indica que se puede abrir/cerrar con llave

Add To Every object
  Is
    Not cerrojable.
    cerrojo.
End Add To.

synonyms
  abro, abri, abre = abrir.

Syntax
  abrir = abrir (obj)
    Where obj Isa object
      Else "Eso no lo puedes abrir."
  abrir = abrir el (obj).

Add To Every object
  Is
    Not abrible.
    Not abierto.

  Verb abrir
    Check obj Is abrible
      Else "¡No puedes abrir eso!"
    And obj Is Not abierto
      Else "Ya está" say term_n of this. " abiert" say term_s of this.
    Does
      Make obj abierto.
      "Abres " Say The obj. "."
  End Verb.

End Add To.


Syntax
  abrir_con = abrir (obj) con (key)
    Where obj Isa object
      Else "No puedes abrir con llave eso."
    And key Isa object
      Else "No puedes abrir nada con eso."
  abrir_con = abrir el (obj) con (key).
  abrir_con = abrir el (obj) con el (key).
  abrir_con = abrir (obj) con el (key).

Add To Every object
  Verb abrir_con
    When obj
      Check obj Is cerrojable
        Else "¡Eso no se puede abrir con llave!"
      And obj Is Not abierto
        Else "Ya está abierto."
      And key In hero
        Else "No tienes" Say The key. "."
    Does
      Make obj abierto.
      Make obj Not cerrojo.
      Say The obj. "ahora está descerrojado."
    End Verb.
End Add.

----

Synonyms
  cierro, cierra, cerra = cerrar.

Syntax
  cerrar = cerrar (obj)
    Where obj Isa object
      Else "Solo puedes cerrar objetos."

Add To Every object
  Is Not cerrable.

  Verb cerrar
    Check obj Is cerrable
      Else "Eso no lo puedes cerrar."
    And obj Is abierto
      Else "No está" say term_n of this.
           " abiert" say term_s of this. "."
    Does
      Make obj Not abierto.
      Say The obj. "ahora está" say term_n of this.
      " cerrad" say term_s of this. "."
    End Verb.
End Add To.


Syntax
  cerrar_con = cerrar (obj) con (key)
    Where obj Isa object
      Else "No puedes cerrar con llave eso."
    And key Isa object
      Else "No puedes cerrar nada con eso."
  cerrar_con = cerrar (obj) con el (key).
  cerrar_con = cerrar el (obj) con (key).
  cerrar_con = cerrar el (obj) con el (key).

Add To Every Object
  Verb cerrar_con
    When obj
      Check obj Is cerrojable
        Else "¡No puedes cerrar con llave eso!"
      And obj Is Not cerrojo
        Else "Ya lo está."
      And key In hero
        Else "No tienes" Say The key. "."
    Does
      Make obj cerrojo.
      Make obj Not abierto.
      Say The obj. " está ahora cerrado con llave."
    End Verb.
End Add.
