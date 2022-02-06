ALTER TABLE IF EXISTS public.actionoption
    ADD COLUMN condition_type character varying;

ALTER TABLE IF EXISTS public.action
    ADD COLUMN isoptional boolean;