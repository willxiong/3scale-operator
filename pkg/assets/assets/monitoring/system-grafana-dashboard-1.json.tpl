{
  "annotations": {
    "list": [
      {
        "builtIn": 1,
        "datasource": "-- Grafana --",
        "enable": true,
        "hide": true,
        "iconColor": "rgba(0, 211, 255, 1)",
        "name": "Annotations & Alerts",
        "type": "dashboard"
      }
    ]
  },
  "description": "",
  "editable": true,
  "gnetId": null,
  "graphTooltip": 0,
  "id": 42,
  "iteration": 1601975151139,
  "links": [],
  "panels": [
    {
      "collapsed": false,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 0
      },
      "id": 60,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 0
          },
          "id": 161,
          "legend": {
            "alignAsTable": false,
            "avg": false,
            "current": false,
            "hideEmpty": false,
            "hideZero": false,
            "max": false,
            "min": false,
            "rightSide": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) by (status)",
              "format": "time_series",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 1,
              "legendFormat": "{{status}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "System requests per second (by status)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 1,
              "format": "reqps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 0
          },
          "id": 163,
          "legend": {
            "alignAsTable": false,
            "avg": false,
            "current": false,
            "hideEmpty": false,
            "hideZero": false,
            "max": false,
            "min": false,
            "rightSide": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) by (controller)",
              "format": "time_series",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 1,
              "legendFormat": "{{controller}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "System requests per second (by controller)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 1,
              "format": "reqps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 8
          },
          "id": 165,
          "legend": {
            "alignAsTable": false,
            "avg": false,
            "current": false,
            "hideEmpty": false,
            "hideZero": false,
            "max": false,
            "min": false,
            "rightSide": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',status=~'2[0-9]*'}[1m])) by (controller)",
              "format": "time_series",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 1,
              "legendFormat": "{{controller}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "System 2xx requests per second (by controller)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 1,
              "format": "reqps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 6,
            "x": 12,
            "y": 8
          },
          "id": 162,
          "legend": {
            "alignAsTable": false,
            "avg": false,
            "current": false,
            "hideEmpty": false,
            "hideZero": false,
            "max": false,
            "min": false,
            "rightSide": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',status=~'4[0-9]*'}[1m])) by (controller)",
              "format": "time_series",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 1,
              "legendFormat": "{{controller}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "System 4xx requests per second (by controller)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 1,
              "format": "reqps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 6,
            "x": 18,
            "y": 8
          },
          "id": 164,
          "legend": {
            "alignAsTable": false,
            "avg": false,
            "current": false,
            "hideEmpty": false,
            "hideZero": false,
            "max": false,
            "min": false,
            "rightSide": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(rails_requests_total{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',status=~'5[0-9]*'}[1m])) by (controller)",
              "format": "time_series",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 1,
              "legendFormat": "{{controller}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "System 5xx requests per second (by controller)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 1,
              "format": "ops",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 16
          },
          "id": 166,
          "legend": {
            "alignAsTable": false,
            "avg": false,
            "current": false,
            "hideEmpty": false,
            "hideZero": false,
            "max": false,
            "min": false,
            "rightSide": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(rails_request_duration_seconds_sum{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) / sum(rate(rails_request_duration_seconds_count{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m]))",
              "format": "time_series",
              "hide": false,
              "intervalFactor": 1,
              "legendFormat": "Total",
              "refId": "A"
            },
            {
              "expr": "sum(rate(rails_db_runtime_seconds_sum{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) / sum(rate(rails_db_runtime_seconds_count{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m]))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "ActiveRecord",
              "refId": "B"
            },
            {
              "expr": "sum(rate(rails_view_runtime_seconds_sum{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m])) / sum(rate(rails_view_runtime_seconds_count{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+'}[1m]))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "View",
              "refId": "C"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Rails average response time",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "s",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "cards": {
            "cardPadding": null,
            "cardRound": null
          },
          "color": {
            "cardColor": "#5794F2",
            "colorScale": "sqrt",
            "colorScheme": "interpolateOranges",
            "exponent": 0.5,
            "mode": "opacity"
          },
          "dataFormat": "tsbuckets",
          "datasource": "$datasource",
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 16
          },
          "heatmap": {},
          "hideZeroBuckets": false,
          "highlightCards": true,
          "id": 169,
          "legend": {
            "show": false
          },
          "links": [],
          "options": {},
          "reverseYBuckets": false,
          "targets": [
            {
              "expr": "sum(rate(rails_request_duration_seconds_bucket{namespace='$namespace',pod=~'system-app-.*'}[1m])) by (le)",
              "format": "heatmap",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 10,
              "legendFormat": "{{le}}",
              "refId": "A"
            }
          ],
          "timeFrom": null,
          "timeShift": null,
          "title": "Requests per second heatmap (by response time bucket in seconds)",
          "tooltip": {
            "show": true,
            "showHistogram": false
          },
          "type": "heatmap",
          "xAxis": {
            "show": true
          },
          "xBucketNumber": null,
          "xBucketSize": null,
          "yAxis": {
            "decimals": 0,
            "format": "s",
            "logBase": 1,
            "max": null,
            "min": null,
            "show": true,
            "splitFactor": null
          },
          "yBucketBound": "auto",
          "yBucketNumber": null,
          "yBucketSize": null
        },
        {
          "cards": {
            "cardPadding": null,
            "cardRound": null
          },
          "color": {
            "cardColor": "#5794F2",
            "colorScale": "sqrt",
            "colorScheme": "interpolateOranges",
            "exponent": 0.5,
            "mode": "opacity"
          },
          "dataFormat": "tsbuckets",
          "datasource": "$datasource",
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 24
          },
          "heatmap": {},
          "hideZeroBuckets": false,
          "highlightCards": true,
          "id": 167,
          "legend": {
            "show": false
          },
          "links": [],
          "options": {},
          "reverseYBuckets": false,
          "targets": [
            {
              "expr": "sum(rate(rails_request_duration_seconds_bucket{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',controller='notifications'}[1m])) by (le)",
              "format": "heatmap",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 10,
              "legendFormat": "{{le}}",
              "refId": "A"
            }
          ],
          "timeFrom": null,
          "timeShift": null,
          "title": "Notifications requests per second heatmap (by response time bucket in seconds)",
          "tooltip": {
            "show": true,
            "showHistogram": false
          },
          "type": "heatmap",
          "xAxis": {
            "show": true
          },
          "xBucketNumber": null,
          "xBucketSize": null,
          "yAxis": {
            "decimals": 0,
            "format": "s",
            "logBase": 1,
            "max": null,
            "min": null,
            "show": true,
            "splitFactor": null
          },
          "yBucketBound": "auto",
          "yBucketNumber": null,
          "yBucketSize": null
        },
        {
          "cards": {
            "cardPadding": null,
            "cardRound": null
          },
          "color": {
            "cardColor": "#5794F2",
            "colorScale": "sqrt",
            "colorScheme": "interpolateOranges",
            "exponent": 0.5,
            "mode": "opacity"
          },
          "dataFormat": "tsbuckets",
          "datasource": "$datasource",
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 24
          },
          "heatmap": {},
          "hideZeroBuckets": false,
          "highlightCards": true,
          "id": 170,
          "legend": {
            "show": false
          },
          "links": [],
          "options": {},
          "reverseYBuckets": false,
          "targets": [
            {
              "expr": "sum(rate(rails_request_duration_seconds_bucket{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',controller='tenants'}[1m])) by (le)",
              "format": "heatmap",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 10,
              "legendFormat": "{{le}}",
              "refId": "A"
            }
          ],
          "timeFrom": null,
          "timeShift": null,
          "title": "Tenants requests per second heatmap (by response time bucket in seconds)",
          "tooltip": {
            "show": true,
            "showHistogram": false
          },
          "type": "heatmap",
          "xAxis": {
            "show": true
          },
          "xBucketNumber": null,
          "xBucketSize": null,
          "yAxis": {
            "decimals": 0,
            "format": "s",
            "logBase": 1,
            "max": null,
            "min": null,
            "show": true,
            "splitFactor": null
          },
          "yBucketBound": "auto",
          "yBucketNumber": null,
          "yBucketSize": null
        },
        {
          "cards": {
            "cardPadding": null,
            "cardRound": null
          },
          "color": {
            "cardColor": "#5794F2",
            "colorScale": "sqrt",
            "colorScheme": "interpolateOranges",
            "exponent": 0.5,
            "mode": "opacity"
          },
          "dataFormat": "tsbuckets",
          "datasource": "$datasource",
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 32
          },
          "heatmap": {},
          "hideZeroBuckets": false,
          "highlightCards": true,
          "id": 171,
          "legend": {
            "show": false
          },
          "links": [],
          "options": {},
          "reverseYBuckets": false,
          "targets": [
            {
              "expr": "sum(rate(rails_request_duration_seconds_bucket{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',controller='status/live'}[1m])) by (le)",
              "format": "heatmap",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 10,
              "legendFormat": "{{le}}",
              "refId": "A"
            }
          ],
          "timeFrom": null,
          "timeShift": null,
          "title": "Liveness requests per second heatmap (by response time bucket in seconds)",
          "tooltip": {
            "show": true,
            "showHistogram": false
          },
          "type": "heatmap",
          "xAxis": {
            "show": true
          },
          "xBucketNumber": null,
          "xBucketSize": null,
          "yAxis": {
            "decimals": 0,
            "format": "s",
            "logBase": 1,
            "max": null,
            "min": null,
            "show": true,
            "splitFactor": null
          },
          "yBucketBound": "auto",
          "yBucketNumber": null,
          "yBucketSize": null
        },
        {
          "cards": {
            "cardPadding": null,
            "cardRound": null
          },
          "color": {
            "cardColor": "#5794F2",
            "colorScale": "sqrt",
            "colorScheme": "interpolateOranges",
            "exponent": 0.5,
            "mode": "opacity"
          },
          "dataFormat": "tsbuckets",
          "datasource": "$datasource",
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 32
          },
          "heatmap": {},
          "hideZeroBuckets": false,
          "highlightCards": true,
          "id": 168,
          "legend": {
            "show": false
          },
          "links": [],
          "options": {},
          "reverseYBuckets": false,
          "targets": [
            {
              "expr": "sum(rate(rails_request_duration_seconds_bucket{namespace='$namespace',pod=~'system-app-[a-z0-9]+-[a-z0-9]+',controller='status/ready'}[1m])) by (le)",
              "format": "heatmap",
              "hide": false,
              "interval": "1m",
              "intervalFactor": 10,
              "legendFormat": "{{le}}",
              "refId": "A"
            }
          ],
          "timeFrom": null,
          "timeShift": null,
          "title": "Readiness requests per second heatmap (by response time bucket in seconds)",
          "tooltip": {
            "show": true,
            "showHistogram": false
          },
          "type": "heatmap",
          "xAxis": {
            "show": true
          },
          "xBucketNumber": null,
          "xBucketSize": null,
          "yAxis": {
            "decimals": 0,
            "format": "s",
            "logBase": 1,
            "max": null,
            "min": null,
            "show": true,
            "splitFactor": null
          },
          "yBucketBound": "auto",
          "yBucketNumber": null,
          "yBucketSize": null
        }
      ],
      "title": "Web app",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 40
      },
      "id": 20,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 24,
            "x": 0,
            "y": 41
          },
          "id": 22,
          "legend": {
            "alignAsTable": true,
            "avg": true,
            "current": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": true,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(sidekiq_jobs_success_total{namespace='$namespace'}[1m]))",
              "format": "time_series",
              "hide": false,
              "intervalFactor": 2,
              "legendFormat": "Successful jobs",
              "refId": "A"
            },
            {
              "expr": "sum(rate(sidekiq_jobs_failed_total{namespace='$namespace'}[1m]))",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "Failed jobs",
              "refId": "B"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Jobs processed every second",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "ops",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 49
          },
          "id": 38,
          "legend": {
            "alignAsTable": true,
            "avg": true,
            "current": true,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": true,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(sidekiq_jobs_success_total{namespace='$namespace'}[1m])) by (queue)",
              "format": "time_series",
              "hide": false,
              "intervalFactor": 2,
              "legendFormat": "Processed in {{`{{queue}}`}}",
              "refId": "A"
            },
            {
              "expr": "sum(rate(sidekiq_jobs_failed_total{namespace='$namespace'}[1m])) by (queue)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "Failed in {{`{{queue}}`}}",
              "refId": "B"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Jobs processed by queue",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "ops",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 49
          },
          "id": 40,
          "legend": {
            "alignAsTable": true,
            "avg": true,
            "current": true,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": true,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(sidekiq_jobs_success_total{namespace='$namespace'}[1m])) by (worker)",
              "format": "time_series",
              "interval": "",
              "intervalFactor": 2,
              "legendFormat": "{{`{{worker}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Jobs processed by job type",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "ops",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 57
          },
          "id": 39,
          "legend": {
            "alignAsTable": true,
            "avg": false,
            "current": true,
            "hideEmpty": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": true,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "max(sidekiq_jobs_waiting_count{namespace='$namespace'}) by (queue)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{queue}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Queue sizes",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "description": "Queue latency is the difference in seconds since the oldest job in the queue was enqueued. Or how long job is waiting its turn to be executed.",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 57
          },
          "id": 41,
          "legend": {
            "alignAsTable": true,
            "avg": false,
            "current": true,
            "hideEmpty": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": true,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "max(sidekiq_queue_latency{namespace='$namespace'}) by (queue)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{queue}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Queue latencies",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "s",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 65
          },
          "id": 45,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "histogram_quantile(0.95, sum(rate(sidekiq_job_runtime_seconds_bucket{namespace='$namespace'}[1m])) by (le)) ",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "95% quantile of sidekiq ",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Job processing average time",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "s",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 65
          },
          "id": 43,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "histogram_quantile(0.95, sum(rate(sidekiq_job_runtime_seconds_bucket{namespace='$namespace'}[1m])) by (worker, le)) ",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{worker}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Job processing average time by job type",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "s",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 0,
            "y": 73
          },
          "id": 42,
          "legend": {
            "alignAsTable": true,
            "avg": true,
            "current": true,
            "hideEmpty": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": true,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(rate(sidekiq_jobs_enqueued_total{namespace='$namespace'}[1m])) by (queue)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{queue}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Sidekiq jobs pushed by queue",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 8,
            "w": 12,
            "x": 12,
            "y": 73
          },
          "id": 44,
          "legend": {
            "alignAsTable": true,
            "avg": false,
            "current": true,
            "hideEmpty": true,
            "max": false,
            "min": false,
            "rightSide": true,
            "show": false,
            "total": false,
            "values": true
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": true,
          "steppedLine": false,
          "targets": [
            {
              "expr": "max(sidekiq_jobs_retry_count{namespace='$namespace'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{queue}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Retry set",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "title": "Sidekiq",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 41
      },
      "id": 13,
      "panels": [
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 0,
            "y": 82
          },
          "hideTimeOverride": true,
          "id": 64,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Running pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorPrefix": false,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#F2495C"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 6,
            "y": 82
          },
          "hideTimeOverride": true,
          "id": 65,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Unavailable pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 12,
            "y": 82
          },
          "hideTimeOverride": true,
          "id": 66,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Pods distributed on hosts",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#d44a3a"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 18,
            "y": 82
          },
          "hideTimeOverride": true,
          "id": 36,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "",
              "refId": "B"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Max pods restarts (last 5 minutes)",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 85
          },
          "id": 11,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "total-pods",
              "legendLink": null,
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "avail-pods",
              "refId": "B"
            },
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "unavail-pods",
              "refId": "C"
            },
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "used-hosts",
              "refId": "D"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pod count (total, avail, unvail) and pods hosts distribution",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 0,
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": "deploymentConfig",
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-app",
          "value": "system-app"
        }
      },
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 42
      },
      "id": 71,
      "panels": [
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 0,
            "y": 83
          },
          "hideTimeOverride": true,
          "id": 72,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 64,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Running pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorPrefix": false,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#F2495C"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 6,
            "y": 83
          },
          "hideTimeOverride": true,
          "id": 73,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 65,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Unavailable pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 12,
            "y": 83
          },
          "hideTimeOverride": true,
          "id": 74,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 66,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Pods distributed on hosts",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#d44a3a"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 18,
            "y": 83
          },
          "hideTimeOverride": true,
          "id": 75,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 36,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "",
              "refId": "B"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Max pods restarts (last 5 minutes)",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 86
          },
          "id": 76,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 11,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "total-pods",
              "legendLink": null,
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "avail-pods",
              "refId": "B"
            },
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "unavail-pods",
              "refId": "C"
            },
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "used-hosts",
              "refId": "D"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pod count (total, avail, unvail) and pods hosts distribution",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 0,
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 13,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-memcache",
          "value": "system-memcache"
        }
      },
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 43
      },
      "id": 77,
      "panels": [
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 0,
            "y": 84
          },
          "hideTimeOverride": true,
          "id": 78,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 64,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Running pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorPrefix": false,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#F2495C"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 6,
            "y": 84
          },
          "hideTimeOverride": true,
          "id": 79,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 65,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Unavailable pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 12,
            "y": 84
          },
          "hideTimeOverride": true,
          "id": 80,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 66,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Pods distributed on hosts",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#d44a3a"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 18,
            "y": 84
          },
          "hideTimeOverride": true,
          "id": 81,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 36,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "",
              "refId": "B"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Max pods restarts (last 5 minutes)",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 87
          },
          "id": 82,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 11,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "total-pods",
              "legendLink": null,
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "avail-pods",
              "refId": "B"
            },
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "unavail-pods",
              "refId": "C"
            },
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "used-hosts",
              "refId": "D"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pod count (total, avail, unvail) and pods hosts distribution",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 0,
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 13,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-mysql",
          "value": "system-mysql"
        }
      },
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 44
      },
      "id": 83,
      "panels": [
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 0,
            "y": 85
          },
          "hideTimeOverride": true,
          "id": 84,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 64,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Running pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorPrefix": false,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#F2495C"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 6,
            "y": 85
          },
          "hideTimeOverride": true,
          "id": 85,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 65,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Unavailable pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 12,
            "y": 85
          },
          "hideTimeOverride": true,
          "id": 86,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 66,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Pods distributed on hosts",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#d44a3a"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 18,
            "y": 85
          },
          "hideTimeOverride": true,
          "id": 87,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 36,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "",
              "refId": "B"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Max pods restarts (last 5 minutes)",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 88
          },
          "id": 88,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 11,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "total-pods",
              "legendLink": null,
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "avail-pods",
              "refId": "B"
            },
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "unavail-pods",
              "refId": "C"
            },
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "used-hosts",
              "refId": "D"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pod count (total, avail, unvail) and pods hosts distribution",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 0,
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 13,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-redis",
          "value": "system-redis"
        }
      },
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 45
      },
      "id": 89,
      "panels": [
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 0,
            "y": 86
          },
          "hideTimeOverride": true,
          "id": 90,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 64,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Running pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorPrefix": false,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#F2495C"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 6,
            "y": 86
          },
          "hideTimeOverride": true,
          "id": 91,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 65,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Unavailable pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 12,
            "y": 86
          },
          "hideTimeOverride": true,
          "id": 92,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 66,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Pods distributed on hosts",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#d44a3a"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 18,
            "y": 86
          },
          "hideTimeOverride": true,
          "id": 93,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 36,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "",
              "refId": "B"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Max pods restarts (last 5 minutes)",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 89
          },
          "id": 94,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 11,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "total-pods",
              "legendLink": null,
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "avail-pods",
              "refId": "B"
            },
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "unavail-pods",
              "refId": "C"
            },
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "used-hosts",
              "refId": "D"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pod count (total, avail, unvail) and pods hosts distribution",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 0,
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 13,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sidekiq",
          "value": "system-sidekiq"
        }
      },
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 46
      },
      "id": 95,
      "panels": [
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 0,
            "y": 87
          },
          "hideTimeOverride": true,
          "id": 96,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 64,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Running pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorPrefix": false,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#F2495C"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 6,
            "y": 87
          },
          "hideTimeOverride": true,
          "id": 97,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 65,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Unavailable pods",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#F2495C",
            "rgba(237, 129, 40, 0.89)",
            "#299c46"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 12,
            "y": 87
          },
          "hideTimeOverride": true,
          "id": 98,
          "interval": "",
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "pluginVersion": "6.2.4",
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 66,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "refId": "A"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Pods distributed on hosts",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "cacheTimeout": null,
          "colorBackground": true,
          "colorValue": false,
          "colors": [
            "#299c46",
            "rgba(237, 129, 40, 0.89)",
            "#d44a3a"
          ],
          "datasource": "$datasource",
          "decimals": 0,
          "format": "none",
          "gauge": {
            "maxValue": 100,
            "minValue": 0,
            "show": false,
            "thresholdLabels": false,
            "thresholdMarkers": true
          },
          "gridPos": {
            "h": 3,
            "w": 6,
            "x": 18,
            "y": 87
          },
          "hideTimeOverride": true,
          "id": 99,
          "interval": null,
          "links": [],
          "mappingType": 1,
          "mappingTypes": [
            {
              "name": "value to text",
              "value": 1
            },
            {
              "name": "range to text",
              "value": 2
            }
          ],
          "maxDataPoints": 100,
          "nullPointMode": "connected",
          "nullText": null,
          "options": {},
          "postfix": "",
          "postfixFontSize": "50%",
          "prefix": "",
          "prefixFontSize": "50%",
          "rangeMaps": [
            {
              "from": "null",
              "text": "N/A",
              "to": "null"
            }
          ],
          "repeatIteration": 1603091358743,
          "repeatPanelId": 36,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "sparkline": {
            "fillColor": "rgba(31, 118, 189, 0.18)",
            "full": false,
            "lineColor": "rgb(31, 120, 193)",
            "show": false
          },
          "tableColumn": "",
          "targets": [
            {
              "expr": "max(sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m]))) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "",
              "refId": "B"
            }
          ],
          "thresholds": "1,2",
          "timeFrom": "30s",
          "timeShift": "30s",
          "title": "Max pods restarts (last 5 minutes)",
          "type": "singlestat",
          "valueFontSize": "80%",
          "valueMaps": [
            {
              "op": "=",
              "text": "0",
              "value": "null"
            }
          ],
          "valueName": "avg"
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 90
          },
          "id": 100,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 11,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "total-pods",
              "legendLink": null,
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "avail-pods",
              "refId": "B"
            },
            {
              "expr": "sum(kube_replicationcontroller_spec_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'}) - sum(kube_replicationcontroller_status_ready_replicas{namespace='$namespace',replicationcontroller=~'$deploymentConfig-[0-9]+'})",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "unavail-pods",
              "refId": "C"
            },
            {
              "expr": "count(count(container_memory_usage_bytes{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (node))",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "used-hosts",
              "refId": "D"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pod count (total, avail, unvail) and pods hosts distribution",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": 0,
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 13,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sphinx",
          "value": "system-sphinx"
        }
      },
      "title": "Pods ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 47
      },
      "id": 4,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 88
          },
          "id": 70,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "CPU Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": "deploymentConfig",
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-app",
          "value": "system-app"
        }
      },
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 48
      },
      "id": 101,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 89
          },
          "id": 102,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 70,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "CPU Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 4,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-memcache",
          "value": "system-memcache"
        }
      },
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 49
      },
      "id": 103,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 90
          },
          "id": 104,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 70,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "CPU Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 4,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-mysql",
          "value": "system-mysql"
        }
      },
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 50
      },
      "id": 105,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 91
          },
          "id": 106,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 70,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "CPU Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 4,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-redis",
          "value": "system-redis"
        }
      },
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 51
      },
      "id": 107,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 92
          },
          "id": 108,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 70,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "CPU Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 4,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sidekiq",
          "value": "system-sidekiq"
        }
      },
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 52
      },
      "id": 109,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 93
          },
          "id": 110,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 70,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "CPU Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 4,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sphinx",
          "value": "system-sphinx"
        }
      },
      "title": "CPU Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 53
      },
      "id": 5,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 6,
            "w": 24,
            "x": 0,
            "y": 94
          },
          "id": 9,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pods restarts (last 5 minutes)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 100
          },
          "id": 1,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": false
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "CPU Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "CPU Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "CPU Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": "deploymentConfig",
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-app",
          "value": "system-app"
        }
      },
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 54
      },
      "id": 111,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 6,
            "w": 24,
            "x": 0,
            "y": 95
          },
          "id": 112,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 9,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pods restarts (last 5 minutes)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 101
          },
          "id": 113,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 1,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": false
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "CPU Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "CPU Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "CPU Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 5,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-memcache",
          "value": "system-memcache"
        }
      },
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 55
      },
      "id": 114,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 6,
            "w": 24,
            "x": 0,
            "y": 96
          },
          "id": 115,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 9,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pods restarts (last 5 minutes)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 102
          },
          "id": 116,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 1,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": false
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "CPU Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "CPU Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "CPU Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 5,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-mysql",
          "value": "system-mysql"
        }
      },
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 56
      },
      "id": 117,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 6,
            "w": 24,
            "x": 0,
            "y": 97
          },
          "id": 118,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 9,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pods restarts (last 5 minutes)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 103
          },
          "id": 119,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 1,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": false
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "CPU Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "CPU Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "CPU Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 5,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-redis",
          "value": "system-redis"
        }
      },
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 57
      },
      "id": 120,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 6,
            "w": 24,
            "x": 0,
            "y": 98
          },
          "id": 121,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 9,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pods restarts (last 5 minutes)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 104
          },
          "id": 122,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 1,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": false
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "CPU Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "CPU Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "CPU Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 5,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sidekiq",
          "value": "system-sidekiq"
        }
      },
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 58
      },
      "id": 123,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 6,
            "w": 24,
            "x": 0,
            "y": 99
          },
          "id": 124,
          "legend": {
            "avg": false,
            "current": false,
            "hideEmpty": true,
            "hideZero": true,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": null,
          "repeatIteration": 1603091358743,
          "repeatPanelId": 9,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(delta(kube_pod_container_status_restarts_total{namespace='$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 1,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Pods restarts (last 5 minutes)",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": true
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 105
          },
          "id": 125,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "maxPerRow": 3,
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeat": null,
          "repeatDirection": "h",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 1,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": false
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "CPU Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "CPU Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "CPU Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_requests_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(node_namespace_pod_container:container_cpu_usage_seconds_total:sum_rate{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod) / sum(kube_pod_container_resource_limits_cpu_cores{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "CPU Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 5,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sphinx",
          "value": "system-sphinx"
        }
      },
      "title": "CPU Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 59
      },
      "id": 6,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 100
          },
          "id": 2,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Memory Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "bytes",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": "deploymentConfig",
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-app",
          "value": "system-app"
        }
      },
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 60
      },
      "id": 126,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 101
          },
          "id": 127,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 2,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Memory Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "bytes",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 6,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-memcache",
          "value": "system-memcache"
        }
      },
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 61
      },
      "id": 128,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 102
          },
          "id": 129,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 2,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Memory Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "bytes",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 6,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-mysql",
          "value": "system-mysql"
        }
      },
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 62
      },
      "id": 130,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 103
          },
          "id": 131,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 2,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Memory Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "bytes",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 6,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-redis",
          "value": "system-redis"
        }
      },
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 63
      },
      "id": 132,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 104
          },
          "id": 133,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 2,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Memory Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "bytes",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 6,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sidekiq",
          "value": "system-sidekiq"
        }
      },
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 64
      },
      "id": 134,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 105
          },
          "id": 135,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 2,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "legendLink": null,
              "refId": "A",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Memory Usage",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "bytes",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 6,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sphinx",
          "value": "system-sphinx"
        }
      },
      "title": "Memory Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 65
      },
      "id": 7,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 106
          },
          "id": 3,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": true
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "Memory Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Memory Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "Memory Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": "deploymentConfig",
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-app",
          "value": "system-app"
        }
      },
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 66
      },
      "id": 136,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 107
          },
          "id": 137,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 3,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": true
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "Memory Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Memory Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "Memory Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 7,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-memcache",
          "value": "system-memcache"
        }
      },
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 67
      },
      "id": 138,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 108
          },
          "id": 139,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 3,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": true
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "Memory Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Memory Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "Memory Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 7,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-mysql",
          "value": "system-mysql"
        }
      },
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 68
      },
      "id": 140,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 109
          },
          "id": 141,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 3,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": true
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "Memory Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Memory Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "Memory Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 7,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-redis",
          "value": "system-redis"
        }
      },
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 69
      },
      "id": 142,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 110
          },
          "id": 143,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 3,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": true
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "Memory Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Memory Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "Memory Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 7,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sidekiq",
          "value": "system-sidekiq"
        }
      },
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 70
      },
      "id": 144,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "columns": [],
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "fontSize": "100%",
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 111
          },
          "id": 145,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null as zero",
          "options": {},
          "pageSize": null,
          "percentage": false,
          "pointradius": 5,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 3,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "scroll": true,
          "seriesOverrides": [],
          "showHeader": true,
          "sort": {
            "col": 1,
            "desc": true
          },
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "styles": [
            {
              "alias": "Time",
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "pattern": "Time",
              "type": "hidden"
            },
            {
              "alias": "Memory Usage",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #A",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #B",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Requests %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #C",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Memory Limits",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #D",
              "thresholds": [],
              "type": "number",
              "unit": "decbytes"
            },
            {
              "alias": "Memory Limits %",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": false,
              "linkTooltip": "Drill down",
              "linkUrl": "",
              "pattern": "Value #E",
              "thresholds": [],
              "type": "number",
              "unit": "percentunit"
            },
            {
              "alias": "Pod",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "link": true,
              "linkTooltip": "Drill down",
              "linkUrl": "/d/{{ .Namespace }}/{{ .Namespace }}-3scale-kubernetes-compute-resources-pod?var-namespace=$namespace&var-pod=$__cell",
              "pattern": "pod",
              "thresholds": [],
              "type": "number",
              "unit": "short"
            },
            {
              "alias": "",
              "colorMode": null,
              "colors": [],
              "dateFormat": "YYYY-MM-DD HH:mm:ss",
              "decimals": 2,
              "pattern": "/.*/",
              "thresholds": [],
              "type": "string",
              "unit": "short"
            }
          ],
          "targets": [
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "A",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "B",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_requests_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "C",
              "step": 10
            },
            {
              "expr": "sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "D",
              "step": 10
            },
            {
              "expr": "sum(container_memory_usage_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+', container!=''}) by (pod) / sum(kube_pod_container_resource_limits_memory_bytes{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}) by (pod)",
              "format": "table",
              "instant": true,
              "intervalFactor": 2,
              "legendFormat": "",
              "refId": "E",
              "step": 10
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeShift": null,
          "title": "Memory Quota",
          "tooltip": {
            "shared": true,
            "sort": 0,
            "value_type": "individual"
          },
          "transform": "table",
          "type": "table",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": 0,
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ]
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 7,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sphinx",
          "value": "system-sphinx"
        }
      },
      "title": "Memory Quota ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 71
      },
      "id": 15,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 112
          },
          "id": 17,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Receive Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": null,
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 119
          },
          "id": 18,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-app",
              "value": "system-app"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Transmit Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": "deploymentConfig",
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-app",
          "value": "system-app"
        }
      },
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 72
      },
      "id": 146,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 113
          },
          "id": 147,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 17,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Receive Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": null,
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 120
          },
          "id": 148,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 18,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-memcache",
              "value": "system-memcache"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Transmit Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 15,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-memcache",
          "value": "system-memcache"
        }
      },
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 73
      },
      "id": 149,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 114
          },
          "id": 150,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 17,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Receive Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": null,
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 121
          },
          "id": 151,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 18,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-mysql",
              "value": "system-mysql"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Transmit Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 15,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-mysql",
          "value": "system-mysql"
        }
      },
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 74
      },
      "id": 152,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 115
          },
          "id": 153,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 17,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Receive Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": null,
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 122
          },
          "id": 154,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 18,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-redis",
              "value": "system-redis"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Transmit Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 15,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-redis",
          "value": "system-redis"
        }
      },
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 75
      },
      "id": 155,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 116
          },
          "id": 156,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 17,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Receive Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": null,
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 123
          },
          "id": 157,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 18,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sidekiq",
              "value": "system-sidekiq"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Transmit Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 15,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sidekiq",
          "value": "system-sidekiq"
        }
      },
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    },
    {
      "collapsed": true,
      "gridPos": {
        "h": 1,
        "w": 24,
        "x": 0,
        "y": 76
      },
      "id": 158,
      "panels": [
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 117
          },
          "id": 159,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 17,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_receive_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Receive Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "decimals": null,
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        },
        {
          "aliasColors": {},
          "bars": false,
          "dashLength": 10,
          "dashes": false,
          "datasource": "$datasource",
          "fill": 1,
          "gridPos": {
            "h": 7,
            "w": 24,
            "x": 0,
            "y": 124
          },
          "id": 160,
          "legend": {
            "avg": false,
            "current": false,
            "max": false,
            "min": false,
            "show": true,
            "total": false,
            "values": false
          },
          "lines": true,
          "linewidth": 1,
          "links": [],
          "nullPointMode": "null",
          "options": {},
          "percentage": false,
          "pointradius": 2,
          "points": false,
          "renderer": "flot",
          "repeatIteration": 1603091358743,
          "repeatPanelId": 18,
          "repeatedByRow": true,
          "scopedVars": {
            "deploymentConfig": {
              "selected": false,
              "text": "system-sphinx",
              "value": "system-sphinx"
            }
          },
          "seriesOverrides": [],
          "spaceLength": 10,
          "stack": false,
          "steppedLine": false,
          "targets": [
            {
              "expr": "sum(irate(container_network_transmit_bytes_total{namespace=~'$namespace',pod=~'$deploymentConfig-[a-z0-9]+-[a-z0-9]+'}[5m])) by (pod)",
              "format": "time_series",
              "intervalFactor": 2,
              "legendFormat": "{{`{{pod}}`}}",
              "refId": "A"
            }
          ],
          "thresholds": [],
          "timeFrom": null,
          "timeRegions": [],
          "timeShift": null,
          "title": "Transmit Bandwidth",
          "tooltip": {
            "shared": true,
            "sort": 2,
            "value_type": "individual"
          },
          "type": "graph",
          "xaxis": {
            "buckets": null,
            "mode": "time",
            "name": null,
            "show": true,
            "values": []
          },
          "yaxes": [
            {
              "format": "Bps",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": "0",
              "show": true
            },
            {
              "format": "short",
              "label": null,
              "logBase": 1,
              "max": null,
              "min": null,
              "show": false
            }
          ],
          "yaxis": {
            "align": false,
            "alignLevel": null
          }
        }
      ],
      "repeat": null,
      "repeatIteration": 1603091358743,
      "repeatPanelId": 15,
      "scopedVars": {
        "deploymentConfig": {
          "selected": false,
          "text": "system-sphinx",
          "value": "system-sphinx"
        }
      },
      "title": "Network Usage ($deploymentConfig)",
      "type": "row"
    }
  ],
  "refresh": "10s",
  "schemaVersion": 18,
  "style": "dark",
  "tags": [
    "3scale",
    "system"
  ],
  "templating": {
    "list": [
      {
        "hide": 0,
        "includeAll": false,
        "label": null,
        "multi": false,
        "name": "datasource",
        "options": [],
        "query": "prometheus",
        "refresh": 1,
        "regex": "",
        "skipUrlSync": false,
        "type": "datasource"
      },
      {
        "allValue": null,
        "current": {
          "tags": [],
          "text": "{{ .Namespace }}",
          "value": "{{ .Namespace }}"
        },
        "hide": 0,
        "includeAll": false,
        "label": "namespace",
        "multi": false,
        "name": "namespace",
        "options": [
          {
            "selected": true,
            "text": "{{ .Namespace }}",
            "value": "{{ .Namespace }}"
          }
        ],
        "query": "{{ .Namespace }}",
        "skipUrlSync": false,
        "type": "custom"
      },
      {
        "allValue": "",
        "datasource": "$datasource",
        "definition": "label_values(kube_pod_info{namespace='$namespace',pod=~'system-.*'}, pod)",
        "hide": 0,
        "includeAll": true,
        "label": "deploymentConfig",
        "multi": false,
        "name": "deploymentConfig",
        "options": [],
        "query": "label_values(kube_pod_info{namespace='$namespace',pod=~'system-.*'}, pod)",
        "refresh": 1,
        "regex": "/([a-z]+-[a-z]+)-[0-9]*/",
        "skipUrlSync": false,
        "sort": 1,
        "tagValuesQuery": "",
        "tags": [],
        "tagsQuery": "",
        "type": "query",
        "useTags": false
      }
    ]
  },
  "time": {
    "from": "now-1h",
    "to": "now"
  },
  "timepicker": {
    "refresh_intervals": [
      "5s",
      "10s",
      "30s",
      "1m",
      "5m",
      "15m",
      "30m",
      "1h",
      "2h",
      "1d"
    ],
    "time_options": [
      "5m",
      "15m",
      "1h",
      "6h",
      "12h",
      "24h",
      "2d",
      "7d",
      "30d"
    ]
  },
  "timezone": "",
  "title": "{{ .Namespace }} / 3scale / System",
  "version": 1
}
