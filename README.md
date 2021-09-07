# LOGIN Action IBMCloud

This action is to login into AWS Cloud

## Entradas

### `token`

**Obligatorio** Token to use for login

### `url`

**Opcional** UR ibm cloud

### `region`

**Obligatorio** Region to connect to

### `resourcegroup`

**Obligatorio** Resource Group


## Ejemplo de uso


```yaml
# File: .github/workflows/workflow.yml
on: [push]

name: example

jobs:

  devflow:
    runs-on: ubuntu-latest
    steps:
    
    - uses: mnevadom/awsdeploy@main
      with:
        cluster: dgp-cluster
        deployfile: manifest.yml
        namespace: devl

```
