From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: remove max-freq from &spi1 node for Hugsun X99
Date: Wed, 11 Mar 2020 10:09:22 +0100
Message-ID: <2830849.oEQS0yQEAA@phil>
References: <20200309125145.14455-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200309125145.14455-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 9. März 2020, 13:51:45 CET schrieb Johan Jonker:
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "spi-controller.yaml#"
> 
> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
> 
> First when we combine spi-rockchip.yaml and
> spi-controller.yaml it gives this error:
> 
> arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: spi@ff1d0000:
> 'max-freq' does not match any of the regexes:
> '^.*@[0-9a-f]+$', '^slave$'
> 
> 'max-freq' is not a valid property name for spi nodes,
> so remove it.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
