# Vim configuration

## Hot key

## Commands

| Command           | Description                                                   |
| ----------------- | ------------------------------------------------------------- |
| `:let mapleader`  | o see the current value currently defined for <leader>, use   |
| `!{cmd}`          | run bash command                                              |
| `ctrl u`          | scrolling the screen **UP** by half                           |
| `ctrl d`          | scrolling the screen **DOWN** by half                         |
| `ctrl f`          | scrolling the screen **Forward** by full                      |
| `ctrl b`          | scrolling the screen **Back** by full                         |
| `G`               | move cursor to the end of file                                |


## Tabs

| Command           | Description                                                           |
| ----------------- | --------------------------------------------------------------------- |
| `:tabedit {file}` | edit specified file in a new tab                                      |
| `:tabfind {file}` | open a new tab with filename given, searching the 'path' to find it   |
| `:tabclose`       | close current tab                                                     |
| `:tabclose {i}`   | close i-th tab                                                        |
| `:tabonly`        | close all other tabs (show only the current tab)                      |
| `:tabn`           | move to next tab                                                      |
| `:tabp`           | move to previous tab                                                  |
| `Ngt`             | activate N tab, where N is 0..9                                       |
| `:set paste`      | insert text without auto intend                                       |
| `:set nopaste`    | turn off *insert text without auto intend* mode                       |

## Hex mode

| Command           | Description  |
| ----------------- | ---- |
| :%!xxd            | : enters command-line mode, % matches whole file as a range, ! filters that range through an external command, xxd is to hex representation|
| :%!xxd -c N       | : enters command-line mode, % matches whole file as a range, ! filters that range through an external command, xxd is to hex representation, -c is to count bytes|
| :%!xxd -r        | : enters command-line mode, % matches whole file as a range, ! filters that range through an external command, xxd is to hex representation, -r is to reverse the output|
