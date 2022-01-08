-- Table: public.action

-- DROP TABLE IF EXISTS public.action;

CREATE TABLE IF NOT EXISTS public.action
(
    id bigint NOT NULL DEFAULT id_generator(),
    key character varying COLLATE pg_catalog."default" NOT NULL,
    value character varying COLLATE pg_catalog."default",
    type character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    userid bigint NOT NULL,
    testcaseid bigint NOT NULL,
    ordernumber bigint NOT NULL,
    browser_actiontype character varying COLLATE pg_catalog."default",
    browservalue character varying COLLATE pg_catalog."default",
    uiactiontype character varying COLLATE pg_catalog."default",
    isassert_verification boolean DEFAULT false,
    condition_type character varying COLLATE pg_catalog."default",
    CONSTRAINT action_pkey PRIMARY KEY (id),
    CONSTRAINT action_testcaseid_fkey FOREIGN KEY (testcaseid)
        REFERENCES public.testcase (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT action_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.action
    OWNER to "cana-api";