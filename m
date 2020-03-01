From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
Date: Sun, 01 Mar 2020 01:25:16 +0100
Message-ID: <6132615.msM8OCcsVu@phil>
References: <20200218221040.10955-1-me@carlosedp.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200218221040.10955-1-me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>
Cc: papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jose.abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Christoph Muellner <christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 18. Februar 2020, 23:10:37 CET schrieb Carlos de Paula:
> Some rockchip SoCs like the RK3399 and RK3328 exhibit an issue
> where tx checksumming does not work with packets larger than 1498.
> 
> The default Programmable Buffer Length for TX in these GMAC's is
> not suitable for MTUs higher than 1498. The workaround is to disable
> TX offloading with 'ethtool -K eth0 tx off rx off' causing performance
> impacts as it disables hardware checksumming.
> 
> This patch sets snps,txpbl to 0x4 which is a safe number tested ok for
> the most popular MTU value of 1500.
> 
> For reference, see https://lkml.org/lkml/2019/4/1/1382.
> 
> Signed-off-by: Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>

applied for 5.7

Thanks
Heiko
