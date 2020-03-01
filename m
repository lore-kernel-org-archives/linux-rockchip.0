From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: fix compatible property for Radxa ROCK Pi N10
Date: Sun, 01 Mar 2020 01:04:15 +0100
Message-ID: <2564015.4vhmofR5M8@phil>
References: <20200228061436.13506-1-jbx6244@gmail.com> <20200228061436.13506-4-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200228061436.13506-4-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 28. Februar 2020, 07:14:36 CET schrieb Johan Jonker:
> A test with the command below gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dt.yaml: /: compatible:
> ['radxa,rockpi-n10', 'rockchip,rk3399pro']
> is not valid under any of the given schemas
> 
> During the review process the binding was changed,
> but the dts file was somehow not updated.
> Fix this error by adding 'vamrs,rk3399pro-vmarc-som' to
> the compatible property.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
