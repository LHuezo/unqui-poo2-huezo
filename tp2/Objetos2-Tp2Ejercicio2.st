!classDefinition: #EmpresaTest category: #'Objetos2-Tp2Ejercicio1'!
TestCase subclass: #EmpresaTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:49:40'!
test0010_LiquidoElSueldoDeLosEmpleadosDeLaEmpresaConEmpleadoContratado

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoContratado creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:30000*peso numeroDeTramite:5768 ymedio:'transferencia'.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	empresa agregaEmpleado: empleado3.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado1 retenciones ) isEqualTo: 12640*peso .
	Assert that: (empleado1 sueldoNeto ) isEqualTo: 37760*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado2 retenciones ) isEqualTo: 8117*peso .
	Assert that: (empleado2 sueldoNeto ) isEqualTo: 32243*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 30000*peso .
	Assert that: (empleado3 retenciones ) isEqualTo: 50*peso .
	Assert that: (empleado3 sueldoNeto ) isEqualTo: 29950*peso .
	Assert that: ((empresa liquidacionDeSueldos) recibos)size isEqualTo: 3! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 22:08:27'!
test0011_CalculoElTotalDeElSueldoNetoDeLosEmpleadosDeLaEmpresaConEmpleadoContratado

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoContratado creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:30000*peso numeroDeTramite:5768 ymedio:'transferencia'.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	empresa agregaEmpleado: empleado3.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado1 retenciones ) isEqualTo: 12640*peso .
	Assert that: (empleado1 sueldoNeto ) isEqualTo: 37760*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado2 retenciones ) isEqualTo: 8117*peso .
	Assert that: (empleado2 sueldoNeto ) isEqualTo: 32243*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 30000*peso .
	Assert that: (empleado3 retenciones ) isEqualTo: 50*peso .
	Assert that: (empleado3 sueldoNeto ) isEqualTo: 29950*peso .
	Assert that: (empresa montoTotalDeSueldoNeto)  isEqualTo: 99953*peso.! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 8/25/2025 15:01:29'!
test001_CreoEmpresaYVerificoQueNoTengaEmpleados

	|empresa|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	
	Assert isTrue: (empresa empleados isEmpty ).! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 12:24:03'!
test002_CreoEmpresaYVerificoQueTengaEmpleados

	|empresa empleado1 empleado2|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	
	Assert that: (empresa empleados isEmpty ) isEqualTo: false .
	Assert that: (empresa empleados) size isEqualTo:2 ! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 12:32:46'!
test003_CreoEmpresaYVerificoLaEdadDeLosEmpleados

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	
	Assert that: (empleado1 edad ) isEqualTo: 44 .
	Assert that: (empleado2 edad ) isEqualTo: 44 .
	Assert that: (empleado3 edad ) isEqualTo: 75 .! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 15:02:46'!
test004_VerificoElSueldoBrutoDeLosEmpleados

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:35000*peso conFechaDeFin:(September/6/2025) yHorasExtra:6.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 35240*peso .! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 15:35:14'!
test005_VerificoElSalarioFamiliarDeLosEmpleadosPermanentes

	|empresa empleado1 empleado2 |
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:3 yAntiguedad:6.
	
	Assert that: (empleado1 salarioFamiliar ) isEqualTo: 400*peso .
	Assert that: (empleado2 salarioFamiliar ) isEqualTo: 850*peso .! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 16:27:41'!
test006_VerificoElSueldoBrutoDeTodosLosEmpleadosDeLaEmpresa

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:35000*peso conFechaDeFin:(September/6/2025) yHorasExtra:6.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	empresa agregaEmpleado: empleado3.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 35240*peso .
	Assert that: empresa montoTotalDeSueldoBruto isEqualTo: 126000*peso! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 16:53:49'!
test007_VerificoLasRetencionesDeTodosLosEmpleadosDeLaEmpresa

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:35000*peso conFechaDeFin:(September/6/2025) yHorasExtra:6.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	empresa agregaEmpleado: empleado3.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado1 retenciones ) isEqualTo: 12640*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado2 retenciones ) isEqualTo: 8117*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 35240*peso .
	Assert that: (empleado3 retenciones ) isEqualTo: 7103*peso .
	Assert that: empresa montoTotalDeRetenciones isEqualTo: 27860*peso! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 16:59:08'!
