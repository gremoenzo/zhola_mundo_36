
CLASS zcl_coche_36 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_coche_36 IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
    DATA: lt_coche TYPE TABLE OF zcoche_36,
          ls_coche TYPE zcoche_36.

    ls_coche-id_coche = '001'.
    ls_coche-id_cliente = '001'.
    ls_coche-marca = 'Mitsubishi'.
    ls_coche-modelo = 'Materials'.
    ls_coche-fecha_matriculacion = '20220510'.
    ls_coche-bastidor = '557X4G7H'.

    APPEND ls_coche TO lt_coche.
    CLEAR ls_coche.

     ls_coche-id_coche = '002'.
    ls_coche-id_cliente = '001'.
    ls_coche-marca = 'Burnin'.
    ls_coche-modelo = 'Blade'.
    ls_coche-fecha_matriculacion = '20220510'.
    ls_coche-bastidor = '7Y501KI12P'.

    APPEND ls_coche TO lt_coche.
    CLEAR ls_coche.

     ls_coche-id_coche = '003'.
    ls_coche-id_cliente = '002'.
    ls_coche-marca = 'Toyota'.
    ls_coche-modelo = 'Corolla'.
    ls_coche-fecha_matriculacion = '20051031'.
    ls_coche-bastidor = 'YU70FR2'.


    APPEND ls_coche TO lt_coche.
    CLEAR ls_coche.

     ls_coche-id_coche = '004'.
    ls_coche-id_cliente = '003'.
    ls_coche-marca = 'Ford'.
    ls_coche-modelo = 'Mustang'.
    ls_coche-fecha_matriculacion = '20241210'.
    ls_coche-bastidor = '001V32NG'.

    APPEND ls_coche TO lt_coche.
    CLEAR ls_coche.

    INSERT zcoche_36 FROM TABLE @lt_coche.

    IF sy-subrc EQ 0.
        out->write( 'Los datos han sido introducidos correctamente' ).
    ELSE.
        out->write( 'Ha ocurrido un error a introducir los datos' ).
    ENDIF.
ENDMETHOD.
ENDCLASS.
