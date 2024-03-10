# VictoriaMetrics CI/CD pipeline

<a href="https://dash.elest.io/deploy?source=cicd&social=dockerCompose&url=https://github.com/elestio-examples/victoriametrics"><img src="deploy-on-elestio.png" alt="Deploy on Elest.io" width="180px" /></a>

Deploy VictoriaMetrics server with CI/CD on Elestio

<img src="victoriametrics.png" style='width: 100%;'/>
<br/>
<br/>

# Once deployed ...

You can open VictoriaMetrics UI here:

    URL: https://[CI_CD_DOMAIN]
    login: "admin"
    password: [ADMIN_PASSWORD]

You can open Grafana here:

    URL: https://[CI_CD_DOMAIN]:33110
    email: [ADMIN_EMAIL]
    password: [ADMIN_PASSWORD]

# Querying VictoriaMetrics with cURL

VictoriaMetrics requires basic authentication for querying data.

Use the following cURL command template to make a query:

    curl -u admin:[ADMIN_PASSWORD] https://[CI_CD_DOMAIN]:443/prometheus/api/v1/query -d 'query=vm_http_request_errors_total'
