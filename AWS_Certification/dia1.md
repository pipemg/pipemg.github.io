# 

## 



### 



### 

1. Trade capital expense for variable expense





##  



## Modelo de microservicios

Aplicaciones monoliticas que se dividen en diferentes componentes para hacer tareas específicas.

Beneficios:
- Mayor agilidad en desarrollo
- Escalamiento Flexible
- Facil desarrollo
- Libertad de tecnologias (Distintos lenguajes, herramientas, etc..)
- Codigos reusables
- Resiliencia (Alta capacidad para afrontar adversidades)


La mejor práctica con microservicios es exponer los microservicios a traves de APIS.

Ver los servidores deben de verse como stateless (Aplicaciones sin estados)
Lo ideal es que no se almacenen las cookies en los componentes con sesiones que se mantienen por cada requerimiento

### AWS lambda
Es un servicio que se activa a traves de eventos. 
Se busca que sean funciones lo más simples posibles y pequeñas y solo se usan los recursos cuando se hace el llamado.

Lo ideal en la nuve es que los microservicios sean serverless

### Evolución de AWS

- Lo primero fueron los servicios (Amazon EC2)
  Unidad de escala: Maquinas virtuales
- Luego entró Amazon ECS
- Lo nuevo es AWS Lambda


### AWS Data centers


- Se encuentran en zonas de disponibilidad
- varias zonas se definen como regiones

Los centros de datos de AWS se conectan mediante una red interna de cables subacuáticos y subterraneos.

### Regiones

¿Como selecciónar la region adecuada?

- Requerimientos legales (Datos de bancos, gobierno, etc..)
- Proximidad de los usuarios (distancia del usuario al cluster)
- Disponibilidad de los serivicios de interés (no todos los servicios estan en todas las regiones)
- Costo varia por región. 





















































































