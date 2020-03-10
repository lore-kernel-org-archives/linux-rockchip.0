From: Rob Herring <robh-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH] dt-bindings: serial: snps-dw-apb-uart: add compatible
 property for rk3308 uart
Date: Tue, 10 Mar 2020 14:32:53 -0500
Message-ID: <20200310193253.GA23246@bogus>
References: <20200302133910.10942-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20200302133910.10942-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-serial-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon,  2 Mar 2020 14:39:10 +0100, Johan Jonker wrote:
> A test with the command below gives these errors:
> 
> arch/arm64/boot/dts/rockchip/rk3308-evb.dt.yaml: serial@ff0d0000: compatible:
> ['rockchip,rk3308-uart', 'snps,dw-apb-uart']
> is not valid under any of the given schemas
> arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dt.yaml: serial@ff0a0000: compatible:
> ['rockchip,rk3308-uart', 'snps,dw-apb-uart']
> is not valid under any of the given schemas
> 
> The compatible property for the Rockchip rk3308 uart was somehow never
> added to the documention. Fix this error by adding 'rockchip,rk3308-uart'
> to snps-dw-apb-uart.yaml.
> 
> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/serial/
> snps-dw-apb-uart.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks.

Rob
