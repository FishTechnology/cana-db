CREATE TABLE public.action_key
(
    id bigint NOT NULL DEFAULT id_generator(),
    actionid bigint NOT NULL,
    key character varying(400) NOT NULL,
    createdon timestamp with time zone,
    modifiedon timestamp with time zone,
    createdby character varying(200),
    modifiedby character varying(200),
    isactive boolean,
    PRIMARY KEY (id),
    FOREIGN KEY (actionid)
        REFERENCES public.action (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
);

ALTER TABLE IF EXISTS public.action_key
    OWNER to "cana-api";