{{/*
Image URL
*/}}
{{- define "dbcall.imageUrl" -}}
  {{- if eq .Values.global.repotype "simulator" }}
    {{- printf "%s/simulator/%s:%s" .Values.image.registry .Values.appName .Values.global.dbcall.corezoid_dbcall.tag }}
  {{- else if eq .Values.global.repotype "public" }}
    {{- printf "%s/public/%s:%s" .Values.image.registry .Values.appName .Values.global.dbcall.corezoid_dbcall.tag }}
  {{- else }}
    {{- printf "%s/%s:%s" .Values.image.registry .Values.image.repository .Values.global.dbcall.corezoid_dbcall.tag }}
  {{- end }}
{{- end }}

{{- define "app.dbcall.annotations" -}}
{{- with .Values.global.dbcall.corezoid_dbcall.annotations }}
{{ toYaml . | trim | indent 4 }}
{{- end }}
{{- end }}
