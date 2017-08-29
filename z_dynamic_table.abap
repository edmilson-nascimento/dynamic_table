REPORT z_dynamic_table.

data:
  ref_table_des   type ref to cl_abap_structdescr,
  tabname         type ddobjname value 'T301',
  lt_components   type abap_compdescr_tab,
  ls_component    type abap_compdescr,
  ls_fieldcatalog type lvc_s_fcat,
  lt_fieldcatalog type lvc_t_fcat,
  ref_str         type ref to data,
  ref_tab         type ref to data,
  ls_ftab         type comt_codeline_tab,
  lt_ftab         like table of ls_ftab with header line.

field-symbols:
  <line>  type any,
  <table> type standard table.

ref_table_des ?= cl_abap_typedescr=>describe_by_name( tabname ).
lt_components = ref_table_des->components.

loop at lt_components into ls_component.
  ls_fieldcatalog-fieldname = ls_component-name .
  ls_fieldcatalog-inttype   = ls_component-type_kind.
  ls_fieldcatalog-intlen    = ls_component-length + ls_component-decimals.
  ls_fieldcatalog-decimals  = ls_component-decimals.
  append ls_fieldcatalog to lt_fieldcatalog.
  clear  ls_fieldcatalog.
endloop.

call method cl_alv_table_create=>create_dynamic_table
  exporting
*    i_style_table             =
    it_fieldcatalog           = lt_fieldcatalog
*    i_length_in_byte          =
  importing
    ep_table                  = ref_tab
*    e_style_fname             =
*  exceptions
*    generate_subpool_dir_full = 1
*    others                    = 2
        .
if sy-subrc eq 0.

  assign ref_tab->* to <table> .

*  para o caso de varios campos serem listados
*  lt_ftab = lv_fieldname.
*  append lt_ftab.

*select (lt_ftab)
  select *
   up to 100 rows
    from (tabname)
    into corresponding fields of
   table <table>.

  if sy-subrc eq 0 .

    create data ref_str like line of <table> .
    assign ref_str->* to <line>.

  endif .

else .

  message id sy-msgid type sy-msgty number sy-msgno
        with sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.

endif.
