-- Table: public.action

-- DROP TABLE public.action;

CREATE TABLE IF NOT EXISTS public.action
(
    id bigint NOT NULL DEFAULT nextval('action_id_seq'::regclass),
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

ALTER TABLE public.action
    OWNER to postgres;