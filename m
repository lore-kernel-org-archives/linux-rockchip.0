Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14F5FC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 18:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1q/mxivfN1aFp9rzdqonhsK9Tp/pP35Q3xrosN8EvU=; b=XmeFWu8q9ma55I
	wQREhyvmws9PAinZYQY7OVL1BAJPLQittChS226LyO/Dp46jkmLN2/zdt67ngYwFLuG6w3wJsprLT
	YBJfao9bsfvK8HeBiUAQlA4PjmOcvk5hVqp9tS5+71t/I0hsBMl6OIcx6ixBbSr2EGotjQ+W/20s+
	RiwkPxI0IL4e07CZadMSMx+e3RduBOmk/kQstFSYEpCpIJkuNYb0yJu8e6lcIUj3dsYswlO9DNicM
	slQM7S9Fnwj83Osuf1aXS0PjYttyl9e1yqmEIpExdSDtFCm3FQy5GFo+cP3SInPPfTQSUgED6fmhc
	f1Bw3YJiWA+CxboKf9RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKMhK-00000006KlB-2klD;
	Thu, 20 Jun 2024 18:39:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKMhI-00000006KkI-3tvz;
	Thu, 20 Jun 2024 18:39:50 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKMhF-0000W2-Ed; Thu, 20 Jun 2024 20:39:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Kropatsch <seb-dev@mail.de>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Fix regulators,
 gmac and naming on NanoPi R6C/R6S
Date: Thu, 20 Jun 2024 20:39:44 +0200
Message-ID: <2396550.3c9HiEOlIg@diego>
In-Reply-To: <20240612205056.397204-3-seb-dev@mail.de>
References: <20240612205056.397204-1-seb-dev@mail.de>
 <20240612205056.397204-3-seb-dev@mail.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_113949_001107_8E2872F7 
X-CRM114-Status: GOOD (  14.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 12. Juni 2024, 22:48:11 CEST schrieb Sebastian Kropatsch:
> Fix the alphabetical ordering in some nodes and rename some regulators
> and pins to match the schematics [1][2] as well as to adhere to
> preferred naming schemes.

General rule of thumb, when you need an "and" in your subject or a list
like the above - you definitly want to split the change into multiple
commits.

> In addition to that:
> * vcc_3v3_sd_s0: Fix voltage to be 3.3V
> * vcc3v3_pcie:
>     - Move to NanoPi R6C, this power switch is not available on R6S
>     - Fix vin-supply (is vcc_5v0 per schematics)
>     - Add gpios/pincrtl to enable power

this defnitly needs its own patch

> * vcc5v0_usb: Remove this regulator since according to the schematics,

this too

> * vcc5v0_host_20 and vcc5v0_usb_otg0 are directly powered by vcc_5v0

this could be grouped together with the 3.3v change

> * gmac1: Add rx_delay of 0 (no delay since phy-mode = "rgmii-rxid")

with rxid mode, why is the rx_delay needed at all?
Shouldn't this just work without the property?

> * rgmii_phy1: Add phy-supply as seen in schematics

separate patch

> * pcie2*:
>     - Add pinctrl reset pins
>     - Update vpcie3v3-supply to match the schematics

separate patch

> * sdhci: Add vmmc-supply and vqmmc-supply

separate patch


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
