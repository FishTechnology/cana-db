do $$
declare lastInsertedId bigint;
declare userIdInsertedId bigint;
begin
INSERT INTO public.customer(username, password, last_login, status, created_on, modified_on, created_by, modified_by)
	VALUES ('ssoosaimicheal', 'howareyou@90', NOW(), 'ACTIVE', NOW(), NOW(), 'ADMIN', 'ADMIN') RETURNING id into userIdInsertedId;

INSERT INTO public.config(name, createdon, modifiedon, isactive, type)
	VALUES ('SYSTEM_VARIABLE', NOW(), NOW(), true, 'SYSTEM_VARIABLE') RETURNING id into lastInsertedId;
	
INSERT INTO public.config_key_value(
	configid, key, value, type, createdon, modifiedon, isactive)
	VALUES (lastInsertedId, 'IS_ENABLE_RETRY_ON_FAILED',true, 'TEXT', now(), now(), true);
	
end $$;