test008_VerificoElSueldoNetoDeLosEmpleadosDeLaEmpresa

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:35000*peso conFechaDeFin:(September/6/2025) yHorasExtra:6.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	empresa agregaEmpleado: empleado3.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado1 retenciones ) isEqualTo: 12640*peso .
	Assert that: (empleado1 sueldoNeto ) isEqualTo: 37760*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado2 retenciones ) isEqualTo: 8117*peso .
	Assert that: (empleado2 sueldoNeto ) isEqualTo: 32243*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 35240*peso .
	Assert that: (empleado3 retenciones ) isEqualTo: 7103*peso .
	Assert that: (empleado3 sueldoNeto ) isEqualTo: 28137*peso .
	Assert that: empresa montoTotalDeSueldoNeto isEqualTo: 98140*peso! !

!EmpresaTest methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 17:06:04'!
test009_LiquidoElSueldoDeLosEmpleadosDeLaEmpresa

	|empresa empleado1 empleado2 empleado3|
	
	empresa := Empresa creoEmpresa: 'Umbrella' conCuit: 1234.
	empleado1 := EmpleadoPermanente creoEmpleadoDeNombre:'Albert' conDireccion:'Ezpeleta 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1980month:10day:13) conSueldo:50000*peso cantidadDeHijos:2 yAntiguedad:2 .
	empleado2 := EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Casado' fechaDeNacimiento:(Date year:1980month:9day:20) conSueldo:40000*peso conFechaDeFin:(September/6/2025) yHorasExtra:9.
	empleado3 :=EmpleadoTemporario creoEmpleadoDeNombre:'Chris' conDireccion:'Caba 321 123'conEstadoCivil:'Soltero' fechaDeNacimiento:(Date year:1950month:2day:13)conSueldo:35000*peso conFechaDeFin:(September/6/2025) yHorasExtra:6.
	empresa agregaEmpleado: empleado1.
	empresa agregaEmpleado: empleado2.
	empresa agregaEmpleado: empleado3.
	
	Assert that: (empleado1 sueldoBruto ) isEqualTo: 50400*peso .
	Assert that: (empleado1 retenciones ) isEqualTo: 12640*peso .
	Assert that: (empleado1 sueldoNeto ) isEqualTo: 37760*peso .
	Assert that: (empleado2 sueldoBruto ) isEqualTo: 40360*peso .
	Assert that: (empleado2 retenciones ) isEqualTo: 8117*peso .
	Assert that: (empleado2 sueldoNeto ) isEqualTo: 32243*peso .
	Assert that: (empleado3 sueldoBruto ) isEqualTo: 35240*peso .
	Assert that: (empleado3 retenciones ) isEqualTo: 7103*peso .
	Assert that: (empleado3 sueldoNeto ) isEqualTo: 28137*peso .
	Assert that: ((empresa liquidacionDeSueldos) recibos)size isEqualTo: 3! !


!classDefinition: #Empleado category: #'Objetos2-Tp2Ejercicio1'!
Object subclass: #Empleado
	instanceVariableNames: 'fechaDeNacimiento nombre direccion'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!Empleado methodsFor: 'initialization' stamp: 'lh 9/5/2025 12:32:06'!
edad

	^(((Date today) julianDayNumber) - (fechaDeNacimiento julianDayNumber)) // 365! !


!Empleado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:50:25'!
desgloceDeConceptos

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 19:44:02'!
generaReciboDeHaberesEnLaFecha:fechaDada
	
	^ReciboDeHaberes creoReciboPara:nombre conDireccion: direccion enLaFecha:fechaDada conUnSueldoBruto:(self sueldoBruto) unSueldoNeto:(self sueldoNeto) yConDesgloce:(self desgloceDeConceptos )! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 00:15:44'!
nombre

	^nombre! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:09:35'!
retenciones

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:00:43'!
sueldoBruto

	self subclassResponsibility! !

!Empleado methodsFor: 'as yet unclassified' stamp: 'lh 9/4/2025 21:06:41'!
sueldoNeto

	^ (self sueldoBruto) - (self retenciones)! !


!classDefinition: #EmpleadoContratado category: #'Objetos2-Tp2Ejercicio1'!
Empleado subclass: #EmpleadoContratado
	instanceVariableNames: 'sueldo cantidadDeHijos antiguedad estadoCivil numeroDeTramite medioDePago'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:52:09'!
desgloceDeConceptos

	^ 'un sueldo bruto compuesto solo por su sueldo basico de', (self sueldoBruto )asString , 'y una
	retencion de 50 pesos'! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 20:45:15'!
