From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v2 0/9] move Rockchip ISP bindings out of staging / add ISP DT nodes for RK3399
Date: Wed,  1 Jul 2020 14:31:04 +0200
Message-ID: <159360661051.89349.4172793847996909407.b4-ty@sntech.de>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200403161538.1375908-1-helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, 3 Apr 2020 13:15:29 -0300, Helen Koike wrote:
> Move the bindings out of drivers/staging and place them in
> Documentation/devicetree/bindings instead.
> 
> Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
> and make ARCH=arm64 dt_binding_check.
> 
> Tested by verifying images streamed from RockPi 4 board with imx219
> module.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rx0 mipi-phy for rk3399
      commit: e4bfde13e323f9ee5f2f38aa5cac0676dd656f8e

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
