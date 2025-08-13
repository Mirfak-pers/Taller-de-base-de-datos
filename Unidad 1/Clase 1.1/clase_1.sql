/*
select 
    s.pnombre||' '||s.appaterno NOMBRE,
    s.fecha_nacimiento FECHA_NACIMIENTO,
    ts.nombre_tipo_socio TIPO_SOCIO
from socio s join tipo_socio ts on ts.cod_tipo_socio = s.cod_tipo_socio;
*/
set SERVEROUTPUT on;

declare
cursor c_socio is 
    select * from socio;
 v_pnombre Varchar2(20);
 v_snombre Varchar2(20);
 v_appaterno Varchar2(20);
 v_apmaterno Varchar2(20);
 v_nombre_completo Varchar2(80);
 v_fecha_nacimiento DATE;
 v_edad number;
Begin
    select pnombre,snombre, appaterno,apmaterno
    into v_pnombre,v_snombre,v_appaterno,v_apmaterno
    from socio
    where nro_socio = 10;
    
    v_nombre_completo := v_pnombre ||' '|| v_snombre||' '||v_apmaterno||' '||v_apmaterno;
    DBMS_output.put_line ('hola');
    DBMS_output.put_line (v_nombre_completo);
    
    select fecha_nacimiento into v_fecha_nacimiento from socio where nro_socio = 10;
    v_edad := trunc(months_between(sysdate,v_fecha_nacimiento)/12);
    DBMS_output.put_line ('Tengo ' || v_edad);
    IF v_edad > 40 then
        DBMS_output.put_line ('Tiene bono');
    --elsif
    else
        DBMS_output.put_line ('No tiene bono');
    end if;
    
    for reg_socio  in c_socio
    LOOP
        DBMS_output.put_line (reg_socio.pnombre);
    end loop;
    
end;
/