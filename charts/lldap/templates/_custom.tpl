{{- define "lldap.secretsname" -}}
{{- if .Values.secrets.existingSecret }}
{{ .Values.secrets.existingSecret }}
{{ else }}
{{- include "lldap.fullname" . }}-secrets
{{- end }}
{{- end -}}

{{- define "lldap.postgres_url" -}}
{{ .Values.postgresql.auth.username }}{{":"}}{{ .Values.postgresql.auth.password }}@lldap-postgresql.{{ .Release.Namespace }}.svc.cluster.local:5432/{{ .Values.postgresql.auth.database }}
{{- end -}}
