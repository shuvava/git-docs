# GNU Screen

## Basic

| Description                           | Command                                           |
|---------------------------------------|---------------------------------------------------|
| Start a new session with session name | `screen -S <session_name>`                        |
| List running sessions / screens       | `screen -ls`                                      |
| Attach to a running session           | `screen -x`                                       |
| Attach to a running session with name | `screen -r <session_name>`                        |
| Detach a running session              | `screen -d <session_name>`                        |
| Kill a running session                | `screen -X -S [session # you want to kill] kill`  |

## Window Management

| Description                           |  Command        |
|---------------------------------------|-------------------------------------------------------------------|
| Create new window                     | `Ctrl-a c`                                                        |
| Change to last-visited active window  | `Ctrl-a Ctrl-a` (commonly used to flip-flop between two windows)  |
| Change to window by number            | `Ctrl-a <number>` (only for windows 0 to 9)                       |
| Change to window by number or name    | `Ctrl-a ' <number or title>`                                      |
| Change to next window in list         | `Ctrl-a n` or `Ctrl-a <space>`                                    |
| Change to previous window in list     | `Ctrl-a p` or `Ctrl-a <backspace>`                                |
| See window list                       | `Ctrl-a "` (allows you to select a window to change to)           |
| Show window bar                       | `Ctrl-a w` (if you don't have window bar)                         |
| Kill current window                   | `Ctrl-a k` (not recommended)                                      |
| Kill all windows                      | `Ctrl-a \` (not recommended)                                      |
| Rename current window                 | `Ctrl-a A`                                                        |
| Reorder current window                | `Ctrl-a :number x`                                                |

## Split screen

| Description                           | Command                                                           |
|---------------------------------------|-------------------------------------------------------------------|
| Split display horizontally            | `Ctrl-a S`                                                        |
| Split display vertically              | `Ctrl-a |` or `Ctrl-a V` (for the vanilla vertical screen patch)  |
| Jump to next display region           | `Ctrl-a tab`                                                      |
| Remove current region                 | `Ctrl-a X`                                                        |
| Remove all regions but the current one| `Ctrl-a Q`                                                        |

## Misc

| Description                                       | Command           |
|---------------------------------------------------|-------------------|
| Redraw window                                     | `Ctrl-a C-l`      |
| Enter copy mode                                   | `Ctrl-a [` or `Ctrl-a <esc>` (also used for viewing scrollback buffer)|
| Paste                                             | `Ctrl-a ]`        |
| Monitor window for activity                       | `Ctrl-a M`        |
| Monitor window for silence                        | `Ctrl-a _`        |
| Enter digraph (for producing non-ASCII characters)| `Ctrl-a Ctrl-v`   |
| Lock (password protect) display                   | `Ctrl-a x`        |
| Enter screen command                              | `Ctrl-a :`        |
| Enable logging in the screen session              | `Ctrl-a H`        |

## Configuration

copy to X server clipboard

add to ~/.screenrc

```bash
bind > eval writebuf "exec sh -c 'xsel -nbi </tmp/screen-exchange'"
bind y eval "exec sh -c 'xsel -bo >/tmp/screen-exchange'"
```

Now, when you select something in screen copy/scrollback mode, and write paste buffer to a file with C-a >, you can move to the browser and paste the content of the clipboard as usual (for example with Ctrl-V).

For the reverse, copy something in your browser with Ctrl-C, then go to screen and read the clipboard with the new command C-a y

## Hot keys

## Commands

| Command       | Description |
| ------------- | ----------- |
| <lead>+[      | switch to copy/paste mode; space start/stop selecting; |
| <lead>+]      | switch out of copy/paste mode; |
| <lead>+ESC    | switch to scroll mode |
| ctrl+b        | scroll page back |
| ctrl+f        | scroll page forward |
