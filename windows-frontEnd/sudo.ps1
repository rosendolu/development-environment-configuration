$script_path="$HOME\Documents\Scripts"; if (!(test-path $script_path)) {New-Item -ItemType directory $script_path} if (!(test-path $profile)) { new-item -path $profile -itemtype file -force }". $script_path\sudo.ps1" | Out-File $profile -append; "function sudo(){if (`$args.Length -eq 1){start-process `$args[0] -verb `"runAs`"} if (`$args.Length -gt 1){start-process `$args[0] -ArgumentList `$args[1..`$args.Length] -verb `"runAs`"}}" | Out-File $script_path\sudo.ps1; powershell