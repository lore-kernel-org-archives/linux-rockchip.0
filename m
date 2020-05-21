From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2
Date: Thu, 21 May 2020 02:17:25 +0200
Message-ID: <159002021954.2754417.8270198597807714801.b4-ty@sntech.de>
References: <20200519111444.2208-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200519111444.2208-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, 19 May 2020 13:14:44 +0200, Johan Jonker wrote:
> The 'pinctrl-names' property should contain a list of names
> to the assigned states. The value 'led_pins' in the gpio-leds
> node on rk3326-odroid-go2 is not a state that is normally used,
> so change it the common name 'default'.

Applied, thanks!

[1/1] arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on rk3326-odroid-go2
      commit: b2cb68e864222eb3cc1d7c3c06edc40469699983

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
