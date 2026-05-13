prompt --application/shared_components/user_interface/lovs/department_department_name
begin
--   Manifest
--     DEPARTMENT.DEPARTMENT_NAME
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
 p_id=>wwv_flow_imp.id(2032585150529185)
,p_lov_name=>'DEPARTMENT.DEPARTMENT_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DEPARTMENT'
,p_return_column_name=>'DEPARTMENT_ID'
,p_display_column_name=>'DEPARTMENT_NAME'
,p_default_sort_column_name=>'DEPARTMENT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>3324996
);
wwv_flow_imp.component_end;
end;
/
