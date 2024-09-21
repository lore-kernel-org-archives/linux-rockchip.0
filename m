Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 182DBCF9C68
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 21:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uXxMWPEDE9jK315WlJRjeXoEbPBaIJxX/2C+Ee+MLaw=; b=OztOudUpoou0Qmeb4ZsNX+RLJp
	GfIJVAvH5oObBl0e12bQokxOAQ11uBRb24GaCsAmq9RAgThks9hBR1gxS1+YtCF+uEgvyx43dYN6v
	sAJ/MuR8NA2/tOWYEG0GgrXqSfr5BmXQcL5VP7QMfDJTLmuA9GiTxVnnSg9YajAqVGw0T8od5A/RB
	2a84j05ZGUztaqaSI4pvBHAFlCZNKjsbmQxJbh8Un/uXZb6wYgE1Rshn4WmrNK5jwfQskLniMUv7H
	MOkYPtLo0DS9JrfUWByEohq+s9HazodUUEcIDjr6qCCJpNY51NZD6/J4+W95fMHgw5pZXUt4GnJgv
	hNX38DlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss7tU-0000000EIhv-26zP;
	Sat, 21 Sep 2024 21:43:56 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss7sM-0000000EIVH-1jrC;
	Sat, 21 Sep 2024 21:42:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1726954964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+uMN5w6qYS2BUoqj10TXa1/0/97pCNoqt/rmAX2GPAo=;
	b=bXZon0CEaBK6v6rzxU5YRfCFhLhOOwREJFeHmkWn7lduwYxSWtn2lAFcrOmfCS3bciGYbk
	pMd/4I3Lg8oP50TVKstEVU6tGTLBsQ1BXAa/PPCDYmbdE1HcYM5stO3A8OOUT/IpTV/rl/
	clHx+rU1bt++AGbwb+x8LlHIFv+4/eouASANroc9R7gjhYfWyeB28axdPItPbb4Rk4QKti
	9HG8G1/zvxLl7OESAeDw1IpLhnqUm3n500p1iauva2FmVvp92mDuuSACR/GoFXJ6p0jvXe
	1VgK1qWwW8zUeWeyToAGgM5OqTAS9JKYY4xNjH2KnWeWtt1SJSvu3Y8s846HjQ==
Date: Sat, 21 Sep 2024 23:42:43 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Florian Klink <flokli@flokli.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Kever Yang
 <kever.yang@rock-chips.com>, =?UTF-8?Q?Tam=C3=A1s_Sz=C5=B1cs?=
 <tszucs@protonmail.ch>, FUKAUMI Naoki <naoki@radxa.com>, Muhammed Efe Cetin
 <efectn@protonmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable automatic fan control on
 Orange Pi 5+
In-Reply-To: <20240921183810.225322-1-flokli@flokli.de>
References: <20240921183810.225322-1-flokli@flokli.de>
Message-ID: <d90eae7de77a77f023d995c4cc5d6c42@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_144246_780507_1AD401EC 
X-CRM114-Status: GOOD (  17.21  )
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

Thanks for the patch.  Please, see a comment below.

On 2024-09-21 20:38, Florian Klink wrote:
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
> index e74871491ef5..8569e862b6ee 100644
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
> +		map1 {
> +			trip = <&package_fan0>;
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +		};
> +
> +		map2 {
> +			trip = <&package_fan1>;
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +		};

These two cooling maps should be named map0 and map1 instead, i.e.
their numbering shoud start from zero, because there are no package
cooling maps in the parent dtsi file(s).

Having them named map1 and map2 in rk3588-rock-5b.dts was a small
mistake that slipped by somehow, and I've already submitted a small
patch [1] that fixes that mistake.

[1] 
https://lore.kernel.org/linux-rockchip/335ecd5841ab55f333e17bb391d0e1264fac257b.1726954592.git.dsimic@manjaro.org/T/#u

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
