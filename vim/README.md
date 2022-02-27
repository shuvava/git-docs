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

## Find

The general form of the substitute command is as follows:
`:[range]s/{pattern}/{string}/[flags] [count]`
The command searches each line in `[range]` for a `{pattern}`, and replaces it with a `{string}`. `[count]` is a positive integer that multiplies the command.
If no `[range]` and `[count]` are given, only the pattern found in the current line is replaced. The current line is the line where the cursor is placed.
For example, to search for the first occurrence of the string ‘foo’ in the current line and replace it with ‘bar’, you would use: `:s/foo/bar/`
To replace all occurrences of the search pattern in the current line, add the g flag: `:s/foo/bar/g`
If you want to search and replace the pattern in the entire file, use the percentage character % as a range. This character indicates a range from the first to the last line of the file: `:%s/foo/bar/g`
To confirm each substitution, use the c flag: `:s/foo/bar/gc`

### Case Sensitivity

By default, the search operation is case sensitive; searching for “FOO” will not match “Foo”.
To ignore case for the search pattern, use the i flag: `:s/Foo/bar/gi`
