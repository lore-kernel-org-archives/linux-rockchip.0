Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7AF6CEFC2A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 16:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QwK1fDp8EOfc6+LYKs35u5un7BPoztaPESDdPtv/iF8=; b=1eeE8s+6gKlIX+GVwXHvyrrZ4O
	sXWh+l6rle10HRPLbB+ZaFhGfTS6/jJDr22uuRixhYguH+mqwOyLcb4C1c8Bh3hnmSf807weNcYm+
	5ywt7+zp9YEXtFFBYV8KTX4SYeMO1Q2KTvIfNdhZdLKwMPjYq67bmZ4Uc29TFSTkGiVRXII/Sg6wq
	6c/EZmbOtY0rU7acy/ISSFcCwguUZv7hzIrmnwwUM4yzS0V/rBVMbRTlpxzW5fD/3X9vfI5z4yDtG
	ec9ZBnEFDH4+bvnUCUtAwW/kXkNI+eIhue8OjHBEZFEL/PLBk/umKDavN9pp1Rek1/q4WccZxjRe9
	kiKFvEyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syCfj-00000006RCn-1v8g;
	Tue, 08 Oct 2024 16:02:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syCZA-00000006Q7x-2KLn;
	Tue, 08 Oct 2024 15:56:06 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402962;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QjwNTeb/meYUnB0ih+lCPR2LJQtb1gaSJ1J1rrMvwmA=;
	b=IZvDhba38tpbm3QJhzciShjZzra+RgzCUnlMw8/T52LIW69QE1nZTHFPZyPcQg4I0M55pJ
	/JrMX4y9gC19niv1UtAmIikQRBh0bTn5fThQqhyUVIqQWobLinTRgBoCIZl5bVRDes0Up7
	x4wGpbqmeYrdi8zEDYPMMUsRAlX+wlVqKBQsa8eyvU4/qzXe2KJjc7IRwGY2w2ESRUidek
	rLDi7alyf0w0RV2KrXPfMhtSzDzzmqphzPuH9u7dihQmKDvFmv/EEy9OL1yP2Q0l5p7RYk
	yPKXDu51nVcDn3zCjNY05bGb7UD3h4cbQvmDSNWVBWVC/hihdTdxkf+hOUjMtQ==
Date: Tue, 08 Oct 2024 17:56:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: rk356x: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-6-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-6-didi.debian@cknow.org>
Message-ID: <e461b63fef2e3b2443c651fd8492dfdd@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_085604_950659_87EF9250 
X-CRM114-Status: GOOD (  12.87  )
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

Hello Diederik,

On 2024-10-08 12:48, Diederik de Haas wrote:
> Property 'rockchip,system-power-controller' was deprecated in commit
> 961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate
> rockchip,system-power-controller")
> 
> in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
> replacement is (just) 'system-power-controller'.
> 
> Update the rk356x DT files which still used the deprecated variant.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

This patch is looking good to me, all changes introduced to the
board dts files are fine and pretty much straightforward.  Thanks
for this patch, and please feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

See also a related rk8xx MFD patch that I just submitted. [1]
It builds upon the changes you introduced and helps with saving
a few CPU cycles while probing.

[1] 
https://lore.kernel.org/linux-rockchip/08d4e88974c205eba124086ce156622e2e4cdc20.1728397516.git.dsimic@manjaro.org/T/#u

> ---
> changes in v2:
> - rephrased commit message a bit
> 
>  arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts          | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts        | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi     | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi     | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts          | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts         | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts  | 2 +-
>  19 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
> index 7cd91f8000cb..ed65d3120444 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
> @@ -245,7 +245,7 @@ rk809: pmic@20 {
>  		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		wakeup-source;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> index c1194d1e438d..55da1dbdd139 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
> @@ -197,7 +197,7 @@ rk809: pmic@20 {
> 
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> index ae2536c65a83..de4c082dce07 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
> @@ -244,7 +244,7 @@ rk817: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>, <&pmic_sleep>;
>  		pinctrl-names = "default";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		wakeup-source;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> index db40281eafbe..abcb60b49487 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
> @@ -370,7 +370,7 @@ rk817: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		wakeup-source;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 37a1303d9a34..1ba20aab2796 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -347,7 +347,7 @@ rk817: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		wakeup-source;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index c164074ddf54..a80042b58542 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -255,7 +255,7 @@ rk809: pmic@20 {
> 
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		wakeup-source;
>  		#clock-cells = <1>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> index 45de2630bb50..d09e6542e236 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
> @@ -127,7 +127,7 @@ rk817: pmic@20 {
>  		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index 67e7801bd489..8bd1f60d2de6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -253,7 +253,7 @@ rk809: pmic@20 {
>  		clocks = <&cru I2S1_MCLKOUT_TX>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		#sound-dai-cells = <0>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> index e42c474ef4ad..4f4af040f7e8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
> @@ -213,7 +213,7 @@ rk809: pmic@20 {
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index c87fad2c34cb..5dd93a08489a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -291,7 +291,7 @@ rk809: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
>  		vcc3-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 8c3ab07d3807..6e6d3c4a4f37 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -275,7 +275,7 @@ rk809: pmic@20 {
>  		clocks = <&cru I2S1_MCLKOUT_TX>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> index 25c49bdbadbc..4976e64ed262 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> @@ -152,7 +152,7 @@ rk809: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
>  		vcc3-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> index a3112d5df200..ce6d5dccb0ed 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts
> @@ -223,7 +223,7 @@ rk809: pmic@20 {
>  		clocks = <&cru I2S1_MCLKOUT_TX>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> index 93189f830640..cee052f65004 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi
> @@ -215,7 +215,7 @@ rk809: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
>  		vcc3-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> index 6a02db4f073f..5818028c14b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
> @@ -273,7 +273,7 @@ rk809: pmic@20 {
>  		clocks = <&cru I2S1_MCLKOUT_TX>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> index 19d309654bdb..0e447ffea73b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
> @@ -141,7 +141,7 @@ rk809: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> index e333449ead04..ce14ff8c5945 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-roc-pc.dts
> @@ -255,7 +255,7 @@ rk809: pmic@20 {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
>  		vcc3-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 59f1403b4fa5..4fa6eff3b469 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -333,7 +333,7 @@ rk809: pmic@20 {
>  		clocks = <&cru I2S1_MCLKOUT_TX>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		vcc1-supply = <&vcc3v3_sys>;
>  		vcc2-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
> b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
> index 170b14f92f51..048cc4eebd40 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5.dts
> @@ -178,7 +178,7 @@ rk809: pmic@20 {
>  		#clock-cells = <0>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc5v_in>;
>  		vcc2-supply = <&vcc5v_in>;
>  		vcc3-supply = <&vcc5v_in>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
