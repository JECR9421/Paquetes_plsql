--Declaraci�n o especificaci�n del paquete
CREATE [OR REPLACE] PACKAGE <pkgName> 
IS
   
  -- Declaraciones de tipos y registros p�blicas
  {[TYPE <TypeName> IS <Datatype>;]}
  
  -- Declaraciones de variables y constantes publicas
  -- Tambi�n podemos declarar cursores
  {[<ConstantName> CONSTANT <Datatype> := <valor>;]}  
  {[<VariableName> <Datatype>;]}
  -- Declaraciones de procedimientos y funciones p�blicas

  {[FUNCTION <FunctionName>(<Parameter> <Datatype>,...) 
    RETURN <Datatype>;]}
  {[PROCEDURE <ProcedureName>(<Parameter> <Datatype>, ...);]}
END <pkgName>;

/* El cuerpo el laimplementaci�n del paquete. El cuerpo del paquete debe implementar lo que se declar� inicialmente en la especificaci�n. 
Es el donde debemos escribir el c�digo de los subprogramas. En el cuerpo de un package podemos declarar nuevos subprogramas y tipos, 
pero estos seran privados para el propio package.  

La sintaxis general para crear el cuerpo de un paquete es muy parecida a la de la especificaci�n, tan solo se a�ade la palabra clave BODY, 
y se implementa el c�digo de los subprogramas*/

CREATE [OR REPLACE] PACKAGE BODY <pkgName> 
IS
   
  -- Declaraciones de tipos y registros privados
  {[TYPE <TypeName> IS <Datatype>;]}
  
  -- Declaraciones de variables y constantes privadas
  -- Tambi�n podemos declarar cursores
  {[<ConstantName> CONSTANT <Datatype> := <valor>;]}  
  {[<VariableName> <Datatype>;]}
  -- Implementacion de procedimientos y funciones 
  FUNCTION <FunctionName>(<Parameter> <Datatype>,...) 
  RETURN <Datatype> 
  IS
    -- Variables locales de la funcion
  BEGIN
    -- Implementeacion de la funcion
    return(<Result>);
  [EXCEPTION]
    -- Control de excepciones
  END;
  
  PROCEDURE <ProcedureName>(<Parameter> <Datatype>, ...)
  IS 
   -- Variables locales de la funcion
  BEGIN
    -- Implementacion de procedimiento
  [EXCEPTION]
    -- Control de excepciones
  END;
END <pkgName>;

