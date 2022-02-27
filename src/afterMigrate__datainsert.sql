do $$
declare lastInsertedId bigint;
begin

INSERT INTO public.config(name, createdon, modifiedon, isactive, type)
	VALUES ('SYSTEM_VARIABLE', NOW(), NOW(), true, 'SYSTEM_VARIABLE') RETURNING id into lastInsertedId;
	
INSERT INTO public.config_key_value(
	configid, key, value, type, createdon, modifiedon, isactive)
	VALUES (lastInsertedId, 'IS_ENABLE_RETRY_ON_FAILED',true, 'TEXT', now(), now(), true);
	
end $$;