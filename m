Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5031DC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:15:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B4C86054E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 10:15:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1B4C86054E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=msWA0sqnnjIBjkHxVbLDwUxTGGZpXOIoiLYYUiUi++o=; b=Lnatc4xsZ4pSC6
	HGRW8fqzUJBMPIcg3c5KEqYDtKM4ntGnB/YgavcWNATOpqzoD6+vkxBSCmiKVhuC+XM+/0LeoEaDy
	gqCxYcmlOYxakdtE5ME7HXughACPoZ72BviN5vVLp5sG7phTTYEzEda/3z/DgOcMPgnm2yLLl8ZBC
	mmwSfs+cCf/5pW5NQ5hFX3HzdhHckJOQdo/VrfqEn6tv7z/gmHX62zOYHckmgQomfHQUN3LltNvM+
	GqURC+Unk7IIXjgqek/pW3U39fuLV7F7+lYfPCCJF7ds6am+yDMDIwwhw01IhHAVrBGdKvSpuzRdG
	+hpb3DJzQxGSdQNLaibA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw8N-0023nD-Lr; Tue, 17 Aug 2021 10:15:51 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw5B-0022Dt-5y; Tue, 17 Aug 2021 10:12:37 +0000
Received: by mail-ed1-x536.google.com with SMTP id n12so30806047edx.8;
 Tue, 17 Aug 2021 03:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=NAZ3iHRhwDa0VlHkXe1bEIQ5yvY78DPN6f7/EwPF9pU=;
 b=ERgDuTUBHyA06UX4V6nQdVQ1RRdLdu5ViHA9SN3iAOnoJ5TxnKpVdkMqSihOCl6YOp
 drNLp8Qi1wwNoVXQDPtaCJfXgOCbJt3j8W8kgF9oYNjrfQkgLaHt+pFQKFGsHhBcyLUX
 +I+6ZKBd5xU+2k1v7OlD7pmbrSqUMpmIlSEnN8Wwh3PwAVCFULw5gywPjZLppu8WA7MC
 7XFh+TFhOyjqtYy9hBSW8y5xtqA5/HOHJ0TkeQbj+Th3z/Vdq0sjaCqrGaCr2TSJgVB5
 w684guCIgpwXdTTbpGb7PKj95Q74WEiY6i35HAuloDdkbQh5+f0PdU270Qv8+sI09sHp
 wy0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=NAZ3iHRhwDa0VlHkXe1bEIQ5yvY78DPN6f7/EwPF9pU=;
 b=e4A5UCpBwU6pwi07mhzSa6Cyhay5uRHOw8I9qzSU3zxcpEx37NaqiYhZYhMt+wCPjf
 HJSSDonsAJLtmLPtkI1U5oS78NlZh7Mi24k/SDokiv2qq4RdJW4vVnSsA1Z5gESMQI8k
 vEuc/rypVJ9kJHgsXugI8m7Cj41bJEg2UWlrxrZDPWwzhn1SS0TrTlf8R3UID8AiNtJr
 nFJgYhrdf16N7NWn2U7/NJsdhMobSG4KG230AIhBWWkqFt1wAbBnrIrKJOgEpv7pMfKF
 wIjPsaBf5dRJ3I6A/9ydT400MSrclyGJtAZyrl+RjXNfwQqriTS0kYAoev/jdQDAsIwH
 DuqA==
X-Gm-Message-State: AOAM530AU9/2nJBcQyUm8FrgEfQvVhiSJU/JLIa0TR3mrHzB8tAloXp+
 IzRvISGgWsGs2+ZoR5bKpv4=
X-Google-Smtp-Source: ABdhPJxYz8f+mVFJRA/q2G+Cscc5uGswKuR6xxueeR30RVFhGSloF2s+aA6GlfdsmJfDhSZfrhgzeA==
X-Received: by 2002:a05:6402:b7a:: with SMTP id
 cb26mr3297856edb.33.1629195151747; 
 Tue, 17 Aug 2021 03:12:31 -0700 (PDT)
Received: from localhost.localdomain ([185.213.155.232])
 by smtp.gmail.com with ESMTPSA id m6sm822920edq.22.2021.08.17.03.12.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:12:31 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Date: Tue, 17 Aug 2021 12:11:17 +0200
