# ***My Little Pets Shop*****: gestión de tienda de animales, adopciones y hotel para mascotas**

**Miembros del grupo L5-03** 

> 1. Martín Arcos, María Dolores  
> 2. Muñoz Domínguez, Cayetana  
> 3. López Requena, Mar  
> 4. Gómez Rodríguez, Begoña

> 

## **1\. Introducción al problema**

**My Little pets shop** es un negocio local de una ciudad mediana que reúne tres actividades en un mismo espacio:

> 1. **Tienda:** venta de alimentación, accesorios, juguetes, higiene y productos de salud para animales de compañía.  
> 2. **Refugio y adopciones:** acoge animales procedentes de rescate o abandono y gestiona su adopción responsable.  
> 3. **Hotel para mascotas:** alojamiento temporal de perros, gatos y pequeños animales mientras sus dueños están ausentes por cualquier circunstancia (viajes, trabajo…).

### **Clientes y usuarios**

> * **Clientes:** personas con mascotas que compran productos o reservan el hotel.  
> * **Adoptantes:** personas que quieren incorporar un animal a su hogar.  
> * **Personal:** dependientes de tienda, cuidadores (hotel y refugio), veterinarios colaboradores, equipo de limpieza y personal responsable del negocio.

### 

### **Situación actual**

Actualmente la gestión se realiza con hojas de cálculo sueltas, una agenda en papel para las reservas del hotel y carpetas con las fichas de los animales. No existe un registro único de clientes: los datos de quien compra, quien reserva y quien adopta se anotan por separado.

### 

### **Problemas detectados**

> * **Reservas:** se producen solapamientos y sobreocupación porque la agenda no avisa de habitaciones ya ocupadas.  
> * **Sanidad:** se han alojado animales con vacunas caducadas, o sin ellas, y no hay aviso previo de las próximas caducidades.  
> * **Adopciones:** las fichas se pierden o quedan incompletas, y una vez entregado el animal no se hace seguimiento sistemático de su bienestar.  
> * **Tienda:** el stock se cuenta a mano, con roturas de stock frecuentes y sin histórico de ventas.  
> * **Precios:** las tarifas del hotel y los precios cambian y no queda constancia de lo cobrado en cada momento.  
> * 

### **Expectativas**

Un sistema de información que centralice clientes, animales, productos, ventas, adopciones y reservas, que haga cumplir automáticamente las normas del negocio (vacunas, capacidad, edad del adoptante, stock…) y que permita consultar de forma rápida la información necesaria para el trabajo diario.

### **Procesos principales**

flowchart LR  
    A\[Cliente\] \--\> B \[Compra de productos\]  
    A \--\> C \[Reserva de hotel\]  
    A \--\> D \[Solicitud de adopción\]  
    C \--\> E \[Check-in\] \--\> F \[Estancia y servicios\] \--\> G \[Check-out y pago\]  
    D \--\> H \[Entrevista y aprobación\] \--\> I \[Formalización\] \--\> J \[Seguimientos\]

### 

### 

## 

## 

## 

## **2\. Glosario de términos**

