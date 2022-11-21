Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEF3FC43219
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZumM87AdzJzAHqzRH8KMqklYp+SroyBuqrHgDEkBcqI=; b=KMG1nm2pxAc0S+
	4d97O9YseROWtaHzDXQCgMSSNlsx/qfVxiC3nzuj/ZTfrLX3hZE/+NxKQ6tgtG44VzEuJMl65f2D5
	pAjMYyYmiZ+nWfA8y9gpMLtOGb9mz4mKwGuIXALUA1dxg5E8TQP9swShlr56TG8JWN59QpOzKeiYE
	Ld1gYw4Kd/po7wnbTLPXz7Bfem9JX2Tm0L5qGXB269yp2un8Onr4qPLmHz+Nvg4CntoAqgIsn9KLt
	kkTwdj/0hxhAXdgGosCFFxX5OsjI6VQGU1DNgHZQ/dSQOa/efyJFXtZ0oDebqxOhlcHfap0RTmzcg
	144XKmUSILlbZ6I12Fjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB42-00GZGs-FS; Mon, 21 Nov 2022 17:58:38 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3v-00GZAi-Sn
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:58:36 +0000
Received: from jupiter.universe (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C1AED6602AC7;
	Mon, 21 Nov 2022 17:58:27 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669053507;
	bh=ASKiqbUGK6OeP8tAoM8DA0LQu24xmUO6m/UZrw3PEcI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AbsEYCHcton9DeItmJ8Oj940G+GhuAFmsvTCEAKcKZhk/9iOE4flRD5EcBXenFWiM
	 ZruYpnHh/2ekrCytRzXg/51WWjpy1uXvnL0cmz2AxXyoMlEWGeLOQ9FVAzMqqE0Gzl
	 iEKqUC0QjkDCyyVPu+Bbrl+diYt1Oot5T1oP0Qlyt5giJ27C6IwQ8xrzUMERUKt1+o
	 M1C0t38NWgRks2ug3AS0tJa9uOTjHV/6jXHyvAwHfYgc+rlLDnHEkPyKz+rzvMbPzI
	 9Fj+Yg/18/qnvdx7FDOd+iKgZD8pM1WQTCDZPEzBhxY6D81aGZJTROkNATFua/PxZH
	 sN0roKgJBGSvg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1E897480126; Mon, 21 Nov 2022 18:58:23 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv3 9/9] arm64: dts: rockchip: Add rock-5b board
Date: Mon, 21 Nov 2022 18:58:14 +0100
Message-Id: <20221121175814.68927-10-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221121175814.68927-1-sebastian.reichel@collabora.com>
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_095832_127700_B5106C60 
X-CRM114-Status: GOOD (  15.03  )
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

From: Christopher Obbard <chris.obbard@collabora.com>

Add board file for the RK3588 Rock 5B board. This is a basic
implementation which just brings up the eMMC and UART which is
enough to successfully boot Linux.

The ethernet controller is connected via PCIe so support will
come in a follow-up patch.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 43 +++++++++++++++++++
 2 files changed, 44 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 31fa55750a0f..b31aa1b0e9e3 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -73,4 +73,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
new file mode 100644
index 000000000000..2a55659bab41
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include "rk3588.dtsi"
+
+/ {
+	model = "Radxa Rock 5B Board";
+	compatible = "radxa,rock-5b", "rockchip,rk3588";
+
+	aliases {
+		mmc1 = &sdhci;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&sdhci {
+	bus-width = <8>;
+	no-sdio;
+	no-sd;
+	non-removable;
+	max-frequency = <200000000>;
+	mmc-hs400-1_8v;
+	mmc-hs400-enhanced-strobe;
+	status = "okay";
+};
+
+&uart2 {
+	pinctrl-0 = <&uart2m0_xfer>;
+	status = "okay";
+};
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
