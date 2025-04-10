CLASS zcl_cliente_36 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_cliente_36 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
        DATA: lt_cliente TYPE TABLE OF zcliente_36,
              ls_cliente TYPE zcliente_36.

              ls_cliente-id_cliente = '5'.
              ls_cliente-id_conce = '4'.
              ls_cliente-nombre = 'Manolo'.
              ls_cliente-apellido = 'Gomez Vazquez'.
              ls_cliente-email = 'mangom@gmail.com'.
              ls_cliente-fecha_alta = '20240502'.
              ls_cliente-fecha_baja = '20250101'.
              ls_cliente-suscripcion = ''.
              APPEND ls_cliente TO lt_cliente.
              CLEAR ls_cliente.

              APPEND ls_cliente TO lt_cliente.
              CLEAR ls_cliente.

              INSERT zcliente_36 FROM TABLE @lt_cliente.

              IF sy-subrc EQ 0.
                out->write( 'Se han insertado los datos con exito' ).
              ELSE.
                out->write( 'Ha habido un error al insertar los datos' ).
              ENDIF.

    ENDMETHOD.
ENDCLASS.