| Término | Definición |
| :---: | :---: |
|  **Adopción** | Proceso por el que un animal del refugio pasa a ser propiedad de una persona, tras una solicitud aprobada y un contrato firmado. |
| **Adoptante** | Cliente mayor de edad que solicita o completa la adopción de un animal. |
|  **Animal del refugio** | Animal propiedad de My Little pets shop, procedente de rescate o abandono, que está en el centro para ser adoptado. |
|  **Categoría de producto** | Agrupación de productos de la tienda (alimentación, accesorios, higiene, juguetes, salud). |
| **Cancelación** | Anulación de una reserva por parte del cliente antes de la entrada. |
| **Cartilla de vacunación** | Registro de las vacunas que se han administrado a un animal. |
| **Check-in** | Momento en que la mascota llega al hotel y se inicia la estancia. |
| **Check-out** | Momento en que el cliente recoge a su mascota y finaliza la estancia. |
| **Chip (microchip)** | Dispositivo de identificación implantado al animal, con un número único. |
| **Cliente** | Persona registrada en el sistema que compra, reserva o adopta. |
| **Contrato de adopción** | Documento firmado en el que el adoptante acepta las condiciones de cuidado del animal. |
| **Cuidador** | Empleado del hotel encargado de atender a las mascotas alojadas. |
| **Desparasitación** | Tratamiento veterinario contra parásitos internos y externos. |
| **Entrevista de adopción** | Reunión previa en la que el personal valora si el solicitante es adecuado para el animal. |
| **Especie** | Tipo de animal: perro, gato, conejo, ave, roedor, etc. |
| **Esterilización** | Intervención veterinaria que impide la reproducción del animal. |
| **Estancia** | Periodo real en el que una mascota  permanece en el hotel. |
| **Habitación** | Espacio del hotel asignable a una mascota, de un tipo determinado. |
| **Hotel** | Servicio de alojamiento temporal de mascotas de clientes. |
| **Incidencia**  | Suceso relevante ocurrido durante una estancia (enfermedad, pelea, fuga, etc.). |
| **Línea de venta** | Cada producto, con su cantidad y precio, dentro de una venta. |
| **Mascota de cliente** | Animal que pertenece a un cliente y que puede alojarse en el hotel. |
| **Noche** | Unidad de cobro del hotel; se cuenta una por cada día entre la entrada y la salida. |
| **Producto** | Artículo a la venta en la tienda, con precio y stock. |
| **Refugio** | Zona de My Little pets shop donde viven los animales en adopción. |
|  **Reserva** | Petición confirmada de una habitación para una mascota entre una fecha de entrada y una de salida. |
| **Revisión veterinaria** | Examen de un animal por el veterinario, con su resultado y observaciones. |
| **Seguimiento** | Contacto posterior a una adopción para comprobar el bienestar del animal. |
| **Servicio adicional** | Prestación opcional durante la estancia: paseo, baño, medicación, cepillado, etc. |
| **Solicitud de adopción** | Petición de un cliente para adoptar un animal concreto, que debe ser aprobada. |
| **Stock** | Número de unidades disponibles de un producto. |
| **Tarifa** | Precio por noche de un tipo de habitación. |
| **Tipo de habitación** | Clasificación de las habitaciones según la especie y tamaño del animal que admiten. |
| **Vacuna obligatoria** | Vacuna exigida para alojar a un animal en el hotel, según su especie. |
| **Venta** | Operación en la que un cliente adquiere uno o varios productos y paga por ellos. |

## 

## 

## 

## 

## **3\. Visión general del sistema**

### **3.1. Requisitos generales**

> * **RG-01.** El sistema gestionará el catálogo de productos y su stock.  
> * **RG-02.** El sistema registrará las ventas de la tienda y conservará su histórico.  
> * **RG-03.** El sistema gestionará los animales del refugio, su información sanitaria y todo el proceso de adopción hasta el seguimiento posterior.  
> * **RG-04.** El sistema gestionará las mascotas de los clientes, las habitaciones del hotel, las tarifas, las reservas y las estancias.  
> * **RG-05.** El sistema mantendrá un registro único de clientes y de personal.  
> * **RG-06.** El sistema impedirá operaciones que incumplan las normas del negocio: sobreocupación, vacunas caducadas, stock negativo, adopciones no permitidas, etc.  
> * **RG-07.** El sistema permitirá consultas rápidas para el trabajo diario (disponibilidad, entradas y salidas del día, stock bajo, seguimientos pendientes).  
> * **RG-08.** El sistema funcionará sobre un servidor de bases de datos MariaDB.

### 

### **3.2. Usuarios del sistema**

