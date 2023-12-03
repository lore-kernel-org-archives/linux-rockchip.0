Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08125C4167B
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Dec 2023 12:40:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2vX9D/IsaoQb/LeCgnIEy/bxgrucrqc27zNWKtMfrgI=; b=WunmxbgnStbwBc
	EK7rfkS7sZANHrugGqF/5Lpk9qGfS3P29S8OF3OPIxMvZzs67LPh6X6zSb6JR3KMwja/gT2gPa/yw
	HG5/GlEDVLPVjAbOAcd9jaOhFgATQgqZdXd8my6SJk4scLiGUQ1f3sl8AKGZ6l6LHqYfk1E7jdJqZ
	bl5Xj8C4eRQmlStG/ztUHoga3Wu91EvZy1RD2BjLut2aGZpDxchVYeUYNHmg11aWU6qAYwRARoQXV
	fyN3jswXbA56TzEvbtsTWpFJvCNrH+SdQKIGVfiSnWOUBmlvZ8RJs/0UVQP6uBI9Ce6yigdlxvLjK
	7OxaMrDL2xuJ7CIKvkjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lly-00H01r-2v;
	Sun, 03 Dec 2023 12:40:34 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9lls-00Gzxa-0G;
	Sun, 03 Dec 2023 12:40:31 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 613545C01A1;
	Sun,  3 Dec 2023 07:40:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Sun, 03 Dec 2023 07:40:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:message-id:mime-version:reply-to:sender
	:subject:subject:to:to; s=fm3; t=1701607221; x=1701693621; bh=D3
	XZbOtWV4IGWni8+TGRz+HjUGBTXe8+ytvKCY7QduI=; b=NaSngPAPrrCkKIyZkq
	R2o8g3gvvGP7+N6cO6wA4RE9v7wdCCQclild6/QL0qvgOGC6V2WfQAVxPifaW2GC
	jIsHDps9UQ1bwNC9X1ewBcPwbE+y0E58YY/ycaUXMgvDCA6xbPCIjxVpiQ47B1Ta
	1OOXx6fGraLCelwNQIlbrcTtMwlw70QOcgpc9K3EjnUmOHawCjGKmF+uqcqpoErv
	aqAQ9+tPBA+MKN+zlblxG3B3Gmq9FgKcfOdBtVSi7V0npS0AsGZypJox4VsnjH9N
	FfbUYW+7g605KAP2VdklbD0ZY9Qaf8r/uZIkOSsMkWMLsZ2Wndz6n8XvIqOwCfeZ
	UEbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:message-id:mime-version:reply-to:sender:subject
	:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
	:x-sasl-enc; s=fm1; t=1701607221; x=1701693621; bh=D3XZbOtWV4IGW
	ni8+TGRz+HjUGBTXe8+ytvKCY7QduI=; b=byxuicvvQJhu9s9Dx8WHCJBQ/JFBb
	KH9xsENr1L+Jvx28Fg934yzJMsyRnd/B+0kYspYXhh5s36dgwtmt47BEAwB9cZWg
	NlcPLDORxKl2n5IJldgf3U8M2ZOH0P+v6WPADR1pMo5p/clh/m82VJ0xxutqqBUC
	jy+SiAz6+391NTW90aR4uU04PtP/QWBx/cOrTtBylkfpwhsHSRHN16GGT+B64ij5
	Kde4bOAHKq8Z8FQaQkt2Z+vX5RNrDdCinrcuwzFS870FJEXBuuv2bSNMz4TZq7ox
	41sJqO60qeNYqGdEecx65eTUCjKl/lxvXSVHb27z9DQtUsDHSXi9Bgl/A==
X-ME-Sender: <xms:NHdsZbUuPNW2n8B-tms_ATh4QhtSJk78y2jIAHKyoJ43Q3iMh4nQAg>
    <xme:NHdsZTmdaClmgmKBF-K-GxwR1elZiXJyg4fUqgmSKpNOTqoiPXOgH8Lh4LjYX9bAK
    XqxdC-5QA>
X-ME-Received: <xmr:NHdsZXZ_uPSWDT0VlpYqJId-amYCjBV41RDFJtcXkwef3Q7AvUrCLAunQRU8bsCEMmttqqHLQo_2KYqRO-x6-W4EQVKabhEGg4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudejgedggeefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvvefufffkofgggfestdekredtredttdenucfhrhhomhepvfhimhcunfhu
    nhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrhhnpe
    duhfdtveeujeejjeffieevgfdtudegfeffvedugfetteehudevteehtefgieeitdenucev
    lhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmsehfvg
    grthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:NHdsZWW1vQ6CYB8y-V-i_hfBMZ1HHMD_d5HIQHO-pV7Mxw0m5vQ8sA>
    <xmx:NHdsZVm-HsMqYBAkmWqp7JBiczgVXCq7wJzPx1vnUWA-U7Xv0UcpkQ>
    <xmx:NHdsZTeeDdzTX4tOPxweznPz6ivV2_cFr3KxS_rZ0iDJUrzDJxhjvA>
    <xmx:NXdsZWj5bmipdSXTCMR78oi2uFpoffSVFBdEUXyBI30RH5YbRuZtGQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 3 Dec 2023 07:40:14 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Sun, 03 Dec 2023 23:40:09 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tim Lunn <tim@feathertop.org>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v3 0/8] Add support for Sonoff iHost RV1126 Smart Home Gateway
Date: Sun,  3 Dec 2023 23:39:56 +1100
Message-Id: <20231203124004.2676174-1-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231203_044028_508400_17FC617B 
X-CRM114-Status: GOOD (  15.09  )
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
most notably it includes builtin radios for Wifi, BT and Zigbee, which
make it suitable SBC for use with many of the open home automation
platforms. It is availabe in two versions, first is based on
Rockchip RV1126 and 4GB DDR4 RAM. There is a second version based off
the RV1109 dual core SoC and 2GB RAM.

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

Changes in v3:
- i2c: add code comment and clarify commit message further
- i2c: Collect ack by Heiko
- Move ethernet alias from rv1126.dtsi to board dtsi

Changes in v2:
- i2c: clarify commit message
- Address review comments from Heiko
- Split out rv1109.dtsi to new patch
- Collect Robh Ack for dt-bindings patch

Tim Lunn (8):
  ARM: dts: rockchip: rv1126: Add alternate UART pins
  ARM: dts: rockchip: rv1126: Serial aliases
  i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
  ARM: dts: rockchip: rv1126: Add i2c2 nodes
  ARM: dts: rockchip: rv1126: Split up rgmii1 pinctrl
  ARM: dts: rockchip: Add rv1109 SoC
  ARM: dts: Add Sonoff iHost Smart Home Hub
  dt-bindings: arm: rockchip: Add Sonoff iHost

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm/boot/dts/rockchip/Makefile           |   2 +
 .../boot/dts/rockchip/rv1109-sonoff-ihost.dts |  13 +
 arch/arm/boot/dts/rockchip/rv1109.dtsi        |  23 +
 .../dts/rockchip/rv1126-edgeble-neu2-io.dts   |   2 +-
 .../arm/boot/dts/rockchip/rv1126-pinctrl.dtsi |  72 +++-
 .../boot/dts/rockchip/rv1126-sonoff-ihost.dts |  13 +
 .../dts/rockchip/rv1126-sonoff-ihost.dtsi     | 408 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi        |  21 +
 drivers/i2c/busses/i2c-rk3x.c                 |   8 +-
 10 files changed, 553 insertions(+), 16 deletions(-)
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
