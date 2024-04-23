# Adds new paths to PATH env variable but first checks if alread on PATH
add_path () {
  if [[ ! "$PATH" == *${1}* ]]; then
    PATH="${PATH:+${PATH}:}${1}"
  fi
}

