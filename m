From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: rename label and nodename pinctrl subnodes that end with gpio
Date: Wed, 17 Jun 2020 10:45:58 +0200
Message-ID: <159238352489.1408655.17289334888304699451.b4-ty@sntech.de>
References: <20200524160636.16547-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200524160636.16547-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, 24 May 2020 18:06:35 +0200, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: tsadc: otp-gpio:
> {'phandle': [[54]], 'rockchip,pins': [[0, 10, 0, 118]]}
> is not of type 'array'
> 
> 'gpio' is a sort of reserved nodename and should not be used
> for pinctrl in combination with 'rockchip,pins', so change
> nodes that end with 'gpio' to end with 'pin' or 'pins'.
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: rename label and nodename pinctrl subnodes that end with gpio
      commit: fff987e7328951f7d6fb2d0545de8635ceafa89f

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
