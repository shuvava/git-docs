# Amix vimrc

## NERDTree

the leader key by default is `,`

### Hot keys

```conf
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>
```

## Tabs

```conf
 map <leader>tn :tabnew<cr>
 map <leader>to :tabonly<cr>
 map <leader>tc :tabclose<cr>
 map <leader>tm :tabmove
 map <leader>t<leader> :tabnext
```

## Commands

| Command | Description |
| ------- | ----------- |
|`:%!jq .`| format json  |
|`:ls`    | files in dir |

## windows commands

| Command | Description |
| ------- | ----------- |
| `:sp`   | split active windows horizontally |
| `:vsp`  | split active windows vertically |
| `:10sp ~/.zshrc` | specify the new split height by prefixing with a number|
| `ctrl + w _` | Max out the height of the current split |
|`ctrl + w \|`|Max out the width of the current split|
|`ctrl + w =`|Normalize all split sizes, which is very handy when resizing terminal|

## Links

[amix/vimrc](https://github.com/amix/vimrc)
