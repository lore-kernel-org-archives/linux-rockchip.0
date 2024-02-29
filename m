Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8107DC48BF6
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Feb 2024 21:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nI+NoqFB6OT8B5R4fiJEXRN5qT0nyezpzR3vI2EbHMk=; b=IqSjCk7kidXStn1RH0oaFVPKfa
	+h+4elT/HiX2IhrOuXrNpKnRA4oj/wMsD7AC+3cHt7DN3m9rVv+OSOrbSq2U8rq+NSwN9sEuTrOVf
	9W17CINDGBQ8q9SasKllDsCA6a5sXXE29+Ry9bd5JL+m3JUMKsSJ5p8pezrdmEIdXQaAru6nJ8E7c
	+2BOEdUS7Xn2dByhgsX7ZtiLxTzVDpo42SMUS2urOYW3p8X5kK9hAE5hvQRsk7tttSeN1FWwuBvxr
	rvwvBHcKvRjgLPNwJamxebG7w3YcmE5sFuLA5dpr1kMf9o+6LTIRYeJuKplT3V7AvUbxWBcKVdrtx
	EtHHg+Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfnh1-0000000FH2S-2Tt5;
	Thu, 29 Feb 2024 21:11:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfngx-0000000FH0M-2TYA;
	Thu, 29 Feb 2024 21:11:49 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709241105;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iZkGymDJPb99EOa4e7WhTr1gCGjxym3Lvu+B8FJ6rc0=;
	b=OeLPKW61v4LC9zkElHwMSKk0FZ3OK/2sGrALl3fFe/R4pBk3JOtC1rN5zaFg4U0/rDr7Nw
	YY1Rm5tnYMngR3FTjvQjyqSkMeDEC5/qKS65JCmy9AWKDbO6JKFHSlKI1w8izgyc+34QA5
	hffa8+dADdvQFhC+PZeMQIwqeXHwJWdRYo+KjX5PM1Y0xogrGprBp4m/0cZjZ3gt4CSPEF
	Vf/1iU/D7g/2R0/gSvhXy9UtZ4W+vNvXtFYz0ou9aCE9523VlgYO6Vv4aS9UemJA4SCPac
	zOVxZ5FbyMwZRe5RccWBIupuzsn2e7wbS0nm3MXds8quzwpSEiTpvujdXZifBw==
Date: Thu, 29 Feb 2024 22:11:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] arm64: dts: rockchip: enable built-in thermal
 monitoring on RK3588
