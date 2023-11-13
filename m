Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6559FC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Nov 2023 12:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KgAuUt5OswTqfZLhZOTpOkqUhkzFsYj7z/hBjvZR7oM=; b=xIiPCn4s7aR4Bc
	tGzeWGCYF07Bej23KmgWExSZq3PsCGr8/oWbbkveXcjZGnjGgzgKE8YYMVCPdKbE4PUZ9Y9ibWPal
	hgp9b+028k6Zlsc4Mlb/w9OV2B4+97or7NnJqCj9NWGvQVGrfTvt3IxJn4H6EwB0bD5HUUdohpsWI
	UEugG/3oGG9k2KGTF9QK3jx8hUL7mI1U91jwe4qwk7024kyUKVrJF8TYDcsfTnj5se3PNmO66of7o
	H+7gWlwBU8tXt691QDtO3c1W2vDljluPZKufcxCNVwrWyYUA4eF9KQ9SuDRu/CpAbW0Fr7iRfpVhq
	SUiKkl5QgjtZRghQewdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Viz-00Duss-1M;
	Mon, 13 Nov 2023 12:07:29 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2Viv-00Dus8-1h;
	Mon, 13 Nov 2023 12:07:27 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id 8F9285C0115;
	Mon, 13 Nov 2023 07:07:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 13 Nov 2023 07:07:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm2; t=1699877238; x=1699963638; bh=Y5
	Gf1TE2G849jaf03zsNJMtCuWMkzZcXooRu7tYzxlQ=; b=v7jv5J94rs6ciPeif+
	dZMjzFxKlcgymjaa94blRo3nmx1zq7ZdEAFFyL7z9y7TnKD9O0AHYGzoLyYNP7Vk
	SmXakCLXtFRytafACy7H/LJIs6UjylnK6Qwt3kEAvWgjY82UiwtTykaYtC34QLOU
	xSiZxzc3n7xpby5XO09ZFbO95nXfLb853N699M5okzJn+S8r1wnBl8P9rzE36Uwf
	mP5rd1vmb58lA/1OQK8Xu+Gc5hxNpuob5cR/6MA8pBjJvtl/I9h8n4U7BttB6jXj
	ooEHRH1ALubjcwgte4bWYat4QKjFKCNNeUh4dIn840xWKT023R6YWbfd6A4MUQlZ
	+CPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm3; t=1699877238; x=1699963638; bh=Y5Gf1TE2G849j
	af03zsNJMtCuWMkzZcXooRu7tYzxlQ=; b=CmlTM7CAGb8TcudAmYLNDBa4xo9fr
	oZd3mtK1sdu7CIhdxfFuaelQsqadO2mVVNJdjV+jiEwr38EMPxUYYudfzEbDYpn6
	Que4ezD9xnwSkRkyPXPvmL9j5f0eE9XRyCwCvQG3SPzKcdY49CN3qiv3cEGchXUt
	yno87LKsMVTS/0BIGDBVhLMxMrZYNb5xGSDygmoBis1AuGK3SLmXpAvAsfZrt9j9
	argoTwLAmzEShPJn6P72kxqFIUzvn1x8nQXZcY3q6Rh8fcCrRRvIpukr7M4/njLQ
	KyWokAf3ZIWefa4wMhXNhK0CujGRiut8jJt6hyxyQLJXAwns1S7HaJANA==
X-ME-Sender: <xms:dRFSZSUIHl0Nvd0Ul2hwAsM6LAVBt95ITbDn9wi8oLSNaV8Tj-qKYQ>
    <xme:dRFSZenRLIF1-KWbTu7HMRHxAnXdgj6jicd8Z7vhpHbGkVuhCEdqVcE-AMnUSRMxw
    jsuI9Ok4g>
X-ME-Received: <xmr:dRFSZWYO2cygtqZh5oN9JXx7T58RB_QP73bkytSD8SDf5BDJ7rglbKP1Pc6MckEQB7shoZ9_rqjPBU9a0aaHwyvrim8JzJ-tV5M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeftddgfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfhimhcunfhu
    nhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrhhnpe
    duhfdtveeujeejjeffieevgfdtudegfeffvedugfetteehudevteehtefgieeitdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvg
    grthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:dRFSZZUxRjrtnYHOm8zYZrKfYiMtsV4XyVlWW4EheVzOVe0hcwOMlw>
    <xmx:dRFSZcm-DgiILmRj5QLxnvKQ6czOnHjzwiqVuBbjiXJctDmmCuk6dg>
    <xmx:dRFSZedt4l0b2fqTrQNCUTxt6NQyw1CcNwGChj8qbo6KNc7lTKe3zw>
    <xmx:dhFSZZjhzszfsqdvrUhPsWBGnfQKesMMjAmWegUFqZx6IOetXSXM4g>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 13 Nov 2023 07:07:12 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Mon, 13 Nov 2023 23:07:09 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-i2c@vger.kernel.org
Subject: [PATCH 0/8] Add support for Sonoff iHost RV1126 Smart Home Gateway
Date: Mon, 13 Nov 2023 23:06:57 +1100
Message-Id: <20231113120705.1647498-1-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231113_040726_133445_DC37B65D 
X-CRM114-Status: GOOD (  13.38  )
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


Sonoff iHost is gateway device designed to provide a Smart Home Hub,
it notably includes builtin radios for Wifi, BT and Zigbee, which
make it suitable SBC for use with many of the open home automation
platforms. It is availabe in two versions, first is based on
Rockchip RV1126 and 4GB DDR4 RAM. There is a second version with
based off the RV1109 dual core SoC and 2GB RAM.

Features:
- Rockchip RV1126 (or RV1109)
- 4GB DDR4
- 8GB eMMC
- microSD slot
- RMII Ethernet PHY
- 1x USB 2.0 Host
- 1x USB 2.0 OTG
- Realtek RTL8723DS WiFi/BT
- EFR32MG21 Silabs Zigbee radio
- Speaker/Microphone

This patch series adds the various device tree nodes required to
support this device. It also adds the initial dts for this device,
This work was largely based off the device trees for mainline
Edgeble Neu2 and downstream Rockchip rv1126-evb-v13 configs.
It has been adapted with relevant peripherals and GPIO pins for the
iHost.

Implemented in this series are most of the core periperhals including
Ethernet, Wifi, BT, Zigbee and RTC. Sound and USB will be added in a
later series.


Tim Lunn (8):
  ARM: dts: rockchip: rv1126: Add alternate UART pins
  ARM: dts: rockchip: rv1126: Serial aliases
  i2c: rk3x: Adjust grf offset for i2c2 on rv1126
  ARM: dts: rockchip: rv1126: Add i2c2 nodes
  ARM: dts: rockchip: rv1126: Split up rgmii1 pinctrl
  ARM: dts: rockchip: rv1126: Add ethernet alias
  ARM: dts: Add Sonoff iHost Smart Home Hub
  dt-bindings: arm: rockchip: Add Sonoff iHost

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm/boot/dts/rockchip/Makefile           |   2 +
 .../boot/dts/rockchip/rv1109-sonoff-ihost.dts |  13 +
 arch/arm/boot/dts/rockchip/rv1109.dtsi        |  23 +
 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   |   2 +-
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi |  72 ++-
 .../boot/dts/rockchip/rv1126-sonoff-ihost.dts |  13 +
 .../dts/rockchip/rv1126-sonoff-ihost.dtsi     | 409 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        |  21 +
 drivers/i2c/busses/i2c-rk3x.c                 |   8 +-
 10 files changed, 554 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109-sonoff-ihost.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1109.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
