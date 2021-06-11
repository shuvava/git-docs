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


```console
startup_message off
 
 #terminfo and termcap for nice 256 color terminal
 # allow bold colors - necessary for some reason
 attrcolor b ".I"
 # tell screen how to set colors. AB = background, AF=foreground
 # the first two are for other terminal emulators, just in case.
 termcapinfo xterm "Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm"
 termcapinfo xterm-color "Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm"
 termcapinfo xterm "Co#256:AB=\E[48;5;%dm:AF=\E[38;5;%dm"
 term xterm
 # erase background with current bg color
 defbce "on"
 
 # use visual bell
 vbell off
 # replace Ctrl-A by backtic ` 
 escape ``
 # set a big scrolling buffer
 defscrollback 5000
 # Set the caption on the bottom line
 #caption always "%{= kw}%-w%{= BW}%n %t%{-}%+w %-= @%H - %c"
 caption always '%{= kg}[%{G}%H%{g}][%= %{= kw}%?%-Lw%?%{+b r}(%{y}%n %t%?(%u)%?%{r})%{= w}%?%+Lw%?%?%= %{g}][%{B} %d/%m %{W}%c %{g}]'
 shell zsh
 
 bind > eval writebuf "exec sh -c 'xsel -nbi </tmp/screen-exchange'"
 bind y eval "exec sh -c 'xsel -bo >/tmp/screen-exchange'"
 
 # open several terminals at startup
 chdir ~/git/trust-center
 screen -t mc 1 mc
 screen -t git[TC] 2
 stuff "cd $GOPATH/src/git.teradici.com/trust-center/tools/deploy; clear^M"
 screen -t git[CAM] 3
 stuff "cd $GOPATH/src/teradici/cloud-access-manager-installer; clear^M"
 screen -t dev.build 0
 stuff "cd ~/git/trust-center; clear^M"
```

## Hot keys

## Commands

| Command | Description |
| ------- | ----------- |
| <lead>[ | switch to copy/paste mode; space start/stop selecting; |
| <lead>] | switch out of copy/paste mode; |
