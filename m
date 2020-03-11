From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: remove rockchip,grf from vop nodes for px30
Date: Wed, 11 Mar 2020 10:11:45 +0100
Message-ID: <3610438.YMqP0VFAyP@phil>
References: <20200309081600.3887-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200309081600.3887-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 9. März 2020, 09:16:00 CET schrieb Johan Jonker:
> An experimental test with the command below without
> additional properties in 'rockchip-vop.yaml' gives this error:
> 
> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff470000:
> 'power-domains', 'rockchip,grf'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> arch/arm64/boot/dts/rockchip/px30-evb.dt.yaml: vop@ff460000:
> 'power-domains', 'rockchip,grf'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> 'rockchip,grf' is not used by the Rockchip VOP driver,
> so remove it from 'vop' nodes in 'px30.dtsi'.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/
> rockchip/rockchip-vop.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
