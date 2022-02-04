ALTER TABLE IF EXISTS public.config_key_value
    ADD COLUMN is_application_variable boolean;

ALTER TABLE IF EXISTS public.actionoption
    ADD COLUMN condition_type character varying;

ALTER TABLE IF EXISTS public.action
    ADD COLUMN isoptional boolean;