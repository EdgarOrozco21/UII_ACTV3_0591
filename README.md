# prompt
Toma la siguiente aplicación Flutter existente y refactorízala en una estructura modular separando cada pantalla en archivos independientes.
La aplicación se llama "FinanTrack" y actualmente todo está en un solo archivo.
OBJETIVO:
Separar el código en múltiples archivos manteniendo la funcionalidad completa, usando buenas prácticas de Flutter.
ESTRUCTURA DE CARPETAS:
lib/
├── main.dart
└── LasPaginas/
├── inicio.dart
├── portafolio.dart
├── inversiones.dart
├── gastos.dart
└── perfil.dart
REQUISITOS:
1. main.dart:
* Debe contener:
  * MaterialApp
  * Configuración de rutas nombradas
  * Importación de todas las pantallas desde la carpeta "LasPaginas"
* No debe contener lógica de UI compleja, solo estructura principal
* Mantener rutas:
  * '/'
  * '/portafolio'
  * '/inversiones'
  * '/gastos'
  * '/perfil'
2. inicio.dart:
* Debe contener:
  * PantallaInicio
  * MenuLateral (Drawer completo)
* Mantener diseño actual del Drawer:
  * Encabezado con Container
  * Imagen desde GitHub
  * Información de FinanTrack
* Mantener navegación con Navigator.pushNamed
3. portafolio.dart:
* Contiene PantallaPortafolio
* Imagen centrada 200x200 desde la URL actual
4. inversiones.dart:
* Contiene PantallaInversiones
* Imagen centrada 200x200 desde la URL actual
5. gastos.dart:
* Contiene PantallaGastos
* Imagen centrada 200x200 desde la URL actual
6. perfil.dart:
* Contiene PantallaPerfil
* Imagen centrada 200x200 desde la URL actual
IMPORTANTE:
* Mantener exactamente las mismas URLs de imágenes
* Mantener ClipRRect con bordes redondeados
* Mantener navegación con rutas nombradas
* Mantener Drawer funcional
* NO modificar el diseño visual actual
BUENAS PRÁCTICAS:
* Usar imports correctos entre archivos
* Usar const donde sea posible
* Código limpio y organizado
* Sin errores de compilación
RESULTADO ESPERADO:
* Proyecto funcional dividido en múltiples archivos
* main.dart conectado correctamente con todas las pantallas
* Compatible con Flutter y Firebase Studio
* Sin errores de navegación ni RenderFlex overflow
A continuación, genera todos los archivos completos con su código correspondiente.

# myweb
![alt text](image.png)
![alt text](image-2.png)
![alt text](image-3.png)
![alt text](image-4.png)
![alt text](image-5.png)
![alt text](image-13.png)

# android
![alt text](image-6.png)
![alt text](image-9.png)
![alt text](image-10.png)
![alt text](image-11.png)
![alt text](image-12.png)
![alt text](image-14.png)
