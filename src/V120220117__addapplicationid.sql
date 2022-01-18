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