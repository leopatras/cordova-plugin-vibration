MAIN
  MENU
    COMMAND "Vibrate"
      CALL vibrate()
    COMMAND "Exit"
      EXIT MENU
  END MENU
END MAIN

FUNCTION vibrate()
  DEFINE result STRING
  CALL ui.Interface.frontCall("cordova","call",
                             ["Vibration","vibrate"],[result])
END FUNCTION

