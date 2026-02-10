$ErrorActionPreference = 'SilentlyContinue'
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# 1. Crear la ventana
$form = New-Object Windows.Forms.Form
$form.Text = "Navegador Cloud (Modo Ultra-Ligero)"
$form.Size = New-Object Drawing.Size(1000,750)
$form.StartPosition = "CenterScreen"

# 2. Crear el motor del navegador
$browser = New-Object Windows.Forms.WebBrowser
$browser.Dock = [Windows.Forms.DockStyle]::Fill
$browser.ScriptErrorsSuppressed = $true 

# 3. Cargar DuckDuckGo Lite (No usa JavaScript pesado, por eso NO se pone en blanco)
$browser.Navigate("https://duckduckgo.com/lite/")

$form.Controls.Add($browser)

# Mostrar la ventana
$form.ShowDialog()