initializeEmpleadoDeNombre: nombreDado conDireccion: direccionDada conEstadoCivil: estado fechaDeNacimiento: fecha conSueldo: sueldoDado numeroDeTramite: numeroDado ymedio: medioDado
	nombre := nombreDado .
	direccion := direccionDada .
	estadoCivil := estado .
	fechaDeNacimiento := fecha .
	sueldo := sueldoDado .
	numeroDeTramite := numeroDado.
	medioDePago := medioDado! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:10:07'!
retenciones

	^50*peso! !

!EmpleadoContratado methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 21:00:57'!
sueldoBruto

	^ sueldo ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmpleadoContratado class' category: #'Objetos2-Tp2Ejercicio1'!
EmpleadoContratado class
	instanceVariableNames: ''!

!EmpleadoContratado class methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 20:43:44'!
creoEmpleadoDeNombre: aRenameMe1 conDireccion: aRenameMe2 conEstadoCivil: aRenameMe3 fechaDeNacimiento: aRenameMe4 conSueldo: aRenameMe5 numeroDeTramite: numeroDado ymedio: medioDado 
	^self new initializeEmpleadoDeNombre: aRenameMe1 conDireccion: aRenameMe2 conEstadoCivil: aRenameMe3 fechaDeNacimiento: aRenameMe4 conSueldo: aRenameMe5 numeroDeTramite: numeroDado ymedio: medioDado! !


!classDefinition: #EmpleadoPermanente category: #'Objetos2-Tp2Ejercicio1'!
Empleado subclass: #EmpleadoPermanente
	instanceVariableNames: 'sueldo cantidadDeHijos antiguedad estadoCivil'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!EmpleadoPermanente methodsFor: 'initialization' stamp: 'lh 9/5/2025 00:07:44'!
initializeCreoEmpleadoDeNombre: nombreDado conDireccion: direccionDada conEstadoCivil: estado fechaDeNacimiento: fecha conSueldo: sueldoDado cantidadDeHijos: hijos yAntiguedad: anios 
	nombre := nombreDado .
	direccion := direccionDada .
	estadoCivil := estado .
	fechaDeNacimiento := fecha .
	sueldo := sueldoDado .
	cantidadDeHijos := hijos .
	antiguedad := anios .! !


!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 01:27:37'!
desgloceDeConceptos
	|asignacionPorConyuge obraSocial porHijos aporteJubilatorio|
	asignacionPorConyuge := (	estadoCivil = 'casado')ifTrue:[100*peso] ifFalse:[0*peso].
	obraSocial := (self sueldoBruto)* (10/100 * peso).
	porHijos := cantidadDeHijos * (20*peso).	
	aporteJubilatorio := sueldo * (15/100 * peso).
	

	^ 'El Sueldo bruto se compone de :
	     un sueldo basico de', sueldo asString ,
		'mas un salario familiar de:', ((150*peso)*cantidadDeHijos )asString ,
		'una asignacion por conyuge de', asignacionPorConyuge asString ,
		'y' , (antiguedad *50*peso)asString , 'por anios de antiguedad.
		En cuanto a retenciones son :' , obraSocial asString , 'por obra social,'
		, porHijos asString , 'por cantidad de hijos y' , aporteJubilatorio asString , 'por aporte jubilatorio'! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 16:39:52'!
retenciones
	|obraSocial porHijos aporteJubilatorio|
	
	obraSocial := (self sueldoBruto)* (10/100).
	porHijos := cantidadDeHijos * (20*peso).	
	aporteJubilatorio := (self sueldoBruto) * (15/100).
	
	^(obraSocial + porHijos + aporteJubilatorio)
	
	! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 15:21:49'!
salarioFamiliar
	|asignacionPorConyuge|
	asignacionPorConyuge := (	estadoCivil = 'Casado')ifTrue:[100*peso] ifFalse:[0*peso]. 
	^ (cantidadDeHijos * (150*peso)) + asignacionPorConyuge + (antiguedad *50*peso)! !

!EmpleadoPermanente methodsFor: 'as yet unclassified' stamp: 'lh 8/31/2025 20:38:05'!
sueldoBruto
	^ sueldo + (self salarioFamiliar)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmpleadoPermanente class' category: #'Objetos2-Tp2Ejercicio1'!
EmpleadoPermanente class
	instanceVariableNames: ''!

