Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32AD1C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 05:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=awo4rf5hPy17IbxLHJr6V8xtYtC020Eis1+prm8P7nQ=; b=R8K1drNKoNC52kBqBJ4HCz4iVO
	y7nleHeVs+CwNLaNOr1gaMHosAG5JP8SJ6E5OOfpLbOsftsEjXOoAcVoMptPaKqM/nWKqrN5Sk4ny
	15NhQ2rNxH/WgQdcoQeWY2qB8vY94wqjFAMJMzlCJdEBqzl9kM7Zn5E5QCNvZExLnQtXyTZzxDWzx
	aGkzovz7EyXCvO740qYAPTBdhOv2OC7hISgzFqCE1zBBNs+QhPRjYZ8iDz5oWjgEleZhwLPvdaHgS
	mJucdvD12K4kwjuSrX7Q+XkQkqX61/EajYxICdybvOpnXyOx+ss+c1G66E/Wb16mfMI0kP+JpROUa
	xYyrf6LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV2pS-00000001V7l-1qOH;
	Wed, 31 Jan 2024 05:08:06 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV2pO-00000001V75-4Bo3;
	Wed, 31 Jan 2024 05:08:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706677681;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Us+qssCGr8QHz8vvSMbnHALHDwmXvmpX/0BFSvsEVDg=;
	b=GOegNALwbNgKp9/kXZbGM+DpeUw8qNVettMK5m0NKqrmMLdJmcOw8u6qP6+m3Mav1Qtqa6
	nqlCjEBYiXM1Rf/cihonHvm9kqNag/ROaFLPWFV+pzR58PjcsC37f6tvA79I13CYp20H0U
	1o03VNyR8BV6n+X7lHgKdn5FtC1tZ13cZKc7NHsrkTaaTShgm7/CmwNNnghdiHvpDyjapj
	c+YLFVhgfDN/ySbax+dvMJ98Dwi1DVJd8uOp6bm/GkomeJ03glPxlLqyZ/Z/AXV7gCQjnt
	LnRFdARcfKnBdaURjHFlcvFegGy+yxLKqs0wK2LTbHn+MgH5gWKklbSIgnW4hA==
Date: Wed, 31 Jan 2024 06:08:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/4] arm64: dts: rockchip: enable temperature driven
 fan control on Rock 5B
In-Reply-To: <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-2-c6222c4c78df@gmail.com>
Message-ID: <8115ab382115f66aa01dd3d00aaae474@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_210803_373338_7BC55B3D 
X-CRM114-Status: GOOD (  16.36  )
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

Some notes below, please have a look.

On 2024-01-30 19:21, Alexey Charkov wrote:
> This enables thermal monitoring on Radxa Rock 5B and links the PWM
> fan as an active cooling device managed automatically by the thermal
> subsystem, with a target SoC temperature of 65C and a minimum-spin
> interval from 55C to 65C to ensure airflow when the system gets warm

I'd suggest that you replace "temperature driven fan control" with
"active cooling" in the patch subject.  More concise and reads better.

> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 34 
> ++++++++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index a0e303c3a1dc..b485edeef876 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -52,7 +52,7 @@ led_rgb_b {
> 
>  	fan: pwm-fan {
>  		compatible = "pwm-fan";
> -		cooling-levels = <0 95 145 195 255>;
> +		cooling-levels = <0 120 150 180 210 240 255>;
>  		fan-supply = <&vcc5v0_sys>;
>  		pwms = <&pwm1 0 50000 0>;
>  		#cooling-cells = <2>;
> @@ -173,6 +173,34 @@ &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_lit_s0>;
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			temperature = <55000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +		package_fan1: package-fan1 {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {

Should be "map1" instead of "map0".  There's already "map0"
defined for "package_thermal" in the RK3588(s) dtsi file.

> +			trip = <&package_fan0>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +		map1 {

Should be "map2" instead of "map1".

> +			trip = <&package_fan1>;
> +			cooling-device = <&fan 1 THERMAL_NO_LIMIT>;

Should be "cooling-device = <&fan 2 THERMAL_NO_LIMIT>;"
(i.e., "2 THERMAL_NO_LIMIT" instead of "1 THERMAL_NO_LIMIT").

The first fan speed is already covered by the first cooling map.
The second cooling map takes over from the second fan speed.

> +		};
> +	};
> +};
> +
>  &i2c0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&i2c0m2_xfer>;
> @@ -731,6 +759,10 @@ regulator-state-mem {
>  	};
>  };
> 
> +&tsadc {
> +	status = "okay";
> +};
> +
>  &uart2 {
>  	pinctrl-0 = <&uart2m0_xfer>;
>  	status = "okay";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
