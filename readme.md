# PSModuleBuilder

Just making modules over here... sometimes scripts too.

## Out on the Gallery [here](https://www.powershellgallery.com/packages/PSModuleBuilder)

## Download from here if you don't like galleries

This will download the zipped repository and extract it to all of the modules folders in `$env:PSModulePath`.

```Powershell
(New-Object System.Net.WebClient).DownloadFile("https://github.com/treyhay31/PSModuleBuilder/archive/master.zip", "$($env:UserProfile)\Downloads\module.zip"); $env:PSModulePath -Split ";" | ForEach-Object { Expand-Archive -Path "$($env:UserProfile)\Downloads\module.zip" -Destination "$_\" -Force }
```

## Fun Tidbits!

Here are some code samples:

### Modules

```Powershell
code building modules
```

### Scripts

```Powershell
code building Scripts
```

### NPM-ing
```Powershell
commands for NPM-ing
```

## The real docs

Good documentation is always found in the wiki, so here... [our wiki](https://github.com/treyhay31/PSModuleBuilder/wiki)