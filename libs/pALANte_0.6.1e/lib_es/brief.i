-- brief.i
-- Library version 0.6.1e

-- No parece funcionar.


--
-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode.
--

Synonyms
  largo = verbose.

SYNTAX
  verbose = verbose.

VERB verbose
  DOES
    Visits 0.
    "El modo largo está activado."
END VERB verbose.

Synonyms
  superbreve, breve = brief.

SYNTAX
  brief = brief.

VERB brief
  DOES
    Visits 1000.
    "El modo Breve está activado. Las descripciones de las localizaciones
    solo se muestran la primera vez que las visitas."
END VERB brief.
