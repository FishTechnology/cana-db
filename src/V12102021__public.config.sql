-- Table: public.config

-- DROP TABLE IF EXISTS public.config;

CREATE TABLE IF NOT EXISTS public.config
(
    id bigint NOT NULL DEFAULT id_generator(),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    userid bigint NOT NULL,
    isactive boolean NOT NULL,
    type character varying COLLATE pg_catalog."default" NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    identifier bigint,
    CONSTRAINT config_pkey PRIMARY KEY (id),
    CONSTRAINT config_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.config
    OWNER to "cana-api";