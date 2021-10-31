-- Table: public.environmentvariable

-- DROP TABLE public.environmentvariable;

CREATE TABLE IF NOT EXISTS public.environmentvariable
(
    key character varying COLLATE pg_catalog."default" NOT NULL,
    value character varying COLLATE pg_catalog."default" NOT NULL,
    type character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying COLLATE pg_catalog."default",
    modifiedby character varying COLLATE pg_catalog."default",
    isactive boolean NOT NULL,
    comments character varying COLLATE pg_catalog."default",
    userid bigint NOT NULL,
    environmentid bigint,
    content character varying COLLATE pg_catalog."default",
    id bigint NOT NULL DEFAULT nextval('environmentvariable_id_seq'::regclass),
    CONSTRAINT environmentvariable_pkey PRIMARY KEY (id),
    CONSTRAINT environmentvariable_userid_fkey FOREIGN KEY (userid)
        REFERENCES public.customer (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.environmentvariable
    OWNER to postgres;
-- Index: fki_environmentvariable_environmentid_pkey

-- DROP INDEX public.fki_environmentvariable_environmentid_pkey;

CREATE INDEX fki_environmentvariable_environmentid_pkey
    ON public.environmentvariable USING btree
    (environmentid ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: index_userid

-- DROP INDEX public.index_userid;

CREATE INDEX index_userid
    ON public.environmentvariable USING btree
    (userid ASC NULLS LAST)
    TABLESPACE pg_default;