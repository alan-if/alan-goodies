-- encender.i
-- Library version 0.6.1e

-- 0.4.1 - converted to ALANv3


Add To Every object
  Is
    Not encendido.
    Not conmutable.
End Add To object.

Synonyms
  enciendo, enciende, encende, prendo, prende, prender, inicio, inicia, iniciar = encender.
Syntax
  encender = encender (obj)
    Where obj Isa object
      Else "No se puede encender."
  encender = encender el (obj).


Add To Every object
  Verb encender
    Check obj Is conmutable
      Else "No puedes encender" Say the obj. "."
    And obj Is Not encendido
      Else "Eso ya está encendido"
    Does
      Make obj encendido.
      "Enciendes" Say The obj. "."
    End Verb.
End Add To.

Synonyms
  apago, apaga, extingo, extingue, extinguir, sofoco, sofoca, sofocar = apagar.
Syntax
  apagar = apagar (obj)
    Where obj Isa object
      Else "No se puede apagar."
  apagar = apagar el (obj).

Add To Every object
  Verb apagar
    Check obj Is conmutable
      Else "No se puede apagar."
    And obj Is encendido
      Else "Ya está apagado."
    Does
      Make obj Not encendido.
      "Apagas" Say The obj. "."
  End Verb.
End Add To.
