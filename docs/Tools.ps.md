---
layout: default
title: Tools
---

Start-Automating quite possibly produces the most tools for PowerShell.

If you love some of the tools we build, or want us to build a tool for you, consider [sponsoring us on GitHub](https://github.com/sponsors/StartAutomating).

Some of our most popular tools include:

~~~PipeScript{
    $null = require latest PSDevOps

    $ghp = 
        if ($env:GITHUB_ACCESS_TOKEN) {
            $env:GITHUB_ACCESS_TOKEN
        } else {            
            Get-Secret GitHubPat -AsPlainText
        }
    
    if (-not (Get-Command api.github.com*)) {
        Connect-GitHub -PersonalAccessToken $ghp
    }

    $reposList         = api.github.com/users/<username>/repos  -username StartAutomating -Cache
    $nonForkedRepos    = $reposList | Where-Object -not Fork
                         
    $Top10Repos        = $nonForkedRepos | Sort-Object Stargazers_Count -Descending | Select-Object -First 10

    [PSCustomObject]@{
        Table = 
            $Top10Repos| Select @{
                    Name='Name'
                    Expression={
                        "[$($_.Name)]($($_.html_url))"
                    }
                }, 
                @{
                    Name='Description'
                    Expression={
                        $_.Description
                    }
                }
    } 
}
~~~

Here are all of our public repositories.

~~~PipeScript{
    $reposByName = $nonForkedRepos | Sort-Object Name

    [PSCustomObject]@{
        Table = 
            $reposByName | Select @{
                    Name='Name'
                    Expression={
                        "[$($_.Name)]($($_.html_url))"
                    }
                }, 
                @{
                    Name='Description'
                    Expression={
                        $_.Description
                    }
                }
    }
    
}
~~~