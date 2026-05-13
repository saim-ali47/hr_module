prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_name=>'SALARY'
,p_alias=>'SALARY'
,p_step_title=>'SALARY'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.header-container {',
'    background: #fff;',
'    font-family: ''Helvetica Neue'', Helvetica, Arial, sans-serif;',
'    color: #000;',
'}',
'',
'.header {',
'    text-align: center;',
'    border-bottom: 2px solid black;',
'    padding-bottom: 10px;',
'    margin-bottom: 10px;',
'}',
'.header h1 { margin: 0; font-size: 24px; font-weight: bold; text-transform: uppercase; }',
'',
'.employee-info {',
'    font-size: 14px;',
'    margin: 20px 0px;',
'}',
'',
'',
'@media print {',
'    #t_Header, #t_Body_nav, .t-Footer, .print-hide { display: none !important; }',
'}'))
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2878969954127204)
,p_name=>'SALARY'
,p_region_name=>'SALARY_IR'
,p_template=>2100526641005906379
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SALARY_ID,',
'       EMPLOYEE_ID,',
'       SALARY_MONTH,',
'       TOTAL_DAYS,',
'       PRESENTS,',
'       ABSENTS,',
'       RESTS,',
'       HALF_DAY,',
'       BASIC_SALARY,',
'       NET_SALARY,',
'       GENERATED_AT,',
'       UPDATED_AT',
'  from SALARY_DATA',
'  WHERE EMPLOYEE_ID = :P10_EMPLOYEE_ID',
'  AND  TRUNC(SALARY_MONTH,''MM'') = TO_DATE(''01-''||LPAD(:P10_MONTH,2,''0'')||''-''||:P10_YEAR,''DD-MM-YYYY'')'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_EMPLOYEE_ID,P10_MONTH,P10_YEAR'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3203972772776720)
,p_query_column_id=>1
,p_column_alias=>'SALARY_ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204063096776721)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE_ID'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204191582776722)
,p_query_column_id=>3
,p_column_alias=>'SALARY_MONTH'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204272175776723)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_DAYS'
,p_column_display_sequence=>40
,p_column_heading=>'Total Days'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204381330776724)
,p_query_column_id=>5
,p_column_alias=>'PRESENTS'
,p_column_display_sequence=>50
,p_column_heading=>'Presents'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204418548776725)
,p_query_column_id=>6
,p_column_alias=>'ABSENTS'
,p_column_display_sequence=>60
,p_column_heading=>'Absents'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204575447776726)
,p_query_column_id=>7
,p_column_alias=>'RESTS'
,p_column_display_sequence=>70
,p_column_heading=>'Rests'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204618016776727)
,p_query_column_id=>8
,p_column_alias=>'HALF_DAY'
,p_column_display_sequence=>80
,p_column_heading=>'Half Day'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204713095776728)
,p_query_column_id=>9
,p_column_alias=>'BASIC_SALARY'
,p_column_display_sequence=>90
,p_column_heading=>'Basic Salary'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204846777776729)
,p_query_column_id=>10
,p_column_alias=>'NET_SALARY'
,p_column_display_sequence=>100
,p_column_heading=>'Net Salary'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3204927270776730)
,p_query_column_id=>11
,p_column_alias=>'GENERATED_AT'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3205050301776731)
,p_query_column_id=>12
,p_column_alias=>'UPDATED_AT'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3203897062776719)
,p_plug_name=>'FOOTER'
,p_parent_plug_id=>wwv_flow_imp.id(2878969954127204)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="text-align: center; margin-top: 20px;">',
'    <button class="print-hide" onclick="window.print();" style="display: inline-flex; align-items: center; justify-content: center; gap: 8px; padding: 10px 20px; background-color: #0076df; color: white; border: none; cursor: pointer; font-size: 16px;'
||' border-radius: 4px;">',
'        <span class="fa fa-print"></span> Print',
'    </button>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3203697296776717)
,p_plug_name=>'HEADER'
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="header-container">',
'    ',
'    <div class="header">',
'        <h1>Salary Slip of Employee</h1>',
'    </div>',
'',
'    <div class="employee-info">',
'            <strong>Employee ID:</strong> &P10_EMPLOYEE_ID.<br><br>',
'            <strong>Month:</strong> &P10_MONTH.-&P10_YEAR. ',
'    </div>',
'    ',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2567919311040235)
,p_name=>'P10_EMPLOYEE_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2568020386040236)
,p_name=>'P10_MONTH'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2568110816040237)
,p_name=>'P10_YEAR'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2568335998040239)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10_EMPLOYEE_ID,P10_MONTH,P10_YEAR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2568412320040240)
,p_event_id=>wwv_flow_imp.id(2568335998040239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2878969954127204)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
