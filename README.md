# Pepita la golondrina
**Pepita** es una golondrina y es el personaje principal del juego. 
El objetivo del juego es guiar a pepita para sortear los diferentes obstáculos, llegar a su nido y alimentar a sus hijes.

# Etapa 1
En esta primera etapa, pepita sólo puede hacer dos acciones: comer y volar.
- cuando Pepita `come` una comida, su energía se incrementa en tantas calorías como contenga la comida ingerida.
  Inicialmente, la única comida es el alpiste, que otorga 5 calorías al ser ingerido.
- cuando Pepita `vuela` una cantidad de kilómetros, en este caso gasta una caloría por cada kilómetro, más 10 calorías de "costo fijo" de despegue y aterrizaje.

A medida que pepita va volando y comiendo, queremos saber cómo se encuentra, las primeras dos preguntas que pepita sabe contestar son:
- `estaCansada()`, Pepita _está cansada_ si su energía no llega a 50 calorias.
- `estaFeliz()`, Pepita _está feliz_ si su energía está entre 80 y 120 joules.

La energía inicial de pepita son 100 calorías.

# Etapa 2 - Pepita crece

Agregar al modelo de Pepita la capacidad de entender estos mensajes:
- `cuantoQuiereVolar()`, que es el resultado de la siguiente cuenta. <br> 
  - De base, quiere volar (energía / 5) kilómetros, p.ej., si tiene 120 de energía, quiere volar 24 kilómetros. 
  - Sobre esta base, considerar los siguientes agregados:
    - Si la energía está entre 300 y 400 joules, entonces sumar 10  kilómetros.
    - Si la energía es múltiplo de 20, entonces sumar 15 kilómetros. 
  
Por ejemplo, si la energía de Pepita es de 340 joules, entonces quiere volar 68 + 10 + 15 = 93 kilómetros. 
 
Se puede probar este caso sobre un REPL recién lanzado darle de comer 85 a Pepita, así la energía queda en 340.

> **Nota** <br>
> Para saber si un número `n` es múltiplo de 20 hacer: 
> `n % 20 == 0` 
> Probarlo en el REPL, p.ej. poner `35 % 20`, `40 % 20`; probar con otros valores.

# Etapa 3 - Más comidas
Agregar las siguientes cosas que puede comer Pepita

## Manzana
Una manzana otorga 80 calorías.

## Mijo

Si el mijo está mojado da 15 joules, si no da 20. 
Hacer que el mijo entienda los mensajes `mojarse()` y `secarse()`.
P.ej. arrancando un REPL de cero, debería funcionar como se muestra abajo
  
```
>>> pepita.energia()
0
>>> mijo.mojarse()
>>> pepita.comer(mijo)
>>> pepita.energia()
15
>>> mijo.secarse()
>>> pepita.comer(mijo)
>>> pepita.energia()
35
```

**Explicación**: <br> 
la primera vez que Pepita come mijo, es mijo mojado, entonces da 15 joules.
La segunda, el mijo está seco, entonces da 20 joules; mas 15 que tenía, hacen 25.

## Canelones
Los canelones dan 20 joules. Si tienen salsa, sumar 5 joules. Si tienen queso, sumar 7.
Entonces tenemos: sin nada 20 joules, con salsa 25, con queso 27, con salsa y queso 32.

Debe ser posible poner o sacar salsa, y poner o sacar queso, enviándole mensajes al objeto que representa a los canelones. Se puede hacer agregando 4 métodos, uno por cada una de las cuatro opciones posibles.

<br>

## Los deseos de Pepita

Hacer que Pepita entienda el mensaje `haceLoQueQuieras()`. El comportamiento que tiene pepita al recibir ese mensaje depende de su estado de ánimo:
- Si está débil, come alpiste.
- Si está feliz, vuela 8 kms. 
- Si Pepita no está ni débil ni feliz, entonces no hace nada.


