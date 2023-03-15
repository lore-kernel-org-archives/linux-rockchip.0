Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5275AC6FD1D
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 03:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FnnHyvB0hD/mKWM2EPIsrHhSHKYAOeJjG55kUN9RWB0=; b=rkQ+JxWdGUr3JE
	OI1PEyIbK7RyiVs8ThOXBvnBPIqGujQK1l5J2FrdBRWzQd6+oyf+JsNKp070j3Z02i05UZHVUflRU
	ba0W7F9zZGIJk9UfKeWsaaponl57ejkqwBY62Dj5+8o/OBgh85j+hmDCfArXXtskc+sdfy/dWgPIw
	lpeLkUiNCNUJBdWlVSBSgMVMWY0bSaMWsXYVafc5xo1pIzXw7idVVNcwwdp2JYQmcVpjAEv7g58Hl
	69+STButVH9CMYQdksi4k7z/FBlfGFc/OgiMRgZMAcBDMM7vs1f/D693G847CLel8U3Ng8IPi1ryz
	zgTevW243L9UXd8g5CRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHvD-00CAGf-2S;
	Wed, 15 Mar 2023 03:35:27 +0000
Received: from woodpecker.gentoo.org ([140.211.166.183] helo=smtp.gentoo.org)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcHv7-00CADq-0g;
	Wed, 15 Mar 2023 03:35:22 +0000
From: Yixun Lan <dlan@gentoo.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Jagan Teki <jagan@amarulasolutions.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Yixun Lan <dlan@gentoo.org>,
	Nick Xie <nick@khadas.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Add Khadas edge2 board
Date: Wed, 15 Mar 2023 11:34:41 +0800
Message-Id: <20230315033441.32719-3-dlan@gentoo.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230315033441.32719-1-dlan@gentoo.org>
References: <20230315033441.32719-1-dlan@gentoo.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_203521_329178_68BB2D32 
X-CRM114-Status: GOOD (  12.85  )
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

Edge2 is an ultraslim, credit-card sized ARM PC designed by Khadas.

In this patch, we will add basic device tree support for this board,
Only eMMC, UART are enabled, so it's capable of booting into
a basic linux system from eMMC via serial console.

Signed-off-by: Yixun Lan <dlan@gentoo.org>
---
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 37 +++++++++++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 99a44c400d6a..1743e9e14426 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -90,4 +90,5 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
new file mode 100644
index 000000000000..93b4a0c4ed0f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -0,0 +1,37 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3588s.dtsi"
+
+/ {
+	model = "Khadas Edge2";
+	compatible = "khadas,edge2", "rockchip,rk3588s";
+
+	aliases {
+		mmc0 = &sdhci;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:1500000n8";
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
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
