-- escenario.i
-- Library version 0.6.1e

every escenario isa object
  Is
    Not buscable.
    Not tomable.
    Not empujable.
    Not tocable.
  description "" -- para que no se liste en las descripciones

  Verb examinar
    Does Only
      "Solo es escenario."
    End Verb.

  Verb buscar
    Does Only
      "No hace falta buscar nada ahí."
  End Verb.

  Verb tomar
    Does Only
      "No puedes tomarlo."
  End Verb.

  Verb empujar
    Does Only
      "No tiene sentido empujar."
  End Verb.

  Verb tocar
    Does Only
      "No hace falta tocar."
  End Verb.
end every.

every escenario_p isa escenario
  is plural.
end every.

every escenario_f isa escenario
  is femenina.
end every.

every escenario_fp isa escenario
  is femenina.
  is plural.
end every.
