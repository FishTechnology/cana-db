-- Table: public.globalvariable

-- DROP TABLE public.globalvariable;

CREATE TABLE IF NOT EXISTS public.globalvariable
(
    key character varying COLLATE pg_catalog."default" NOT NULL,
    value character varying COLLATE pg_catalog."default" NOT NULL,
    valuetype character varying COLLATE pg_catalog."default" NOT NULL,
    userid bigint NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    id bigint NOT NULL DEFAULT nextval('globalvariable_id_seq'::regclass),
    fileid bigint,
    CONSTRAINT globalvariable_pkey PRIMARY KEY (id),
    CONSTRAINT globalvariable_fileid_fkey FOREIGN KEY (fileid)
        REFERENCES public.file (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT globalvariable_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.globalvariable
    OWNER to postgres;
-- Index: fki_globalvariable_fileid_fkey

-- DROP INDEX public.fki_globalvariable_fileid_fkey;

CREATE INDEX fki_globalvariable_fileid_fkey
    ON public.globalvariable USING btree
    (fileid ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_globalvariable_userid_fkey

-- DROP INDEX public.fki_globalvariable_userid_fkey;

CREATE INDEX fki_globalvariable_userid_fkey
    ON public.globalvariable USING btree
    (userid ASC NULLS LAST)
    TABLESPACE pg_default;