-- Table: public.notification

-- DROP TABLE public.notification;

CREATE TABLE IF NOT EXISTS public.notification
(
    schedule_iteration_id bigint NOT NULL,
    emailaddress character varying COLLATE pg_catalog."default",
    createdon timestamp with time zone,
    isactive boolean NOT NULL,
    createdby character varying COLLATE pg_catalog."default",
    modifiedon timestamp with time zone,
    id bigint NOT NULL DEFAULT nextval('notification_id_seq'::regclass),
    modifiedby character varying COLLATE pg_catalog."default",
    CONSTRAINT notification_pkey PRIMARY KEY (id),
    CONSTRAINT notificaiton_schedule_iteration_id_fkey FOREIGN KEY (schedule_iteration_id)
        REFERENCES public.scheduleiteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.notification
    OWNER to postgres;