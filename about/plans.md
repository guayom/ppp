---
layout: project
title: Plans
subtitle: How we envision Punta Palmar Pacífico
permalink: /about/plans/
---
<div class="">
	<div class="row isotope-wrap gallery-wrap magnific-wrap">
		{% for plan in site.data.plans %}
			<div class="col-xs-12 mix office">
				<h3>{{ plan.title }}</h3>
				<figure class="figure">
					<img src="{{ site.url}}/images/plans/{{ plan.image }}" alt="{{ plan.title }}">
					<div class="mask mask-dark">
						<nav>
							<a image="icon icon-inverse icon-size-3 icon-theme icon-rounded magnific" href="{{ site.url}}/images/plans/{{ plan.image }}" title="{{ plan.title }}">
								<i class="fa fa-search"></i>
							</a>
						</nav>
					</div>
				</figure>
			</div>
		{% endfor %}
	</div>
</div>
