INSERT INTO BPS_USER_INFO VALUES (1, 'Admin', 'Admin', 'ADMINISTRATOR', 'Shobhit Tyagi', 'nitw.shobhit@gmail.com', '+51982972099', 'ADM', null);
INSERT INTO BPS_PROCESS VALUES(1, 'com.another.testProcess', 'AnotherTestProcess', '1.0', 'JPDL', 'Admin', 'This is another test process designed during the development of this application.');
INSERT INTO BPS_PROCESS VALUES(2, 'com.testProcess', 'TestProcess', '2.0', 'BPMN2', 'Admin', 'This is a test process designed during the development of this application.');
INSERT INTO BPS_PROCESS VALUES(3, 'com.another.yetAnotherTestProcess', 'YetAnotherTestProcess', '3.1', 'BPMN2', 'Admin', 'This is yet another test process designed during the development of this application.');
INSERT INTO BPS_PROCESS_VER VALUES (1, 1, '1.0', 'Admin', 'BPMN2', '02-03-2015 10:10:14', 'Initial Draft');
INSERT INTO BPS_PROCESS_VER VALUES (2, 2, '1.0', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Initial Draft');
INSERT INTO BPS_PROCESS_VER VALUES (3, 2, '1.1', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Added Comments');
INSERT INTO BPS_PROCESS_VER VALUES (4, 2, '1.2', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Code Reduction');
INSERT INTO BPS_PROCESS_VER VALUES (5, 2, '1.3', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Using Expression Language');
INSERT INTO BPS_PROCESS_VER VALUES (6, 2, '1.4', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Added support for emails');
INSERT INTO BPS_PROCESS_VER VALUES (7, 2, '2.0', 'Admin', 'BPMN2', '02-03-2015 10:10:14', 'Notation change Initial Draft');
INSERT INTO BPS_PROCESS_VER VALUES (8, 3, '1.0', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Initial Draft');
INSERT INTO BPS_PROCESS_VER VALUES (9, 3, '1.1', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Added Email Support');
INSERT INTO BPS_PROCESS_VER VALUES (10, 3, '1.2', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Added Webservices');
INSERT INTO BPS_PROCESS_VER VALUES (11, 3, '1.3', 'Admin', 'JPDL', '02-03-2015 10:10:14', 'Can use MVEL');
INSERT INTO BPS_PROCESS_VER VALUES (12, 3, '1.4', 'Admin', 'JPDL', '02-03-2015 10:10:141', 'Code change. Added extra human tasks');
INSERT INTO BPS_PROCESS_VER VALUES (13, 3, '2.0', 'Admin', 'BPMN2', '02-03-2015 10:10:14', 'Changed to Notation BPMN2. Initial Draft');
INSERT INTO BPS_PROCESS_VER VALUES (14, 3, '2.1', 'Admin', 'BPMN2', '02-03-2015 10:10:14', 'Added variable changes in the process');
INSERT INTO BPS_PROCESS_VER VALUES (15, 3, '3.0', 'Admin', 'BPMN2', '02-03-2015 10:10:14', 'Using Content for variables');
INSERT INTO BPS_PROCESS_VER VALUES (16, 3, '3.1', 'Admin', 'BPMN2', '02-03-2015 10:10:14', 'Adding a custom node');
commit;