| Usuario | Descripción | Qué hace en el sistema |
| :---: | :---: | :---: |
|  **Cliente** |  Persona registrada con mascotas propias. | Consulta productos, disponibilidad y tarifas del hotel; ve sus mascotas y reservas. |
|  **Adoptante** |  Cliente que desea adoptar. | Consulta animales del refugio y sus fichas; sigue el estado de sus solicitudes. |
| **Dependiente** | Empleado de la tienda. | Consulta catálogo y stock; revisa ventas. |
|  **Cuidador** |  Empleado del hotel. | Consulta entradas, salidas, ocupación, servicios e incidencias. |
| **Veterinario** | Profesional sanitario colaborador. | Consulta y revisa historiales sanitarios y vacunas. |
|  **Responsable (administrador)** |  Gestiona el negocio. | Consulta solicitudes de adopción, seguimientos, ocupación y ventas globales. |

## 

## 

## 

## **4\. Catálogo de requisitos**

### **4.1. Requisitos funcionales**

#### **Tienda**

##### **R.F.01. Listar el catálogo de productos**

> * **Como:** cliente  
> * **Quiero:** ver el catálogo de productos filtrando por categoría  
> * **Para:** encontrar lo que necesito para mi mascota  
> * **Prueba de aceptación:**  
  * Se muestran nombre, categoría, precio y disponibilidad de cada producto.  
  * Al filtrar por una categoría solo aparecen productos de esa categoría.  
  * Los productos descatalogados no aparecen en el listado.

##### **R.F.02. Consultar el detalle de un producto**

> * **Como:** cliente  
> * **Quiero:** consultar la descripción completa de un producto  
> * **Para:** decidir si es adecuado para mi mascota  
> * **Prueba de aceptación:**  
  * Se muestran descripción, especie recomendada, precio y stock.  
  * Si el producto no existe, se muestra un mensaje de error.

##### **R.F.03. Listar productos con bajo stock**

> * **Como:** dependiente  
> * **Quiero:** ver los productos por debajo de un umbral de stock  
> * **Para:** reponerlos a tiempo  
> * **Prueba de aceptación:**  
  * Se listan los productos cuyo stock es inferior al umbral indicado.  
  * Los productos sin stock aparecen en primer lugar.  
  * Se tiene en cuenta la regla **R.N.05**.

##### **R.F.04. Consultar el historial de ventas de un cliente**

> * **Como:** cliente  
> * **Quiero:** ver mis compras anteriores  
> * **Para:** repetir pedidos y llevar un control de mis gastos  
> * **Prueba de aceptación:**  
  * Se muestran fecha, productos, cantidades y total de cada venta.  
  * Las ventas aparecen ordenadas de la más reciente a la más antigua.  
  * Un cliente nunca ve las ventas de otro cliente.

##### **R.F.05. Listar las ventas de un periodo**

> * **Como:** responsable  
> * **Quiero:** ver las ventas realizadas entre dos fechas  
> * **Para:** analizar la facturación del negocio  
> * **Prueba de aceptación:**  
  * Se muestran solo las ventas dentro del rango, ambos extremos incluidos.  
  * Se muestra el total facturado del periodo.  
  * Si la fecha final es anterior a la inicial, se rechaza la consulta.  
  * Se tiene en cuenta la regla **R.N.11**.

#### **Adopciones**

##### **R.F.06. Listar los animales en adopción**

> * **Como:** adoptante  
> * **Quiero:** ver los animales disponibles filtrando por especie, edad o tamaño  
> * **Para:** elegir con cuál contactar  
> * **Prueba de aceptación:**  
  * Solo se muestran animales en estado "disponible".  
  * Cada animal muestra nombre, especie, raza, edad aproximada y foto.  
  * Los animales con adopción en trámite o ya adoptados no aparecen.  
  * Se aplica la regla **R.N.01**.

##### **R.F.07. Consultar la ficha de un animal del refugio**

> * **Como:** adoptante  
> * **Quiero:** consultar la ficha completa de un animal  
> * **Para:** conocer su salud y carácter antes de solicitarlo  
> * **Prueba de aceptación:**  
  * La ficha muestra datos básicos, esterilización, desparasitación, número de chip, carácter y observaciones.  
  * Se muestra la fecha de la última revisión veterinaria.

##### **R.F.08. Consultar el historial sanitario de un animal**

