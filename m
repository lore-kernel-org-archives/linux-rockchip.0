Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B57EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kWKitTXzwkNNBsz7tQTpzQzslrtbVXo9kXWaxnAdb1E=; b=DdczEky+wzeYAm
	fyrdhudcsE7yCb/S0L77LNc9PSfNS7TvGzFKtSF8gkMfKAQkHw7vgoqPgrDcv6O+8n/ueA3SoJhoU
	fruded7et/Kb2M1q2kMJ5b5uLwpMCqTBuDtnH8PAnF9D0RsIDM0jQ4/XyRMmWD+nW+MUFdrnEZ34G
	F/+6KhYjMjnwNuwk2jETpz+QMatlst+du2t7YR7utDChdZLod9mHYS5WIToG7UIT7bc6KBfbcqy1n
	8UodZuFsID2Rj1XP50KBbsmWW0VFY+ag+Eh2fA4o2ng2ie51cUvc5+WHMEi2LcAetpHBD9GvtaAPI
	qTRP8PtIOgfsxA9GdXJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu89-00CF6K-2n;
	Mon, 10 Jul 2023 16:52:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7q-00CEos-2T;
	Mon, 10 Jul 2023 16:52:40 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 84DC7660700E;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=a3k0dUHM06lGftFzGtEKHmme9qpS0zkKxKK5gJ/bpRY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=SVTfT1svB+qYKJ+YUQytUF8S9Lnsy70JJGuv/LJhLfj7r9xyr4JQ0t/QdtciRcB4S
	 4yoJjwSY2GRdSACfpmwFxMT9MaqINvtxYu/9Hh00Ysqsu2V8gal9FbvEtI5MHtGr0v
	 NFychpI+1eowvyeSsJuKMLH8MmLtipn7oRKOy5WbTyG6WxfCMJKnwVal/knP/GBhP7
	 /OKtsYR+a/WFH17KtPf6iBOSrPLP+7CJy/XH1s9qVf9b94iNZ+66zdAUKqFFp3L6VN
	 racEdGJtU3JATOwCVSXKLv66ELPYL3oDUyf9JvAl/QocF1xWrgQkhKGtHEGy+fLnk1
	 SrawxKGOM71tQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 239F64807E0; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 07/13] arm64: dts: rockchip: rock-5a: add status LED
Date: Mon, 10 Jul 2023 18:52:22 +0200
Message-Id: <20230710165228.105983-8-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095238_937528_78178889 
X-CRM114-Status: GOOD (  10.20  )
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

Describe the Rock 5A status LED in its device tree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19e05dba2794..5bad81c5b09d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include "rk3588s.dtsi"
 
@@ -19,6 +20,19 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&io_led>;
+
+		io-led {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	vcc12v_dcin: vcc12v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -164,6 +178,12 @@ rgmii_phy1: ethernet-phy@1 {
 };
 
 &pinctrl {
+	leds {
+		io_led: io-led {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	power {
 		vcc_5v0_en: vcc-5v0-en {
 			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
