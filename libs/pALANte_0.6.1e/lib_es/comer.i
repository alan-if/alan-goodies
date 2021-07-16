-- comer.i
-- Library version 0.6.0e

-- 0.4.1 - converted to ALANv3


Add To Every Object
Is
  Not comestible.
  Not bebible.
End Add To Object.

Synonyms
  come, como, papeo, papea, papear, devoro, devora, devorar, zampo, zampa, zampar,
  trago, traga, tragar, consumo, consume, consumir, engullo, engulle, engullir = comer.
  bebe, bebo = beber.

Syntax
  comer = comer (obj)
    Where obj Isa Object
      Else "¡No te puedes comer" Say An obj. "!"

  beber = beber (obj)
    Where obj Isa Object
      Else "¡No puedes beber" Say An obj. "!"

Add To Every Object
  Verb comer
    Check obj Is comestible
      Else "¡No te puedes comer eso!"
    Does
      Locate obj At Limbo.
      "Te comes" Say the obj. "."
  End Verb.

  Verb beber
    Check obj Is bebible
      Else "Eso no se puede beber."
    Does
      Locate obj At Limbo.
      "Te bebes" Say The obj. "."
  End Verb.
End Add.
