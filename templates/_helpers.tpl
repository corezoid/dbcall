{{/*
Expand the name of the chart.
*/}}
{{- define "dbcall.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "dbcall.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}


{{/*
Selector labels
*/}}
{{- define "dbcall.selectorLabels" -}}
app.kubernetes.io/name: {{ include "dbcall.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "dbcall.labels" -}}
{{ include "dbcall.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end }}

{{- define "common.ServiceMonitor.metadata.labes" -}}
simulator.observability/scrape: "true"
{{- end -}}

{{- define "dbcall.rabbitSecretName" -}}
{{- if .Values.global.mq.secret.secretName -}}
{{ .Values.global.mq.secret.secretName }}
{{- else -}}
{{ .Release.Name }}-dbcall-{{ .Values.global.mq.secret.name }}
{{- end -}}
{{- end -}}

{{- define "common.initWait.image" -}}
{{ .Values.global.imageInit.repository }}:{{ .Values.global.imageInit.tag }}
{{- end -}}
