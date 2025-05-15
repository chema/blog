{
	"slug": "hardware",
    "title": "Hardware",
	"description": "The physical hardware that hosts A San Franciscan",
    "toc": true
}
This Hugo site and my two fediverse instances have been running on the server pictured below since late 2022.

{{< figure src="/public/img/NUCserver.jpg" caption="A small dusty server in a wire drawer with some cables in the background. " >}}

It’s a low-power Intel NUC with an Intel Celeron N5105 processor, 16 GB of RAM, and a 500 GB SSD. The entire setup lives under my printer and cost less than $300 (significantly less out of pocket since I had some spare gift cards).

Bandwidth demands are modest—just a few gigs weekly. No fancy tunneling involved either. It’s just a straightforward router setup forwarding a couple of ports, a script that updates the server’s IP with my registrar as needed, and a robust Fail2ban rule set to keep things a bit secure.

No more corporate social networks or VPSes.