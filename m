From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v5 3/7] MAINTAINERS: add maintainers to rockchip nfc
Date: Sun, 26 Apr 2020 15:40:23 +0200
Message-ID: <9e9e4831-3035-86dd-a478-c2f0eb3b47fd@gmail.com>
References: <20200426100250.14678-1-yifeng.zhao@rock-chips.com>
 <20200426100250.14678-4-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200426100250.14678-4-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org, richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

Thank you for version 5.
A test with the command below gives this warning:

WARNING: Missing commit description - Add an appropriate one

WARNING: Misordered MAINTAINERS entry - list file patterns in alphabetic
order
#21: FILE: MAINTAINERS:2314:
 F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+F:	Documentation/devicetree/bindings/*/*rockchip*.yaml

./scripts/checkpatch.pl --strict
0003-MAINTAINERS-add-maintainers-to-rockchip-nfc.patch

The enties of MAINTAINERS have been sort with this command:

./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

On 4/26/20 12:02 PM, Yifeng Zhao wrote:

Add a commit description.

> Signed-off-by: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> ---
> 
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
> 
>  MAINTAINERS | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 58725773cec4..187415b1481a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -2308,11 +2308,11 @@ L:	linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>  S:	Maintained
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git

>  F:	Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
> -F:	Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> -F:	Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +F:	Documentation/devicetree/bindings/*/*rockchip*.yaml

The script likes to see a different order here.

>  F:	arch/arm/boot/dts/rk3*
>  F:	arch/arm/boot/dts/rv1108*
>  F:	arch/arm/mach-rockchip/
> +F:	drivers/*/*/*/*rockchip*
>  F:	drivers/*/*/*rockchip*
>  F:	drivers/*/*rockchip*
>  F:	drivers/clk/rockchip/
> 
