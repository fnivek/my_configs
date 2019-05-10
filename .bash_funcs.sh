# Adds new paths to PATH env variable but first checks if alread on PATH
add_path () {
  [[ ":$PATH:" != *":${1}:"* ]] && export PATH="${1}${PATH:+:${PATH} }"
}
