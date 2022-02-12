-- Table: public.action_option_result

-- DROP TABLE IF EXISTS public.action_option_result;

CREATE TABLE IF NOT EXISTS public.action_option_result
(
    id bigint NOT NULL DEFAULT id_generator(),
    action_result_id bigint NOT NULL,
    action_option_id bigint NOT NULL,
    startedon timestamp with time zone,
    completedon timestamp with time zone,
    status character varying COLLATE pg_catalog."default" NOT NULL,
    error_message character varying COLLATE pg_catalog."default",
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    execution_order bigint,
    duration bigint,
    CONSTRAINT action_option_result_pkey PRIMARY KEY (id),
    CONSTRAINT action_option_result_action_option_id_fkey FOREIGN KEY (action_option_id)
        REFERENCES public.actionoption (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT action_option_result_action_result_id_fkey FOREIGN KEY (action_result_id)
        REFERENCES public.action_result (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)


ALTER TABLE IF EXISTS public.action_option_result
    OWNER to "cana-api";