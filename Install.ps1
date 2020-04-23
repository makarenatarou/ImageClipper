if(!(test-path 'HKCU:\Software\Classes\Directory\Background\shell')){
    New-Item 'HKCU:\Software\Classes\Directory\Background\shell'

}
if(!(test-path 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper')){
    New-Item 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper' -value 'ImageClipperで画像保存する'

}
if(!(test-path 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper\command')){
    $FilePath = "`"" + (Convert-Path .) + "\ImageClipper.exe`" " + "`"`%V`""
    New-Item 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper\command' -value $FilePath
}
