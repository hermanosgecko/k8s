{{- define "lldap.secretsname" -}}
{{- if .Values.secrets.existingSecret }}
{{ .Values.secrets.existingSecret }}
{{ else }}
{{- include "lldap.fullname" . }}-secrets
{{- end }}
{{- end -}}

{{- define "lldap.postgres_url" -}}
{{ "postgres://postgres:"}}{{ .Values.postgresql.auth.postgresPassword }}{{ "@lldap-postgresql." }}{{ .Release.Namespace }}.svc.cluster.local:5432/{{ .Values.postgresql.auth.database }}
{{- end -}}
