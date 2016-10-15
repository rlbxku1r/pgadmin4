SELECT
    pid,
    datname,
    usename,
    application_name,
    client_addr,
    backend_start,
    state,
    CASE WHEN waiting THEN '{{ _('yes') }}' ELSE '{{ _('no') }}' END AS waiting
FROM
    pg_stat_activity
{% if did %}WHERE
    datname = (SELECT datname FROM pg_database WHERE oid = {{ did }}){% endif %}
ORDER BY pid