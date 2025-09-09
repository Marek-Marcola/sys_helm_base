{{- define "common.labels.meta" -}}
app: {{ .Release.Name }}
version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/name: {{ .Values.app }}
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/part-of: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "common.labels.match" -}}
app.kubernetes.io/name: {{ .Values.app }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