> * **Como:** veterinario  
> * **Quiero:** ver las vacunas y revisiones de un animal  
> * **Para:** valorar su estado de salud  
> * **Prueba de aceptación:**  
  * Se listan las vacunas con fecha de administración y de caducidad.  
  * Se listan las revisiones con fecha, resultado y observaciones, de la más reciente a la más antigua.  
  * Funciona tanto para animales del refugio como para mascotas de clientes.

##### **R.F.09. Listar las solicitudes de adopción por estado**

> * **Como:** responsable  
> * **Quiero:** ver las solicitudes de adopción filtradas por estado  
> * **Para:** gestionar las pendientes  
> * **Prueba de aceptación:**  
  * Se pueden filtrar los estados "pendiente", "aprobada", "rechazada" y "formalizada".  
  * Cada solicitud muestra solicitante, animal y fecha.  
  * Se tiene en cuenta la regla **R.N.09**.

##### **R.F.10. Consultar los seguimientos de adopción pendientes**

> * **Como:** responsable  
> * **Quiero:** ver los seguimientos que toca realizar  
> * **Para:** comprobar el bienestar de los animales adoptados  
> * **Prueba de aceptación:**  
  * Se listan los seguimientos programados cuya fecha ya ha llegado y que no se han realizado.  
  * Cada seguimiento muestra adoptante, animal, teléfono de contacto y fecha prevista.  
  * Se tiene en cuenta la regla **R.N.12**.

#### **Hotel**

##### **R.F.11. Consultar la disponibilidad del hotel**

> * **Como:** cliente  
> * **Quiero:** ver las habitaciones libres entre dos fechas para mi mascota  
> * **Para:** saber si puedo reservar  
> * **Prueba de aceptación:**  
  * Solo se listan habitaciones de un tipo compatible con la mascota indicada.  
  * No aparecen habitaciones con alguna reserva solapada en el rango.  
  * La fecha de salida debe ser posterior a la de entrada.  
  * Se aplican las reglas **R.N.03**, **R.N.06** y **R.N.14**.

##### **R.F.12. Consultar las tarifas del hotel**

> * **Como:** cliente  
> * **Quiero:** ver el precio por noche de cada tipo de habitación y de los servicios adicionales  
> * **Para:** calcular el coste de la estancia  
> * **Prueba de aceptación:**  
  * Se muestra la tarifa vigente por noche de cada tipo de habitación.  
  * Se muestra el precio de cada servicio adicional.

##### **R.F.13. Listar las reservas de un cliente**

> * **Como:** cliente  
> * **Quiero:** ver mis reservas pasadas y futuras  
> * **Para:** llevar control de las estancias de mis mascotas  
> * **Prueba de aceptación:**  
  * Se muestran mascota, habitación, fechas, estado y precio total.  
  * Las reservas aparecen ordenadas por fecha de entrada.  
  * Un cliente nunca ve las reservas de otro cliente.

##### **R.F.14. Listar las entradas y salidas del día**

> * **Como:** cuidador  
> * **Quiero:** ver las mascotas que entran y salen hoy  
> * **Para:** preparar las habitaciones y atender a los clientes  
> * **Prueba de aceptación:**  
  * Se muestran las reservas con fecha de entrada igual a hoy y las de fecha de salida igual a hoy, por separado.  
  * Las reservas canceladas no aparecen.  
  * Cada entrada muestra mascota, habitación y observaciones del cliente (alimentación, medicación).

##### **R.F.15. Consultar la ocupación del hotel**

> * **Como:** responsable  
> * **Quiero:** ver el porcentaje de ocupación del hotel por día en un rango de fechas  
> * **Para:** planificar el personal y las tarifas  
> * **Prueba de aceptación:**  
  * Para cada día se muestran habitaciones ocupadas, libres y el porcentaje.  
  * Las reservas canceladas no se cuentan como ocupación.

##### **R.F.16. Consultar los servicios adicionales de una estancia**