Message-Id: <20210817101119.423853-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031233_300137_3CB99AE3 
X-CRM114-Status: GOOD (  21.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This adds the YAML bindings for the Rockchip I2S/TDM audio driver.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../bindings/sound/rockchip,i2s-tdm.yaml      | 221 ++++++++++++++++++
 include/dt-bindings/sound/rockchip,i2s-tdm.h  |   9 +
 2 files changed, 230 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
 create mode 100644 include/dt-bindings/sound/rockchip,i2s-tdm.h

diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
new file mode 100644
index 000000000000..c3022620b47f
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
@@ -0,0 +1,221 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/rockchip,i2s-tdm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip I2S/TDM Controller
+
+description:
+  The Rockchip I2S/TDM Controller is a Time Division Multiplexed
+  audio interface found in various Rockchip SoCs, allowing up
+  to 8 channels of audio over a serial interface.
+
+maintainers:
+  - Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-i2s-tdm
+      - rockchip,rk1808-i2s-tdm
+      - rockchip,rk3308-i2s-tdm
+      - rockchip,rk3568-i2s-tdm
+      - rockchip,rv1126-i2s-tdm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  dmas:
+    minItems: 1
+    maxItems: 2
+
+  dma-names:
+    oneOf:
+      - const: rx
+      - items:
+          - const: tx
+          - const: rx
+
+  clocks:
+    items:
+      - description: clock for TX
+      - description: clock for RX
+      - description: clock for I2S bus
+
+  clock-names:
+    items:
+      - const: mclk_tx
+      - const: mclk_rx
+      - const: hclk
+
+  rockchip,frame-width:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 64
+    minimum: 32
+    maximum: 512
+    description:
+      Width of a frame, usually slot width multiplied by number of slots.
+      Must be even.
+
+  resets:
+    items:
+      - description: reset for TX
+      - description: reset for RX
+
+  reset-names:
+    items:
+      - const: tx-m
+      - const: rx-m
+
+  rockchip,cru:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the cru.
+      Required if both playback and capture are used, i.e. if rockchip,clk-trcm
+      is 0.
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      The phandle of the syscon node for the GRF register.
+
+  rockchip,mclk-calibrate:
+    description:
+      Enable mclk source calibration.
+    type: boolean
+
+  rockchip,trcm-sync:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Which lrck/bclk clocks each direction will sync to. You should use the
+      constants in <dt-bindings/sound/rockchip,i2s-tdm.h>
+    oneOf:
+      - const: 0
+        description:
+          RK_TRCM_TXRX. Use both the TX and the RX clock for TX and RX.
+      - const: 1
+        description:
+          RK_TRCM_TX. Use only the TX clock for TX and RX.
+      - const: 2
+        description:
+          RK_TRCM_RX. Use only the RX clock for TX and RX.
+
+  "#sound-dai-cells":
+    const: 0
+
+  rockchip,no-dmaengine:
+    description:
+      If present, driver will not register a pcm dmaengine, only the dai.
+      If the dai is part of multi-dais, the property should be present.
+    type: boolean
+
+  rockchip,playback-only:
+    description: Specify that the controller only has playback capability.
+    type: boolean
+
+  rockchip,capture-only:
+    description: Specify that the controller only has capture capability.
+    type: boolean
+
+  rockchip,i2s-rx-route:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the mapping of I2S RX sdis to I2S data bus lines.
+      By default, they are mapped one-to-one.
+    items:
+      - description: which sdi to connect to data line 0
+      - description: which sdi to connect to data line 1
+      - description: which sdi to connect to data line 2
+      - description: which sdi to connect to data line 3
+
+  rockchip,i2s-tx-route:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the mapping of I2S TX sdos to I2S data bus lines.
+      By default, they are mapped one-to-one.
+    items:
+      - description: which sdo to connect to data line 0
+      - description: which sdo to connect to data line 1
+      - description: which sdo to connect to data line 2
+      - description: which sdo to connect to data line 3
+
+  rockchip,tdm-fsync-half-frame:
+    description: Whether to use half frame fsync.
+    type: boolean
+
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - dmas
+  - dma-names
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - rockchip,grf
+  - "#sound-dai-cells"
+  - rockchip,trcm-sync
+
+allOf:
+  - if:
+      properties:
+        rockchip,clk-trcm:
+          contains:
+            enum: [0]
+    then:
+      required:
+        - rockchip,cru
+
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3568-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    #include <dt-bindings/sound/rockchip,i2s-tdm.h>
+
+
+    foo {
+        #address-cells = <2>;
+        #size-cells = <2>;
+        i2s@fe410000 {
+            compatible = "rockchip,rk3568-i2s-tdm";
+            reg = <0x0 0xfe410000 0x0 0x1000>;
+            interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
+                     <&cru HCLK_I2S1_8CH>;
+            clock-names = "mclk_tx", "mclk_rx", "hclk";
+            dmas = <&dmac1 2>, <&dmac1 3>;
+            dma-names = "tx", "rx";
+            resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
+            reset-names = "tx-m", "rx-m";
+            rockchip,trcm-sync = <RK_TRCM_TX>;
+            rockchip,cru = <&cru>;
+            rockchip,grf = <&grf>;
+            #sound-dai-cells = <0>;
+            pinctrl-names = "default";
+            pinctrl-0 =
+                <&i2s1m0_sclktx
+                &i2s1m0_sclkrx
+                &i2s1m0_lrcktx
+                &i2s1m0_lrckrx
+                &i2s1m0_sdi0
+                &i2s1m0_sdi1
+                &i2s1m0_sdi2
+                &i2s1m0_sdi3
+                &i2s1m0_sdo0
+                &i2s1m0_sdo1
+                &i2s1m0_sdo2
+                &i2s1m0_sdo3>;
+            status = "disabled";
+        };
+    };
diff --git a/include/dt-bindings/sound/rockchip,i2s-tdm.h b/include/dt-bindings/sound/rockchip,i2s-tdm.h
new file mode 100644
index 000000000000..32494d64cf33
--- /dev/null
+++ b/include/dt-bindings/sound/rockchip,i2s-tdm.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _DT_BINDINGS_ROCKCHIP_I2S_TDM_H
+#define _DT_BINDINGS_ROCKCHIP_I2S_TDM_H
+
+#define RK_TRCM_TXRX 0
+#define RK_TRCM_TX 1
+#define RK_TRCM_RX 2
+
+#endif /* _DT_BINDINGS_ROCKCHIP_I2S_TDM_H */
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
