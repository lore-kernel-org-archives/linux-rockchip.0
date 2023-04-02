Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B6CFC77B60
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:51:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+NLcp0ZtOWWXUZiIbC7kdnVIAqc+ErSR2hxzyEfwip8=; b=ukDUuLECG/yeER
	y78oB7qtlUguO/JUavIxC2Rm19okn5OsC582Ex0ilo0BNWoWQ17U8FWunq5XktIKWoQAUjXU1hFXD
	+xPq7tRurtrg3ojBW4NXHL8bXINySEUwOxqK7r7UUVMyEEm/uc0tONxzdWcfJM4QwkNUdSt63979r
	0CFDG3RlloTKn8Qo+C/baHTx914XFu+dyps9SQ+vhaiWVoMELr/maAk5AExxdZJGGapewaC+/L0UG
	Gqmc8rS15vw51YyNz1wDwjU4HbovJsX3eD6kuv5WBJXbcdFvyj4oJ8PHL4Wh8Zt+DaZmAwfJzr0L1
	vRb2fast2X+XgUGhIaFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMw-00CC4H-19;
	Sun, 02 Apr 2023 09:51:26 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuMm-00CBxZ-1C;
	Sun, 02 Apr 2023 09:51:17 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 124C0660312B;
	Sun,  2 Apr 2023 10:51:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680429075;
	bh=kJdtSesynjBrpuEEDEDtpj5X9IcAxkUH0Y/1s8Txv6c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VPVs0DcGUSDRxbBrFcdRhMjqt8jtEg5eb28bos+eF5kpI1VDZqZ+dhsFH6buDdKEF
	 WRtsAa5DN849V5kQTAZqh5CSiBloB8WjFuyNhoQOPhwCLtLqjX41p9uS7ig9l+0g7O
	 x+YMryXdGC068oBI9C4vV1pMHo2HR7hpKbgZrM6yfoRb55Oh08or6wydCW73SySoDl
	 wI6DD6mb+GWdIwzNpGS3MsuMEvfsi3FV4pI4887sWayoBH6bMHxmvqRZH22yVcpoGN
	 b9Wwd9LRONXwRIlWMy0iTmmYe3yohpbl5kNze3lBsMqTI2caZkP7C2rUdnPF9IMStE
	 xba9WMu6jAwSg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Kever Yang <kever.yang@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v4 5/5] arm64: dts: rockchip: rk3588-rock-5b: Add analog audio
Date: Sun,  2 Apr 2023 12:50:54 +0300
Message-Id: <20230402095054.384739-6-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
References: <20230402095054.384739-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_025116_541302_874B6BEE 
X-CRM114-Status: GOOD (  10.56  )
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

Add the necessary DT nodes for the Rock 5B board to enable the analog
audio support provided by the Everest Semi ES8316 codec.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95805cb0adfa..a9e12e098d48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -2,6 +2,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/gpio/gpio.h>
 #include "rk3588.dtsi"
 
 / {
@@ -17,6 +18,23 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	sound {
+		compatible = "audio-graph-card";
+		label = "Analog";
+
+		widgets = "Microphone", "Mic Jack",
+			  "Headphone", "Headphones";
+
+		routing = "MIC2", "Mic Jack",
+			  "Headphones", "HPOL",
+			  "Headphones", "HPOR";
+
+		dais = <&i2s0_8ch_p0>;
+		hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -27,6 +45,50 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&i2c7 {
+	status = "okay";
+
+	es8316: es8316@11 {
+		compatible = "everest,es8316";
+		reg = <0x11>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		clock-names = "mclk";
+		#sound-dai-cells = <0>;
+
+		port {
+			es8316_p0_0: endpoint {
+				remote-endpoint = <&i2s0_8ch_p0_0>;
+			};
+		};
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+
+	i2s0_8ch_p0: port {
+		i2s0_8ch_p0_0: endpoint {
+			dai-format = "i2s";
+			mclk-fs = <256>;
+			remote-endpoint = <&es8316_p0_0>;
+		};
+	};
+};
+
+&pinctrl {
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
