# Kill any existing process.
kill -15 $(ps -aux | grep '[h]istory-server.py' | awk '{print $2}')

# Start the server.
/home/kdfrench/.dotfiles/my_configs/.i3/scripts/i3-focus/history-server.py
