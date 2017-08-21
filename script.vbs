strComputer = "."
strEntry1 = "DisplayName"
strEntry2 = "DisplayVersion"
strEntry3 = "Publisher"
strEntry4 = "ExecutablePath"

strKeys = Array("SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\", "SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\")
hkeys = Array(&H80000002, &H80000001)

for each strKey in strKeys
  for each hkey in hkeys
    set objReg = GetObject("winmgmts://" & strComputer & _
     "/root/default:StdRegProv")
    objReg.EnumKey hkey, strKey, arrSubkeys
    for each strSubkey in arrSubkeys
      intRet1 = objReg.GetStringValue(hkey, strKey & strSubkey, _
       strEntry1, strValue1)
      if strValue1 <> "" then
        WScript.Echo VbCrLf & "Display Name: " & strValue1
      end if
      objReg.GetStringValue hkey, strKey & strSubkey, _
       strEntry2, strValue2
      if strValue2 <> "" then
        WScript.Echo "Version: " & strValue2
      end if
      objReg.GetStringValue hkey, strKey & strSubkey, _
       strEntry3, strValue3
      if strValue3 <> "" then
        WScript.Echo "Publisher: " & strValue3
      end if
      objReg.GetStringValue hkey, strKey & strSubkey, _
       strEntry4, strValue4
      if strValue4 <> "" then
        WScript.Echo "Publisher: " & strValue4
      end if
    next
  next
next
