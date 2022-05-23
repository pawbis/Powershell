function script {
    Param(
        [Parameter(Mandatory = $true, HelpMessage="Insert Search Word")] [string]$SEARCH_WORD,
        [Parameter(Mandatory = $true, HelpMessage="Insert Starting Directory Path")] [string]$START_DIR,
        [Parameter(Mandatory = $true, HelpMessage="Insert File Path Where You Want To Save Outcome And Specific File")] [string]$OUT_FILE
    )
    (Get-ChildItem $START_DIR -Filter *.conf -r | Select-String -Pattern "$SEARCH_WORD" > $OUT_FILE) 2> $null
    ((Get-Content $OUT_FILE).Length | Get-Content $OUT_FILE) 2> $null
    (Write-EventLog $OUT_FILE) 2> $null
}
script