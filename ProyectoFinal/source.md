<section id="themes">
	<h2>Themes</h2>
		<p>
			Set your presentation theme: <br>
			<!-- Hacks to swap themes after the page has loaded. Not flexible and only intended for the reveal.js demo deck. -->
                        <a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/black.css'); return false;">Black (default)</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/white.css'); return false;">White</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/league.css'); return false;">League</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/sky.css'); return false;">Sky</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/beige.css'); return false;">Beige</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/simple.css'); return false;">Simple</a> <br>
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/serif.css'); return false;">Serif</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/blood.css'); return false;">Blood</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/night.css'); return false;">Night</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/moon.css'); return false;">Moon</a> -
			<a href="#" onclick="document.getElementById('theme').setAttribute('href','css/theme/solarized.css'); return false;">Solarized</a>
		</p>
</section>

H:

# Proyecto Final

* Andrés Acuña
* Jessica Casas
* Carlos Cogua

H:

## Contenido

1. Objetivo
<!-- .element: class="fragment" data-fragment-index="1"-->
1. Contexto
<!-- .element: class="fragment" data-fragment-index="2"-->
2. Interacción
<!-- .element: class="fragment" data-fragment-index="3"-->
3. Resultado
<!-- .element: class="fragment" data-fragment-index="4"-->
3. Demo
<!-- .element: class="fragment" data-fragment-index="5"-->
4. Conclusiones
<!-- .element: class="fragment" data-fragment-index="6"-->
5. Referencias
<!-- .element: class="fragment" data-fragment-index="7"-->

H:

# Objetivo

Proveer de una herramienta de ayuda para las personas que padecen de daltonismo haciendo uso de los contenidos aprendidos en clase
<!-- .element: class="fragment" data-fragment-index="1"-->

H:

# Contexto

V:

## ¿Qué es el daltonismo?

Defecto de la vista que consiste en no distinguir ciertos colores o confundirlos con otros, comúnmente entre verdes y rojos, y ocasionalmente azules.

<img height='300' src='img/img-1.PNG'/>

V:

## ¿Por qué se da esta condición?

Cuando una o más de las células cónicas de color están ausentes, o detectan un color diferente al normal.

Un <span style="color:#FF1111">daltonismo severo</span> ocurre cuando hay una ausencia de los tres conos.
 
Un  <span style="color:#FF1111">daltonismo leve</span> ocurre cuando hay los tres conos están presentes, pero alguna de las células cónicas no funciona normalmente y detecta un color diferente al normal.

V:

## ¿Por qué se da esta condición? (part 2)

* Condición genética. Hombres con mayor probabilidad de sufrirlo. Mujeres principalmente portadoras.
* Puede darse a causa de enfermedades padecidas o como efectos tóxicos de algunos medicamentos. 
* Un daltonismo causado por enfermedades, afecta a los ojos de manera diferente.

V:

## Tipos de daltonismo

Protanopes no ven el color  <span style="color:#FF0000">ROJO</span>

Deuteranopes no ven el color  <span style="color:#00FF00">VERDE</span>

Tritanopes no ven el  <span style="color:#0000FF">AZUL</span>

<img height='300' src='img/img-2.PNG'/>

V:
## Tipos de Daltonismo 
<img height='400' src='img/img-3.PNG'/>

V:
## Tipos de Daltonismo
<img height='400' src='img/img-4.PNG'/>

V:

## An Assistive Model for ICT Applications for Color Blindness

Wafa Qaiser Khan , Reema Qaiser Khan
Computer and Software Engineering Department, Bahria University, Karachi Campus, PAKISTAN 

Muhammad Sarim , Abdul Basit Shaikh and Sheikh Kashif Raffat.
Department of Computer Science, Federal Urdu University of Arts, Sciences and Technology, Karachi, PAKISTAN

V:
## Modelo del Algoritmo de Asistencia 
<img height='500' src='img/img-5.PNG'/>

V:

## Algoritmo del Simulador

<img height='450' src='img/img-8.PNG'/>

V:

## Combinación de Colores

<img height='300' src='img/img-9.PNG'/>

V:

## Ejemplo de uso de una aplicación para personas daltónicas

<img height='400' src='img/img-11.PNG'/>

V:

## Ejemplo
<img height='500' src='img/img-12.PNG'/>

H: 
## Interacción

V:

## Herramienta Desarrollada
* Processing 3
* Shader por tipo de Daltonismo
* 3 etapas

V:

## Etapas

V:

## 1) Test de Ishihara
* 21 Cartas Identificadoras
* De Control, Propias para cada tipo de Daltonismo

V: 

## Ejemplos Test
<img height='500' src='img/Test.PNG'/>
<img height='500' src='img/Test1.PNG'/>

## 

V:

## 2) Analisis de resultados
* Resultados del Test
* Probabilidad de padecer cada enfermedad

<img height='500' src='img/Resultado.PNG'/>

V:

## 3) Imagenes Y Video
* Carga de shader desarrollado en GLSL según el análisis de datos obtenido	

* Vídeo Original

<img height='350' src='img/Video1.PNG'/>

V:

## Vídeo con Filtro Protanope / Corrección de Imagen

<img height ='400' src='img/protanopia.PNG'/>
<img height ='400' src='img/protCorreccion.PNG'/>

V:

## Vídeo con Flitro Deuteranope / Corrección de Imagen

<img height ='400' src='img/deuteranopia.PNG'/>
<img height ='400' src='img/deutCorreccion.PNG'/>

V: 

## Uso de la Aplicación

<table>
<tr>
  <td><strong>Tecla</strong></td>
  <td><strong>Uso</strong></td>
</tr>
 
<tr>
  <td>Y</td>
  <td>Aplica el Filtro</td>
</tr>

<tr>
  <td>N</td>
  <td>Borra el Filtro</td>
</tr>

<tr>
  <td>Q</td>
  <td>Aplica Filtro Deuteranope</td>
</tr>

<tr>
  <td>W</td>
  <td>Aplica Filtro Protanope</td>
</tr>

<tr>
  <td>P</td>
  <td>Aplica la Corrección de Imagen para Protanopes</td>
</tr>

<tr>
  <td>D</td>
  <td>Aplica la Corrección de Imagen para Deuteranopes</td>
</tr>
H:

## Resultados

V:

## Protanopia
<img height='350' src='img/pro0.PNG'/>
<img height='350' src='img/pro1.PNG'/>
<img height='350' src='img/pro2.PNG'/>

V:

## deuteranopia
<img height='350' src='img/deu-0.PNG'/>
<img height='350' src='img/deu-1.PNG'/>
<img height='350' src='img/deu-2.PNG'/>

H: 

## Demo

* Ejecutar la Aplicación

H:

## Conclusiones

* La utilización de shaders brinda mucha flexibilidad a la hora de trabajar con muchos elementos gráficos, realizando las tareas con un costo mucho menor.

* Muchas discapacidades como el daltonismo, que en ciertos casos puede ser limitante para las personas, pueden ser contrarrestadas sin necesidad de afectar el diseño completo de alguna aplicación.

* La tritanopia es un caso particular del daltonismo que debido a su rareza aún requiere más estudios para una mejor caracterización de sus efectos y así permitir la creación de herramientas que permitan reducir su impacto.

H:

## Referencias

* An Assistive Model for ICT Applications for Color Blindness, Wafa Qaiser Khan, Reema Qaiser Khan, Muhammad Sarim, Abdul Basit Shaikh and Sheikh Kashif Raffa

* [New app lets colour blind people see for the first time - their reactions are amazing](http://www.telegraph.co.uk/technology/news/11882403/New-app-lets-colour-blind-people-see-for-the-first-time-their-reactions-are-amazing.html)

* [¿Qué es el daltonismo?](https://www.aao.org/salud-ocular/enfermedades/daltonismo)

* [El Daltonismo](https://www.uam.es/personal_pdi/medicina/algvilla/fundamentos/nervioso/Daltonismo/daltonismo.html)

V:

## Referencias


* [Why Color Blindness is No Longer a Problem for Web Design](https://www.templatemonster.com/blog/designing-colorblind-friendly-website/)

* [Intelligent modification for the daltonization process of digitized paintings](http://biecoll.ub.uni-bielefeld.de/volltexte/2007/52/pdf/ICVS2007-6.pdf) - Matriz de daltonismo

* [Green-Weak Color Blindness Correction](https://prezi.com/3lwgj2wqqtvg/green-weak-color-blindness-correction/) - Correción de color

* [Shaders basicos](https://processing.org/reference/shader_.html)


