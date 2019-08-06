@{
RootModule = 'PSModuleBuilder.psm1'
ModuleVersion = '0.0.1'
GUID = 'ce7c4a02-ccd4-4b8b-8cbe-821308e3ac81'
Author = 'haydenz'
CompanyName = 'haydenz'
Copyright = '(c) 2019 haydenz. All rights reserved.'
Description = 'A module manager for web developers...'
# PowerShellVersion = ''
# PowerShellHostName = ''
# PowerShellHostVersion = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @(@{ModuleName = 'Pester'; ModuleVersion = '3.4' }, @{ModuleName = 'Plaster'; ModuleVersion = '...' })
# RequiredAssemblies = @()
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @(
  "New-PsModule",
  "New-PsFunction",
  "New-PsScript",
  "Get-PsModulePath",
  "Set-PsModulePath"
)
CmdletsToExport = @()
VariablesToExport = @()
AliasesToExport = @()


# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{
  PSData = @{
    Tags         = @('Packagemanagement')
    # LicenseUri = ''
    ProjectUri = 'https://github.com/treyhay31/PSModuleBuilder'
    # IconUri = ''
    # ReleaseNotes = ''
  } # End of PSData hashtable
} # End of PrivateData hashtable

HelpInfoURI = 'https://github.com/treyhay31/PSModuleBuilder/wiki'

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


