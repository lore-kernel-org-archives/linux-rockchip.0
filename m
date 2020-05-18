From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: fix phy nodename for rk3328
Date: Tue, 19 May 2020 00:27:57 +0200
Message-ID: <158984064169.2259329.11702578814361765317.b4-ty@sntech.de>
References: <20200321215423.12176-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200321215423.12176-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, aballier-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 21 Mar 2020 22:54:18 +0100, Johan Jonker wrote:
> A test with the command below gives for example this error:
> 
> arch/arm64/boot/dts/rockchip/rk3328-evb.dt.yaml: phy@0:
> '#phy-cells' is a required property
> 
> The phy nodename is used by a phy-handle.
> The parent node is compatible with "snps,dwmac-mdio",
> so change nodename to 'ethernet-phy', for which '#phy-cells'
> is not a required property
> 
> [...]

Applied, thanks!

[1/6] arm64: dts: rockchip: fix phy nodename for rk3328
      commit: 8370cc5533b3baa5e0f18075ae638b050458aabd
[2/6] arm64: dts: rockchip: fix rtl8211f nodename for rk3328 Beelink A1
      commit: 63834d1edb96e2016191e53444934299bbc06bb1
[3/6] arm64: dts: rockchip: fix rtl8211e nodename for rk3399-nanopi4
      commit: b450d1c566bd726f93bc72a3cf3155cecebc1b75
[4/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-nanopi4
      commit: 737157f9618b40c7147cf697aec431ce9dd178a0
[5/6] arm64: dts: rockchip: fix rtl8211e nodename for rk3399-orangepi
      commit: b2bb769100d49c6acbfb2756cc4748aac09209c9
[6/6] arm64: dts: rockchip: fix &pinctrl phy sub nodename for rk3399-orangepi
      commit: 302a729c84b59c835f7857ec378efecbda58b9b3

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
