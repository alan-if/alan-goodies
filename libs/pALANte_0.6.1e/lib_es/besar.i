-- besar.i
-- Library version 0.6.0e

-- 0.4.1 - converted to ALANv3


Synonyms
  beso, besa, besucar, besuco, besuca, besuqueo, besuquea, besuquear = besar.
Syntax
  besar = besar (obj)
    Where obj Isa Thing
      ELSE "¡No se puede besar!"

Add To Every Thing
  Verb besar
    Does
      If obj=Hero Then
        "Bueno, ¡si insistes!"
      Else
        If obj Is InAnimado Then
          "Besas" Say The obj. "."
        Else
          Say The obj. "esquiva tus intentos."
        End If.
      End If.
  End Verb.
End Add To.
