prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1466982788095834
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'TEST'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2008557692109870)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>4644599
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2020286932109965)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2028144746529165)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'EMPLOYEE ENTRY'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2229693755635857)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'DEPARTMENT & DESIGNATION'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3404156287498321)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Designation ENTRY'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(2229693755635857)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3409972644556445)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Department Entry'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_parent_list_item_id=>wwv_flow_imp.id(2229693755635857)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2430618386536431)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'EMPLOYEE INFORMATION'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2499072264729589)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'DEPARTMENT INFORMATION'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2542346933829009)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'ATTENDANCE'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:7:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_imp.component_end;
end;
/
