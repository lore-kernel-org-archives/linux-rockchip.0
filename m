Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8133EC54E58
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 15:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sDr2DoqTAPIzJdIQdl4BUhUVm5mGEfYWk+FsIjjP6/E=; b=dMv1DXUlRaU5OXp/sdjmrmZuhR
	w1l3x0Q1Th02t5B3lAl2pvTKxPuaC4sbzkpgZqLGIdRkz/3X2XC0q419GkCzPn+hggeBjUNuD6nBG
	NSyzg+MBYo8YzmIQWMHmorj65EAnVQkQLtEdiJnogmR/Mi4OEccpXLmMYSr6dhEejzO3SIa+3RGT2
	t/G6OLFLYq3K8d3mAvRk256UKJDsJ+u45XEa9q3fnSgfkNA4V6q6DYKiRvK4P6jB+Rc7mCkZJBOvu
	DkI+i46yQlcAN0JtvMXx7sdRXymFFCGijs91VwtXF6445BeSW5Cy4VEDsvfm2mEwAKs2DOOiUzUUI
	TR/bpXVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricAu-00000009sU2-2ie1;
	Fri, 08 Mar 2024 15:30:20 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ricAq-00000009sRI-1AS7;
	Fri, 08 Mar 2024 15:30:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709911811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xg1YcmdTDNEGczDED8tux3NJ6CN5mtOf9f1Wq1pu2YI=;
	b=FMRMp4DAPDc4xE88bB02SCtuoYaWHG2IANOV/F+lU4IEhdSFnF037DKFGlz63eKC4ISQlH
	U86kqpqYVrFihcEvIjVcmajELJL1gmbjdqj0aYZXvZpzaxN1iS9wWOXOKTghqLtB55GLFC
	RzGkUHg2Lr/ASWxIbPrcheZDc5raRG6UxsrtaYCygKVu6K0kTqn7HyuXv/l9xg6dmwvhVD
	eyDrjMYL83UdY47gyt87Hq0nAgBYS5W+sTpo7CCUwYG6Nap4+x/vhyi/m19yfPlzJv7PaN
	c1yRzoSEa0BmnSVaOLt0CpsCuHw9DstA+eaTwARoQgft/FEUdhi5Ylg6JD03LQ==
Date: Fri, 08 Mar 2024 16:30:10 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Klaus Goger
 <klaus.goger@theobroma-systems.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Quentin Schulz
 <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add regulators for PCIe on
 RK3399 Puma Haikou
In-Reply-To: <20240308-puma-diode-pu-v1-3-2b38457bcdc0@theobroma-systems.com>
References: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
 <20240308-puma-diode-pu-v1-3-2b38457bcdc0@theobroma-systems.com>
Message-ID: <adc58b09d99d62df2c7559657547ca29@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_073016_651211_919CE45E 
X-CRM114-Status: GOOD (  16.76  )
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

On 2024-03-08 13:52, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> The PCIe PHY requires two regulators and are present on the SoM
> directly, while the PCIe connector also exposes 3V3 and 12V power rails
> which are available on the baseboard.
> 
> Considering that 3/4 regulators are always-on on HW level and that the
> last one depends on a regulator from the PMIC that is specified as
> always on, this commit should be purely cosmetic and no change in
> behavior is expected.
> 
> Let's add all regulators for PCIe on RK3399 Puma Haikou.
> 
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Looking good to me, assuming that the regulator naming follows the
labels used in the schematics.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  2 ++
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 26 
> ++++++++++++++++++++++
>  2 files changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> index 18a98c4648eae..66ebb148bbc9a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
> @@ -194,6 +194,8 @@ &pcie0 {
>  	num-lanes = <4>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie_clkreqn_cpm>;
> +	vpcie3v3-supply = <&vcc3v3_baseboard>;
> +	vpcie12v-supply = <&dc_12v>;
>  	status = "okay";
>  };
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index 2484ad2bd86fc..1113f57b09313 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -79,6 +79,26 @@ vcc5v0_sys: vcc5v0-sys {
>  		regulator-max-microvolt = <5000000>;
>  	};
> 
> +	vcca0v9: vcca0v9-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcca0v9";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <900000>;
> +		regulator-max-microvolt = <900000>;
> +		vin-supply = <&vcc_1v8>;
> +	};
> +
> +	vcca1v8: vcca1v8-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcca1v8";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc3v3_sys>;
> +	};
> +
>  	vdd_log: vdd-log {
>  		compatible = "pwm-regulator";
>  		pwms = <&pwm2 0 25000 1>;
> @@ -416,6 +436,12 @@ &io_domains {
>  	gpio1830-supply = <&vcc_1v8>;
>  };
> 
> +&pcie0 {
> +	/* PCIe PHY supplies */
> +	vpcie0v9-supply = <&vcca0v9>;
> +	vpcie1v8-supply = <&vcca1v8>;
> +};
> +
>  &pcie_clkreqn_cpm {
>  	rockchip,pins =
>  		<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_up>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