> * **Como:** cuidador  
> * **Quiero:** ver los servicios contratados para una estancia  
> * **Para:** realizarlos y que se facturen correctamente  
> * **Prueba de aceptación:**  
  * Se listan los servicios con fecha, cantidad y precio.  
  * Se muestra el coste total de los servicios de la estancia.

##### **R.F.17. Listar las incidencias de una estancia**

> * **Como:** cliente  
> * **Quiero:** ver las incidencias ocurridas durante la estancia de mi mascota  
> * **Para:** estar informado de lo que ha sucedido  
> * **Prueba de aceptación:**  
  * Se listan fecha, descripción y si requirió atención veterinaria.  
  * Un cliente solo ve incidencias de sus propias mascotas.

#### **Clientes y mascotas**

##### **R.F.18. Listar las mascotas de un cliente**

> * **Como:** cliente  
> * **Quiero:** ver las mascotas que tengo registradas  
> * **Para:** elegir cuál reservar en el hotel  
> * **Prueba de aceptación:**  
  * Se muestran nombre, especie, raza y estado vacunal de cada mascota.  
  * No aparecen mascotas de otros clientes.  
  * Se tiene en cuenta la regla **R.N.13**.

##### **R.F.19. Listar las vacunas próximas a caducar**

> * **Como:** veterinario  
> * **Quiero:** ver las vacunas que caducan en los próximos 30 días  
> * **Para:** avisar a los clientes antes de su reserva  
> * **Prueba de aceptación:**  
  * Se listan animal, vacuna, fecha de caducidad y cliente propietario.  
  * Se incluyen solo mascotas con reservas futuras o animales del refugio.  
  * Se ordena por fecha de caducidad ascendente.  
  * Se tiene en cuenta la regla **R.N.02**.

### **4.1.1. Requisitos de información**

##### **R.I.01. Información de clientes**

> * **Como:** dependiente  
> * **Quiero:** almacenar los datos de cada cliente  
> * **Para:** gestionar sus compras, reservas y adopciones  
> * **Prueba de aceptación:**  
  * Se guarda nombre, apellidos, DNI, fecha de nacimiento, teléfono, correo electrónico y dirección.  
  * El DNI y el correo electrónico no pueden repetirse.  
  * La fecha de nacimiento es obligatoria (necesaria para **R.N.04**).

##### **R.I.02. Información del personal**

> * **Como:** responsable  
> * **Quiero:** almacenar los datos de los empleados y su rol  
> * **Para:** saber quién realiza cada gestión  
> * **Prueba de aceptación:**  
  * Se guarda nombre, apellidos, DNI, teléfono, correo y rol (dependiente, cuidador, veterinario, responsable).  
  * Cada empleado tiene exactamente un rol.

##### **R.I.03. Información de animales**

> * **Como:** cuidador  
> * **Quiero:** almacenar los datos de cada animal  
> * **Para:** gestionar su adopción o su estancia  
> * **Prueba de aceptación:**  
  * Se guarda nombre, especie, raza, sexo, fecha de nacimiento (o aproximada), tamaño, color, número de chip y fotografía.  
  * El número de chip es único cuando existe.  
  * Cada animal es del refugio o de un cliente, nunca de ambos (**R.N.07**).  
  * De los animales del refugio se guarda además fecha de ingreso, carácter y estado (disponible, en trámite, adoptado).

##### **R.I.04. Información sanitaria**

> * **Como:** veterinario  
> * **Quiero:** registrar vacunas y revisiones de cada animal  
> * **Para:** mantener su historial sanitario  
> * **Prueba de aceptación:**  
  * Cada vacuna guarda tipo de vacuna, fecha de administración y fecha de caducidad posterior a la administración.  
  * Cada revisión guarda fecha, veterinario, resultado (favorable o no favorable) y observaciones.  
  * Se registra si el animal está esterilizado y desparasitado.

##### **R.I.05. Información de productos**

> * **Como:** dependiente  
> * **Quiero:** almacenar los datos de los productos y sus categorías  
> * **Para:** gestionar el catálogo  
> * **Prueba de aceptación:**  
  * Se guarda nombre, descripción, categoría, precio, stock, especie recomendada y si está descatalogado.  
  * El precio es positivo y el stock no es negativo.

