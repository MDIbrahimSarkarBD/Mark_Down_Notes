- `Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process`nodemon .\src\dab.js
nodemon .\src\dab.js

```js
       Scope ExecutionPolicy
        ----- ---------------
MachinePolicy       Undefined
   UserPolicy       Undefined
      Process       Undefined
  CurrentUser       AllSigned
 LocalMachine       AllSigned
 
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope MachinePolicy
```

## Get-ExecutionPolicy -list
```
Get-ExecutionPolicy -list
```

## npm uninstall -g nodemon
```js
npm uninstall -g nodemon
```

```js
npm install -g nodemon
```


```cmd
Set-ExecutionPolicy RemoteSigned -Scope MachinePolicy
```