#requires -Module PSSVG

$assetsPath = Join-Path $PSScriptRoot Assets
if (-not (Test-Path $assetsPath)) {
    $null = New-Item -ItemType Directory -Path $assetsPath
}

$ColorScheme = @{
    Fill = '#4488ff'
    
}

$FontStyle = [Ordered]@{
    FontFamily        = 'monospace'
    AlignmentBaseline = 'middle'
    DominantBaseline  = 'middle'
}

$psChevron = 
=<svg.symbol> -Id psChevron -Content @(
    =<svg.polygon> -Points (@(
        "40,20"
        "45,20"
        "60,50"
        "35,80"
        "32.5,80"
        "55,50"
    ) -join ' ')
) -ViewBox 100, 100

=<svg> -viewBox 300, 100 -Content @(
    $psChevron
    =<svg.use> -Href '#psChevron' @colorScheme -X -7.5%
    =<svg.text> @(
        =<svg.tspan> -Content 'Start' -LetterSpacing .15em -AlignmentBaseline 'middle'
        =<svg.tspan> -LetterSpacing .2em -AlignmentBaseline 'middle' -Dx 0.5em @(
            'Automating'            
            =<svg.animate> -Values '.2em;.19em;.2em' -AttributeName 'letter-spacing' -Dur 5s -RepeatDur 'indefinite' -AttributeType 'XML'
        )
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 27.5% -Y 50% @colorScheme
    # =<svg.text> -Content 'Automating' -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 45% -Y 55% -Fill '#4488ff' -LetterSpacing .1em
) -Class 'foreground-fill' -OutputPath (Join-Path $assetsPath "StartAutomating.svg")

=<svg> -ViewBox 400, 400 -Content @(
    $psChevron
    =<svg.use> -Href '#psChevron' -Fill '#4488ff' -X -1% -Y 0% -Height 60%
    =<svg.text> @(
        =<svg.tspan> -Content 'Start-Automating' -LetterSpacing .1em
    ) @fontStyle @ColorScheme -X 50% -Y 70% -FontSize 20 -TextAnchor 'middle'
) -OutputPath (Join-Path $assetsPath "StartAutomating@400x400.svg")

=<svg> -ViewBox 400, 400 -Content @(
    $psChevron
    =<svg.use> -Href '#psChevron' -Fill '#4488ff' -X -15% -Y "$(50 - 33.3/2 - 2.5)%" -Height 33.3%
    =<svg.text> @(
        =<svg.tspan> -Content 'Start' -LetterSpacing .1em
    ) @fontStyle @ColorScheme -X 33.3% -Y 45% -FontSize 20 -TextAnchor 'end' -DominantBaseline 'hanging'
    =<svg.text> @(
        =<svg.tspan> -Content 'Automating' -LetterSpacing .1em
    ) @fontStyle @ColorScheme -X 40% -Y 50% -FontSize 20 -TextAnchor 'start' -DominantBaseline 'hanging'
) -OutputPath (Join-Path $assetsPath "StartAutomating@600x600.svg")


=<svg> -viewBox 1920, 1080 -Content @(
    $psChevron
    =<svg.use> -Href '#psChevron' -Fill '#4488ff' -X 0% -Height 90% -Class ansi6-fill
    =<svg.text> @(
        =<svg.tspan> -Content 'Start-' -LetterSpacing .15em -AlignmentBaseline 'middle'
        =<svg.tspan> -LetterSpacing .2em -AlignmentBaseline 'middle' -Dx -0.5em @(
            'Automating'
            =<svg.animate> -Values '.2em;.19em;.2em' -AttributeName 'letter-spacing' -Dur 5s -RepeatDur 'indefinite' -AttributeType 'XML'
        ) -TextAnchor 'start'
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 50% -Y 80% -Fill '#4488ff' -FontSize 72 -DominantBaseline middle -TextAnchor 'middle' -Class ansi6-fill
    # =<svg.text> -Content 'Automating' -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 45% -Y 55% -Fill '#4488ff' -LetterSpacing .1em
) -OutputPath (Join-Path $assetsPath "StartAutomating@1080.svg") -Width 100% -Height 100%


$exo2 = [Ordered]@{
    Style = "font-family:'Exo 2'"
}

$defineExo2 = svg.GoogleFont -FontName "Exo 2"

=<svg> -ViewBox 1920,640 -Content @(
    svg.defs $defineExo2
    =<svg> -ViewBox 100, 100 -Width 100% -Height 200% -Content @(
        =<svg.polygon> -Points (@(
            "40,20"
            "45,20"
            "60,50"
            "35,80"
            "32.5,80"
            "55,50"
        ) -join ' ')
    ) -Fill '#4488ff' -X -20%  -Y -50%      
    =<svg.text> @(
        =<svg.tspan> -Content 'James Brundage' -LetterSpacing .1em 
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 40% -Y 30% -Fill '#4488ff' -TextAnchor 'start' -FontSize 5em  -DominantBaseline 'middle' @exo2

    =<svg.text> @(
        =<svg.tspan> -Content 'Founder & Lead Developer' -LetterSpacing .1em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 40% -Y 50% -Fill '#4488ff' -TextAnchor 'start' -FontSize 4em -DominantBaseline 'middle' @exo2

    =<svg.text> @(
        =<svg.tspan> -Content 'Start-Automating' -LetterSpacing .2em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 40% -Y 70% -Fill '#4488ff' -TextAnchor 'start' -FontSize 5em -DominantBaseline 'middle' @exo2

<#    =<svg.text> @(
        =<svg.tspan> -Content 'james.brundage' -LetterSpacing .2em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 25% -Y 70% -Fill '#4488ff' -TextAnchor 'start' -FontSize 12 -DominantBaseline 'middle'
#>
<#    =<svg.text> @(
        =<svg.tspan> -Content '1-(206)-914-9060' -LetterSpacing .2em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 25% -Y 70% -Fill '#4488ff' -TextAnchor 'start' -FontSize 8 -DominantBaseline 'middle'

    =<svg.text> @(
        =<svg.tspan> -Content 'James.Brundage@Start-Automating.com' -LetterSpacing .15em
    ) -FontFamily 'monospace' -AlignmentBaseline 'top' -X 25% -Y 90% -Fill '#4488ff' -TextAnchor 'start' -FontSize 8
#>  
    

) -OutputPath (Join-Path $assetsPath "StartAutomating-Business-Card-Front.svg")

=<svg> -ViewBox 1920,640 -Content @(
    svg.defs $defineExo2
    svg.defs @(
        svg.GoogleFont -FontName "Exo 2"
    )
    =<svg> -ViewBox 100, 100 -Width 100% -Height 100% -Content @(
        =<svg.polygon> -Points (@(
            "40,20"
            "45,20"
            "60,50"
            "35,80"
            "32.5,80"
            "55,50"
        ) -join ' ')
    ) -Fill '#4488ff' -X -20%  -Y 0%
    =<svg.text> @(
        =<svg.tspan> -Content 'James.Brundage' -LetterSpacing .15em 
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 40% -Y 40% -Fill '#4488ff' -TextAnchor 'start' -FontSize 14  -DominantBaseline 'middle' @exo2

    =<svg.text> @(
        =<svg.tspan> -Content '@Start-Automating.com' -LetterSpacing .15em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 40% -Y 50% -Fill '#4488ff' -TextAnchor 'start' -FontSize 14 -DominantBaseline 'middle' @exo2

    =<svg.text> @(
        =<svg.tspan> -Content '1-206-914-9060' -LetterSpacing .2em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 40% -Y 60% -Fill '#4488ff' -TextAnchor 'start' -FontSize 14 -DominantBaseline 'middle' @exo2

<#    =<svg.text> @(
        =<svg.tspan> -Content 'james.brundage' -LetterSpacing .2em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 25% -Y 70% -Fill '#4488ff' -TextAnchor 'start' -FontSize 12 -DominantBaseline 'middle'
#>
<#    =<svg.text> @(
        =<svg.tspan> -Content '1-(206)-914-9060' -LetterSpacing .2em
    ) -FontFamily 'monospace' -AlignmentBaseline 'middle' -X 25% -Y 70% -Fill '#4488ff' -TextAnchor 'start' -FontSize 8 -DominantBaseline 'middle'

    =<svg.text> @(
        =<svg.tspan> -Content 'James.Brundage@Start-Automating.com' -LetterSpacing .15em
    ) -FontFamily 'monospace' -AlignmentBaseline 'top' -X 25% -Y 90% -Fill '#4488ff' -TextAnchor 'start' -FontSize 8
#>  
    

) -OutputPath (Join-Path $assetsPath "StartAutomating-300x200-Back.svg")

=<svg> -ViewBox 640,640 -Content @(
    svg.defs $defineExo2
    svg.defs @(
        svg.GoogleFont -FontName "Exo 2"
    )
    =<svg> -ViewBox 100, 100 -Width 100% -Height 200% -Content @(
        =<svg.polygon> -Points (@(
            "40,20"
            "45,20"
            "60,50"
            "35,80"
            "32.5,80"
            "55,50"
        ) -join ' ')
    ) -Fill '#4488ff' -X 0%  -Y -50%

) -OutputPath (Join-Path $assetsPath "StartAutomating-Icon.svg")

$docsRoot = Join-Path $PSScriptRoot docs
$docsAssets = Join-Path $docsRoot Assets
if (-not (Test-Path $docsAssets)) {
    $null = New-Item -Path $docsAssets -ItemType Directory -Force
}
Get-ChildItem -Path $assetsPath -Filter *.svg | Copy-Item -Destination $docsAssets -PassThru