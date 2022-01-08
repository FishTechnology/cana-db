-- Table: public.testcase

-- DROP TABLE IF EXISTS public.testcase;

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
    id bigint NOT NULL DEFAULT id_generator(),
    CONSTRAINT testcase_pkey PRIMARY KEY (id),
    CONSTRAINT testcase_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.testcase
    OWNER to "cana-api";
-- Index: fki_testcase_userid_fkey

-- DROP INDEX IF EXISTS public.fki_testcase_userid_fkey;

CREATE INDEX IF NOT EXISTS fki_testcase_userid_fkey
    ON public.testcase USING btree
    (userid ASC NULLS LAST)
    TABLESPACE pg_default;