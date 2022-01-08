-- Table: public.schedule

-- DROP TABLE IF EXISTS public.schedule;

CREATE TABLE IF NOT EXISTS public.schedule
(
    id bigint NOT NULL DEFAULT id_generator(),
    testplanid bigint NOT NULL,
    environmentid bigint NOT NULL,
    userid bigint NOT NULL,
    createdon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    modifiedon timestamp with time zone,
    status character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT schedule_pkey PRIMARY KEY (id),
    CONSTRAINT schedule_environmentid_fkey FOREIGN KEY (environmentid)
        REFERENCES public.environment (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT schedule_testplanid_fkey FOREIGN KEY (testplanid)
        REFERENCES public.testplan (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT schedule_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.schedule
    OWNER to "cana-api";