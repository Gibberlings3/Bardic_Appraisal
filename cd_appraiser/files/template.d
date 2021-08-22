//trans_item_type

EXTEND_TOP cdapprai 2
  IF ~%or_trigger%~ THEN REPLY #%type_name% GOTO cd_item_type_%item_type%
END

APPEND cdapprai

  IF ~~ THEN BEGIN cd_item_type_%item_type% SAY @106 // Which item would you like appraised?
//cd_insert_reply_here
    IF ~~ THEN REPLY @107 GOTO 2 // Actually, let me choose a different item type.
    IF ~~ THEN REPLY @108 GOTO 3 // I've changed my mind, I don't need anything appraised right now.
  END
  
//cd_insert_state_here
    
END
