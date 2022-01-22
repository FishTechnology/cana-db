ALTER TABLE IF EXISTS public.config
    ADD COLUMN applicationid bigint NOT NULL;

ALTER TABLE IF EXISTS public.config
    ADD FOREIGN KEY (applicationid)
    REFERENCES public.application (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.testplan
    ADD COLUMN applicationid bigint NOT NULL;
    
ALTER TABLE IF EXISTS public.testplan
    ADD FOREIGN KEY (applicationid)
    REFERENCES public.application (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.schedule DROP CONSTRAINT IF EXISTS schedule_environmentid_fkey;

ALTER TABLE IF EXISTS public.schedule
    ADD FOREIGN KEY (environmentid)
    REFERENCES public.config (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.schedule
    ADD COLUMN applicationid bigint NOT NULL;
ALTER TABLE IF EXISTS public.schedule
    ADD FOREIGN KEY (applicationid)
    REFERENCES public.application (id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

ALTER TABLE IF EXISTS public.system DROP COLUMN IF EXISTS applicationid;
ALTER TABLE IF EXISTS public.system DROP CONSTRAINT IF EXISTS system_applicationid_fkey;