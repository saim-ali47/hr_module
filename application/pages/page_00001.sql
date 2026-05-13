prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'HR'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-CardView-items {',
'    overflow: hidden;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2021116708109970)
,p_plug_name=>'HR'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2908214456740021)
,p_plug_name=>'card'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    COUNT(*)',
'FROM EMPLOYEE;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2908393339740022)
,p_region_id=>wwv_flow_imp.id(2908214456740021)
,p_layout_type=>'ROW'
,p_component_css_classes=>'card-view'
,p_card_css_classes=>'t-card'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display:flex; gap:10px; align-items: center;">',
'    ',
'    <div style="background-color: red;',
'                color: white;',
'                width: 40px;',
'                height: 40px;',
'                border-radius: 50%;',
'                align-items: center;',
'                justify-content: center;',
'                display: flex;">',
'        <span class="t-Icon fa fa-user" aria-hidden="true"></span>',
'    </div>',
'',
'    <div style="flex: 1;">',
'        <div style="color:grey;">Total Employees</div>',
'        <div style="font-weight: 700;">&"COUNT(*)".</div>',
'    </div>',
'',
'    <div style="background-color: red;',
'                width: 40px;',
'                height: 40px;',
'                border-radius: 50%;',
'                align-items: center;',
'                justify-content: center;',
'                display: flex;">',
'        <button style="background-color: transparent; border: none; outline: none; cursor: pointer; padding: 0; display: flex;">',
'            <span class="t-Icon fa fa-plus" aria-hidden="true" style="color: white; font-size: 16px;"></span>   ',
'        </button>',
'    </div>',
'',
'</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2908636879740025)
,p_card_id=>wwv_flow_imp.id(2908393339740022)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2908418516740023)
,p_plug_name=>'card'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    COUNT(*)',
'FROM DEPARTMENT;'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2908543591740024)
,p_region_id=>wwv_flow_imp.id(2908418516740023)
,p_layout_type=>'ROW'
,p_component_css_classes=>'card-view'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display:flex; gap:10px">',
'    ',
'    <div style="background-color: red;',
'                color: white;',
'                width: 40px;',
'                height: 40px;',
'                border-radius: 50%;',
'                align-items: center;',
'                justify-content: center;',
'                display: flex;">',
'        <span aria-hidden="true" class="fa fa-money-check-pen"></span>',
'    </div>',
'',
'    <div style="flex: 1;">',
'        <div style="color:grey;">Number of Departments</div>',
'        <div style="font-weight: 700;">&"COUNT(*)".</div>',
'    </div>',
'',
'    <div style="background-color: red;',
'                width: 40px;',
'                height: 40px;',
'                border-radius: 50%;',
'                align-items: center;',
'                justify-content: center;',
'                display: flex;">',
'        <button style="background-color: transparent; border: none; outline: none; cursor: pointer; padding: 0; display: flex;">',
'            <span class="t-Icon fa fa-plus" aria-hidden="true" style="color: white; font-size: 16px;"></span>   ',
'        </button>',
'    </div>',
'',
'</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2908785447740026)
,p_card_id=>wwv_flow_imp.id(2908543591740024)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2908804232740027)
,p_plug_name=>'card'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    COUNT(*)',
'FROM EMPLOYEE',
'WHERE STATUS = ''ON DUTY'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2908928088740028)
,p_region_id=>wwv_flow_imp.id(2908804232740027)
,p_layout_type=>'ROW'
,p_component_css_classes=>'card-view'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display:flex; gap:10px">',
'    ',
'    <div style="background-color: red;',
'                color: white;',
'                width: 40px;',
'                height: 40px;',
'                border-radius: 50%;',
'                align-items: center;',
'                justify-content: center;',
'                display: flex;">',
'        <span aria-hidden="true" class="fa fa-money-check-pen"></span>',
'    </div>',
'',
'    <div style="flex: 1;">',
'        <div style="color:grey;">Working Employees</div>',
'        <div style="font-weight: 700;">&"COUNT(*)".</div>',
'    </div>',
'',
'</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2909296084740031)
,p_plug_name=>'DEOARTMENT_WISE_CHART'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2909310916740032)
,p_region_id=>wwv_flow_imp.id(2909296084740031)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_stack_font_family=>'Arial'
,p_stack_font_style=>'italic'
,p_stack_font_size=>'10'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2909442515740033)
,p_chart_id=>wwv_flow_imp.id(2909310916740032)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT D.DEPARTMENT_NAME AS LABEL, COUNT(e.EMPLOYEE_ID) AS VALUE',
'FROM DEPARTMENT D',
'LEFT JOIN EMPLOYEE E ON d.DEPARTMENT_ID = e.DEPARTMENT_ID',
'GROUP BY d.DEPARTMENT_NAME'))
,p_series_name_column_name=>'LABEL'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_short_desc_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2909575622740034)
,p_chart_id=>wwv_flow_imp.id(2909310916740032)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2909698245740035)
,p_chart_id=>wwv_flow_imp.id(2909310916740032)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2909708809740036)
,p_plug_name=>'SALARY_RANK'
,p_title=>'Top Earner of Each Department'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH EMP_RANK AS (',
'    SELECT EMPLOYEE_ID, ',
'           DENSE_RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS RANK',
'    FROM EMPLOYEE',
')',
'SELECT ',
'    E.FIRST_NAME || '' '' || E.LAST_NAME AS LABEL, -- Badge ke neechay naam aayega',
'    E.SALARY AS VALUE,                           -- Badge ke andar bari salary likhi aayegi',
'    ''fa-trophy'' AS ICON                          -- (Pro-Tip) Har badge ke sath trophy ka icon!',
'FROM EMPLOYEE E',
'JOIN EMP_RANK R ON E.EMPLOYEE_ID = R.EMPLOYEE_ID',
'WHERE R.RANK = 1'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2910536020740044)
,p_region_id=>wwv_flow_imp.id(2909708809740036)
,p_chart_type=>'bar'
,p_height=>'300'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2910659355740045)
,p_chart_id=>wwv_flow_imp.id(2910536020740044)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH EMP_RANK AS (',
'    SELECT EMPLOYEE_ID, DENSE_RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS RANK',
'    FROM EMPLOYEE',
')',
'SELECT E.FIRST_NAME||'' ''||E.LAST_NAME AS NAME,E.SALARY,D.DEPARTMENT_NAME, R.RANK',
'FROM   EMPLOYEE E',
'JOIN   DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID ',
'JOIN   EMP_RANK R ON E.EMPLOYEE_ID = R.EMPLOYEE_ID',
'WHERE RANK = 1'))
,p_series_name_column_name=>'DEPARTMENT_NAME'
,p_items_value_column_name=>'SALARY'
,p_items_label_column_name=>'DEPARTMENT_NAME'
,p_items_short_desc_column_name=>'NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3005413892510335)
,p_chart_id=>wwv_flow_imp.id(2910536020740044)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3005525258510336)
,p_chart_id=>wwv_flow_imp.id(2910536020740044)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp.component_end;
end;
/
