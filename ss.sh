#/bin/bash

function sayStuff(){
  stuff_to_say=("You may have a fat finger but you also have a freaking fat heart." "Take a deep breath and try again man. You got this!" "You will stop sucking one day." "Your command is invalid. But you are valid.")
  length=${#stuff_to_say[@]}
  random=$$$(date +%s)

  random_stuff=${stuff_to_say[$random % $length + 1]}

  echo "\nERROR - Invalid command"
  echo "$random_stuff\n"
}

function ss() {
  case $1 in
    "tv")
      case $2 in
        "nf")
          open https://www.netflix.com/
          return 0
        ;;
        "az")
          open https://www.primevideo.com/
          return 0
        ;;
        *)
          open /System/Applications/TV.app
          return 0
        ;;
      esac

    ;;
    "open")
      vi ~/bin/ss.sh
      return 0
    ;;
  esac

  sayStuff
  return 1
}