!EmpleadoPermanente class methodsFor: 'instance creation' stamp: 'lh 8/25/2025 15:55:20'!
creoEmpleadoDeNombre: aRenameMe1 conDireccion: aRenameMe2 conEstadoCivil: aRenameMe3 fechaDeNacimiento: aRenameMe4 conSueldo: aRenameMe5 cantidadDeHijos: aRenameMe6 yAntiguedad: aRenameMe7 
	^self new initializeCreoEmpleadoDeNombre: aRenameMe1 conDireccion: aRenameMe2 conEstadoCivil: aRenameMe3 fechaDeNacimiento: aRenameMe4 conSueldo: aRenameMe5 cantidadDeHijos: aRenameMe6 yAntiguedad: aRenameMe7 ! !


!classDefinition: #EmpleadoTemporario category: #'Objetos2-Tp2Ejercicio1'!
Empleado subclass: #EmpleadoTemporario
	instanceVariableNames: 'estadoCivil sueldo fechaFin horasExtras'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!EmpleadoTemporario methodsFor: 'initialization' stamp: 'lh 8/29/2025 00:18:56'!
initializeCreoEmpleadoDeNombre: nombreDado conDireccion: direccionDada conEstadoCivil: estadoDado fechaDeNacimiento: fechaDada conSueldo: sueldoDado conFechaDeFin: fechaFinDada yHorasExtra: horasExtrasDadas 
	nombre := nombreDado.
	direccion := direccionDada.
	estadoCivil := estadoDado.
	fechaDeNacimiento := fechaDada.
	sueldo := sueldoDado.
	fechaFin := fechaFinDada.
	horasExtras := horasExtrasDadas.! !


!EmpleadoTemporario methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 01:50:30'!
desgloceDeConceptos
	|horas obraSocial porAnios aporteJubilatorio| 
	obraSocial := (self sueldoBruto)* (10/100 * peso).
	porAnios := ((self edad) > 50 ) ifTrue: [25*peso]  ifFalse: [0*peso].	
	aporteJubilatorio :=(self sueldoBruto) * (10/100 * peso).
	horas := (horasExtras * (40*peso)).
	^'El sueldo bruto esta compuesto por:
		un sueldo basico de', sueldo asString, 
		'y ', horas asString , 'por horas extras.
		En cuanto a las retenciones, son :', obraSocial asString , 'por obra social,',
		porAnios asString , 'por los anios trabajados ,', 
		aporteJubilatorio asString, 'por aportes jubilatorios y:',
		horas asString , 'por las horas extras trabajadas.'
		
	
	! !

!EmpleadoTemporario methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 16:47:04'!
retenciones
	|obraSocial porAnios aporteJubilatorio|
	
	obraSocial := (self sueldoBruto)* (10/100 ).
	porAnios := ((self edad) > 50 ) ifTrue: [25*peso]  ifFalse: [0*peso].	
	aporteJubilatorio :=(self sueldoBruto) * (10/100).
	
	^obraSocial + porAnios + aporteJubilatorio + (horasExtras * (5*peso))! !

!EmpleadoTemporario methodsFor: 'as yet unclassified' stamp: 'lh 8/31/2025 23:38:17'!
sueldoBruto

	^ sueldo + (horasExtras * (40*peso))! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmpleadoTemporario class' category: #'Objetos2-Tp2Ejercicio1'!
EmpleadoTemporario class
	instanceVariableNames: ''!

!EmpleadoTemporario class methodsFor: 'instance creation' stamp: 'lh 8/28/2025 22:33:21'!
creoEmpleadoDeNombre: nombreDado conDireccion: direccionDada conEstadoCivil: estadoDado fechaDeNacimiento: fechaDada conSueldo: sueldoDado conFechaDeFin: fechaFinDada yHorasExtra: horasExtrasDadas 
	^self new initializeCreoEmpleadoDeNombre: nombreDado conDireccion: direccionDada conEstadoCivil: estadoDado fechaDeNacimiento: fechaDada conSueldo: sueldoDado conFechaDeFin: fechaFinDada yHorasExtra: horasExtrasDadas ! !


!classDefinition: #Empresa category: #'Objetos2-Tp2Ejercicio1'!
Object subclass: #Empresa
	instanceVariableNames: 'renameMe1 renameMe2 nombre cuit empleados recibos'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!Empresa methodsFor: 'initialization' stamp: 'lh 9/4/2025 22:51:15'!
