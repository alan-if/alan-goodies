-- hablar.i
-- Library version 0.6.1e

-- 0.4.1 - converted to ALANv3


-- Para verbos como 'preguntar' y 'decir' necesitas programar indivualmente
-- las respuestas a cada tema (u 'obj') para cada actor que quieras que responda
-- a dicho tema.  Recuerda usar la clausula 'when' para que los actores solo respondan
-- cuando se habla con ellos (¡y no cuando son el *sujeto* de la conversación!)
-- En la Sección 3.7.1 - 'verb alternatives' - del manual en inglés de Alan .  p.e:
--
-- Actor Simon
--    ....
--    Verb preguntar
--       When act
--           Does Only
--              If tema = pelota Then
--                  "Simón responde ""Me encanta el deporte. Mi favorito, el futbol."""
--              Elsif obj = fred Then
--                  .....
--              Else
--                  "Simón te mira extrañado. ""Lo siento, no se nada de eso."""
--              End If.
--     End Verb preguntar.
--     ....
-- End Actor Simon.


Add To Every thing
  Is
    Not habla.
End Add To thing.

Add To Every actor
  Is
     habla.
End Add To actor.


Synonyms
  grita, grito, chilla, chillo, chillar, vocifera, vocifero, vociferar,
  brama, bramo, bramar = gritar.

Syntax
  gritar = gritar.

Verb gritar
  Does
    "Haces mucho ruido..."
End Verb.


Synonyms
  di, digo, dile = decir.

Syntax
  decir = decir (tema)!
    Where tema Isa thing
      Else "Eso no lo puedes decir."

Add To Every thing
  Verb decir
    Does
      Say tema. "... ¡Qué concepto tan hermoso!"
  End Verb.
End Add To.

Syntax
  decir_a = decir (tema)! a (act)
    Where tema Isa thing
      Else "No puedes decirlo."
    And act Isa thing
      Else "No puedes hablar con eso."
  decir_a = decir (tema)! (act).

Add To Every thing
  Verb decir_a
    When act
      Check act Has habla
        Else "No puedes hablar con eso."
    Does
      Say The act. "no parece interesado."
  End Verb.
End Add To.

Synonyms
  pregunto, pregunta, preguntale = preguntar.
Syntax
  preguntar = preguntar (act) por (tema)!
    Where tema Isa Thing
      Else "No puedes preguntar por eso."
    And act Isa Thing
      Else "No puedes hablar con eso."
  preguntar = preguntar a (act) por (tema)!.
  preguntar = preguntar a (act) por el (tema)!.
  preguntar = preguntar al (act) por (tema)!.
  preguntar = preguntar al (act) por el (tema)!.
  preguntar = preguntar a el (act) por (tema)!.
  preguntar = preguntar a el (act) por el (tema)!.
  preguntar = preguntar (act) (tema)!.

Add To Every thing
  Verb preguntar
    When act
      Check act Has habla
        Else "No puedes hablar con eso."
    Does
      Say The act. "dice ""¡No sé nada sobre" Say The tema. "!"""
  End Verb.
End Add To.


Synonyms
  habla, hablo, charla, charlo, charlar = hablar.
  acerca = sobre.
Syntax
  hablar_con = hablar con (act) sobre (tema)!
    Where tema Isa thing
      Else "No puedes preguntar por eso."
    And act Isa thing
      Else "No puedes hablar con eso."
  hablar_con = hablar (act) sobre (tema)!.
  hablar_con = hablar (act) sobre de (tema)!.
  hablar_con = hablar (act) sobre el (tema)!.
  hablar_con = hablar (act) (tema)!.
  hablar_con = hablar con (act) (tema)!.
  hablar_con = hablar con (act) sobre de (tema)!.
  hablar_con = hablar con (act) sobre el (tema)!.
  hablar_con = hablar con el (act) (tema)!.
  hablar_con = hablar con el (act) sobre (tema)!.
  hablar_con = hablar con el (act) sobre de (tema)!.
  hablar_con = hablar con el (act) sobre el (tema)!.

Add To Every thing
  Verb hablar_con
    When  tema
      Check act Has habla
        Else "No puedo hablar con eso."
    Does
      """No creo que deba saber sobre" Say The tema. "$$,"" dice"
      Say The act. "."
  End Verb.
End Add To.


Syntax
  hablar_con_act = hablar con (act)
    Where act Isa thing
      Else "No puedes hablar con eso."
  hablar_con_act = hablar (act).
  hablar_con_act = hablar al (act).
  hablar_con_act = hablar a el (act).
  hablar_con_act = hablar con el (act).

Add To Every thing
  Verb hablar_con_act
    Check act Has habla
      Else "No puedes hablar con eso."
    Does
      Say The act. "te mira, aparentemente pensando si tienes algo
      específico sobre lo que hablar."
  End Verb.
End Add To.
