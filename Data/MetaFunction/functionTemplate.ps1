<%
"function $PLASTER_PARAM_FunctionName"
%>
{

  <#
    .Synopsis
      Short description
    .DESCRIPTION
      Long description
    .EXAMPLE
    Example of how to use this cmdlet
    #>
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
  [CmdletBinding(SupportsShouldProcess=$true)]  
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
    
  BEGIN{

  }#begin 
  PROCESS{

    if ($psCmdlet.ShouldProcess("## object ##", "## message ##")) { 
      ## action goes here
      ### allows you to use the -whatif param on this function
    }

  }#process 
  END{

  }#end  
}