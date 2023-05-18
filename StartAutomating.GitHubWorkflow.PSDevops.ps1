#requires -Module PSDevOps, StartAutomating
Push-Location $PSScriptRoot
Import-BuildStep -ModuleName StartAutomating
New-GitHubWorkflow -Name "Build StartAutomating" -On Push -Job BuildStartAutomating -OutputPath .\.github\workflows\BuildStartAutomating.yml -Environment @{
    GITHUB_TOKEN = '${{ secrets.GITHUB_TOKEN }}'
}

Pop-Location