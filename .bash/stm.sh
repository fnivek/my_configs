function stm() {
  sudo docker run --rm --privileged -v "$(pwd)":/build lpodkalicki/stm32-toolchain "$@"
}
