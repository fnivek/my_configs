sync-notes() {
  git -C /home/kdfrench/kevin-notes fetch
  git -C /home/kdfrench/kevin-notes add -A
  git -C /home/kdfrench/kevin-notes commit -am "SYNC: Sync changes on $(date) from $(hostname)"
  git -C /home/kdfrench/kevin-notes rebase origin/main
  git -C /home/kdfrench/kevin-notes push
}

