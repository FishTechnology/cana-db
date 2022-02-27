ALTER TABLE IF EXISTS public.scheduleiteration
    ADD COLUMN retry_count integer;

ALTER TABLE IF EXISTS public.config
    ALTER COLUMN userid DROP NOT NULL;

ALTER TABLE IF EXISTS public.config
    ALTER COLUMN applicationid DROP NOT NULL;