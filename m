Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 127ACCF9C64
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 11:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SX/RfEzqD8wN6o6EhQ9eOsVih73GRtXBevLH69LFCGw=; b=AKzMyil6mPF11+MsLUFG7Cr4tM
	7zbV3OUZLK1S2+2YD2AzcQlL7ksoW6lP5VPRK4L0qvmPODMSYffsoutjXQbWsd8QkG1wBhtMNoX7f
	KZq4evm28Fj09UA/UJVbL8HbKA9n1i+DGblgrGn+ulW5iTF1TISDWGsjMSG6ZwJNa3jnaYuE22Osl
	KIcHCuPuNMwpbU1bY6skivR8uscrP0PIWsHayD+3n+mSFPIjYN8f7/U1S55W3fXGoA8AYTK5AEEdD
	SxGvyTxfcH1ZBAnpub0+MTJrKHsTzr0nW9vjlOcsUwFMCbp6Jpzc0ECU6vOCDpFgTafqbovxm9+XC
	h5aM1fOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssKip-0000000F3Yc-05wF;
	Sun, 22 Sep 2024 11:25:47 +0000
Received: from mail.flokli.de ([116.203.226.116])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssKhb-0000000F3PC-2Rgf;
	Sun, 22 Sep 2024 11:24:33 +0000
Date: Sun, 22 Sep 2024 14:24:27 +0300
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1727004269; bh=aE57zikAciRYqk7E2pLxdAkKeLP7zXYKYE2wvhY4tbY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=OrivOjv+IdY/elb73qwBqyr+8eP3hg15N81trSdorH0QcVIqUopN/c3OPsWOqqp1C
	 zfAHUX4bZS5qgyb/+DcpD4C4fniJcnEK2dOCbZ65LnnsJgP8jxbJ4mwZcw5oZBa8Lk
	 llJb8J6kWulBHU1I4BUd8wwWB2kR3xNHP4+Zp98Y=
From: Florian Klink <flokli@flokli.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Kever Yang <kever.yang@rock-chips.com>, =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>, 
	FUKAUMI Naoki <naoki@radxa.com>, Muhammed Efe Cetin <efectn@protonmail.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: enable automatic fan control on
 Orange Pi 5+
Message-ID: <2u67umujpui4w6b2aut6ugsuknigky2jahcyhslkzi3f2u4onh@epwsqmjnvmvp>
References: <20240921183810.225322-1-flokli@flokli.de>
 <d90eae7de77a77f023d995c4cc5d6c42@manjaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d90eae7de77a77f023d995c4cc5d6c42@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_042431_788226_8AB24589 
X-CRM114-Status: GOOD (  11.95  )
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

Thanks, addressed that in the v2.

On Sat, Sep 21, 2024 at 11:42:43PM GMT, Dragan Simic wrote:
>Hello Florian,
>
>Thanks for the patch.  Please, see a comment below.
>
>On 2024-09-21 20:38, Florian Klink wrote:
>>This links the PWM fan on Orange Pi 5+ as an active cooling device
>>managed automatically by the thermal subsystem, with a target SoC
>>temperature of 65C and a minimum-spin interval from 55C to 65C to
>>ensure airflow when the system gets warm.
>>
>>This is pretty much the same as '4a152231b050 ("arm64: dts: rockchip:
>>enable automatic fan control on Rock 5B")', except for the Orange Pi
>>5+ board.
>>
>>Signed-off-by: Florian Klink <flokli@flokli.de>
>>---
>> .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 30 +++++++++++++++++++
>> 1 file changed, 30 insertions(+)
>>
>>diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>>b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>>index e74871491ef5..8569e862b6ee 100644
>>--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>>+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
>>@@ -351,6 +351,36 @@ &i2s2m0_sdi
>> 	status = "okay";
>> };
>>
>>+&package_thermal {
>>+	polling-delay = <1000>;
>>+
>>+	trips {
>>+		package_fan0: package-fan0 {
>>+			temperature = <55000>;
>>+			hysteresis = <2000>;
>>+			type = "active";
>>+		};
>>+
>>+		package_fan1: package-fan1 {
>>+			temperature = <65000>;
>>+			hysteresis = <2000>;
>>+			type = "active";
>>+		};
>>+	};
>>+
>>+	cooling-maps {
>>+		map1 {
>>+			trip = <&package_fan0>;
>>+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
>>+		};
>>+
>>+		map2 {
>>+			trip = <&package_fan1>;
>>+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
>>+		};
>
>These two cooling maps should be named map0 and map1 instead, i.e.
>their numbering shoud start from zero, because there are no package
>cooling maps in the parent dtsi file(s).
>
>Having them named map1 and map2 in rk3588-rock-5b.dts was a small
>mistake that slipped by somehow, and I've already submitted a small
>patch [1] that fixes that mistake.
>
>[1] https://lore.kernel.org/linux-rockchip/335ecd5841ab55f333e17bb391d0e1264fac257b.1726954592.git.dsimic@manjaro.org/T/#u
>
>>+	};
>>+};
>>+
>> /* phy1 - M.KEY socket */
>> &pcie2x1l0 {
>> 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;

-- 
Florian Klink

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
