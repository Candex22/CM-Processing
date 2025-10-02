// 🌟 Variables para múltiples elipses rebotando
float x1, y1, x2, y2, x3, y3;
float xSpeed1 = 3, ySpeed1 = 2;
float xSpeed2 = -2.5, ySpeed2 = 3.5;
float xSpeed3 = 4, ySpeed3 = -3;
float diametro = 50;

// 🎨 Colores para las elipses
color color1 = color(255, 0, 0);
color color2 = color(0, 255, 0);
color color3 = color(0, 100, 255);

// 📷 Variables para las imágenes
PImage fondo;
PImage logo;

// 🎯 Variables de interactividad
boolean mostrarInstrucciones = true;
int clickCount = 0;

void setup() {
  size(800, 600);
  
  // 🔹 IMPORTANTE: Descargá imágenes y guardalas en la carpeta del proyecto
  // Necesitás: "fondo.jpg" y "logo.png"
  // Si no tenés imágenes, comentá las líneas de loadImage() y descomentá el fondo de color
  
  try {
    fondo = loadImage("fondo.jpg");
  } catch (Exception e) {
    println("⚠️ No se encontró fondo.jpg - usando fondo degradado");
  }
  
  try {
    logo = loadImage("logo.png");
  } catch (Exception e) {
    println("⚠️ No se encontró logo.png - sin logo");
  }
  
  // 🎯 Posiciones iniciales de las elipses
  x1 = width / 2;
  y1 = height / 2;
  x2 = width / 4;
  y2 = height / 3;
  x3 = 3 * width / 4;
  y3 = 2 * height / 3;
}

void draw() {
  // 🖼 Dibujar el fondo
  if (fondo != null) {
    background(fondo);
  } else {
    // Fondo degradado alternativo
    drawGradient();
  }
  
  // 📷 Mostrar logo en esquina superior derecha
  if (logo != null) {
    image(logo, width - 100, 10, 80, 80);
  } else {
    // Logo alternativo si no hay imagen
    fill(255, 200);
    noStroke();
    rect(width - 100, 10, 80, 80, 10);
    fill(50);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("CM", width - 60, 50);
  }
  
  // 🔴 Dibujar las elipses que se mueven
  // Elipse 1
  fill(color1);
  noStroke();
  ellipse(x1, y1, diametro, diametro);
  
  // Elipse 2
  fill(color2);
  ellipse(x2, y2, diametro * 0.8, diametro * 0.8);
  
  // Elipse 3
  fill(color3);
  ellipse(x3, y3, diametro * 1.2, diametro * 1.2);
  
  // 🚀 Actualizar posiciones
  x1 += xSpeed1;
  y1 += ySpeed1;
  x2 += xSpeed2;
  y2 += ySpeed2;
  x3 += xSpeed3;
  y3 += ySpeed3;
  
  // ↔ Rebote contra bordes - Elipse 1
  if (x1 > width - diametro/2 || x1 < diametro/2) xSpeed1 *= -1;
  if (y1 > height - diametro/2 || y1 < diametro/2) ySpeed1 *= -1;
  
  // ↔ Rebote contra bordes - Elipse 2
  if (x2 > width - diametro*0.8/2 || x2 < diametro*0.8/2) xSpeed2 *= -1;
  if (y2 > height - diametro*0.8/2 || y2 < diametro*0.8/2) ySpeed2 *= -1;
  
  // ↔ Rebote contra bordes - Elipse 3
  if (x3 > width - diametro*1.2/2 || x3 < diametro*1.2/2) xSpeed3 *= -1;
  if (y3 > height - diametro*1.2/2 || y3 < diametro*1.2/2) ySpeed3 *= -1;
  
  // 🔤 Dibujar iniciales CM
  drawInitials();
  
  // 📋 Mostrar instrucciones
  if (mostrarInstrucciones) {
    drawInstructions();
  }
  
  // 📊 Contador de clicks
  drawClickCounter();
}

