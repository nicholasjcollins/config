function G {
  param (
    [string]$folderName
  )
  $rootPath = "C:\Users\ncollins\WSL"

  if ($folderName -match '\.') {
    pushd "$rootPath\*\*\$folderName*"
  } else {
    pushd "$rootPath\*\$folderName*"
  }
}
