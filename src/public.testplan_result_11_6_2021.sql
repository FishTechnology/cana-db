-- Table: public.testplan_result

-- DROP TABLE public.testplan_result;

CREATE TABLE IF NOT EXISTS public.testplan_result
(
    id bigint NOT NULL DEFAULT nextval('testplan_result_id_seq'::regclass),
    schedule_iteration_id bigint NOT NULL,
    testplanid bigint NOT NULL,
    startedon timestamp with time zone,
    completedon timestamp with time zone,
    error_message character varying COLLATE pg_catalog."default",
    status character varying COLLATE pg_catalog."default" NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    CONSTRAINT testplan_result_pkey PRIMARY KEY (id),
    CONSTRAINT testplan_result_schedule_iteration_id_fkey FOREIGN KEY (schedule_iteration_id)
        REFERENCES public.scheduleiteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT testplan_result_testplanid_fkey FOREIGN KEY (testplanid)
        REFERENCES public.testplan (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.testplan_result
    OWNER to postgres;