-- Table: public.environment

-- DROP TABLE public.environment;

CREATE TABLE IF NOT EXISTS public.environment
(
    name character varying COLLATE pg_catalog."default" NOT NULL,
    userid bigint NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    id bigint NOT NULL DEFAULT nextval('environment_id_seq'::regclass),
    CONSTRAINT environment_pkey PRIMARY KEY (id),
    CONSTRAINT environment_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.environment
    OWNER to postgres;