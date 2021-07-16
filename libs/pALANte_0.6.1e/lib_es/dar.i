-- dar.i
-- Library version 0.6.0e

-- 0.5.0 - added syntax synonym "dar (recip) (obj)"
-- 0.4.1 - converted to ALANv3

Synonyms
  doy, da, dono, dona, donar, entrego, entrega, entregar = dar.

Syntax
  dar = dar (obj) 'a' (recip)
    Where obj Isa object
      Else "Solo puedes dar objetos."
    And recip Isa Container
      Else "¡A eso no le puedes dar nada!"
  dar = dar (obj) (recip).
  dar = dar 'a' (recip) (obj).
  dar = dar 'a' (recip) 'el' (obj).

Add To Every object
  Verb dar
    When obj
      Check obj In hero
        Else
          "No tienes" Say The obj. "."
    Does
      If recip=hero Then
        "¡Ya tienes" Say The obj. "!"
      Else
        "Das" Say The obj. "a" Say The recip. "."
        Locate obj In recip.
      End If.
  End Verb.
End Add To.
