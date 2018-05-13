/*
 *  Generated using odk2stata.py, version {{ metadata.odk2stata_version }}
 *
 *  Date: {{ metadata.date_created }}
 *  Author: {{ metadata.author }}
 */

import delimited "{{ metadata.filename_csv }}", charset("utf-8") delimiters(",") case(preserve) stringcols(_all) bindquote(strict)

{% if drop_column.omit is sameas false %}{% include "drop_column.do" %}{% endif %}
{% if rename.omit is sameas false %}{% include "rename.do" %}{% endif %}
{% if destring.omit is sameas false %}{% include "destring.do" %}{% endif %}
{% if encode_select_one.omit is sameas false %}{% include "encode_select_one.do" %}{% endif %}
{% if split_select_multiple.omit is sameas false %}{% include "split_select_multiple.do" %}{% endif %}
{% if label_variable.omit is sameas false %}{% include "label_variable.do" %}{% endif %}

save "{{ metadata.filename_dta }}"
