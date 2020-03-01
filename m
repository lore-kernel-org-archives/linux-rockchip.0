From: "Leonidas P." <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add txpbl node for RK3399/RK3328
Date: Sun, 01 Mar 2020 04:06:54 +0200
Message-ID: <1583028414.33600.0@gmail.com>
References: <20200218221040.10955-1-me@carlosedp.com>
        <6132615.msM8OCcsVu@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <6132615.msM8OCcsVu@phil>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>, jose.abreu-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Christoph Muellner <christoph.muellner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Daniel Lezcano <daniel.lezcano-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


I am also in favor of this but I think we should remove the line that 
specifies the txpbl in the rk3328-roc-cc.dts gmac2io since it will get 
applied here in the .dtsi
