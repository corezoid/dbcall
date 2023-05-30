{{/*
Image URL
*/}}
{{- define "dbcall.imageUrl" -}}
  {{- if ne .Values.global.repotype "public" }}
    {{- printf "%s/%s:%s" .Values.image.registry .Values.image.repository .Values.global.corezoid_dbcall.tag }}
  {{- else }}
    {{- printf "%s/public/%s:%s" .Values.image.registry .Values.image.repository .Values.image.tag }}
  {{- end }}
{{- end }}

{{/*
Common labels for migrations job
*/}}
{{- define "dbcallMigrations.labels" -}}
{{- include "dbcall.labels" . }}
job_type: migrations
{{- end }}

{{/*
Image URL for migrations job
*/}}
{{- define "dbcallMigrations.imageUrl" -}}
  {{- if ne .Values.global.repotype "public" }}
    {{- printf "%s/%s:%s" .Values.image.registry .Values.image.repository_migrations .Values.global.corezoid_dbcall.tag }}
  {{- else }}
    {{- printf "%s/public/%s:%s" .Values.image.registry .Values.image.repository_migrations .Values.image.tag }}
  {{- end }}
{{- end }}
