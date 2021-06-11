# GNU Screen

## Configuration

copy to X server clipboard

add to ~/.screenrc

```console
bind > eval writebuf "exec sh -c 'xsel -nbi </tmp/screen-exchange'"
bind y eval "exec sh -c 'xsel -bo >/tmp/screen-exchange'"
```

Now, when you select something in screen copy/scrollback mode, and write paste buffer to a file with C-a >, you can move to the browser and paste the content of the clipboard as usual (for example with Ctrl-V).

For the reverse, copy something in your browser with Ctrl-C, then go to screen and read the clipboard with the new command C-a y

## Hot keys

## Commands

| Command | Description |
| ------- | ----------- |
| <lead>+[ | switch to copy/paste mode; space start/stop selecting; |
| <lead>+] | switch out of copy/paste mode; |
| <lead>+ESC | switch to scroll mode |
| ctrl+b  | scroll page back |
| ctrl+f  | scroll page forward |
