-- knock.i
-- Library version 0.6.0e

-- 0.4.1 - converted to ALANv3

Synonyms
  llama, llamo = llamar.

Syntax
  llamar_a = llamar a (obj)
    Where obj Isa Thing
      Else "¡No puedes llamar a eso!"
  llamar_a = llamar (obj).
  llamar_a = llamar a el (obj).
  llamar_a = llamar el (obj).

Add To Every thing
  Verb llamar_a
    Does
      "Llamas a" Say The obj. "."
  End Verb.
End Add To.


Syntax
  llamar = llamar.

Verb llamar
  Does
    "Debes especificar a que quieres llamar."
End Verb.
