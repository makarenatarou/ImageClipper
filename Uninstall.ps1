if(test-path 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper'){
    Remove-Item -Path 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper' -Recurse
}
if(test-path 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper\command'){
    Remove-Item -Path 'HKCU:\Software\Classes\Directory\Background\shell\ImageClipper\command' -Recurse
}