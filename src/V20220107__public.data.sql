INSERT INTO public.customer (id, username, password, last_login, status, created_on, modified_on, created_by, modified_by) VALUES (2746306338916140033, 'ssoosaimicheal', 'admin', NOW(), 'ACTIVE', NOW(), NOW(), 'ssoosaimicheal', 'ssoosaimicheal');

INSERT INTO public.testplan (name, userid, comments, status, createdon, modifiedon, createdby, modifiedby, id) VALUES ('Google Test Plan', 2746306338916140033, '', 'SETUP', NOW(), NOW(), '2746306338916140033', '2746306338916140033', 2746307886563984387);
INSERT INTO public.testcase (name, comments, userid, isactive, createdon, modifiedon, createdby, modifiedby, id) VALUES ('Launch google home', '', 2746306338916140033, true, NOW(), NOW(), '2746306338916140033', '2746306338916140033', 2746328264657077252);
INSERT INTO public.testcase (name, comments, userid, isactive, createdon, modifiedon, createdby, modifiedby, id) VALUES ('Google Search', '', 2746306338916140033, true, NOW(), NOW(), '2746306338916140033', '2746306338916140033', 2746329677198001158);