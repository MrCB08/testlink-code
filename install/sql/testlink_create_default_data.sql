# TestLink Open Source Project - http://testlink.sourceforge.net/
# $Id: testlink_create_default_data.sql,v 1.8 2006/02/24 17:57:47 franciscom Exp $
# SQL script - create default data (rights & admin account)
# --------------------------------------------------------

# admin account 
# SECURITY: change password after first login
INSERT INTO `users` (login,password,role_id,email,first,last,locale,active)
             VALUES ('admin','21232f297a57a5a743894a0e4a801fc3', 8,'', 'Testlink', 'Administrator', 'en_GB',1);


# Node types -
INSERT INTO `node_types` (id,description) VALUES (1, 'testproject');
INSERT INTO `node_types` (id,description) VALUES (2, 'testsuite');
INSERT INTO `node_types` (id,description) VALUES (3, 'testcase');
INSERT INTO `node_types` (id,description) VALUES (4, 'testcase_version');
INSERT INTO `node_types` (id,description) VALUES (5, 'testplan');


# Roles -
INSERT INTO `roles` (id,description) VALUES (8, 'admin');
INSERT INTO `roles` (id,description) VALUES (9, 'leader');
INSERT INTO `roles` (id,description) VALUES (6, 'senior tester');
INSERT INTO `roles` (id,description) VALUES (7, 'tester');
INSERT INTO `roles` (id,description) VALUES (5, 'guest');
INSERT INTO `roles` (id,description) VALUES (4, 'test designer');
INSERT INTO `roles` (id,description) VALUES (3, '<no rights>');

# Rights - 
INSERT INTO `rights` (id,description) VALUES (1 ,'testplan_execute'      );
INSERT INTO `rights` (id,description) VALUES (2 ,'testplan_create_build' );
INSERT INTO `rights` (id,description) VALUES (3 ,'testplan_metrics'      );
INSERT INTO `rights` (id,description) VALUES (4 ,'testplan_planning'     );
INSERT INTO `rights` (id,description) VALUES (5 ,'testplan_assign_rights');
INSERT INTO `rights` (id,description) VALUES (6 ,'mgt_view_tc'           );
INSERT INTO `rights` (id,description) VALUES (7 ,'mgt_modify_tc'         );
INSERT INTO `rights` (id,description) VALUES (8 ,'mgt_view_key'          );
INSERT INTO `rights` (id,description) VALUES (9 ,'mgt_modify_key'        );
INSERT INTO `rights` (id,description) VALUES (10,'mgt_view_req'          );
INSERT INTO `rights` (id,description) VALUES (11,'mgt_modify_req'        );
INSERT INTO `rights` (id,description) VALUES (12,'mgt_modify_product'    );
INSERT INTO `rights` (id,description) VALUES (13,'mgt_users'             );


# Rights for Administrator (admin role)
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,1 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,2 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,3 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,4 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,5 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,6 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,7 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,8 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,9 );
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,10);
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,11);
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,12);
INSERT INTO `role_rights` (role_id,right_id) VALUES (8,13);



# Database version
INSERT INTO db_version VALUES('1.7.0 Alpha', CURRENT_TIMESTAMP());