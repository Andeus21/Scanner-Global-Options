# ====================================================================
# SS TOOL LAUNCHER - ANDEUS TOXIC (ARQUITECTURA MODULAR)
# ====================================================================

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8

function Mostrar-Menu {
    Clear-Host
    $Banner = @"
 █████╗ ███╗  ██╗██████╗ ███████╗██╗   ██╗███████╗
██╔══██╗████╗  ██║██╔══██╗██╔════╝██║   ██║██╔════╝
███████║██╔██╗ ██║██║  ██║█████╗  ██║   ██║███████╗
██╔══██║██║╚██╗██║██║  ██║██╔══╝  ██║   ██║╚════██║
██║  ██║██║ ╚████║██████╔╝███████╗╚██████╔╝███████║
╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝                                 
                      
  ▀▄▀▄▀▄▀▄▀▄▀▄  ☣︎ SS TOOL SUITE ☣︎  ▀▄▀▄▀▄▀▄▀▄▀▄▀                   
"@
    Write-Host $Banner -ForegroundColor Red
    Write-Host "_____________________________________________________" -ForegroundColor DarkRed
    Write-Host ""
    Write-Host " [1] Escáner Global (Escritorio, Descargas, etc.)" -ForegroundColor Cyan
    Write-Host " [2] Francotirador DNS (Conexiones de Red Ocultas)" -ForegroundColor Yellow
    Write-Host " [3] Escáner de Memoria RAM (DLLs y Ghost Clients)" -ForegroundColor Magenta
    Write-Host " [4] Escáner de Carpeta Mods (.minecraft/mods)" -ForegroundColor Green
    Write-Host "_____________________________________________________" -ForegroundColor DarkRed
    Write-Host ""
}

# --- BUCLE INFINITO DEL MENÚ ---
while ($true) {
    Mostrar-Menu
    $Opcion = Read-Host "Elige un módulo [1-4]"

    switch ($Opcion) {
        "1" { 
            Clear-Host
            Write-Host "[*] Conectando con la base de datos... Descargando Escáner Global...`n" -ForegroundColor DarkGray
            # REEMPLAZA EL LINK DE ABAJO CON TU SCRIPT GLOBAL
            Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/TuUsuario/TuRepo/main/Modulo1_Global.ps1')
            Write-Host "`n"
            Pause
        }
        "2" { 
            Clear-Host
            Write-Host "[*] Conectando con la base de datos... Descargando Francotirador DNS...`n" -ForegroundColor DarkGray
            # REEMPLAZA EL LINK DE ABAJO CON TU SCRIPT DE RED
            Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/TuUsuario/TuRepo/main/Modulo2_Red.ps1')
            Write-Host "`n"
            Pause
        }
        "3" { 
            Clear-Host
            Write-Host "[*] Conectando con la base de datos... Descargando Escáner de RAM...`n" -ForegroundColor DarkGray
            # REEMPLAZA EL LINK DE ABAJO CON TU SCRIPT DE MEMORIA
            Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/TuUsuario/TuRepo/main/Modulo3_RAM.ps1')
            Write-Host "`n"
            Pause
        }
        "4" { 
            Clear-Host
            Write-Host "[*] Conectando con la base de datos... Descargando Escáner de Mods...`n" -ForegroundColor DarkGray
            # REEMPLAZA EL LINK DE ABAJO CON TU SCRIPT DE MODS
            Invoke-Expression (Invoke-RestMethod 'https://raw.githubusercontent.com/TuUsuario/TuRepo/main/Modulo4_Mods.ps1')
            Write-Host "`n"
            Pause
        }
        default { 
            Write-Host "Opción inválida. Intenta de nuevo." -ForegroundColor Red
            Start-Sleep -Seconds 1 
        }
    }
}