In-Reply-To: <20240229-rk-dts-additions-v3-1-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-1-6afe8473a631@gmail.com>
Message-ID: <5eb9193a44fb9f9b1e976412874cecef@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_131148_124708_FBB3F0B2 
X-CRM114-Status: GOOD (  26.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Alexey,

Please see also some nitpicks below, which I forgot to mention in
my earlier response.  I'm sorry for that.

On 2024-02-29 20:26, Alexey Charkov wrote:
> Include thermal zones information in device tree for RK3588 variants.
> 
> This also enables the TSADC controller unconditionally on all boards
> to ensure that thermal protections are in place via throttling and
> emergency reset, once OPPs are added to enable CPU DVFS.
> 
> The default settings (using CRU as the emergency reset mechanism)
> should work on all boards regardless of their wiring, as CRU resets
> do not depend on any external components. Boards that have the TSHUT
> signal wired to the reset line of the PMIC may opt to switch to GPIO
> tshut mode instead (rockchip,hw-tshut-mode = <1>;)
> 
> It seems though that downstream kernels don't use that, even for
> those boards where the wiring allows for GPIO based tshut, such as
> Radxa Rock 5B [1], [2], [3]
> 
> [1] 
> https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts#L540
> [2] 
> https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588s.dtsi#L5433
> [3] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1423_sch.pdf
> page 11 (TSADC_SHUT_H)
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 176 
> +++++++++++++++++++++++++++++-
>  1 file changed, 175 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 36b1b7acfe6a..9bf197358642 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/reset/rockchip,rk3588-cru.h>
>  #include <dt-bindings/phy/phy.h>
>  #include <dt-bindings/ata/ahci.h>
> +#include <dt-bindings/thermal/thermal.h>
> 
>  / {
>  	compatible = "rockchip,rk3588";
> @@ -2225,7 +2226,180 @@ tsadc: tsadc@fec00000 {
>  		pinctrl-1 = <&tsadc_shut>;
>  		pinctrl-names = "gpio", "otpout";
>  		#thermal-sensor-cells = <1>;
> -		status = "disabled";
> +		status = "okay";
> +	};
> +
> +	thermal_zones: thermal-zones {
> +		/* sensor near the center of the SoC */
> +		package_thermal: package-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 0>;
> +
> +			trips {
> +				package_crit: package-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		/* sensor between A76 cores 0 and 1 */
> +		bigcore0_thermal: bigcore0-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 1>;
> +
> +			trips {
> +				/* threshold to start collecting temperature
> +				 * statistics e.g. with the IPA governor
> +				 */

See, I'm not a native English speaker, but I've spent a lot of time
and effort improving my English skills.  Thus, perhaps these comments
may or may not seem like unnecessary nitpicking, depending on how much
someone pays attention to writing style in general, but I'll risk to
be annoying and state these comments anyway. :)

The comment above could be written in a much more condensed form like
this, which would also be a bit more accurate:


  				/* IPA threshold, when IPA governor is used */

IOW, we're writing all this for someone to read later, but we should
(and can) perfectly reasonably expect some already existing background
knowledge from the readers.  In other words, we should be as concise
as possible.

> +				bigcore0_alert0: bigcore0-alert0 {
> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				/* actual control temperature */

Similarly to the above, I'd suggest this:

  				/* IPA target, when IPA governor is used */

Having such brief comments should make it all perfectly understandable
to anyone who's already familiar with the way IPA governor works.  
Everyone
else should be welcome to read up a bit on IPA first.

> +				bigcore0_alert1: bigcore0-alert1 {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				bigcore0_crit: bigcore0-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&bigcore0_alert1>;
> +					cooling-device =
> +						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		/* sensor between A76 cores 2 and 3 */
> +		bigcore2_thermal: bigcore2-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 2>;
> +
> +			trips {
> +				/* threshold to start collecting temperature
> +				 * statistics e.g. with the IPA governor
> +				 */

The same as above.

> +				bigcore2_alert0: bigcore2-alert0 {
> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				/* actual control temperature */

The same as above.

> +				bigcore2_alert1: bigcore2-alert1 {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				bigcore2_crit: bigcore2-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&bigcore2_alert1>;
> +					cooling-device =
> +						<&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu_b3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		/* sensor between the four A55 cores */
> +		little_core_thermal: littlecore-thermal {
> +			polling-delay-passive = <100>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 3>;
> +
> +			trips {
> +				/* threshold to start collecting temperature
> +				 * statistics e.g. with the IPA governor
> +				 */

The same as above.

> +				littlecore_alert0: littlecore-alert0 {
> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				/* actual control temperature */

The same as above.

> +				littlecore_alert1: littlecore-alert1 {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +				littlecore_crit: littlecore-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +			cooling-maps {
> +				map0 {
> +					trip = <&littlecore_alert1>;
> +					cooling-device =
> +						<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +						<&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		/* sensor near the PD_CENTER power domain */
> +		center_thermal: center-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 4>;
> +
> +			trips {
> +				center_crit: center-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		gpu_thermal: gpu-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 5>;
> +
> +			trips {
> +				gpu_crit: gpu-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		npu_thermal: npu-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsadc 6>;
> +
> +			trips {
> +				npu_crit: npu-crit {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "critical";
> +				};
> +			};
> +		};
>  	};
> 
>  	saradc: adc@fec10000 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
