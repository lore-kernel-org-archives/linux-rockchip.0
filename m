Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C38B4C54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 14:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euFVc/Gk28qOB+R77q9vvs0v5F9LWE/G9pIeYfdY1g0=; b=rXJYiLpGv6wkzM
	hsVBROYo0rXVcIMeNGv4c4RVaQQSUTezCyDLlNd2usCLXl/p9cd8ZBysJnNBnDsAFrEL9mfFGEK6f
	PE16mbW878oTuAynOdqryXIvFLGMawOkgp08Ut169tatu/5RpAv/srlEfrFrNQNwgRIwbXC+w06Kp
	cePqC4IjLg+ha1CBuc3Wj84osilMl8gev+x/SOSfILfiFDyQK9U/YL+XmpuBu1ecfJe6/U45x+PZ8
	IaYlEK4gHzrd/+2ntg4tUr2a5VdwT0nMJIigLHH7QbxjAbFWRxOuCJaGNbOEwdsmbKZCdMRXmEoEe
	soS2y2o3uAXlJzHrvQaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvwo-006oow-KA; Wed, 07 Sep 2022 14:22:34 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVvwL-006oUp-9z; Wed, 07 Sep 2022 14:22:07 +0000
Received: from booty.fritz.box (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPA id 7C1F8200014;
	Wed,  7 Sep 2022 14:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662560523;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XJgSJiCghhYz5ofqe9JG5z8U+htYvi8Oo0PRyZFIxmM=;
	b=As1t+bF7xHy0TiDvWlV9I9GIzxD73MRcATUh4KDYTxfNgSV1LpOVmTJwWvoEkOTEwhPiyj
	b/+PiATaksXk957zdxnUjUwtbbNr0gYsEDnrh4FCnF10q/wTfV+dpWJV46JfjyBxrc96fi
	v2yGwL4eMO1qMlFBf01zbYwb7sOyDsLAmlt+qjCxBG1N2JEcdJwIMSvhTCNZ76cWuMoeSQ
	t3oqPWrQyEbfaXi1vmAHC+llMteHb559Okjj7mFZ6bGBPjR563ZAxH37ZKc21CS5b5LHTS
	qtvFUCnfvUQc7lLv/7DD/VP1HvxdhbaEnwxPWLUTMAKJ7Ou7lAI/zMEoLvxrIg==
From: luca.ceresoli@bootlin.com
To: alsa-devel@alsa-project.org,
	linux-rockchip@lists.infradead.org
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/8] ASoC: rockchip: rk3308: add internal audio codec bindings
Date: Wed,  7 Sep 2022 16:21:17 +0200
Message-Id: <20220907142124.2532620-2-luca.ceresoli@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
References: <20220907142124.2532620-1-luca.ceresoli@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_072205_643201_6280936C 
X-CRM114-Status: GOOD (  18.87  )
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

From: Luca Ceresoli <luca.ceresoli@bootlin.com>

Add device tree bindings document for the internal audio codec of the
Rockchip RK3308 SoC.

Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---
 .../bindings/sound/rockchip,rk3308-codec.yaml | 102 ++++++++++++++++++
 MAINTAINERS                                   |   6 ++
 .../dt-bindings/sound/rockchip,rk3308-codec.h |  15 +++
 3 files changed, 123 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
 create mode 100644 include/dt-bindings/sound/rockchip,rk3308-codec.h

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
new file mode 100644
index 000000000000..f3458f86ef06
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
@@ -0,0 +1,102 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,rk3308-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3308 Internal Codec
+
+description: |
+  This is the audio codec embedded in the Rockchip RK3308
+  SoC. It has 8 24-bit ADCs and 2 24-bit DACs. The maximum supported
+  sampling rate is 192 kHz.
+
+  It is connected internally to one out of a selection of the internal I2S
+  controllers.
+
+  The RK3308 audio codec has 8 independent capture channels, but some
+  features work on stereo pairs called groups:
+    * grp 0 -- MIC1 / MIC2
+    * grp 1 -- MIC3 / MIC4
+    * grp 2 -- MIC5 / MIC6
+    * grp 3 -- MIC7 / MIC8
+
+maintainers:
+  - Luca Ceresoli <luca.ceresoli@bootlin.com>
+
+properties:
+  compatible:
+    const: rockchip,rk3308-codec
+
+  reg:
+    maxItems: 1
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the General Register Files (GRF)
+
+  clocks:
+    items:
+      - description: clock for TX
+      - description: clock for RX
+      - description: AHB clock driving the interface
+
+  clock-names:
+    items:
+      - const: mclk_tx
+      - const: mclk_rx
+      - const: hclk
+
+  resets: true
+
+  reset-names:
+    items:
+      - const: "acodec"
+
+  "#sound-dai-cells":
+    const: 0
+
+  rockchip,micbias-avdd-multiplier:
+    description: |
+      Voltage setting for the MICBIAS pins expressed as a multiplier of
+      AVDD.
+
+      E.g. if rockchip,micbias-avdd-multiplier = 7 (x0.85) and AVDD = 3v3,
+      then MIC BIAS voltage will be 3.3 V * 0.85 = 2.805 V.
+
+      Value 0: multiplier = 0.50
+      Value N: multiplier = 0.50 + 0.05 * N
+      Value 7: multiplier = 0.85
+
+    $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 7
+
+required:
+  - compatible
+  - reg
+  - rockchip,grf
+  - clocks
+  - resets
+  - "#sound-dai-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3308-cru.h>
+
+    acodec: acodec@ff560000 {
+        compatible = "rockchip,rk3308-codec";
+        reg = <0xff560000 0x10000>;
+        rockchip,grf = <&grf>;
+        clock-names = "mclk_tx", "mclk_rx", "hclk";
+        clocks = <&cru SCLK_I2S2_8CH_TX_OUT>,
+                 <&cru SCLK_I2S2_8CH_RX_OUT>,
+                 <&cru PCLK_ACODEC>;
+        reset-names = "acodec";
+        resets = <&cru SRST_ACODEC_P>;
+        #sound-dai-cells = <0>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 895e8ace80dd..d53a8e74cb1e 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17588,6 +17588,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
 F:	drivers/media/platform/rockchip/rga/
 
+ROCKCHIP RK3308 INTERNAL AUDIO CODEC
+M:	Luca Ceresoli <luca.ceresoli@bootlin.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
+F:	include/dt-bindings/sound/rockchip,rk3308-codec.h
+
 ROCKCHIP VIDEO DECODER DRIVER
 M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
 L:	linux-media@vger.kernel.org
diff --git a/include/dt-bindings/sound/rockchip,rk3308-codec.h b/include/dt-bindings/sound/rockchip,rk3308-codec.h
new file mode 100644
index 000000000000..9f1b210a048e
--- /dev/null
+++ b/include/dt-bindings/sound/rockchip,rk3308-codec.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DT_BINDINGS_ROCKCHIP_RK3308_CODEC_H__
+#define __DT_BINDINGS_ROCKCHIP_RK3308_CODEC_H__
+
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_50	0
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_55	1
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_60	2
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_65	3
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_70	4
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_75	5
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_80	6
+#define RK3308_CODEC_MICBIAS_AVDD_x_0_85	7
+#define RK3308_CODEC_MICBIAS_NUM		8
+
+#endif /* __DT_BINDINGS_ROCKCHIP_RK3308_CODEC_H__ */
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
