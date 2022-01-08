-- Table: public.config_key_value

-- DROP TABLE IF EXISTS public.config_key_value;

CREATE TABLE IF NOT EXISTS public.config_key_value
(
    id bigint NOT NULL DEFAULT id_generator(),
    configid bigint NOT NULL,
    key character varying COLLATE pg_catalog."default" NOT NULL,
    value character varying COLLATE pg_catalog."default" NOT NULL,
    type character varying COLLATE pg_catalog."default" NOT NULL,
    userid bigint,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    fileid bigint,
    CONSTRAINT config_key_value_pkey PRIMARY KEY (id),
    CONSTRAINT config_key_value_configid_fkey FOREIGN KEY (configid)
        REFERENCES public.config (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT config_key_value_fileid_fkey FOREIGN KEY (fileid)
        REFERENCES public.file (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.config_key_value
    OWNER to "cana-api";