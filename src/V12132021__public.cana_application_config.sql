-- Table: public.cana_application_config

-- DROP TABLE IF EXISTS public.cana_application_config;

CREATE TABLE IF NOT EXISTS public.cana_application_config
(
    id bigint NOT NULL DEFAULT id_generator(),
    key character varying COLLATE pg_catalog."default" NOT NULL,
    value character varying COLLATE pg_catalog."default" NOT NULL,
    isactive boolean NOT NULL,
    createdon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    modifiedon timestamp with time zone,
    comments character varying COLLATE pg_catalog."default",
    userid bigint NOT NULL,
    CONSTRAINT cana_application_config_pkey PRIMARY KEY (id),
    CONSTRAINT cana_application_config_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cana_application_config
    OWNER to "cana-api";