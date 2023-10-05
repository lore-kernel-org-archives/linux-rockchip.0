Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE65E9370C
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Oct 2023 13:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RjbN1JuyNyh1GjlQBdey58txnor+SRgsFE4XrH/PoHs=; b=rBXAq2+4qBmfmy
	QQR3frN+NFw8vij64OVhGMG83qS3xQ7gGqwtGhhhA7DPbkUIJMIELdn+zh5wGADjZEAP3zLaqaAy/
	y89CGa2ldF4TGoo2lB8QVNcYZejIUrAfERIadHWTeKEN1jdGq85nh4TD02JqtMfbhgoGDoyH9arWh
	L0RDF7d5ef+F8fznSRijikviBh3sYb/wl1oQn6xd2Etx5rlEogb7gTyTrXQn0K8yZoRFeGI7kukVy
	w9ilu0XB28yQgJ7dcRuDIgvMzTJ841HJ9IlyN5Ng3yv1zpG0VK+lRjTLRUqbtdPcmJ3Rq4awMg4Ks
	adDzxuNg+PPvjVPDQMSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoOb1-003Wpc-2H;
	Thu, 05 Oct 2023 13:40:55 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoOax-003Wkq-2F;
	Thu, 05 Oct 2023 13:40:53 +0000
Received: from jupiter.universe (dyndsl-091-248-132-024.ewe-ip-backbone.de [91.248.132.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2DBB86607095;
	Thu,  5 Oct 2023 14:40:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696513247;
	bh=fy7VVRBs6A2jxo/gpDryg++0jHo03JHrW/ne6C5QiYc=;
	h=From:To:Cc:Subject:Date:From;
	b=S3XCJIwwPsuNoewiFnufSQAGElj4CMtY2XClZ1GZV1ufg9KwRksfX/l9WoOfHC1Pq
	 Z6XIK7hQvwgc3cJ9odXEluDxUaK4TfkVRMNIHayJ+WfuPFyifW6yPa97/jafb8wazU
	 DqXdjzlyyPJlgjlOv30dYtxS/UZT4OhGRWj0bYF7OJcI4/Ow/RbJW8z6Jt4GG06PHc
	 ml/fdQ5L7AEFUTfhc0doAtMHtkYRZdK+FbVlopTyWQcHNgNNVTI+hzdEDl2lCWCFxs
	 fwGncbyLPEo96ooNFf/ktgORQU4gCKGEssiodhYeCFIqY2k7q1SRN8tvMX78DcnAFJ
	 UXX3ZJgcuCNRw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id DEF134800C3; Thu,  5 Oct 2023 15:40:44 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/1] arm64: dts: rockchip: add status LED to rock-5b
Date: Thu,  5 Oct 2023 15:40:37 +0200
Message-Id: <20231005134037.33231-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_064051_944071_ECB02B91 
X-CRM114-Status: GOOD (  10.30  )
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

Describe the Rock 5B status LED in its device tree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8618887899d9..3f0bea1f5053 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
 #include "rk3588.dtsi"
 
 / {
@@ -37,6 +38,19 @@ analog-sound {
 		pinctrl-0 = <&hp_detect>;
 	};
 
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&led_rgb_b>;
+
+		led_rgb_b {
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+
 	fan: pwm-fan {
 		compatible = "pwm-fan";
 		cooling-levels = <0 95 145 195 255>;
@@ -300,6 +314,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	leds {
+		led_rgb_b: led-rgb-b {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	sound {
 		hp_detect: hp-detect {
 			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
