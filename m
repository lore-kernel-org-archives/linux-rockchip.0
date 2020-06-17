From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v4 0/2] ARM: Add Rockchip rk3288w support
Date: Wed, 17 Jun 2020 10:58:23 +0200
Message-ID: <159238429476.1470505.6023847362048785737.b4-ty@sntech.de>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200602080644.11333-1-mylene.josserand-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2 Jun 2020 10:06:42 +0200, Mylène Josserand wrote:
> Context
> -------
> 
> Here is my V4 of my patches that add the support for the Rockchip
> RK3288w which is a revision of the RK3288. It is mostly the same SOC
> except for, at least, one clock tree which is different.
> This difference is only known by looking at the BSP kernel [1].
> 
> [...]

Applied, thanks!

[1/2] clk: rockchip: Handle clock tree for rk3288w variant
      commit: 1627f683636df70fb25358b0a7b39a24e8fce5bf
[2/2] dt-bindings: clocks: add rk3288w variant compatible
      commit: 00bd404144241155653bb0d0c15be51e4e6983aa

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
