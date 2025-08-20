set SERVEROUTPUT on;

declare
-- Definir un "Record"
 type tipo_socio is record(
        pnombre socio.pnombre%type,
        appaterno socio.appaterno%type,
        fecha_nacimiento DATE
 );
 
 v_socio tipo_socio;

--variable 
    v_pnombre socio.pnombre%type;
    v_appaterno varchar2(20);
    v_fecha_nacimiento DATE;
    v_edad number;
begin
    select s.pnombre,s.appaterno ,s.fecha_nacimiento
   -- into v_pnombre,v_appaterno,v_fecha_nacimiento
   into v_socio
    from socio s
    where nro_socio = 1;
    --v_edad := (round(months_between(sysdate,v_fecha_nacimiento)/12));
    dbms_output.put_line(v_socio.pnombre||' '|| v_socio.appaterno);
    --DBMS_OUTPUT.PUT_LINE('Primer Nombre: ' ||v_pnombre||v_appaterno);
    --dbms_output.put_line('Edad: '||v_edad);
end;
/

declare
    Cursor c_socio is 
        select  nro_socio, pnombre, appaterno from socio;  
        
     type tipo_socio is record(
        nro_socio socio.nro_socio%type,
        pnombre socio.pnombre%type,
        appaterno socio.appaterno%type
 );
 
 v_socio tipo_socio;
begin

    open c_socio;
    loop
    fetch c_socio into v_socio;
    DBMS_OUTPUT.put_line('Nro socio: '|| v_socio.nro_socio);
    DBMS_OUTPUT.put_line('Nombre: '|| v_socio.pnombre||' '||v_socio.appaterno);
    DBMS_OUTPUT.put_line('');
    exit when c_socio%notfound;
    end loop;
    close c_socio;
end;
/
declare
    Cursor c_socio is 
        select  nro_socio, pnombre, appaterno from socio;  
        
     type tipo_socio is record(
        nro_socio socio.nro_socio%type,
        pnombre socio.pnombre%type,
        appaterno socio.appaterno%type
 );
 
 v_socio tipo_socio;
begin

    open c_socio;
    loop
    fetch c_socio into v_socio;
    DBMS_OUTPUT.put_line('Nro socio: '|| v_socio.nro_socio);
    DBMS_OUTPUT.put_line('Nombre: '|| v_socio.pnombre||' '||v_socio.appaterno);
    DBMS_OUTPUT.put_line('');
    exit when c_socio%notfound;
    end loop;
    close c_socio;
end;
/
declare
    Cursor c_socio is 
        select  nro_socio, pnombre, appaterno from socio;  
        
     type tipo_socio is record(
        nro_socio socio.nro_socio%type,
        pnombre socio.pnombre%type,
        appaterno socio.appaterno%type
 );
 
 v_socio tipo_socio;
begin

    open c_socio;
    loop
    fetch c_socio into v_socio;
    DBMS_OUTPUT.put_line('Nro socio: '|| v_socio.nro_socio);
    DBMS_OUTPUT.put_line('Nombre: '|| v_socio.pnombre||' '||v_socio.appaterno);
    DBMS_OUTPUT.put_line('');
    exit when c_socio%notfound;
    end loop;
    close c_socio;
end;

declare
    Cursor c_socio is 
        select  nro_socio, pnombre, appaterno from socio;  
        
begin
    for reg_socio in c_socio
    loop
        DBMS_OUTPUT.put_line('Nro socio: '|| reg_socio.nro_socio);
    DBMS_OUTPUT.put_line('Nombre: '|| reg_socio.pnombre||' '||reg_socio.appaterno);
    DBMS_OUTPUT.put_line('');
    end loop;
end;
/