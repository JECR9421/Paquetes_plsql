--Declaración o especificación del paquete
CREATE [OR REPLACE] PACKAGE <pkgName> 
IS
   
  -- Declaraciones de tipos y registros públicas
  {[TYPE <TypeName> IS <Datatype>;]}
  
  -- Declaraciones de variables y constantes publicas
  -- También podemos declarar cursores
  {[<ConstantName> CONSTANT <Datatype> := <valor>;]}  
  {[<VariableName> <Datatype>;]}
  -- Declaraciones de procedimientos y funciones públicas

  {[FUNCTION <FunctionName>(<Parameter> <Datatype>,...) 
    RETURN <Datatype>;]}
  {[PROCEDURE <ProcedureName>(<Parameter> <Datatype>, ...);]}
END <pkgName>;

/* El cuerpo el laimplementación del paquete. El cuerpo del paquete debe implementar lo que se declaró inicialmente en la especificación. 
Es el donde debemos escribir el código de los subprogramas. En el cuerpo de un package podemos declarar nuevos subprogramas y tipos, 
pero estos seran privados para el propio package.  

La sintaxis general para crear el cuerpo de un paquete es muy parecida a la de la especificación, tan solo se añade la palabra clave BODY, 
y se implementa el código de los subprogramas*/

CREATE [OR REPLACE] PACKAGE BODY <pkgName> 
IS
   
  -- Declaraciones de tipos y registros privados
  {[TYPE <TypeName> IS <Datatype>;]}
  
  -- Declaraciones de variables y constantes privadas
  -- También podemos declarar cursores
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

