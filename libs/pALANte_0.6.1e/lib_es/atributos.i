-- atributos globales para todos los verbos y objetos

synonyms
  él, la, los, las = el.

  eso, esos, esa, esas, ello, aquello, aquella, aquellos, aquellas, lo = it.

  todo, todos, toda, todas = all.

Add To Every thing  -- object en pALANte 0.1

  Is not femenina.
  Is not plural.

  has term_n "".
  has term_s "".
  has ser "".

  definite article
    if this is femenina then
      "la"
      if this is plural then
        "$$s"
      end if.
    else
      if this is plural then
        "los"
      else
        "el"
      end if.
    end if.

  indefinite article
    "un"
    if this is femenina then
      "$$a"
      if this is plural then
        "$$s"
      end if.
    elsif this is plural then
      "$$os"
    end if.

End Add To.

Every named_actor Isa actor
  Definite Article ""
  Indefinite Article ""
End Every named_actor.

-- evento que inicializa las terminaciones de los objetos
-- y palabras como 'son' o 'es'
-- No olvidar llamarlo en la sección "start",
-- por ejemplo con el comando:
-- "  schedule ini_terms at limbo after 0. "


event ini_terms
  for each o isa object do
    if ser of o = "" then
      if o is plural then
        set ser of o to "son".
      else
        set ser of o to "es".
      end if.
    end if.
    if term_n of o = "" then
      if o is plural then
        set term_n of o to "$$n".
      end if.
    end if.
    if term_s of o = "" then
      if o is femenina then
        if o is plural then
          set term_s of o to "$$as".
        else
          set term_s of o to "$$a".
        end if.
      else
        if o is plural then
          set term_s of o to "$$os".
        else
          set term_s of o to "$$o".
        end if.
      end if.
    end if.
  end for.
end event.
