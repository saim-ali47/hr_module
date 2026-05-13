prompt --application/shared_components/user_interface/lovs/designation_designation_name
begin
--   Manifest
--     DESIGNATION.DESIGNATION_NAME
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
 p_id=>wwv_flow_imp.id(2033219483529189)
,p_lov_name=>'DESIGNATION.DESIGNATION_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'DESIGNATION'
,p_return_column_name=>'DESIGNATION_ID'
,p_display_column_name=>'DESIGNATION_NAME'
,p_default_sort_column_name=>'DESIGNATION_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>3325000
);
wwv_flow_imp.component_end;
end;
/
