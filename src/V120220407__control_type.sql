ALTER TABLE IF EXISTS public.actionoption
    RENAME control_type TO control_condition_type;

ALTER TABLE IF EXISTS public.scheduleiteration
    ADD COLUMN session_id character varying;

ALTER TABLE IF EXISTS public.scheduleiteration
    ADD COLUMN resolution character varying;