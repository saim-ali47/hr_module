prompt --application/shared_components/user_interface/lovs/employee_name
begin
--   Manifest
--     EMPLOYEE_NAME
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
 p_id=>wwv_flow_imp.id(3048466566200859)
,p_lov_name=>'EMPLOYEE_NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE_ID AS RETURN_VALUE,',
'       FIRST_NAME||'' ''||LAST_NAME AS DISPLAY_VALUE',
'FROM EMPLOYEE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_default_sort_column_name=>'DISPLAY_VALUE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>4420590
);
wwv_flow_imp.component_end;
end;
/