// ✍ Función para dibujar iniciales CM
void drawInitials() {
  strokeWeight(6);
  stroke(255);
  fill(100, 100, 255, 150);
  
  // 🔤 Letra C (usando arcos y líneas)
  pushMatrix();
  translate(150, 120);
  
  // Fondo de la letra C
  noStroke();
  fill(50, 50, 150, 200);
  arc(0, 0, 100, 100, radians(45), radians(315), OPEN);
  strokeWeight(8);
  stroke(255);
  noFill();
  arc(0, 0, 100, 100, radians(45), radians(315));
  
  popMatrix();
  
  // 🔤 Letra M (usando líneas)
  pushMatrix();
  translate(280, 120);
  
  // Fondo de la letra M
  noStroke();
  fill(150, 50, 50, 200);
  quad(-40, -50, -20, -50, -20, 50, -40, 50);
  quad(20, -50, 40, -50, 40, 50, 20, 50);
  triangle(-20, -50, 0, -10, 20, -50);
  
  // Contorno de la letra M
  stroke(255);
  strokeWeight(8);
  noFill();
  line(-40, 50, -40, -50);  // Línea izquierda
  line(-40, -50, 0, -10);    // Diagonal izquierda
  line(0, -10, 40, -50);     // Diagonal derecha
  line(40, -50, 40, 50);     // Línea derecha
  
  popMatrix();
  
  // 📝 Texto decorativo
  fill(255);
  textAlign(CENTER);
  textSize(24);
  text("Iniciales: CM", 215, 200);
}

// 🎨 Función para dibujar fondo degradado
void drawGradient() {
  for (int i = 0; i < height; i++) {
    float inter = map(i, 0, height, 0, 1);
    color c = lerpColor(color(20, 24, 82), color(133, 76, 130), inter);
    stroke(c);
    line(0, i, width, i);
  }
}

// 📋 Función para mostrar instrucciones
void drawInstructions() {
  fill(0, 180);
  noStroke();
  rect(10, height - 120, 300, 110, 10);
  
  fill(255);
  textAlign(LEFT);
  textSize(14);
  text("🖱️ INTERACTIVIDAD:", 20, height - 100);
  text("• Click: Cambiar colores", 20, height - 80);
  text("• Tecla 'R': Reiniciar", 20, height - 60);
  text("• Tecla 'H': Ocultar ayuda", 20, height - 40);
  text("• Tecla '+/-': Velocidad", 20, height - 20);
}

// 📊 Función para mostrar contador de clicks
void drawClickCounter() {
  fill(255, 200);
  noStroke();
  rect(width - 180, height - 50, 170, 40, 10);
  
  fill(50);
  textAlign(LEFT);
  textSize(16);
  text("Clicks: " + clickCount, width - 170, height - 25);
}

// 🖱️ Interactividad: Click del mouse
void mousePressed() {
  // Cambiar colores de las elipses aleatoriamente
  color1 = color(random(100, 255), random(100, 255), random(100, 255));
  color2 = color(random(100, 255), random(100, 255), random(100, 255));
  color3 = color(random(100, 255), random(100, 255), random(100, 255));
  
  clickCount++;
  
  println("🎨 ¡Colores cambiados! Click #" + clickCount);
}

// ⌨️ Interactividad: Teclado
void keyPressed() {
  // Reiniciar posiciones
  if (key == 'r' || key == 'R') {
    x1 = width / 2;
    y1 = height / 2;
    x2 = width / 4;
    y2 = height / 3;
    x3 = 3 * width / 4;
    y3 = 2 * height / 3;
    clickCount = 0;
    println("🔄 Posiciones reiniciadas");
  }
  
  // Ocultar/mostrar instrucciones
  if (key == 'h' || key == 'H') {
    mostrarInstrucciones = !mostrarInstrucciones;
    println(mostrarInstrucciones ? "📋 Instrucciones mostradas" : "📋 Instrucciones ocultas");
  }
  
  // Aumentar velocidad
  if (key == '+') {
    xSpeed1 *= 1.2;
    ySpeed1 *= 1.2;
    xSpeed2 *= 1.2;
    ySpeed2 *= 1.2;
    xSpeed3 *= 1.2;
    ySpeed3 *= 1.2;
    println("⚡ Velocidad aumentada");
  }
  
  // Disminuir velocidad
  if (key == '-') {
    xSpeed1 *= 0.8;
    ySpeed1 *= 0.8;
    xSpeed2 *= 0.8;
    ySpeed2 *= 0.8;
    xSpeed3 *= 0.8;
    ySpeed3 *= 0.8;
    println("🐌 Velocidad disminuida");
  }
}
