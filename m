Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 360E9C02198
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 12:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V6f1NYO91mH76DAGAeznsHuqssHMozjAHaIWx1cj9pY=; b=SJNEIWwUm7NFGY
	CIzqz52UzbIzH9nRv+kCobV2xoHRkjUHJLwCi1MfWfZ5roaTtkawCyrkILDauWsGTP7qt4R7LKQku
	vzXv5K+KLIIkPdIeerhCY58Et0KvHQs0yuIpyyRyunRDkIJRxDEkKh8wetvdXA1IQCmx3+DPX+p+6
	CgvhSD8QBbGbukoThk0aFTcbPxxfvFPQeJxgDZ75Bt61tycFel0ylk8iDOuzS3VHFYp8VsyXL767N
	zKI4O7qNqNYewSVEipal5Qet2G6HAshvkHTqsy6gPptgkRqUNG2kPVNL6Ol4n4Brzre6c0WSgLqYr
	mtcEPTshfaELMjYAb50A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkML5-000000084eQ-0jcn;
	Tue, 18 Feb 2025 12:04:35 +0000
Received: from smtp-190e.mail.infomaniak.ch ([185.125.25.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkM6X-000000081VV-2WBA
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 11:49:36 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVd2gHPz4FR;
	Tue, 18 Feb 2025 12:49:29 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVc59ZGzkyq;
	Tue, 18 Feb 2025 12:49:28 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/9] arm64: dts: rockchip: align and reorganize Theobroma
 DTS(I)
Date: Tue, 18 Feb 2025 12:49:11 +0100
Message-Id: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALdztGcC/x3MQQqAIBBA0avErBvQIZO6SrSQmmwoLLQiiO6et
 HyL/x9IHIUTtMUDkS9JsoUMXRYwzC54RhmzgRQZRVrjkUZ0q/iAs5NlO9FSRbqyytamgZztkSe
 5/2XXv+8HVPcwi2IAAAA=
X-Change-ID: 20250211-tsd-align-haikou-724214707659
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_034933_780676_69480E99 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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

We have three SoMs that can use Haikou as their carrierboard so it'd be
nice to have consistency across SoMs on what's enabled by default. To
that end, Tiger Haikou now has UART5 enabled and Puma Haikou now has the
EEPROM found on Haikou specified.

Additionally, some devices were configured or enabled in the wrong
places (either SoM DTSI when they needed to be configured in
carrierboard DTS or vice-versa). This moves things around to better
match actual HW definition and make it easier to reuse the SoM DTSI
without having to undo carrierboard-specific changes. While at it,
disable devices/buses exposed on connectors which do not have overlays.
They need to be enabled in the appropriate overlays whenever they will
be added.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (9):
      arm64: dts: rockchip: enable UART5 on RK3588 Tiger Haikou
      arm64: dts: rockchip: move DDC bus from Haikou carrierboard to RK3399 Puma DTSI
      arm64: dts: rockchip: move I2C6 from Haikou carrierboard to Puma DTSI
      arm64: dts: rockchip: disable I2C6 on Puma DTSI
      arm64: dts: rockchip: enable I2S0 in Haikou carrierboard, not Puma DTSI
      arm64: dts: rockchip: add EEPROM found on RK3399 Puma Haikou
      arm64: dts: rockchip: enable Ethernet in Haikou carrierboard, not Puma DTSI
      arm64: dts: rockchip: enable I2C3 in Haikou carrierboard, not Ringneck DTSI
      arm64: dts: rockchip: disable I2C2 bus by default on RK3588 Tiger

 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts |  2 ++
 arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi       |  4 ----
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts   | 18 +++++++++++++++---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi         | 10 ++++++++--
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts  |  2 ++
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi        |  1 -
 6 files changed, 27 insertions(+), 10 deletions(-)
---
base-commit: 2408a807bfc3f738850ef5ad5e3fd59d66168996
change-id: 20250211-tsd-align-haikou-724214707659

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
