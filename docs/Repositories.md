## By Popularity 

{% for repository in site.github.public_repositories | where "fork","False" | sort: "stargazers_count" %}
  * [{{ repository.name }}]({{ repository.html_url }})
{% endfor %}

## Alphabetically

{% for repository in site.github.public_repositories  %}
  * [{{ repository.name }}]({{ repository.html_url }})
{% endfor %}