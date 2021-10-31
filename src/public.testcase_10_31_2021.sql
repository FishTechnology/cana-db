-- Table: public.testcase

-- DROP TABLE public.testcase;

CREATE TABLE IF NOT EXISTS public.testcase
(
    name character varying COLLATE pg_catalog."default" NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    userid bigint NOT NULL,
    isactive boolean NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    id bigint NOT NULL DEFAULT nextval('testcase_id_seq'::regclass),
    CONSTRAINT testcase_pkey PRIMARY KEY (id),
    CONSTRAINT testcase_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.testcase
    OWNER to postgres;
-- Index: fki_testcase_userid_fkey

-- DROP INDEX public.fki_testcase_userid_fkey;

CREATE INDEX fki_testcase_userid_fkey
    ON public.testcase USING btree
    (userid ASC NULLS LAST)
    TABLESPACE pg_default;