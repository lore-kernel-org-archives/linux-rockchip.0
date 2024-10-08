Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15669CEFC29
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 15:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XFWeaxNxDk5j6FF7ks7cP/c58Ml5L1didxShF8zwiI8=; b=dvpKO62YrIHKOVLmBFzpkDOyHT
	WF+i20fgaAKBeCrTWMRKy7X7+TWnzwfkKZF8d3RKofXo6XsygVPnypvwHicmQWcU7B/BHdXPxnpix
	8OJP+SEZlxYAllHqM1VSirrfzXK/lJj+yTXsUgeEMxo2I4TecYHCM3jPyeT37tLogaK6rC9mR31t/
	L4mfMRe7F5xGkFnSCIB2q/pzc3ugjehqYFI4hwqxN/SrkWyVtSFyqXAQ9bFnxnlZeb1UQ7S2xOyF3
	R+fuuWbRxasEMKn42g15NFKP3zZo6fRiztH3Y+nTbSbMtg0t+MX0BeOiLnEmR0diGEghPUbCRKYCK
	Y0trVNeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syCY1-00000006Pzn-2deN;
	Tue, 08 Oct 2024 15:54:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syCVT-00000006Pif-43Um;
	Tue, 08 Oct 2024 15:53:32 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kk3o5thn4xjWxw8Xf2BHBrZcVBGNJ5pXmV6wOPKlixI=;
	b=kwDM4QeJiTro08ueSlnQwif1yLByb2XotiWQx0n6LCdOeAwBoYhf/YTGIH43gDVGmqA4Ho
	zE2w+QHGJhKK7G9M6CzXVXjO/NWHxobKJAglV//pOCvSXtBiIKQsPIbQk2ufasjF43e0MC
	NilzDzyYM/qYevmVOGbO8sip0zTFcjyMWPK2XbDx29myi63w/PQSfh5k+xdOx5Zhvrg5Qd
	PnjwlDm0m/WSW50rpO5yo3PbEZemFeWwTuLp+2j44PRCRvZT6nkp2s1WK50Gyz+h98MWTE
	DiuCTAI5wDFqisoN4SO8w+/6xx082cIhSWI4sTMbGMKZlq1Cx0pLSzTSqXE45g==
Date: Tue, 08 Oct 2024 17:52:08 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/5] arm64: dts: rockchip: px30: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-2-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-2-didi.debian@cknow.org>
Message-ID: <449771bdf7a652e716b4cf3ad64e6ec5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_085216_499113_ED7145EE 
X-CRM114-Status: GOOD (  13.58  )
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
> Update the px30 DT files which still used the deprecated variant.
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
>  arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
>  arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> index 5eecbefa8a33..dd715d22d4d2 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> @@ -50,7 +50,7 @@ rk809: pmic@20 {
>  		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 0a90a88fc664..c9d7b32da997 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -189,7 +189,7 @@ rk809: pmic@20 {
>  		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <0>;
>  		clock-output-names = "xin32k";
> diff --git a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> index f18d7eb9a9c7..d22ea65b364c 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> @@ -70,7 +70,7 @@ rk809: pmic@20 {
>  		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <0>;
>  		clock-output-names = "xin32k";
> diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> index bb1aea82e666..eb0bb78cff7d 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> @@ -127,7 +127,7 @@ rk809: pmic@20 {
>  		pinctrl-names = "default";
>  		#clock-cells = <0>;
>  		clock-output-names = "xin32k";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
