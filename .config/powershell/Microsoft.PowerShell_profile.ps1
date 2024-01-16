    $env:GOPATH = "$env:HOME/go"
    $env:PATH += ":/usr/local/go/bin:$env:GOPATH/bin"
    $env:RUSTC_WRAPPER= "sccache"
    Invoke-Expression (& { (zoxide init powershell | Out-String) })
