{{/*
Image URL
*/}}
{{- define "dbcall.imageUrl" -}}
  {{- if ne .Values.global.repotype "public" }}
    {{- printf "%s/%s:%s" .Values.image.registry .Values.image.repository .Values.global.dbcall.corezoid_dbcall.tag }}
  {{- else }}
    {{- printf "%s/public/%s:%s" .Values.image.registry .Values.appName .Values.global.dbcall.corezoid_dbcall.tag }}
  {{- end }}
{{- end }}
