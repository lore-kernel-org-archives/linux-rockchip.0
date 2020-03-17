From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: remove properties from spdif node RK3399 Excavator
Date: Tue, 17 Mar 2020 01:52:02 +0100
Message-ID: <18213991.ifHWx50xby@phil>
References: <20200312172240.21362-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200312172240.21362-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 12. März 2020, 18:22:39 CET schrieb Johan Jonker:
> An expermental test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dt.yaml:
> spdif@ff870000:
> 'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns', 'power-domains'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'i2c-scl-falling-time-ns', 'i2c-scl-rising-time-ns'
> are not valid properties for 'spdif' nodes, so remove them.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
