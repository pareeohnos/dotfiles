set root to "chargy"
set cmdList to {"redis-server --daemonize yes && overmind start -f Procfile.dev"}
set cmdList to cmdList & {"vim"}
set cmdList to cmdList & {"rails c"}
set cmdList to cmdList & {""}

set titleList to {"Server", "Editor", "Console", "Terminal"}

tell application "iTerm2"
  tell current window
    set firstCmd to item 1 of cmdList
    set firstTitle to item 1 of titleList

    tell current session to write text root
    tell current session to write text firstCmd
    tell current session to set name to firstTitle

    repeat with x from 2 to count of cmdList
      set currentTitle to item x of titleList
      set currentCmd to item x of cmdList
      set newTab to create tab with default profile

      tell current session to write text root
      tell current session of newTab to write text currentCmd
      tell current session to set name to currentTitle
    end repeat
  end tell
end tell
