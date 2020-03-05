From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: Add pmic dt tree for rk3399 evb
Date: Fri, 06 Mar 2020 00:46:50 +0100
Message-ID: <33721271.s4QA4oKXoP@phil>
References: <20200305113912.32226-1-andy.yan@rock-chips.com> <20200305113912.32226-3-andy.yan@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200305113912.32226-3-andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 5. März 2020, 12:39:10 CET schrieb Andy Yan:
> RK3399 EVB use 2 SYR837/8 and a RK808 for power supply,
> Add regulator tree for it.
> 
> Signed-off-by: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---

I applied this for 5.7 after fixing quite a number of issues
- spaces instead of tabs in one syr
- odering of nodes and properties
- node names


Heiko
