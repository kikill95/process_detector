param(
   [string] $path = ""
   )

$WshShell = new-object -comobject "WScript.Shell" # Instantiate the wscript.shell COM object

if ($path -ne "") {
    $shortcuts = get-childitem -path $path -filter "*.lnk" -rec # Find all .lnk files, recursing in to subdirectories
    ('[' + ($shortcuts | foreach-object { ($WshShell.CreateShortcut($_.FullName) | ConvertTo-Json) + ',' }) | %{$_.Substring(0, $_.length - 1) }) + ']'
    # For each file, pass the fullname to the COM object to open the shortcut and enumerate the properties
} else {
    write-output "No arguments specified, please use either -p to specify a path or -f for a specific .lnk file"
}
