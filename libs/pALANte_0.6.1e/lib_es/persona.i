-- persona.i
-- versión 0.6.0e  (será 0.6.1e cuando se comprueben correctamente los pronombres)


-- Clases para personas

Every persona Isa actor
  Is Not named.       -- Si tiene nombre propio
  Description
    If This Is Not named Then
      "Hay" Say An This. "aquí."
    Else
      Say This. "está aquí."
    End If.
End Every persona.

Every macho Isa persona
  Pronoun him.
End Every macho.

Every hembra Isa persona
  Pronoun her.
End Every hembra.
