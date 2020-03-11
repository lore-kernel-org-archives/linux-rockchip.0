From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RFC PATCH] ARM: dts: rockchip: remove #dma-cells from dma client nodes for rv1108
Date: Wed, 11 Mar 2020 10:10:02 +0100
Message-ID: <2565398.9qm7F6LNF9@phil>
References: <20200309134020.14935-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200309134020.14935-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 9. März 2020, 14:40:20 CET schrieb Johan Jonker:
> When we combine spi-rockchip.yaml and
> spi-controller.yaml and add 'additionalProperties: false'
> it gives for example this error:
> 
> arch/arm/boot/dts/rv1108-evb.dt.yaml: spi@10270000:
> '#dma-cells' does not match any of the regexes:
> '^.*@[0-9a-f]+$', '^slave$'
> 
> '#dma-cells' are not used for dma clients, so remove them all.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied for 5.7

Thanks
Heiko
