CLASS zcl_conce_36 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_conce_36 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_conce TYPE TABLE OF zconce_36,
          ls_conce TYPE zconce_36.
    DELETE FROM zconce_36.
*              ls_conce-client = 100.
    ls_conce-id_conce = '1'.
    ls_conce-nombre = 'NorAuto'.
    ls_conce-localidad = 'Madrid'.
    ls_conce-provincia = 'Madrid'.
    ls_conce-email = 'norauto@gmail.com'.
    ls_conce-cod_postal = '28028'.
    ls_conce-telefono = '680720087'.
    APPEND ls_conce TO lt_conce.
    CLEAR ls_conce.

*              ls_conce-client = 100.
    ls_conce-id_conce = '2'.
    ls_conce-nombre = 'TodoCoches'.
    ls_conce-localidad = 'Sevilla'.
    ls_conce-provincia = 'Sevilla'.
    ls_conce-cod_postal = '24928'.
    ls_conce-email = 'todocoches.sevilla@sociosbetis.com'.
    ls_conce-telefono = '612552980'.
    APPEND ls_conce TO lt_conce.
    CLEAR ls_conce.
*              ls_conce-client = 100.
    ls_conce-id_conce = '3'.
    ls_conce-nombre = 'Concesionarios Garcia'.
    ls_conce-localidad = 'Albacete'.
    ls_conce-provincia = 'Albacete'.
    ls_conce-email = 'concegarcia@info.es'.
    ls_conce-cod_postal = '25567'.
    ls_conce-telefono = '985748663'.
    APPEND ls_conce TO lt_conce.
    CLEAR ls_conce.
    LOOP AT lt_conce INTO ls_conce.
    out->write( ls_conce-id_conce ).
    out->write( '\n' ).
    ENDLOOP.
    INSERT zconce_36 FROM TABLE @lt_conce.

    IF sy-subrc EQ 0.
      out->write( 'Se han insertado los datos correctamente' ).
    ELSE.
      out->write( 'Ha habido un error a la hora de insertar' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
