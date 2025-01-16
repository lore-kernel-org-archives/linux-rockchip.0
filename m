Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B84CDC02183
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 14:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Nd2w1BkaBvGajN1hLkbNRkD+BdeG4EzGCFkWV1hvdI=; b=RkHk+JmW32LdQT
	TxyddgNcbY2mDcFkw06A3+/jqN7i1VlYuA/IIm7aOQKY/9mDc5ssn8uOwmqFprgsKfbWur4QNtV/9
	mILs+GfUq7CrMDojv2CqxbuS2rcVWsZszFM7QfHFxEUlKhB0PE9N0Uev23rwYtFqUkmloxvIP50p6
	TDWtwGJYaM7iabglEwyVglY6uzoSwKMAwQPSfV9oyRFIB2NRgSS7/TXn2oZ+IRAhOfdExnRK/0O5M
	teg1GboS/qDDDtKynvoesPfobbmTq+hNTatEpVGL7ujxMAC5hfrPo3JF7xfxYjeLWOINiCIrYdMPi
	0DiJgSOn0ShxsjMGGgMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYRCn-0000000FElA-2Loc;
	Thu, 16 Jan 2025 14:50:45 +0000
Received: from smtp-42aa.mail.infomaniak.ch ([84.16.66.170])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tYRAA-0000000FDsD-3jY2
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jan 2025 14:48:04 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (smtp-3-0001.mail.infomaniak.ch [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YYm1k0xNNz2cd;
	Thu, 16 Jan 2025 15:47:54 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YYm1j02mfzYwv;
	Thu, 16 Jan 2025 15:47:52 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 16 Jan 2025 15:47:10 +0100
Subject: [PATCH v2 1/3] arm64: dts: rockchip: add overlay test for Edgeble
 NCM6A
MIME-Version: 1.0
Message-Id: <20250116-pre-ict-jaguar-v2-1-157d319004fc@cherry.de>
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
In-Reply-To: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>
Cc: Michael Riesch <michael.riesch@wolfvision.net>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_064803_058017_D3EF7B3D 
X-CRM114-Status: UNSURE (   9.89  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The Edgeble NCM6A can have WiFi modules connected and this is handled
via an overlay (commit 951d6aaa37fe ("arm64: dts: rockchip: Add Edgeble
NCM6A WiFi6 Overlay")).

In order to make sure the overlay is still valid in the future, let's
add a validation test by applying the overlay on top of the main base
at build time.

Fixes: 951d6aaa37fe ("arm64: dts: rockchip: Add Edgeble NCM6A WiFi6 Overlay")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 86cc418a2255cdc22f1d503e9519d2d9572d4e9d..3f92d1a9d0b6efeee46ad4aff8c2b8ed3cb83d73 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -134,7 +134,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-w3.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-genbook.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
@@ -163,3 +162,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5c.dtb
+
+# Overlays
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtb
+
+rk3588-edgeble-neu6a-wifi-dtbs := rk3588-edgeble-neu6a-io.dtb rk3588-edgeble-neu6a-wifi.dtbo

-- 
2.48.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
