# 🎨✨ Actividad 19: Gráficos, Animaciones e Interactividad - Processing

## 📋 Información del Proyecto

**Materia:** Proyecto de Implementación de Sitios web Dinámicos  
**Institución:** EEST N.º 1 - "Eduardo Ader" Vicente López  
**Curso:** 7° año 2° B  
**Fecha:** Octubre 2025  
**Iniciales:** CM  

---

## 🌟 Descripción

Proyecto interactivo desarrollado en Processing que combina programación gráfica, animaciones y eventos de usuario. El sketch presenta las iniciales "CM" dibujadas con figuras geométricas, múltiples elementos animados que rebotan por la pantalla, y un sistema completo de interactividad mediante mouse y teclado.

---

## 🎯 Objetivos Cumplidos

✅ Dibujar iniciales personalizadas usando figuras geométricas (`line()`, `arc()`, `quad()`)  
✅ Programar animaciones con movimiento y rebote en los bordes  
✅ Cargar e integrar imágenes como fondos y elementos gráficos  
✅ Implementar interactividad con mouse y teclado  
✅ Aplicar creatividad y personalización al diseño  

---

## 🚀 Características Principales

### 🔹 Iniciales Geométricas
- **Letra C:** Construida con arcos (`arc()`) y efectos de color
- **Letra M:** Diseñada con líneas (`line()`) y cuadriláteros (`quad()`)
- Ambas letras incluyen fondos semitransparentes y contornos destacados

### 🔹 Sistema de Animación
- **3 elipses animadas** con diferentes tamaños y velocidades
- Movimiento continuo en ambos ejes (X e Y)
- Rebote suave contra los bordes de la ventana
- Cada elipse tiene su propio color personalizable

### 🔹 Elementos Visuales
- Fondo personalizable con imagen o degradado automático
- Logo/imagen adicional en esquina superior derecha
- Sistema de fallback: si no hay imágenes, genera elementos alternativos
- Textos decorativos y panel de información

### 🔹 Interactividad Completa

#### 🖱️ Mouse:
- **Click izquierdo:** Cambia aleatoriamente los colores de las tres elipses
- Contador de clicks visible en pantalla

#### ⌨️ Teclado:
- **Tecla 'R':** Reinicia las posiciones de todas las elipses
- **Tecla 'H':** Muestra/oculta el panel de instrucciones
- **Tecla '+':** Aumenta la velocidad de las animaciones (×1.2)
- **Tecla '-':** Disminuye la velocidad de las animaciones (×0.8)

---

## 📦 Instalación y Uso

### Requisitos Previos
- Processing 3.x o superior instalado
- Archivos de imagen (opcional): `fondo.jpg` y `logo.png`

### Pasos de Instalación

1. **Descargar el proyecto**
   ```bash
   git clone https://github.com/[tu-usuario]/processing-cm-actividad19.git
   cd processing-cm-actividad19
   ```

2. **Abrir en Processing**
   - Abrí Processing
   - File → Open → Seleccioná el archivo `.pde`

3. **Agregar imágenes (opcional)**
   - Colocá tus imágenes en la carpeta del sketch
   - Sketch → Show Sketch Folder
   - Agregá: `fondo.jpg` (imagen de fondo) y `logo.png` (logo/sticker)

4. **Ejecutar**
   - Presioná el botón ▶️ (Run) o Ctrl+R

---

## 🎮 Controles

| Acción | Efecto |
|--------|--------|
| **Click Mouse** | Cambia colores de las elipses |
| **Tecla R** | Reinicia posiciones |
| **Tecla H** | Oculta/muestra ayuda |
| **Tecla +** | Aumenta velocidad |
| **Tecla -** | Disminuye velocidad |

---

## 📁 Estructura del Proyecto

```
├── CM.pde          # Código principal del sketch
├── fondo.jpg                   # Imagen de fondo (opcional)
├── logo.png                    # Logo/imagen adicional (opcional)
├── LICENSE
└── README.md                   # Este archivo
```

---

## 🛠️ Tecnologías Utilizadas

- **Processing 3.x** - Lenguaje de programación visual
- **Java** - Lenguaje base de Processing
- Funciones gráficas: `ellipse()`, `line()`, `arc()`, `quad()`, `rect()`
- Manejo de imágenes: `loadImage()`, `image()`
- Eventos: `mousePressed()`, `keyPressed()`

---

## 🎨 Personalización

### Cambiar Colores Iniciales
```java
color color1 = color(255, 0, 0);    // Rojo
color color2 = color(0, 255, 0);    // Verde
color color3 = color(0, 100, 255);  // Azul
```

### Modificar Velocidades
```java
float xSpeed1 = 3;    // Velocidad horizontal elipse 1
float ySpeed1 = 2;    // Velocidad vertical elipse 1
```

### Ajustar Tamaño de Ventana
```java
size(800, 600);  // Ancho x Alto en píxeles
```

---

## 📸 Capturas de Pantalla

![Screenshot 1](capturas/captura_1.png)
*Vista principal con las iniciales CM y elipses animadas*

![Screenshot 2](capturas/captura_2.png)
*Panel de instrucciones interactivo*

![Screenshot 3](capturas/captura_3.png)
*Colores cambiados mediante interacción del mouse*

---

## 🐛 Solución de Problemas

### Las imágenes no se cargan
- ✅ Verificá que los archivos estén en la carpeta del sketch
- ✅ Revisá que los nombres coincidan exactamente: `fondo.jpg` y `logo.png`
- ✅ El programa funciona sin imágenes, usando alternativas generadas por código

### Las elipses se mueven muy rápido/lento
- Usá las teclas **+** y **-** para ajustar la velocidad en tiempo real
- O modificá los valores `xSpeed` e `ySpeed` en el código

### El sketch no compila
- Verificá tener instalada la versión correcta de Processing (3.x o superior)
- Revisá que no haya errores de sintaxis en el código

---

## 📝 Notas del Desarrollador

### Mejoras Implementadas
- Sistema de 3 elipses en lugar de 1 (mejora visual)
- Degradado automático como fallback de fondo
- Panel de instrucciones desplegable
- Contador de interacciones
- Múltiples controles por teclado
- Mensajes en consola para debugging

### Posibles Extensiones Futuras
- 🎵 Agregar sonidos con la librería Minim
- 🌈 Efecto de estela en las elipses
- 🎯 Sistema de colisión entre elipses
- 📊 Modo de pausa y estadísticas
- 🎨 Editor de colores en tiempo real

---

## 👤 Autor

**[Candela MOlinari]**  
Estudiante de 7° año - EEST N.º 1 "Eduardo Ader"  
Vicente López, Buenos Aires

---

## 📚 Referencias

- [Processing.org - Documentación Oficial](https://processing.org/reference/)
- [Processing.org - Tutoriales](https://processing.org/tutorials/)

---

## 📞 Contacto

¿Preguntas o sugerencias sobre el proyecto?
- 📧 Email: [candemolinari20@gmail.com]
- 💬 GitHub: [Candex22](https://github.com/Candex22)

---

**⭐ Si te gustó el proyecto, dale una estrella en GitHub!**

*Última actualización: Octubre 2025*
