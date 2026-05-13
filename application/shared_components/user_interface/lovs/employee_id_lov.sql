prompt --application/shared_components/user_interface/lovs/employee_id_lov
begin
--   Manifest
--     EMPLOYEE_ID_LOV
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466982788095834
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'TEST'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2809211589681479)
,p_lov_name=>'EMPLOYEE_ID_LOV'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMPLOYEE'
,p_return_column_name=>'EMPLOYEE_ID'
,p_display_column_name=>'EMPLOYEE_ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'EMPLOYEE_ID'
,p_default_sort_direction=>'ASC'
,p_version_scn=>4176008
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2810278372696276)
,p_query_column_name=>'EMPLOYEE_ID'
,p_heading=>'Id'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2810603043696278)
,p_query_column_name=>'FIRST_NAME'
,p_heading=>'Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
