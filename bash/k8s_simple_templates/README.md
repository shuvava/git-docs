# Bash scripts

## Special variables

| Command    | Description                                                      |
| ---------- | ---------------------------------------------------------------- |
| `$@`       | All arguments passed to the script.                              |
| `$*`       | All arguments passed to the script, including the script name.   |
| `$?`       | The exit status of the last command executed in the script.      |
| `$!`       | The PID of the last child process started in the script.         |
| `$-`       | The value of the special parameters set by the shell.            |
| `$0`       | The name of the shell script.                                    |
| `$1`~`$9`  | a argument passed to the script.                                 |
| `$$`       | The PID of the shell.                                            |
| `$_`       | The last argument to the script.                                 |
| `LINENO`   | The line number of the current line of the script.               |
| `IFS`      | The field separator.                                             |
| `FUNCNAME` | An array and index[0] is the current function.                   |

## String ops

* Calculate length: `${#str}`
* Get substring: `${str:1:3}` #1 offset, 3 len; offset starts from 0 and offset can be -1
* Delete pattern match from head: `${str#pattern}` # shortest match or `${str##pattern}` #longest match
* Delete pattern match from tail: `${str%pattern}` and `${str%%pattern}`
* Replace pattern match: `${str/pattern/replace}` and `${str//pattern/replace}`
* To uppercase: `${str^^}`
* To lowercase: `${str,,}`

## Simple template script

### Usage

```sh
env $(grep -v ‘^#’ namespace.env | xargs) bash namespace.yaml.sh | kubectl apply -f -
```


