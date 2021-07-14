# Simple template script

## Usage

```sh
env $(grep -v ‘^#’ namespace.env | xargs) bash namespace.yaml.sh | kubectl apply -f -
```
