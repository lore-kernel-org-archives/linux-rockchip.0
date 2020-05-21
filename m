From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [RFC PATCH] arm64: dts: rockchip: fix dmas dma-names for rk3308
 i2s node
Date: Thu, 21 May 2020 12:48:42 +0100
Message-ID: <543270ad-dd11-2bd4-8959-e898834c19e5@arm.com>
References: <20200520064816.3954-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200520064816.3954-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 2020-05-20 07:48, Johan Jonker wrote:
> One of the current rk3308 'i2s' nodes has a different dma layout
> with only 1 item. Table 9-2 DMAC1 Request Mapping Table shows that
> there 2 dma sources available, so fix the dmas and dma-names
> for the rk3308 'i2s' node.
> 
> 10 I2S/PCM_2CH_1 tx High level
> 11 I2S/PCM_2CH_1 rx High level

...however table 1-5 in the same manual (at least that I could find) 
says request 10 is reserved. Does that mean it was intended to be wired 
up for this, but ended up broken for some reason?

Do you have hardware to confirm whether this works reliably or not?

Robin.

> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index ac7f69407..79c1dd1fe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -564,8 +564,8 @@
>   		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
>   		clocks = <&cru SCLK_I2S1_2CH>, <&cru HCLK_I2S1_2CH>;
>   		clock-names = "i2s_clk", "i2s_hclk";
> -		dmas = <&dmac1 11>;
> -		dma-names = "rx";
> +		dmas = <&dmac1 10>, <&dmac1 11>;
> +		dma-names = "tx", "rx";
>   		resets = <&cru SRST_I2S1_2CH_M>, <&cru SRST_I2S1_2CH_H>;
>   		reset-names = "reset-m", "reset-h";
>   		status = "disabled";
> 