##### **R.I.06. Información de ventas**

> * **Como:** dependiente  
> * **Quiero:** almacenar cada venta con sus líneas  
> * **Para:** conservar el histórico de compras  
> * **Prueba de aceptación:**  
  * Una venta guarda cliente, empleado, fecha, método de pago (efectivo o tarjeta) y total.  
  * Cada línea guarda producto, cantidad y precio unitario aplicado.  
  * Una venta tiene al menos una línea.

##### **R.I.07. Información de solicitudes de adopción y adopciones**

> * **Como:** responsable  
> * **Quiero:** almacenar solicitudes y adopciones formalizadas  
> * **Para:** controlar el proceso de adopción  
> * **Prueba de aceptación:**  
  * Una solicitud guarda cliente, animal, fecha, estado, resultado de la entrevista y observaciones.  
  * Una adopción formalizada guarda solicitud asociada, fecha, tasa de adopción abonada y contrato.

##### **R.I.08. Información de seguimientos**

> * **Como:** responsable  
> * **Quiero:** registrar los seguimientos de cada adopción  
> * **Para:** comprobar el bienestar de los animales adoptados  
> * **Prueba de aceptación:**  
  * Cada seguimiento guarda adopción, fecha prevista, fecha de realización (si se hizo), resultado y observaciones.

##### **R.I.09. Información de habitaciones y tarifas**

> * **Como:** responsable  
> * **Quiero:** almacenar las habitaciones, sus tipos y tarifas  
> * **Para:** ofrecer el hotel con precios actualizados  
> * **Prueba de aceptación:**  
  * Cada habitación guarda número y tipo.  
  * Cada tipo guarda nombre, especies admitidas, tamaño máximo y tarifa por noche.  
  * El número de habitación no puede repetirse.

##### **R.I.10. Información de reservas y estancias**

> * **Como:** cuidador  
> * **Quiero:** almacenar cada reserva y su estancia real  
> * **Para:** controlar la ocupación y la facturación  
> * **Prueba de aceptación:**  
  * Una reserva guarda cliente, mascota, habitación, fechas de entrada y salida, estado (confirmada, cancelada, en curso, finalizada), observaciones y precio total.  
  * Se guardan las fechas y horas reales de check-in y check-out cuando se producen.

##### **R.I.11. Información de servicios adicionales**

> * **Como:** cuidador  
> * **Quiero:** registrar los servicios adicionales de una estancia  
> * **Para:** facturarlos  
> * **Prueba de aceptación:**  
  * Un servicio guarda nombre y precio.  
  * Cada servicio contratado guarda reserva, servicio, fecha, cantidad y precio aplicado.

##### **R.I.12. Información de incidencias**

> * **Como:** cuidador  
> * **Quiero:** registrar las incidencias de una estancia  
> * **Para:** dejar constancia de lo ocurrido  
> * **Prueba de aceptación:**  
  * Cada incidencia guarda reserva, fecha y hora, descripción, empleado que la registra y si requirió atención veterinaria.

### 

### 

### **4.1.2. Reglas de negocio**

##### **R.N.01. Una adopción por animal**

Un animal del refugio solo puede ser adoptado una vez. Cuando se formaliza la adopción, su estado pasa a "adoptado" y deja de estar disponible.

> * **Prueba de aceptación:**  
  * Intentar formalizar una segunda adopción del mismo animal es rechazado.  
  * Tras formalizar la adopción, el animal no aparece en el listado de **R.F.06**.

##### **R.N.02. Vacunas obligatorias para el hotel**

Una mascota solo puede reservar el hotel si tiene todas las vacunas obligatorias de su especie en vigor durante toda la estancia (hasta la fecha de salida).

> * **Prueba de aceptación:**  
  * Se rechaza la reserva si alguna vacuna obligatoria caduca antes de la fecha de salida.  
  * Se rechaza la reserva si falta alguna vacuna obligatoria.  
  * Se acepta la reserva si todas las vacunas obligatorias están vigentes hasta la salida.

