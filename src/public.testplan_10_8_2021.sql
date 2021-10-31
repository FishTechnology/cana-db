-- Table: public.testplan

-- DROP TABLE public.testplan;

CREATE TABLE IF NOT EXISTS public.testplan
(
    name character varying COLLATE pg_catalog."default" NOT NULL,
    userid bigint NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    status character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    id bigint NOT NULL DEFAULT nextval('testplan_id_seq'::regclass),
    CONSTRAINT testplan_pkey PRIMARY KEY (id),
    CONSTRAINT testplan_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.testplan
    OWNER to postgres;
-- Index: fki_testplan_userid_fkey

-- DROP INDEX public.fki_testplan_userid_fkey;

CREATE INDEX fki_testplan_userid_fkey
    ON public.testplan USING btree
    (userid ASC NULLS LAST)
    TABLESPACE pg_default;