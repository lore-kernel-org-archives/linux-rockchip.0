Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E23DCF9C6C
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 12:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C4aMDX8CPRKcBzUkACeZk2lsoK6h99p+NZ4G5fh4+Jw=; b=HxK2aQABfYpT/VHwzELXAzF+CL
	2aOgA8Fu86ODss9PZZOmrtxmSYHAcqr5fDKsr11nHIABN+A5wtpgMZu5wJg9uPx0VWG7opnSmW6OS
	Ww3miUzMp9yjmfa5tc3uEyahNAHeyjNBsaFyzk28+zS24nQxGCkrxHl+PpCCeZIDx6XTM+Yyrfc3O
	2e+A/1lyuP5typD/hrdmpSBzTXKNYP2ILaU75qutOooKgDUPN2CiBBIX2ov1y38V9cheUV/1L6zm4
	YdwtJSBk2D+bGfgFPAIskQrRH4PFVom5X0JGJbTzXYePlMX5PccgNxO/6MU+DVn35fFTkPYvLsSeO
	qd7iiNpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssLMZ-0000000F6jP-0xkj;
	Sun, 22 Sep 2024 12:06:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssLLP-0000000F6aq-2bjb;
	Sun, 22 Sep 2024 12:05:42 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727006734;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vftmAoVGKOfWv9wJW7In1MzRai88OEJVEYZ604itMTc=;
	b=JQ+pSI5cJpwl7CtYu0gIqZvBu618MV/ToALbH6bApRGXWN3ylgs0BasAlVvGqELSKO+CJn
	UyAmGd/c8VuN88zwmyw82OmCURGQWQKA7DTfZbCJKkK6SUwUlm7qDtkKoSYh/YtKyVH/Jc
	NeCQDAigxG+4ZEoTP3O2piwYgvO63B3PS5EFFoPpsoa3Ih47ZagI6Z+9rKdNpio9SsS7dY
	hl0EwPbcUL1neg2aV9cOZ2b6U5JfJz/Xtlg9Yqb1mqpSq1IpdtbiZlc1JGclD7Eo8ruSb2
	ozycleN6mgy7TrIIHHZ2awmVNH+jb0QC7X+xO6UeUD/v+UMsHBr8j1hhzszxtA==
Date: Sun, 22 Sep 2024 14:05:33 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Florian Klink <flokli@flokli.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, =?UTF-8?Q?Tam?=
 =?UTF-8?Q?=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>, Ondrej Jirman
 <megi@xff.cz>, Muhammed Efe Cetin <efectn@protonmail.com>, FUKAUMI Naoki
 <naoki@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable automatic fan control on
 Orange Pi 5+
In-Reply-To: <20240922112113.251431-1-flokli@flokli.de>
References: <20240922112113.251431-1-flokli@flokli.de>
Message-ID: <2441efb1ebbfe1f54507a1cc73c52436@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_050540_350280_975D4266 
X-CRM114-Status: GOOD (  18.02  )
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

Hello Florian,

Please, see a comment below.

On 2024-09-22 13:21, Florian Klink wrote:
> This links the PWM fan on Orange Pi 5+ as an active cooling device
> managed automatically by the thermal subsystem, with a target SoC
> temperature of 65C and a minimum-spin interval from 55C to 65C to
> ensure airflow when the system gets warm.
> 
> This is pretty much the same as '4a152231b050 ("arm64: dts: rockchip:
> enable automatic fan control on Rock 5B")', except for the Orange Pi
> 5+ board.
> 
> Signed-off-by: Florian Klink <flokli@flokli.de>
> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index e74871491ef5..d91438752006 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -351,6 +351,36 @@ &i2s2m0_sdi
>  	status = "okay";
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
> +
> +		package_fan1: package-fan1 {
> +			temperature = <65000>;
> +			hysteresis = <2000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			trip = <&package_fan0>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +
> +		map1 {
> +			trip = <&package_fan1>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};

Thanks for renumbering these cooling maps.  It's just that you
missed to label this patch as the v2, i.e. you should have used
"[PATCH v2]" in the patch subject.

Please, resend this patch with the v2 label, and please provide
a change log in the patch notes, i.e. below the "---" line.

Here's an example of an earlier v2 patch submission [1] that you
may find helpful.

In the v2 submission, please feel free to also include my

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

[1] 
https://lore.kernel.org/linux-rockchip/bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org/T/#u

> +	};
> +};
> +
>  /* phy1 - M.KEY socket */
>  &pcie2x1l0 {
>  	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