##### **R.N.03. Sin solapamiento de reservas**

Una habitación no puede tener dos reservas activas con fechas solapadas. El día de salida de una reserva puede ser el día de entrada de otra.

> * **Prueba de aceptación:**  
  * Reservar una habitación con alguna noche ya ocupada es rechazado.  
  * Reservar una habitación con entrada el mismo día que sale otra mascota es aceptado.  
  * Las reservas canceladas no cuentan para el solapamiento.

##### **R.N.04. Adoptante mayor de edad**

Solo pueden presentar una solicitud de adopción los clientes con 18 años o más.

> * **Prueba de aceptación:**  
  * Una solicitud de un cliente de 17 años y 364 días es rechazada.  
  * Una solicitud de un cliente que cumple 18 años ese mismo día es aceptada.

##### **R.N.05. Stock no negativo**

El stock de un producto nunca puede ser negativo. Una venta no puede incluir más unidades de las que hay en stock, y al venderse se descuenta del stock.

> * **Prueba de aceptación:**  
  * Vender más unidades que el stock disponible es rechazado.  
  * Tras una venta de 3 unidades, el stock del producto disminuye en 3\.  
  * Intentar guardar un stock negativo es rechazado.

##### 

##### **R.N.06. Habitación adecuada a la mascota**

El tipo de habitación debe admitir la especie y el tamaño de la mascota.

> * **Prueba de aceptación:**  
  * No se puede reservar una habitación felina para un perro.  
  * No se puede reservar una habitación para perros pequeños con un perro de tamaño grande.  
  * Una reserva con tipo de habitación compatible es aceptada.

##### **R.N.07. Un animal es del refugio o de un cliente**

Un animal pertenece al refugio o a un cliente, nunca a ambos a la vez. Al formalizarse una adopción, pasa a ser mascota del adoptante y deja de pertenecer al refugio.

> * **Prueba de aceptación:**  
  * No se puede asignar un propietario cliente a un animal que está en el refugio.  
  * Tras formalizar una adopción, el animal aparece entre las mascotas del adoptante (**R.F.18**).

##### **R.N.08. Revisión veterinaria favorable para adoptar**

Un animal solo puede entregarse en adopción si está desparasitado y tiene una revisión veterinaria favorable de los últimos 30 días.

> * **Prueba de aceptación:**  
  * Se rechaza formalizar la adopción si la última revisión tiene más de 30 días.  
  * Se rechaza si la última revisión no es favorable.  
  * Se rechaza si el animal no está desparasitado.

##### **R.N.09. Límite de solicitudes pendientes**

Un cliente no puede tener más de 2 solicitudes de adopción pendientes a la vez.

> * **Prueba de aceptación:**  
  * La tercera solicitud pendiente de un cliente es rechazada.  
  * Si una solicitud se resuelve (aprobada o rechazada), el cliente puede presentar otra.

##### **R.N.10. Cancelación de reservas**

La cancelación de una reserva es gratuita si se realiza al menos 48 horas antes de la entrada. Si se realiza con menos antelación, se cobra la primera noche.

> * **Prueba de aceptación:**  
  * Cancelar con 72 horas de antelación deja el importe a cobrar en 0 €.  
  * Cancelar con 24 horas de antelación deja el importe a cobrar igual al de una noche.  
  * Una reserva ya iniciada (en curso) no puede cancelarse.

##### **R.N.11. Precios congelados**

El precio unitario de una línea de venta y la tarifa de una reserva se guardan con el valor vigente en el momento de la operación. Un cambio posterior de precios no modifica operaciones pasadas.

> * **Prueba de aceptación:**  
  * Tras subir el precio de un producto, las ventas anteriores conservan su precio unitario.  
  * Tras cambiar una tarifa, las reservas ya creadas conservan su precio.

##### **R.N.12. Seguimientos de adopción**

Al formalizarse una adopción se programan dos seguimientos: uno a los 30 días y otro a los 90 días de la fecha de adopción.

