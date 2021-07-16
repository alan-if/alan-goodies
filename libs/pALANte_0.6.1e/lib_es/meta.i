-- meta.i
-- versi�n 0.6.1e

Synonyms
  abandono, abandona, abandonar = 'quit'.
SYNTAX
  'quit' = 'quit'.
  q = q.

VERB 'quit'
  DOES
    QUIT.
END VERB.

VERB q
  DOES
    "Por favor escribe el comando 'abandonar' entero para salir del juego.
     $p(No puedes deshacer una instrucci�n abandonar. As� que, para evitar que
     accidentalmente salgas del juego por teclear 'q' cuando intentas hacer
     otra cosa, debes escribir el comando 'abandonar' al completo.)"
END VERB.

Synonyms
  grabar, graba, salvar, salva = 'save'.
SYNTAX
  'save' = 'save'.

VERB 'save'
  DOES
    SAVE.
    "�Perfecto!."
END VERB.

Synonyms
  restaurar, restaura, recuperar, recupera = 'restore'.
SYNTAX
  'restore' = 'restore'.

VERB 'restore'
  DOES
    RESTORE.
    "Hecho.$n"
    LOOK.
END VERB.

Synonyms
  comenzar, comienzo, comienza, recomenzar = 'restart'.
SYNTAX
  'restart' = 'restart'.

VERB 'restart'
  DOES
    RESTART.
END VERB.


Synonyms
  puntos, puntaje, puntuacion, puntuaci�n = 'score'.
SYNTAX
  'score' = 'score'.

VERB 'score'
  DOES
    SCORE.
END VERB 'score'.


SYNONYMS
  z, espera, esperar, espero = 'wait'.

SYNTAX
  'wait' = 'wait'.

VERB 'wait'
  DOES
    "Pasa el tiempo..."
END VERB.


SYNONYMS
  g, repetir, repite, repito = again.

SYNTAX
  again = again.

VERB again
  DOES
    "El comando 'repetir' no est� disponible, lo siento. Probablemente puedes
     utilizar los cursores arriba y abajo para moverte por tus comandos previos
     (a menos que uses el int�rprete MSDOS, en ese caso puedes pulsar F3 para
     repetir tu �ltimo comando.)"
END VERB.

--SYNTAX
--    undo = undo.

--VERB undo
--    DOES
--        "Unfortunately you cannot 'undo' commands in this game."
--END VERB.
