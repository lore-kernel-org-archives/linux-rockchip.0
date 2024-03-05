Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E271C54798
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Mar 2024 14:37:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9DOpR9gdU3Q2QUQE/eSg1LOnSUNZ7Z71gUe/Th04AM=; b=L2BbpOweI9K2mr
	FU1F7ZOe6oDWeVLgKMKJfNPOdk6HZS9RrpwT/NN2YCLpVEY3WleF85HbKAOz2EzeGOFcJXA2Kuk3R
	/2tg9Rd4288KNt/d+0oWBfashKScVzVNv8OILghcG1hmTHN+x7TTf0pKGcV/yLGSGmK9sywqYUfnV
	4dBNQaFQoDipSrvU4jF/u15O04Uoqa3dGI4vlytAr1QX0vFn6AHsh/KLpNHcnqDrwYIWZCACfgysT
	tEo6vOqCUqGBGZP1e25ls2A1wjRv6IPsEVIj1dJi7Z1QcCmtmKxDWPEAfszwOXBfqgDl1om6c6XOU
	5tmAmkwKVNztowQN8G/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVus-0000000E3d9-0Ffj;
	Tue, 05 Mar 2024 14:37:14 +0000
Received: from relay6-d.mail.gandi.net ([2001:4b98:dc4:8::226])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhVue-0000000E3T5-0AyR;
	Tue, 05 Mar 2024 14:37:02 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0E303C0002;
	Tue,  5 Mar 2024 14:36:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1709649418;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EFhKF2Oicstp405eHgJkca8Gx/B/aHaMRaQs7xsjBzE=;
	b=oWOAIPcOPlZK6jujVv8L/xsMG9f4RfiFp2d3vsTgbkyk8Amw1Wo0FDH8ErW3BIKDfUEDKH
	2Kn2pt3e3oW7mnP5npJrGkRVXT7aF1Pcktcv9XsU6pPXqbQiTE1xX1UBtFhih6yipnFnin
	ckMNZxAhHDx7RUoOGWH5amEeMrEXiOaFU7ke7lFVGu8So87PueLerLigLrfrE/ZKD55no3
	MvyPAhTlRspEIt8xihlBdTUz/aiX6PvBr9Dk24nZCoL8QJqFvpfXYMjMjs1SvpTyRYj4T4
	jMw3X3Zm54wO8Xjl+IJjaWLa4CCL1/Kz4kkqOw24tTAhDTbbs0VBb3jCt2nkew==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Tue, 05 Mar 2024 15:36:29 +0100
Subject: [PATCH v4 2/7] ASoC: dt-bindings: Add Rockchip RK3308 internal
 audio codec
MIME-Version: 1.0
Message-Id: <20240305-rk3308-audio-codec-v4-2-312acdbe628f@bootlin.com>
References: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
In-Reply-To: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>
X-Mailer: b4 0.13.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240305_063700_534209_7EB7AFA4 
X-CRM114-Status: GOOD (  17.73  )
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

Add device tree bindings document for the internal audio codec of the
Rockchip RK3308 SoC.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
---

Changes in v4: nothing

Changed in v3:
 - fix underscore in DT label

Changed in v2:
 - reword commit title
 - add maxItems to resets
 - remove quotes from reset-names
 - use percent values for rockchip,micbias-avdd-multiplier
 - use name compliant to the docs in the example
---
 .../bindings/sound/rockchip,rk3308-codec.yaml      | 98 ++++++++++++++++++++++
 MAINTAINERS                                        |  5 ++
 2 files changed, 103 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
new file mode 100644
index 000000000000..ecf3d7d968c8
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
@@ -0,0 +1,98 @@
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
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: codec
+
+  "#sound-dai-cells":
+    const: 0
+
+  rockchip,micbias-avdd-percent:
+    description: |
+      Voltage setting for the MICBIAS pins expressed as a percentage of
+      AVDD.
+
+      E.g. if rockchip,micbias-avdd-percent = 85 and AVDD = 3v3, then the
+      MIC BIAS voltage will be 3.3 V * 85% = 2.805 V.
+
+    enum: [ 50, 55, 60, 65, 70, 75, 80, 85 ]
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
+    audio_codec: audio-codec@ff560000 {
+        compatible = "rockchip,rk3308-codec";
+        reg = <0xff560000 0x10000>;
+        rockchip,grf = <&grf>;
+        clock-names = "mclk_tx", "mclk_rx", "hclk";
+        clocks = <&cru SCLK_I2S2_8CH_TX_OUT>,
+                 <&cru SCLK_I2S2_8CH_RX_OUT>,
+                 <&cru PCLK_ACODEC>;
+        reset-names = "codec";
+        resets = <&cru SRST_ACODEC_P>;
+        #sound-dai-cells = <0>;
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 4f298c4187fb..9c5ef9219086 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -18940,6 +18940,11 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/media/rockchip-rga.yaml
 F:	drivers/media/platform/rockchip/rga/
 
+ROCKCHIP RK3308 INTERNAL AUDIO CODEC
+M:	Luca Ceresoli <luca.ceresoli@bootlin.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/sound/rockchip,rk3308-codec.yaml
+
 ROCKCHIP VIDEO DECODER DRIVER
 M:	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
 L:	linux-media@vger.kernel.org

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