> * **Prueba de aceptación:**  
  * Al formalizar una adopción el 1 de marzo, existen seguimientos previstos el 31 de marzo y el 30 de mayo.  
  * Una adopción formalizada tiene exactamente dos seguimientos programados.

##### **R.N.13. Reservas solo de mascotas propias**

Un cliente solo puede reservar el hotel para mascotas que le pertenecen.

> * **Prueba de aceptación:**  
  * Reservar con una mascota de otro cliente es rechazado.  
  * Reservar con una mascota propia es aceptado.

##### **R.N.14. Duración y fechas de la estancia**

La fecha de salida debe ser posterior a la de entrada. La estancia mínima es de 1 noche y la máxima de 30 noches. La fecha de entrada no puede ser anterior a hoy.

> * **Prueba de aceptación:**  
  * Una reserva con salida igual o anterior a la entrada es rechazada.  
  * Una reserva de 31 noches es rechazada.  
  * Una reserva de 30 noches es aceptada.  
  * Una reserva con entrada en una fecha pasada es rechazada.

##### **R.N.15. Precio total de la reserva**

El precio total de una reserva es el número de noches multiplicado por la tarifa de su tipo de habitación, más el importe de los servicios adicionales contratados.

> * **Prueba de aceptación:**  
  * Una reserva de 4 noches a 20 € con un servicio de 15 € tiene un total de 95 €.  
  * Al añadir un servicio a la estancia, el total se incrementa en su importe.

##### **R.N.16. Número total de habitaciones disponibles**

El hotel cuenta con un número limitado de habitaciones, además una habitación solo puede alojar a una única mascota. Únicamente se permitirá el alojamiento conjunto de varias mascotas en la misma habitación si pertenecen al mismo cliente. 

> * **Prueba de aceptación:**  
  * Reservar una habitación en una fecha específica cuando están todas ocupadas es rechazado por falta de disponibilidad.


  * Intentar asignar una mascota a una habitación que ya se encuentra ocupada por la mascota de otro cliente es rechazado 

#####  

### 

### **4.2. Mapa de historias de usuario**

| Usuario | Tienda | Adopciones | Hotel |
| :---: | :---: | :---: | :---: |
| **Cliente** | R.F.01, R.F.02, R.F.04 | — | R.F.11, R.F.12, R.F.13, R.F.17, R.F.18 |
| **Adoptante** | — | R.F.06, R.F.07 | — |
| **Dependiente** | R.F.03 | — | — |
| **Cuidador** | — | — | R.F.14, R.F.16 |
| **Veterinario** | — | R.F.08 | R.F.19 |
| **Responsable** | R.F.05 | R.F.09, R.F.10 | R.F.15 |

### 

### **4.3. Requisitos no funcionales**

##### **R.N.F.01. Compatibilidad con MariaDB**

> * **Como:** responsable  
> * **Quiero:** que el sistema funcione sobre un servidor MariaDB  
> * **Para:** utilizar la tecnología exigida y disponible en el negocio

##### **R.N.F.02. Protección de datos personales**

> * **Como:** cliente  
> * **Quiero:** que mis datos personales y los de mi mascota se almacenen de forma segura y solo los vean las personas autorizadas  
> * **Para:** que se cumpla la normativa de protección de datos (RGPD)

##### **R.N.F.03. Rendimiento de consultas**

> * **Como:** cuidador  
> * **Quiero:** que las consultas de disponibilidad y de entradas y salidas se resuelvan en menos de 2 segundos  
> * **Para:** atender a los clientes sin esperas

##### **R.N.F.04. Integridad de los datos**

> * **Como:** responsable  
> * **Quiero:** que el sistema no admita datos incoherentes (fechas inválidas, precios negativos, duplicados)  
> * **Para:** confiar en la información almacenada

##### **R.N.F.05. Facilidad de uso**

> * **Como:** dependiente  
> * **Quiero:** poder realizar las consultas habituales sin formación técnica  
> * **Para:** incorporar el sistema al trabajo diario sin dificultad

