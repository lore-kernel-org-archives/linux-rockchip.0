Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32826CEFC29
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 15:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jVqQDINIEF3M1A/VXViG7afmDGL8tFT2VLwku3hLcqI=; b=q2yUZ54dfYlz0XNtcfVV1waXLt
	L/6Bvy/AnxgPHYvm/fSgLFqCJJbFkoDTjm+quEcM6OegBGgKGyUs3ydvfRERHivisMywXhIUMo1/N
	ghnXl7ehL0LWHIWxCVhPeNf+PIvojwHd7GWYD6bpbUag2L+7urdk+b8kiXlPNNdCFl1eh8Df9xVNb
	rCLbTCudWuRwV6DGQC/Gx2kiG6xODH0d51jPfoKZb7O4ohTGeTOl0sfahxUd51KbeOezEUa6+75L3
	CNOMUZm0FEocACzbjPq3OrdUAHcw+Snep5u5X+s6AF0KZ1KFq4r7U283aCIIHxU5ZsYtbDYATba8H
	DCPcavPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syCZI-00000006Q8q-20cv;
	Tue, 08 Oct 2024 15:56:12 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syCWG-00000006PrF-26Ia;
	Tue, 08 Oct 2024 15:53:54 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wpnOgqM2xj0mohBFrUsNXZXPfmrigdujlR8Hwib/2xA=;
	b=ifoFRf64+5I5blWMZQHBdUTLkXEfVjxXjEb9CYECIUlZVTAXKQaNjm61lqlTj54W5ju+t6
	2SdvZL5RpbmrPuqPvOAvoow6GpvC0g+QIyggaTD6HYtWe3lw+AcphXyLa0zzisE2WbuZc5
	RQX8tH8fzjYm80i5IJdLQ0SoolWqG0sKiPBNZQcULjboVCqaeY9sDX0nfO7vlnUsOgJe/t
	AN+2Bo2ZdcKsw4GpgEcSYCSmYYK/7hODF5foU8SAIAcm1FOB6TfCFDZNGb3SKchbrvn639
	vKmqp/bqfmoEmvymVgpUcEQ6mgaJN/cw+s2wvQitvMelPfLmAOhhP3qfbI/vNA==
Date: Tue, 08 Oct 2024 17:53:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: rk3328: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-3-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-3-didi.debian@cknow.org>
Message-ID: <a30f1363b47e6e928685f9f01110230c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_085304_870864_C5817B07 
X-CRM114-Status: GOOD (  12.97  )
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
> Update the rk3328 DT files which still used the deprecated variant.
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
>  arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
>  7 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index 824183e515da..9406a887652d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -159,7 +159,7 @@ pmic@18 {
>  		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <0>;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> index 1eef5504445f..12a4e421ec95 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> @@ -121,7 +121,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> index a4399da7d8b1..a10847509bfe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -181,7 +181,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-0 = <&pmic_int_l>;
>  		pinctrl-names = "default";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vdd_5v>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> index f20662929c77..99499a0bab19 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> @@ -152,7 +152,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-0 = <&pmic_int_l>;
>  		pinctrl-names = "default";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> index 414897a57e75..88bb95075b6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> @@ -191,7 +191,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index 3e08e2fd0a78..905ef4b94095 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -249,7 +249,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 90fef766f3ae..7d179aae8d24 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -181,7 +181,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
