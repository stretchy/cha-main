.PHONY: deps

deps:
	find ./charts -name "Chart.yaml" | \
		xargs -L1 dirname | \
		xargs -I% sh -c \
			"helm dependency build %"
