From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix dwmmc clock name for px30 and rk3308
Date: Mon, 13 Jan 2020 10:15:56 +0100
Message-ID: <3203839.F8si9oFvou@phil>
References: <20200110161200.22755-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200110161200.22755-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Freitag, 10. Januar 2020, 17:12:00 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> px30-evb.dt.yaml: dwmmc@ff390000: clock-names:2:
> 'ciu-drive' was expected
> rk3308-evb.dt.yaml: dwmmc@ff480000: clock-names:2:
> 'ciu-drive' was expected
> 
> 'ciu-drv' is not a valid dwmmc clock name,
> so fix this by changing it to 'ciu-drive'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

thanks for this fix, I've split it into two patches (px30 and rk3308) and
applied for 5.6

Thanks
Heiko
