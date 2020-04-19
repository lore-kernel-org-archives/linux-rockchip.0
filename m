From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: remove bus-width from mmc nodes in rk3308-roc-cc.dts
Date: Sun, 19 Apr 2020 14:35:57 +0200
Message-ID: <158729964648.70529.8094316995318301220.b4-ty@sntech.de>
References: <20200415131057.2366-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200415131057.2366-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 15 Apr 2020 15:10:57 +0200, Johan Jonker wrote:
> The 'bus-width' property for mmc nodes is defined both in
> 'rk3308.dtsi' and 'rk3308-roc-cc.dts'.
> 'bus-width' and pinctrl containing the bus-pins
> should be in the same file, so remove all entries
> from mmc nodes in 'rk3308-roc-cc.dts'.
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: remove bus-width from mmc nodes in rk3308-roc-cc
      commit: 051083dddf07a4472bc1720d5c2b1909e0865890

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
