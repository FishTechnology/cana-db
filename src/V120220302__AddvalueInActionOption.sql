ALTER TABLE IF EXISTS public.actionoption
    ADD COLUMN value character varying(500);

ALTER TABLE IF EXISTS public.actionoption
    ADD COLUMN assert_type character varying(200);