From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove extra assigned-clocks property from &gmac2phy node in rk3328-evb.dts
Date: Mon, 27 Apr 2020 21:42:24 +0200
Message-ID: <158801649141.50507.12064704129185456183.b4-ty@sntech.de>
References: <20200425122345.12902-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200425122345.12902-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 25 Apr 2020 14:23:44 +0200, Johan Jonker wrote:
> There are 2 'assigned-clocks' properties in the '&gmac2phy'
> node in 'rk3328-evb.dts', so remove one of them.
> 
> Info from clk-rk3328.c:
> 
> MUXGRF(SCLK_MAC2PHY, "clk_mac2phy", mux_mac2phy_src_p,
> CLK_SET_RATE_NO_REPARENT,
> RK3328_GRF_MAC_CON2, 10, 1, MFLAGS),
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: remove extra assigned-clocks property from &gmac2phy node in rk3328-evb.dts
      commit: f73a28284e2a89a7ca1e10e04514aedd33290c76
[2/2] arm64: dts: rockchip: fix status for &gmac2phy in rk3328-evb.dts
      commit: c617ed88502d0b05149e7f32f3b3fd8a0663f7e2

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
