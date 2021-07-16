-- llevar.i
-- versión 0.6.1e

-- 0.4.1 - converted to ALANv3


Add To Every object
  Is
    Not llevable.
End Add To object.

Synonyms
  lleva, llevo, ponerme, ponerse, ponte = llevar.
Syntax
  llevar = llevar (obj)
    Where obj Isa object
      Else "No puedes llevar eso."
  llevar = llevar el (obj).

Add To Every object
  Verb llevar
    Check obj Is llevable
      Else "No puedes llevar" Say The obj. "."
    And obj Not In llevado
      Else "Ya llevas" Say The obj. "."
    And obj Is tomable
      Else "No puedes tomar" Say The obj.
    Does
      If obj Not In hero Then
        Locate obj In hero.
        "(tomas" Say The obj. ".)$n"
      End If.
      Locate obj In llevado.
      "Te pones" Say The obj. "."
    End Verb.
End Add To.

Synonyms
  quita, quito, quitarme, quitarse, quitate = quitar.
Syntax
  quitar = quitar (obj)
    Where obj Isa object
      Else "No te puedes quitar eso."
  quitar = quitar el (obj).

Add To Every object
  Verb quitar
    Check obj In llevado
      Else "No llevas" Say The obj. "."
    Does
      Locate obj In hero.
      "Te quitas" Say The obj. "."
    End Verb.
End Add To.


Synonyms
  desnudo, desnuda, desnudarme, desnudate, desnudarse = desnudar.
Syntax desnudar = desnudar.

Add To Every object
  Verb desnudar
    Does
      If Count In llevado, Isa Thing > 0 Then
        Empty llevado In hero.
        "Te quitas todo lo que llevabas puesto."
      Else
        "No llevas nada que puedas quitarte."
      End If.
    End Verb.
End Add To.
