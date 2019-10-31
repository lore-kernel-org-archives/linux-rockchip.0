From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Rework voltage supplies for regulators on rk3399-roc-pc
Date: Thu, 31 Oct 2019 15:24:59 +0100
Message-ID: <2490751.hSll4LLrj9@phil>
References: <22b56700-3c9e-0f60-cd74-7ff24d4f1a23@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <22b56700-3c9e-0f60-cd74-7ff24d4f1a23@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Jagan Teki <jagan@amarulasolutions.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 31. Oktober 2019, 14:30:06 CET schrieb Markus Reichl:
> Correct the voltage supplies according to the board schematics
> ROC-3399-PC-V10-A-20180804.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
> ---
>  .../arm64/boot/dts/rockchip/rk3399-roc-pc.dts | 30 ++++++++++---------
>  1 file changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> index e06e4163605b..def8bca7d158 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
> @@ -142,7 +142,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <3300000>;
>  		regulator-max-microvolt = <3300000>;
> -		vin-supply = <&vcc_sys>;
> +		vin-supply = <&dc_12v>;
>  	};
>  
>  	/* Actually 3 regulators (host0, 1, 2) controlled by the same gpio */
> @@ -190,7 +190,7 @@
>  		regulator-boot-on;
>  		regulator-min-microvolt = <800000>;
>  		regulator-max-microvolt = <1400000>;
> -		vin-supply = <&vcc_sys>;
> +		vin-supply = <&vcc3v3_sys>;
>  	};
>  
>  	/* on roc-rk3399-mezzanine board */

This seems to be some change from somewhere else.
In any case I adapted that to the current dts and applied
the patch for 5.5. Please double-check though.

Thanks
Heiko
