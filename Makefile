CHART=./helm/nginx-chart

DEV_VALUES=$(CHART)/values-dev.yaml
PROD_VALUES=$(CHART)/values-prod.yaml

dev:
	helm upgrade --install nginx-dev $(CHART) \
		-n dev \
		-f $(DEV_VALUES)

prod:
	helm upgrade --install nginx-prod $(CHART) \
		-n prod \
		-f $(PROD_VALUES)

template:
	helm template demo $(CHART)

lint:
	helm lint $(CHART)

uninstall:
	helm uninstall nginx-dev -n dev || true
	helm uninstall nginx-prod -n prod || true

status:
	kubectl get all -n dev
	kubectl get all -n prod

logs:
	kubectl logs -n dev deployment/nginx-dev

clean:
	kubectl delete namespace dev --ignore-not-found
	kubectl delete namespace prod --ignore-not-found
