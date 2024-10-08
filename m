Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1851FCEFC21
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 15:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hcl5qUHClUzUvAKYiNXsMrw74238YNo1AKH1+wgrj98=; b=kwl3nEzgtBpBxEQb3LhYJ+mktc
	SG4DJNSgCTVEp4/nsZOtj+qGxQlVyj/sEoTiQZXEi4Dui8F3V2TmdYZIKpqXbtGOz8GGeW4nbv+vo
	s5xxrIeSJqFrHfZ7AMRmCRFCQCzucv52SvY1yJOMZsZcl/7KD1gkiLJcjRUH8w3e3mUwIU+H/P9/5
	JjxFhrfcsK+iQNBp8d077bqNsO2DBI/rHRbxWnxwH3BhA0qppyuM30z2jLRw+rXwUsU4vLDEF362t
	61m3vRvxIh3X4pbCayjN430GtooJZuvGTI/vj6Yz4OPHpaoxY2+4B2l4+ZWdJmogHewtWVyP52mR3
	L3KyzpWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syCbq-00000006QSp-2Yj1;
	Tue, 08 Oct 2024 15:58:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syCWy-00000006PuV-0O8i;
	Tue, 08 Oct 2024 15:54:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402826;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2mfspLx2hCQEP4cMmIHTkKBp0jQPvfQ+o6+ZDw/dmb8=;
	b=Eeea0gNFIW+ZhFdh6WObao2Dgj+c0gctmB4yiWE8k0KCf7nReRJb4ZBShbip4Oem8ZMRuR
	O2L0M2nVxkGbp+igvScBzcA5EP++YrEMX3ypXnaQDw5SUig2B3Qyc9xl79Xbs/593w1Dqs
	JGxkuDrVMBPuScik43gEeiifLxzEVhvMe7xtNAFHHZD9suA2td4UB5huCJ4rqUK+1Bhbtd
	6fzEKSfNj7sCDSod4TOl8ERwMmWQEe4NNqqD4KHvLwnhKKHBWE8m4CXosDb4al192mTeEc
	wG9Pv4UFUn1LrhIF3Q9gCJlAszXZFGCg/5vFJHcCCeHm0yaK+IBQzQNmJo08Yg==
Date: Tue, 08 Oct 2024 17:53:46 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 3/5] arm64: dts: rockchip: rk3368: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-4-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-4-didi.debian@cknow.org>
Message-ID: <dbcb2cbd1bb00332370a550b493de099@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_085348_457898_888888BE 
X-CRM114-Status: GOOD (  13.28  )
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
> Update the rk3368 DT files which still used the deprecated variant.
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
>  arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> index 029b8e22e709..03ebf66e9bfc 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-geekbox.dts
> @@ -113,7 +113,7 @@ rk808: pmic@1b {
>  		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc_sys>;
>  		vcc2-supply = <&vcc_sys>;
>  		vcc3-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> index 8ac8acf4082d..dbf9fef9bc36 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-lion.dtsi
> @@ -179,7 +179,7 @@ rk808: pmic@1b {
>  		#clock-cells = <1>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&pmic_sleep>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc_sys>;
>  		vcc2-supply = <&vcc_sys>;
>  		vcc3-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> index 29df84b81552..26de79388db8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3368-px5-evb.dts
> @@ -73,7 +73,7 @@ rk808: pmic@1b {
>  		interrupts = <RK_PA5 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>, <&pmic_sleep>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc_sys>;
>  		vcc2-supply = <&vcc_sys>;
>  		vcc3-supply = <&vcc_sys>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
