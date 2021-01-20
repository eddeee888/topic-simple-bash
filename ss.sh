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
  github_username=eddeee888

  case $1 in
    "gh")
      open https://github.com/$github_username/$2
      return 0
    ;;
    "open")
      code ~/bin/ss.sh
      return 0
    ;;
  esac

  sayStuff
  return 1
}
