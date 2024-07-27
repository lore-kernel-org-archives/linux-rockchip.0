Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF42C3DA61
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jul 2024 15:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W4gUMHHk4j6mXi9r3TMSi2F39Rz1ED55j1fz8BkLCG4=; b=fr6zSikwz951qmxSTqvktdwW0y
	qzHbaes/rNEZEPAsi3el3DXNZqRY7SMEwlZkwgJUunW4m6B2ye6f0wEMh1dPHqpUwTn5DJpwtdBl3
	tC/3oOjYVLwB9/O7zE3QZXqc+q6XcHC0FdelUGU/ENIcr4CizzJGdLA5gnvMdsL9xJvW15JBd3Rbp
	q7hsMYxMeLmYf4SAp6dOMI9qSLNt6UQbW17cCcM0URpaa16Wb/hqSpKxCh9O4axFpQEw4lCtKFndE
	u8q1F5dllL6dJ8F7lCiBidCk8mxFir6GAy+U+ZoR/hw5v6SYIjZRROIFPNtR8EsxEOHd3hciUFlGW
	ilBsdKFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXjjf-00000006vOn-4BCm;
	Sat, 27 Jul 2024 15:53:32 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXjjF-00000006vKE-0kTQ;
	Sat, 27 Jul 2024 15:53:07 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1722095580;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ey6TLlvsh7W76LTwNBcAOelGm+P+oLYiI/XxNUy/ajs=;
	b=lILBN6Is22+9nU3ZLKmZZFQGypsmiPkSNwHkNaelTVENPDXy9VcT7CBsOKOm7g4UAX7wpd
	cALDfvIgXMszyl8NUSwXidsZjg59Z8ozIFbvx/Vf776+EIGSlapfqH0gRaFwhPRk9YE78U
	LdgsFH3GPhJSc5At98CCtCO6OdYLHKEM3dZVB8CYZH6lM/ErBFbiwD/ZbL/inx5zIrpUf8
	5j8OUmJ3wRLiz+42XPV408rtMmAmwsfNCWzU2akorIG8h7Zxy0YRyNcT1oGLSuO/mgUR8N
	Njz7W0Kj3n41hd8PkmGaww5lVfVbjw4sF1SvsnbhvZ09iqzH3/sLIsEgzIlgyQ==
Date: Sat, 27 Jul 2024 17:52:59 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jonas
 Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: Add missing pinctrl for
 PCIe30x4 node
In-Reply-To: <20240726110050.3664-1-linux.amoon@gmail.com>
References: <20240726110050.3664-1-linux.amoon@gmail.com>
Message-ID: <af63314cbac4cae4ffc84606024f9795@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_085305_858393_3870E6B6 
X-CRM114-Status: GOOD (  23.13  )
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

Hello Anand,

On 2024-07-26 13:00, Anand Moon wrote:
> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> signals. Each component of PCIe communication have the following 
> control
> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to 
> generate
> high-speed signals and communicate with other PCIe devices.
> Used by root complex to endpoint depending on the power state.
> 
> PERST is referred to as a fundamental reset. PERST should be held low
> until all the power rails in the system and the reference clock are 
> stable.
> A transition from low to high in this signal usually indicates the
> beginning of link initialization.
> 
> WAKE signal is an active-low signal that is used to return the PCIe
> interface to an active state when in a low-power state.
> 
> CLKREQ signal is also an active-low signal and is used to request the
> reference clock.
> 
> Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> nomenclature.

I wonder why the three patches in this series cannot be squashed into
a single patch, because they target the same thing for the same board
dts file?  I don't think that having these three separate patches may
help with possible regression tracking in the future, for example.

> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> v4: rebase on master, used RK_FUNC_GPIO GPIO function instead of PIN
> number.
> V3: use pinctrl local to board
> V2: Update the commit messge to describe the changs.
>     use pinctl group as its pre define in pinctrl dtsi
> ---
>  .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 966bbc582d89..1c7080cca11f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -338,7 +338,7 @@ &pcie30phy {
> 
>  &pcie3x4 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3_rst>;
> +	pinctrl-0 = <&pcie30x4_pins>;
>  	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie30>;
>  	status = "okay";
> @@ -377,14 +377,20 @@ pcie2_2_rst: pcie2-2-rst {
>  		};
>  	};
> 
> -	pcie3 {
> -		pcie3_rst: pcie3-rst {
> -			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> +	pcie30x4 {
>  		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
>  			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> +
> +		pcie30x4_pins: pcie30x4-pins {
> +			rockchip,pins =
> +				/* PCIE30X4_CLKREQn_M1_L */
> +				<4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
> +				/* PCIE30X4_PERSTn_M1_L */
> +				<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>,
> +				/* PCIE30X4_WAKEn_M1_L */
> +				<4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
>  	};
> 
>  	usb {
> 
> base-commit: 1722389b0d863056d78287a120a1d6cadb8d4f7b

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
