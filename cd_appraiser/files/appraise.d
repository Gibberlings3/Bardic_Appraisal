BEGIN ~cdapprai~

  IF ~~ THEN BEGIN 0 SAY @102 // Is there another item you need appraised?
    IF ~~ THEN REPLY @103  GOTO 2 // Yes, I have another item.
    IF ~~ THEN REPLY @104 GOTO 3 // No, that will be all for now.
  END

  IF ~~ THEN BEGIN 1 SAY @111 // This item is special, and you may not be able to sell it.
    IF ~~ THEN GOTO 0
  END

  IF ~True()~ THEN BEGIN 2 SAY @100 // What type of item do you need appraised?
    // category names will be EXTEND_TOPped into this pace
    IF ~~ THEN REPLY @101 GOTO 3 // Nothing at the moment.
  END

  IF ~~ THEN BEGIN 3 SAY @105 // Farewell.
    IF ~~ THEN DO ~DestroySelf()~ EXIT
  END
  