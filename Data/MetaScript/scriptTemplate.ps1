
  
<%
  if ($PLASTER_PARAM_Params -eq 'Yes')
  {
@'
  <#
  [parameter(Position=0, 
    Mandatory=$true, 
    ParameterSetName="YYYYYYYYYY", 
    ValueFromPipeline=$true,  
    ValueFromPipelineByPropertyName=$true, 
    ValueFromRemainingArguments=$true, 
    HelpMessage="Put your message here", 
    Alias("CN", "ComputerName")  )]  
    [AllowNull()] 
    [AllowEmptyString()] 
    [AllowEmptyCollection()] 
    [ValidateCount(1,10)] 
    [ValidateLength(1,10)] 
    [ValidatePattern("[A-Z]{2,8}[0-9][0-9]")] 
    [ValidateRange(0,10)] 
    [ValidateScript({$_ -ge (get-date)})] 
    [ValidateSet("Low", "Average", "High")] 
    [ValidateNotNull()] 
    [ValidateNotNullOrEmpty()] 
    [string]$computer="."  
  #>
  [CmdletBinding()]  
  param (
    [Parameter(Mandatory=$true, 
      ValueFromPipeline=$true,  
      ValueFromPipelineByPropertyName=$true)]
    [ValidateSet("DEV", "STG", "PRD")] 
    [string]$environment,
    [Parameter(
        Mandatory=$true, 
        ValueFromPipeline=$true,
        ValueFromPipelineByPropertyName=$true)]
    [ValidateScript({Test-Path $_ -PathType Any})] 
    [string]$path
  )  
'@   
  }
%>
<#
  .Synopsis
    Short description
  .DESCRIPTION
    Long description
  .EXAMPLE
    Example of how to use this cmdlet
#>  
  BEGIN{
    Write-Debug "Running for environment: $environment..."
  }#begin 
  PROCESS{
    # do stuff here...    
  }#process 
  END{
    Write-Debug "Finshed for environment: $environment..."
  }#end  
}