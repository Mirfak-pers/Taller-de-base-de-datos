    select 
        s.numrun,s.dvrun,
        s.pnombre,s.snombre,s.appaterno,s.apmaterno,
        s.fecha_inscripcion,
        ts.nombre_tipo_socio,
        count(pis.nro_socio) cod_prod_inv,
        count(cs.nro_socio)   cantidad_credito
    from socio s
    join tipo_socio ts on ts.cod_tipo_socio = s.cod_tipo_socio
    join producto_inversion_socio pis on s.nro_socio = pis.nro_socio
    join credito_socio cs on s.nro_socio = cs.nro_socio
    group by s.numrun,s.dvrun,
        s.pnombre,s.snombre,s.appaterno,s.apmaterno,
        s.fecha_inscripcion,
        ts.nombre_tipo_socio;