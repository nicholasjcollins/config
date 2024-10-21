
function jd {
  param (
    [string]$searchPath,
    [string]$folderName
  )
  if ($folderName -match '\.') {
    pushd "$searchPath\*\*\$folderName*" -ErrorAction Stop
  } else {
    pushd "$searchPath\*\$folderName*" -ErrorAction Stop
  }
}

function G {
  param (
    [string]$folderName,
    [string]$cloudOrLocal = 'c' 
  )
  $rootPath = "C:\Users\ncollins\WSL"
  $cloudPath = "G:\My Drive"
  if ($cloudOrLocal -eq '.') {
    jd -searchPath $rootPath -folderName $folderName 
  }
  else {
    try {
      jd -searchPath $cloudPath -folderName $folderName
    } catch {
      jd -searchPath $rootPath -folderName $folderName
    }
  }
}

