{%- set source_model = "v_stg_transactions" -%}
{%- set src_pk = "TRANSACTION_PK" -%}
{%- set src_fk = ["CUSTOMER_FK", "ORDER_FK"] -%}
{%- set src_payload = ["TRANSACTION_NUMBER", "TRANSACTION_DATE", "TYPE", "AMOUNT"] -%}
{%- set src_eff = "EFFECTIVE_FROM" -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "SOURCE" -%}

{{ dbtvault.t_link(src_pk=src_pk, src_fk=src_fk, src_ldts=src_ldts,
                   src_payload=src_payload, src_eff=src_eff,
                   src_source=src_source, source_model=source_model) }}