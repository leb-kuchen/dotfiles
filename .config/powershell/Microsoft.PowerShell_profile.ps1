    $env:GOPATH = "$env:HOME/go"
    $env:PATH += ":/usr/local/go/bin:$env:GOPATH/bin"
    $env:RUSTC_WRAPPER= "sccache"

$global:__aliases = @{
#ri                             = "Remove-Item"      
diff                           = "Compare-Object"   
#echo                           = "Write-Output"     
kill                           = "Stop-Process"     
ps                             = "Get-Process"      
tee                            = "Tee-Object"       
type                           = "Get-Content"      
ac                             = "Add-Content"      
#rm                             = "Remove-Item"      
write                          = "Write-Output"     
rmdir                          = "Remove-Item"      
clear                          = "Clear-Host"       
mount                          = "New-PSDrive"
#man                            = "help"
#cd                             = "Set-Location"     
#fc                             = "Format-Custom"    
cpp                            = "Copy-ItemProperty"
sort                           = "Sort-Object"      
cat                            = "Get-Content"      
cp                             = "Copy-Item"        
sleep                          = "Start-Sleep"      
ls                             = "Get-ChildItem"    
pwd                            = "Get-Location"     
mv                             = "Move-Item" 
date  = "Get-Date"
}
function Set-PSAliases
{
    $global:__aliases.Keys | % { 
        Set-Alias $_ $global:__aliases[$_] -Scope Global 
    }  
}
Set-PSAliases

function Invoke-LastCommand {
	[CmdletBinding()]
	param(
	[int]$N = -1
)
	(h)[$N].CommandLine | iex
}
sal l invoke-lastcommand
1..10 | % {
    $FunctionName = "c$_"
    $ScriptBlock = "Set-Location $('..\' * $_)"
    $FunctionDefinition = @"
Function $FunctionName {
    $ScriptBlock
}

"@
    Invoke-Expression $FunctionDefinition
}
function .. {
    Set-Location ..
}

function mc([string]$N) {
	md $N
	cd $N
}






$env:PATH += ":$HOME/bin"

$env:PATH += ":$HOME/.cargo/bin"
$env:PATH += ":$HOME/npm-global/bin"
oh-my-posh init pwsh --config ~/themes/tonybaloney.omp.json | Invoke-Expression
