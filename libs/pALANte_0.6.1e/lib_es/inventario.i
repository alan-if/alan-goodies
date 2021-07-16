-- inventario.i
-- Library version 0.6.2  -- convertido llevado de Thing a Entity (para evitar problemas de acceso)

-- 0.4.1 - converted To ALANv3

Add To Every Thing Is
  peso 0.
End Add To Thing.


Add To Every Actor Is
  peso 50.
End Add To Actor.

Add To Every object Is
  peso 5.
End Add To object.



Synonyms
  i, inventario, inv = invent.

Syntax
  invent = invent.

Verb invent
  Does
    List hero.
    List llevado.
End Verb invent.


The llevado Isa Entity
  Container
    Limits
      Count 10 Then
        "No puedes llevar nada más. Debes dejar algo antes."
      peso 50 Then
        "No puedes llevar más peso. Debes dejar algo antes."
    Header
      "Llevas"
    Else
      ""
End The llevado.
