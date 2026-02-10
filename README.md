\# 🚀 Cloud Apps Ecosystem



Una suite de herramientas ultra-ligeras y portátiles diseñadas para ejecutarse desde la nube en cualquier entorno Windows, sin instalaciones y con permisos mínimos.



\## 🌟 Características principales



\* \*\*Portabilidad Total:\*\* Ejecutables únicos (`.exe`) que no requieren instalación.

\* \*\*Diseño "Stealth":\*\* Herramientas optimizadas para no dejar rastro y saltar bloqueos comunes.

\* \*\*Arquitectura Híbrida:\*\* Potencia de \*\*Python\*\* con la integración nativa de \*\*PowerShell\*\*.



---



\## 🛠️ Herramientas Incluidas



| App | Descripción | Tecnología |

| :--- | :--- | :--- |

| \*\*📁 Explorador Pro\*\* | Navegador de archivos con acceso forzado a `C:\\` y elevación de privilegios. | Python + PS |

| \*\*🌐 Web Browser\*\* | Navegador ligero basado en DuckDuckGo Lite para evitar bloqueos de motor. | Python + PS |

| \*\*📝 Cloud Notepad\*\* | Wrapper de escritorio para https://pepecarlos546.github.io/notepad-cloud/ con inyección de modo oscuro. | PWA Wrapper |

| \*\*💻 Admin Terminal\*\* | Acceso directo a CMD con permisos de administrador en la raíz del sistema. | Python |

| \*\*batchfile\*\* | algunos .bat de optimizacion de la computadora | batchfile |



---



\## 🚀 Instalación y Uso



No necesitas "instalar" nada. Solo descarga el ejecutable de la herramienta que necesites desde la sección de \[Releases](#) o ejecuta el lanzador principal.



1\. Descarga el archivo `.exe`.

2\. Ejecútalo (algunas apps solicitarán permisos de Administrador para funcionar correctamente).

3\. ¡Listo! La app se encargará de gestionar los recursos necesarios en la carpeta `%TEMP%`.



---



\## 🛠️ Cómo compilar (Para desarrolladores)



Si deseas modificar las herramientas y generar tus propios ejecutables, asegúrate de tener instalado `pyinstaller`:



```bash

pip install pyinstaller

