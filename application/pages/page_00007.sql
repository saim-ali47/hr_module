prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466982788095834
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'TEST'
);
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'ATTENDANCE'
,p_alias=>'ATTENDANCE'
,p_step_title=>'ATTENDANCE'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P7_SHOW_DELETE").getValue() === "Y") {',
'    $("#BTN_DELETE").show();',
'    $("#BTN_SAVE").show();',
'    $("#BTN_SALARY").show();',
'    $("#BTN_GENERATE").hide();',
'} else {',
'    $("#BTN_DELETE").hide();',
'    $("#BTN_SAVE").hide();',
'    $("#BTN_SALARY").hide();',
'    $("#BTN_GENERATE").show();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2487723696682634)
,p_plug_name=>'Attendance_MSTR'
,p_title=>'ATTENDANCE'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2487854141682635)
,p_plug_name=>'ATTENDANCE'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE_ID,',
'       ATD_DATE,',
'       ATD_DAY,',
'       IN_TIME,',
'       OUT_TIME,',
'       STATUS,',
'       USER_V1,',
'       USER_V2,',
'       FLAG',
'  FROM ATTENDANCE',
' WHERE :P7_EMPLOYEE_ID IS NOT NULL ',
'   AND :P7_MONTH IS NOT NULL ',
'   AND :P7_YEAR IS NOT NULL',
'   AND EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'   AND TRUNC(ATD_DATE, ''MM'') = TO_DATE(LPAD(NVL(:P7_MONTH, ''1''), 2, ''0'') || ''-'' || NVL(:P7_YEAR, ''1900''), ''MM-YYYY'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P7_EMPLOYEE_ID,P7_MONTH,P7_YEAR'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488025759682637)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488175339682638)
,p_name=>'ATD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATD_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'DATE'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ATD_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488270343682639)
,p_name=>'ATD_DAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATD_DAY'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Atd Day'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>15
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488379417682640)
,p_name=>'IN_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IN_TIME'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'In Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'HH24:MI:SS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'IN_TIME'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488412143682641)
,p_name=>'OUT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OUT_TIME'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Out Time'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'HH24:MI:SS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'OUT_TIME'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488581890682642)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Present;1,Absent;0,Rest;2,Half Day;3'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'STATUS'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2488958306682646)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2489086930682647)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2566189041040217)
,p_name=>'USER_V1'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_V1'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2566258801040218)
,p_name=>'USER_V2'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_V2'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2566331336040219)
,p_name=>'FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2487957049682636)
,p_internal_uid=>2487957049682636
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2545824393976556)
,p_interactive_grid_id=>wwv_flow_imp.id(2487957049682636)
,p_static_id=>'25459'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2546020099976556)
,p_report_id=>wwv_flow_imp.id(2545824393976556)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2546550886976557)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2488025759682637)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2547402345976560)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2488175339682638)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2548355999976562)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2488270343682639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2549254415976565)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2488379417682640)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2550120364976567)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2488412143682641)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2551055502976570)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2488581890682642)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2555694613977359)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2488958306682646)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2644443405590089)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2566189041040217)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2645440700590092)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2566258801040218)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2646433029590095)
,p_view_id=>wwv_flow_imp.id(2546020099976556)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2566331336040219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2542790868829009)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2008091233109867)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2565609406040212)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_button_name=>'UPDATE'
,p_button_static_id=>'BTN_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Update'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2567813870040234)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_button_name=>'GENERATE_SALARY'
,p_button_static_id=>'BTN_SALARY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Salary'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2566810555040224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_button_name=>'DELETE'
,p_button_static_id=>'BTN_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'Do you want to Delete the Attendance Record?'
,p_confirm_style=>'warning'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2564643255040202)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_button_name=>'generate'
,p_button_static_id=>'BTN_GENERATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2568509520040241)
,p_branch_name=>'SALARY_DATA'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:7,8:P10_EMPLOYEE_ID,P10_MONTH,P10_YEAR:&P7_EMPLOYEE_ID.,&P7_MONTH.,&P7_YEAR.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2567813870040234)
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P7_EMPLOYEE_ID'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2489211361682649)
,p_name=>'P7_MONTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_prompt=>'Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;01,February;02,March;03,April;04,May;05,June;06,July;07,August;08,September;09,October;10,November;11,December;12'
,p_cHeight=>1
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2489366565682650)
,p_name=>'P7_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_prompt=>'Year'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    2020 + LEVEL as display_value, ',
'    2020 + LEVEL as return_value',
'FROM DUAL',
'CONNECT BY 2020 + LEVEL <= TO_NUMBER(TO_CHAR(SYSDATE, ''YYYY''))',
'ORDER BY 1 DESC'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2565092000040206)
,p_name=>'ATD_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2565100060040207)
,p_name=>'P7_EMPLOYEE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_prompt=>'Employee ID'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_ID_LOV'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3006022278510341)
,p_name=>'P7_SHOW_DELETE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2487723696682634)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2568634660040242)
,p_validation_name=>'VAL_GENERATE_SALARY'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER;',
'BEGIN',
'    IF :P7_MONTH IS NULL THEN',
'        RETURN ''ERROR: ENTER THE MONTH'';',
'    ELSIF :P7_EMPLOYEE_ID IS NULL THEN',
'        RETURN ''ERROR: ENTER EMPLOYEE ID'';',
'    ELSIF :P7_YEAR IS NULL THEN',
'        RETURN ''ERROR: ENTER YEAR'';',
'    END IF;',
'    SELECT COUNT(*) INTO V_COUNT',
'    FROM ATTENDANCE',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'    AND TRUNC(ATD_DATE,''MM'') = TO_DATE(''01-''||LPAD(:P7_MONTH,2,''0'')||''-''||:P7_YEAR,''DD-MM-YYYY'');',
'    IF V_COUNT = 0 THEN',
'        RETURN ''ERROR: GENERATE ATTENDANCE'';',
'    END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2564732660040203)
,p_name=>'GENERATE_ATTENDANCE'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2564643255040202)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2564880363040204)
,p_event_id=>wwv_flow_imp.id(2564732660040203)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_START DATE;',
'    V_DATE  DATE;',
'    V_END   DATE;',
'    V_COUNT NUMBER;',
'    V_EMP_COUNT NUMBER;',
'BEGIN',
'    IF :P7_EMPLOYEE_ID IS NULL THEN',
'        :ATD_TYPE := ''ERROR: ENTER EMPLOYEE ID FIRST'';',
'        RETURN;',
'    ELSIF :P7_YEAR IS NULL THEN',
'        :ATD_TYPE := ''ERROR: SELECT THE YEAR FIRST'';',
'        RETURN;',
'    ELSIF TRUNC(TO_DATE(''01-''||LPAD(:P7_MONTH,2,''0'')||''-''||:P7_YEAR,''DD-MM-YYYY''),''MM'') > TRUNC(SYSDATE,''MM'') THEN',
'        :ATD_TYPE := ''ERROR: MONTH NOT STARTED'';',
'        RETURN;',
'    END IF;',
'',
'    SELECT COUNT(*) INTO V_EMP_COUNT',
'    FROM EMPLOYEE',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID;',
'    IF V_EMP_COUNT = 0 THEN',
'        :ATD_TYPE := ''ERROR: EMPLOYEE NOT FOUND'';',
'        RETURN;',
'    END IF;',
'',
'    V_START := TO_DATE(LPAD(:P7_MONTH,2,''0'')||''-''||:P7_YEAR,''MM-YYYY'');',
'    V_DATE  := V_START;',
'    V_END   := LAST_DAY(V_START);',
'',
'    SELECT COUNT(*) INTO V_COUNT',
'    FROM ATTENDANCE',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'    AND TRUNC(ATD_DATE,''MM'') = TRUNC(V_START,''MM'');',
'',
'    IF V_COUNT = 0 THEN',
'        WHILE V_DATE <= V_END LOOP',
'            INSERT INTO ATTENDANCE(',
'                EMPLOYEE_ID, ATD_DATE, ATD_DAY, IN_TIME, OUT_TIME, STATUS, USER_V1, FLAG',
'            )',
'            VALUES(',
'               :P7_EMPLOYEE_ID,',
'                V_DATE,',
'                TO_CHAR(V_DATE,''FMDAY''),',
'                CASE WHEN TO_CHAR(V_DATE,''FMDAY'')=''SUNDAY'' THEN NULL ELSE V_DATE+(9/24) END,',
'                CASE WHEN TO_CHAR(V_DATE,''FMDAY'')=''SUNDAY'' THEN NULL ELSE V_DATE+(17/24) END,',
'                CASE WHEN TO_CHAR(V_DATE,''FMDAY'')=''SUNDAY'' THEN 2 ELSE 1 END,',
'                :APP_USER,',
'                1',
'            );',
'            V_DATE := V_DATE + 1;',
'        END LOOP;',
'        :ATD_TYPE := ''CREATED NEW ATTENDANCE'';',
'',
'    ELSE',
'        :ATD_TYPE := ''ATTENDANCE ALREADY EXIST'';  ',
'    END IF;',
'        :P7_SHOW_DELETE :=  ''Y'';  ',
'',
'END;'))
,p_attribute_02=>'P7_MONTH,P7_YEAR,P7_EMPLOYEE_ID'
,p_attribute_03=>'ATD_TYPE,P7_SHOW_DELETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2566682647040222)
,p_event_id=>wwv_flow_imp.id(2564732660040203)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var msg = apex.item("ATD_TYPE").getValue();',
'',
'if (msg.includes("ERROR")){',
'    apex.message.alert(msg);',
'    apex.item("ATD_TYPE").setValue("");',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2565246279040208)
,p_event_id=>wwv_flow_imp.id(2564732660040203)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2487854141682635)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3202147770776702)
,p_event_id=>wwv_flow_imp.id(2564732660040203)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2487723696682634)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2567002570040226)
,p_name=>'DELETE_RECORD'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2566810555040224)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2567193180040227)
,p_event_id=>wwv_flow_imp.id(2567002570040226)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ATTENDANCE',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'    AND TRUNC(ATD_DATE, ''MM'') = TO_DATE(LPAD(:P7_MONTH, 2, ''0'') || ''-'' || :P7_YEAR, ''MM-YYYY'');',
'',
'    DELETE FROM SALARY_DATA',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'    AND TRUNC(SALARY_MONTH, ''MM'') = TO_DATE(LPAD(:P7_MONTH, 2, ''0'') || ''-'' || :P7_YEAR, ''MM-YYYY'');',
'',
'    :P7_SHOW_DELETE := ''N'';',
'END;'))
,p_attribute_02=>'P7_EMPLOYEE_ID,P7_MONTH,P7_YEAR'
,p_attribute_03=>'P7_SHOW_DELETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P7_EMPLOYEE_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2567288930040228)
,p_event_id=>wwv_flow_imp.id(2567002570040226)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2487854141682635)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3202007900776701)
,p_event_id=>wwv_flow_imp.id(2567002570040226)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.alert("Record has been successfully deleted!");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2567309504040229)
,p_name=>'STATUS_CHANGE'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2487854141682635)
,p_triggering_element=>'STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2567491351040230)
,p_event_id=>wwv_flow_imp.id(2567309504040229)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_date      =   $v("ATD_DATE");',
'var v_status    =   $v("STATUS");',
'var v_in_time   = "";',
'var v_out_time  = "";',
'',
'',
'if (v_status === ''1''){',
'    v_in_time = "09:00:00";',
'    v_out_time = "17:00:00";',
'}',
'else if (v_status === ''3''){',
'    v_in_time = "09:00:00";',
'    v_out_time = "13:00:00";',
'}',
'else if (v_status === ''2'' || v_status === ''0''){',
'    v_in_time = "";',
'    v_out_time = "";',
'}',
'',
'',
'apex.item("IN_TIME").setValue(v_in_time);',
'apex.item("OUT_TIME").setValue(v_out_time);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2568742266040243)
,p_name=>'REFRESH_ATTENDANCE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_MONTH,P7_YEAR,P7_EMPLOYEE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2568838066040244)
,p_event_id=>wwv_flow_imp.id(2568742266040243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2487854141682635)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3006135130510342)
,p_event_id=>wwv_flow_imp.id(2568742266040243)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*) INTO v_count',
'    FROM ATTENDANCE',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'    AND TRUNC(ATD_DATE,''MM'') = TO_DATE(LPAD(:P7_MONTH,2,''0'')||''-''||:P7_YEAR,''MM-YYYY'');',
'',
'    IF v_count > 0 THEN',
'        :P7_SHOW_DELETE := ''Y'';',
'    ELSE',
'        :P7_SHOW_DELETE := ''N'';',
'    END IF;',
'END;'))
,p_attribute_02=>'P7_EMPLOYEE_ID,P7_YEAR,P7_MONTH'
,p_attribute_03=>'P7_SHOW_DELETE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P7_YEAR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3202229069776703)
,p_name=>'SHOW_DELETE'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P7_SHOW_DELETE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3202366589776704)
,p_event_id=>wwv_flow_imp.id(3202229069776703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (apex.item("P7_SHOW_DELETE").getValue() === "Y") {',
'    $("#BTN_DELETE").show();',
'    $("#BTN_SAVE").show();',
'    $("#BTN_SALARY").show();',
'    $("#BTN_GENERATE").hide();',
'} else {',
'    $("#BTN_DELETE").hide();',
'    $("#BTN_SAVE").hide();',
'    $("#BTN_SALARY").hide();',
'    $("#BTN_GENERATE").show();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2566713327040223)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2487854141682635)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ATTENDANCE - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C'' THEN ',
'            INSERT INTO ATTENDANCE(',
'                EMPLOYEE_ID, ATD_DATE, ATD_DAY, IN_TIME, OUT_TIME, STATUS, USER_V1, FLAG',
'            )',
'            VALUES(',
'                :EMPLOYEE_ID, ',
'                TO_DATE(:ATD_DATE, ''DD-MM-YYYY''), -- FIX: Direct text ki jagah proper date',
'                :ATD_DAY, TO_DATE(:IN_TIME, ''HH24:MI:SS''), TO_DATE(:OUT_TIME, ''HH24:MI:SS''), :STATUS, :APP_USER ,1',
'            );',
'        WHEN ''U'' THEN ',
'            UPDATE ATTENDANCE',
'            SET ',
'                EMPLOYEE_ID = :EMPLOYEE_ID,',
'                ATD_DATE = TO_DATE(:ATD_DATE, ''DD-MM-YYYY''), -- FIX',
'                ATD_DAY = :ATD_DAY,',
'                IN_TIME = TO_DATE(:IN_TIME, ''HH24:MI:SS''),',
'                OUT_TIME = TO_DATE(:OUT_TIME, ''HH24:MI:SS''),',
'                STATUS = :STATUS,',
'                USER_V2 = :APP_USER',
'            WHERE EMPLOYEE_ID = :EMPLOYEE_ID',
'              AND ATD_DATE = TO_DATE(:ATD_DATE, ''DD-MM-YYYY'');',
'        WHEN ''D'' THEN',
'            DELETE ATTENDANCE',
'            WHERE EMPLOYEE_ID = :EMPLOYEE_ID',
'              AND ATD_DATE = TO_DATE(:ATD_DATE, ''DD-MM-YYYY''); -- FIX',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_error_message=>'ERROR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2565609406040212)
,p_process_success_message=>'Attendance has been updated'
,p_internal_uid=>2566713327040223
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3205123804776732)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2487854141682635)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'ATTENDANCE - Save Interactive Grid Data_1'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C'' THEN ',
'            INSERT INTO ATTENDANCE(',
'                EMPLOYEE_ID, ATD_DATE, ATD_DAY, IN_TIME, OUT_TIME, STATUS, USER_V1, FLAG',
'            )',
'            VALUES(',
'                :EMPLOYEE_ID, ',
'                TO_DATE(:ATD_DATE, ''DD-MM-YYYY''), -- FIX: Direct text ki jagah proper date',
'                :ATD_DAY, TO_DATE(:IN_TIME, ''HH24:MI:SS''), TO_DATE(:OUT_TIME, ''HH24:MI:SS''), :STATUS, :APP_USER ,1',
'            );',
'        WHEN ''U'' THEN ',
'            UPDATE ATTENDANCE',
'            SET ',
'                EMPLOYEE_ID = :EMPLOYEE_ID,',
'                ATD_DATE = TO_DATE(:ATD_DATE, ''DD-MM-YYYY''), -- FIX',
'                ATD_DAY = :ATD_DAY,',
'                IN_TIME = TO_DATE(:IN_TIME, ''HH24:MI:SS''),',
'                OUT_TIME = TO_DATE(:OUT_TIME, ''HH24:MI:SS''),',
'                STATUS = :STATUS,',
'                USER_V2 = :APP_USER',
'            WHERE EMPLOYEE_ID = :EMPLOYEE_ID',
'              AND ATD_DATE = TO_DATE(:ATD_DATE, ''DD-MM-YYYY'');',
'        WHEN ''D'' THEN',
'            DELETE ATTENDANCE',
'            WHERE EMPLOYEE_ID = :EMPLOYEE_ID',
'              AND ATD_DATE = TO_DATE(:ATD_DATE, ''DD-MM-YYYY''); -- FIX',
'    END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_process_error_message=>'ERROR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2567813870040234)
,p_process_success_message=>'Attendance has been updated'
,p_internal_uid=>3205123804776732
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2565571528040211)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2487854141682635)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INTERACTIVE_GRID_PROCESSING'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C'' THEN ',
'            INSERT INTO ATTENDANCE(',
'                EMPLOYEE_ID,ATD_DATE,ATD_DAY,IN_TIME,OUT_TIME,STATUS,USER_V1',
'            )',
'            VALUES(',
'                :EMPLOYEE_ID, :ATD_DATE, :ATD_DAY, :IN_TIME, :OUT_TIME, :STATUS, :APP_USER',
'            );',
'        WHEN ''U'' THEN ',
'            UPDATE ATTENDANCE',
'            SET ',
'            EMPLOYEE_ID = :EMPLOYEE_ID,',
'            ATD_DATE = :ATD_DATE,',
'            ATD_DAY = :ATD_DAY,',
'            IN_TIME = :IN_TIME,',
'            OUT_TIME = :OUT_TIME,',
'            STATUS = :STATUS,',
'            USER_V2 = :APP_USER',
'            WHERE EMPLOYEE_ID = :EMPLOYEE_ID',
'            AND ATD_DATE = :ATD_DATE;',
'        WHEN ''D'' THEN',
'            DELETE ATTENDANCE',
'            WHERE EMPLOYEE_ID = :EMPLOYEE_ID',
'            AND ATD_DATE = :ATD_DATE;',
'    END CASE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'CAN NOT SAVE DATA'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'ATTENDANCE SUCCESSFULY SAVED'
,p_required_patch=>wwv_flow_imp.id(2007460428109864)
,p_internal_uid=>2565571528040211
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2566958822040225)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2487854141682635)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE_ATTENDANCE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    DELETE FROM ATTENDANCE',
'    WHERE EMPLOYEE_ID = :P7_EMPLOYEE_ID',
'    AND TRUNC(ATD_DATE, ''MM'') = TO_DATE(LPAD(:P7_MONTH, 2, ''0'') || ''-'' || :P7_YEAR, ''MM-YYYY'');',
'',
'    IF SQL%ROWCOUNT = 0 THEN',
'        RAISE_APPLICATION_ERROR(-20001, ''No attendance record found for this employee and month.'');',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'RECORD NOT FOUND'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2566810555040224)
,p_process_success_message=>'RECORD DELETED SUCCESSFULY'
,p_internal_uid=>2566958822040225
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2567735314040233)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE_SALARY_PROCESS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    GENERATE_EMP_SALARY(',
'        P_EMP_ID => :P7_EMPLOYEE_ID,',
'        P_MONTH     =>  TO_DATE(''01-''||:P7_MONTH||''-''||:P7_YEAR,''DD-MM-YYYY'')',
'    );',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2567813870040234)
,p_internal_uid=>2567735314040233
);
wwv_flow_imp.component_end;
end;
/