initializeCreoEmpresa:nombreDado conCuit: cuitDado 
	nombre := nombreDado.
	cuit := cuitDado.
	empleados := OrderedCollection new.
	recibos := OrderedCollection new.! !


!Empresa methodsFor: 'accessing' stamp: 'lh 8/29/2025 00:19:58'!
agregaEmpleado: empleado1 
	empleados add: empleado1 ! !

!Empresa methodsFor: 'accessing' stamp: 'lh 8/25/2025 15:04:07'!
empleados
	^empleados! !

!Empresa methodsFor: 'accessing' stamp: 'lh 9/5/2025 19:48:05'!
liquidacionDeSueldos
	empleados do:[:empleado | recibos add:( empleado generaReciboDeHaberesEnLaFecha:Date today )]! !

!Empresa methodsFor: 'accessing' stamp: 'lh 9/4/2025 21:56:04'!
montoTotalDeRetenciones
	^ empleados inject: 0 into:[:count :empleado | count + (empleado retenciones )]! !

!Empresa methodsFor: 'accessing' stamp: 'lh 9/4/2025 21:54:48'!
montoTotalDeSueldoBruto
	^ empleados inject: 0 into:[:count :empleado | count + (empleado sueldoBruto )]! !

!Empresa methodsFor: 'accessing' stamp: 'lh 9/4/2025 21:39:26'!
montoTotalDeSueldoNeto
	^ empleados inject: 0 into:[:count :empleado | count + (empleado sueldoNeto)]! !

!Empresa methodsFor: 'accessing' stamp: 'lh 9/5/2025 17:04:31'!
recibos
	^recibos ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Empresa class' category: #'Objetos2-Tp2Ejercicio1'!
Empresa class
	instanceVariableNames: ''!

!Empresa class methodsFor: 'instance creation' stamp: 'lh 8/25/2025 15:02:20'!
creoEmpresa: aRenameMe1 conCuit: aRenameMe2 
	^self new initializeCreoEmpresa: aRenameMe1 conCuit: aRenameMe2 ! !


!classDefinition: #ReciboDeHaberes category: #'Objetos2-Tp2Ejercicio1'!
Object subclass: #ReciboDeHaberes
	instanceVariableNames: 'nombre direccion fecha sueldoBruto sueldoNeto desgloce'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Objetos2-Tp2Ejercicio1'!

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'lh 9/4/2025 22:57:57'!
initializeReciboPara: empleadodado ! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 19:46:47'!
initializeReciboPara:nombredado conDireccion: direcciondada enLaFecha:fechaDada conUnSueldoBruto:sueldodado unSueldoNeto:netodado yConDesgloce:desglocedado
	nombre := nombredado.
	direccion := direcciondada.
	fecha := fechaDada.
	sueldoBruto := sueldodado.
	sueldoNeto := netodado.
	desgloce := desglocedado .! !

!ReciboDeHaberes methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 00:06:27'!
initializeReciboPara: empleadodado enDireccion: direccionDada
	nombre := empleadodado nombre.
	direccion := direccionDada.
	fecha := Date today.
	sueldoBruto := empleadodado sueldoBruto .
	sueldoNeto := empleadodado sueldoNeto .
	desgloce := empleadodado desgloceDeConceptos! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReciboDeHaberes class' category: #'Objetos2-Tp2Ejercicio1'!
ReciboDeHaberes class
	instanceVariableNames: ''!

!ReciboDeHaberes class methodsFor: 'as yet unclassified' stamp: 'lh 9/4/2025 22:57:41'!
creoReciboPara:empleadodado
	self new initializeReciboPara: empleadodado ! !

!ReciboDeHaberes class methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 19:45:21'!
creoReciboPara:nombredado conDireccion: direcciondada enLaFecha:fechaDada conUnSueldoBruto:sueldodado unSueldoNeto:netodado yConDesgloce:desglocedado

	self new initializeReciboPara:nombredado conDireccion: direcciondada enLaFecha:fechaDada conUnSueldoBruto:sueldodado unSueldoNeto:netodado yConDesgloce:desglocedado! !

!ReciboDeHaberes class methodsFor: 'as yet unclassified' stamp: 'lh 9/5/2025 18:51:10'!
creoReciboPara:empleadodado enDireccion:direccionDada
	self new initializeReciboPara:empleadodado  enDireccion: direccionDada ! !
