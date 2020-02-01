From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Sat, 1 Feb 2020 10:51:12 +0000
Message-ID: <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
References: <87imkryz5t.fsf@vany.ca>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <87imkryz5t.fsf@vany.ca>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Adam Van Ymeren <adam@vany.ca>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Hi Adam,

On 2020-01-31 11:38 pm, Adam Van Ymeren wrote:
> With this change the kernel successfully finds the SD Card and can load
> a rootfs from it.  Tested on hardware.
> 
> Signed-off-by: Adam Van Ymeren <adam@vany.ca>
> 
> diff -uprN -X linux-5.5/Documentation/dontdiff linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> --- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-26 19:23:03.000000000 -0500
> +++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts	2020-01-31 16:26:35.377075419 -0500
> @@ -44,7 +44,7 @@
>   
>   	vcc_sdio: sdmmcio-regulator {
>   		compatible = "regulator-gpio";
> -		gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
> +		gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;

Given that the RK3328 datasheet has no mention of GPIO0_D1 existing at 
all, how sure are you that this is correct - have you tested cards in 
both 3.3V and 1.8V (UHS-1) signalling modes?

The ROC-RK3328-CC schematics show GPIO_MUTE being used to bias the 
feedback pin of an adjustable regulator supplying the SDMMC0 I/O domain, 
so it seems more likely that the pin is correct but the states (or the 
polarity) are backwards.

Robin.

>   		states = <1800000 0x1
>   			  3300000 0x0>;
>   		regulator-name = "vcc_sdio";
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
