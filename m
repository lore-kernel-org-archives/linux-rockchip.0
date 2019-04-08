From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: bulk convert gpios to their
 constant counterparts
Date: Mon, 8 Apr 2019 13:03:11 +0100
Message-ID: <29c0db6d-4f63-7104-9ed5-ef2c978c0efe@arm.com>
References: <20190402121852.14442-1-heiko@sntech.de>
 <20190402121852.14442-2-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190402121852.14442-2-heiko@sntech.de>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: briannorris@chromium.org, ezequiel@collabora.com, dianders@chromium.org, linux-arm-kernel@lists.infradead.org, Emil Renner Berthing <esmil@mailme.dk>
List-Id: linux-rockchip.vger.kernel.org

On 02/04/2019 13:18, Heiko Stuebner wrote:
[...]
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> index 931c3dbf1b7d..2a127985ab17 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
> @@ -125,7 +125,7 @@
>   	ir {
>   		ir_rx: ir-rx {
>   			/* external pullup to VCC3V3_SYS, despite being 1.8V :/ */
> -			rockchip,pins = <0 RK_PA6 RK_FUNC_1 &pcfg_pull_none>;
> +			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
>   		};
>   	};
>   };

Oops - not only has this escaped my deliberate attempt to submit 
everything in the preferred format to begin with, but we're not actually 
using this pin in PWM mode anyway :(

Regardless, for the patch itself,

Acked-by: Robin Murphy <robin.murphy@arm.com>

Cheers,
Robin.
