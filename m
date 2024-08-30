Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42D5BCA1005
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:32:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uQ8aNYQEAAs1eb2TKl9KxPn7v9YyhEuGlDeensISB7A=; b=kAP7kmrCN9Rygc
	cC54EI5o6gcSKKyN3NVWMI6g8wJKijt0BTsSdhf/fW4xRkJ2Y/G0vSRSXV9jHfQ/lUOG0p/BuyvTZ
	PBUKeUk6kZsenoM85w8kubfO/b3pT1rbZR7c3EW+lUj3Sd+y9aEd/44XhodwJY1eEudHG+XlrTVLf
	ngmt9O/+NOytCx1TqwjHEenDPH8ByDNBMmOujAw6+W39vJeK0Y7hdRxGGtWKpXev/IPGVEWWj4yT9
	S2JPzHjCPhxJPWZp1n5I3jyXbAm2eYHIKtfz5k1UH3/qABoFN/M3WcB9TrDYLP9fwKUBQSpA+LONI
	J4BxjN1jz4PKOUXh6Ncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3bw-00000006p4t-1hOo;
	Fri, 30 Aug 2024 15:32:28 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3Yl-00000006nnZ-2MF0;
	Fri, 30 Aug 2024 15:29:13 +0000
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-829e856a14eso91473939f.2;
        Fri, 30 Aug 2024 08:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725031750; x=1725636550; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yb3wjHwKHyyErGOdPoNDwcSg6+46HG6ew+HhAf+N6s0=;
        b=jzuAWRJpHVrRNzusJ5pRjdHpYW6JBlf0hiG2VjtTFF98NrWkgQiWA4khqapitO0pqn
         b6JqQkYi9qsBmOJX2hHLpwaeOIFA4efioxT5wW1g9CIbeHIxU6tjzC8FT2x1opmexkjk
         BTnLrRyfiOZF0Yqpy29kE/oNeM8Jcdk/luhNlF+CznqoiemVfJ8eG7eXR+1nQKjryEQ1
         M8Siiw+PF2P5q+ppM41W2Nct5YJqF81Xn57y/PlBqUo5CdJb7X+NLkfRE7CmLAvI+hiv
         Sex31Q6j/hClrhRe2BtAFvEObZYBhN+NDtxs/nBECz0H2dslZ6H+rKck4Tonw4ikau7r
         f99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725031750; x=1725636550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Yb3wjHwKHyyErGOdPoNDwcSg6+46HG6ew+HhAf+N6s0=;
        b=a0/fVbLcWXNSGN78iRJm3I/UGykUe0bod+6Zwswv7DAdUx16TBZwa7u08eVMeQnsru
         IOc/N43l3VWmuFaWIhXgGHsE6ujs/TDsnhZXz6Aour2ufdPoTB/9b3YARK2/XBjb/VPV
         38C0UQY59/IcGNXv5wuOGUhGzjlI1CuG/mrZJtZmzPhg9yxoczlcL7o35zwQb6t5FuCy
         V11150C94sCrdZcaj8LrQoSq1UHThuT3qShTPzB2kM5uMXwugSF0KDQdspLrWYhY7PDO
         Ko28s2qoFqwTabs33r3hHFS+vMxtRHDbIuIpKrNtPSkmJSTHV4N4XLOroFdITmARMEWc
         Opbw==
X-Forwarded-Encrypted: i=1; AJvYcCV7t3UZSAgrhywBs0m1lnjwG+W2oNtsSECamoNKGHcrwWEafb52oVFTpee+O7g/PMLOsOOZo5iZko8leXBJQqh/@lists.infradead.org, AJvYcCW0U1A7UiHur23V34LpXmUyoYqHMTJGoNKOOZeN30To3GTYL4bNCO6LJi5BBg7DxSpyMHCcc3CNy7ug5Vjx6XU=@lists.infradead.org
X-Gm-Message-State: AOJu0YymSaTKDpq7xnNMEEFZlfRiy+zU8fkt2ylWSxHwXkfMrs6qVUGP
	FnTb1O6nCub3NPx9O/DEX+rFrWRRyxxx/b23dpCaqp55doBz2G2X
X-Google-Smtp-Source: AGHT+IEz3mBaOKwLFj/ZjEG+4BFbjz/K3mBFBjE2qjFqGXqza5qxYjxCZaoYDNjR8MMS6ENuF16KGA==
X-Received: by 2002:a05:6602:2d8e:b0:825:2c2c:bd8f with SMTP id ca18e2360f4ac-82a11094862mr827663739f.14.1725031750178;
        Fri, 30 Aug 2024 08:29:10 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-82a1a2f081csm92197439f.10.2024.08.30.08.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 08:29:09 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: shimrrashai@gmail.com
Subject: [PATCH v5? 5/6] dt-bindings: display: rockchip: Add schema for RK3588 DW HDMI QP TX machine
Date: Fri, 30 Aug 2024 10:28:56 -0500
Message-ID: <20240830152856.9079-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830152132.8894-1-shimrrashai@gmail.com>
References: <20240830152132.8894-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_082911_638428_CCF0C615 
X-CRM114-Status: GOOD (  10.84  )
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
Cc: algea.cao@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, robh@kernel.org, rfoss@kernel.org, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, ldearquer@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, s.hauer@pengutronix.de, aarnoud@me.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, markyao0591@gmail.com, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, daniel@ffwll.ch, andy.yan@rock-chips.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
new file mode 100644
index 000000000..e71544ced
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
@@ -0,0 +1,171 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip DW HDMI QP TX Encoder
+
+maintainers:
+  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
+  - Shimrra Shai <shimrrashai@gmail.com>
+
+description:
+  The Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI QP TX
+  controller IP and an HDMI/eDP TX Combo PHY based on a Samsung IP block.
+
+allOf:
+  - $ref: /schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
+  - $ref: /schemas/sound/dai-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3588-dw-hdmi-qp
+
+  clocks:
+    minItems: 4
+    items:
+      - description: Peripheral/APB bus clock
+      - description: EARC RX biphase clock
+      - description: Reference clock
+      - description: Audio interface clock
+      # The next clocks are optional, but shall be specified in this
+      # order when present.
+      - description: TMDS/FRL link clock
+      - description: Video datapath clock
+
+  clock-names:
+    minItems: 4
+    items:
+      - const: pclk
+      - const: earc
+      - const: ref
+      - const: aud
+      - enum: [hdp, hclk_vo1]
+      - const: hclk_vo1
+
+  interrupts:
+    items:
+      - description: AVP Unit interrupt
+      - description: CEC interrupt
+      - description: eARC RX interrupt
+      - description: Main Unit interrupt
+      - description: HPD interrupt
+
+  interrupt-names:
+    items:
+      - const: avp
+      - const: cec
+      - const: earc
+      - const: main
+      - const: hpd
+
+  phys:
+    maxItems: 1
+    description: The HDMI/eDP PHY.
+
+  phy-names:
+    const: hdmi
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    minItems: 2
+    maxItems: 2
+
+  reset-names:
+    items:
+      - const: ref
+      - const: hdp
+
+  "#sound-dai-cells":
+    const: 0
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Most HDMI QP related data is accessed through SYS GRF regs.
+
+  rockchip,vo1-grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Additional HDMI QP related data is accessed through VO1 GRF regs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - interrupts
+  - interrupt-names
+  - phys
+  - phy-names
+  - ports
+  - resets
+  - reset-names
+  - rockchip,grf
+  - rockchip,vo1-grf
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/power/rk3588-power.h>
+    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
+
+    soc {
+      #address-cells = <2>;
+      #size-cells = <2>;
+
+      hdmi@fde80000 {
+        compatible = "rockchip,rk3588-dw-hdmi-qp";
+        reg = <0x0 0xfde80000 0x0 0x20000>;
+        clocks = <&cru PCLK_HDMITX0>,
+                 <&cru CLK_HDMITX0_EARC>,
+                 <&cru CLK_HDMITX0_REF>,
+                 <&cru MCLK_I2S5_8CH_TX>,
+                 <&cru CLK_HDMIHDP0>,
+                 <&cru HCLK_VO1>;
+        clock-names = "pclk", "earc", "ref", "aud", "hdp", "hclk_vo1";
+        interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
+                     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
+        interrupt-names = "avp", "cec", "earc", "main", "hpd";
+        phys = <&hdptxphy_hdmi0>;
+        phy-names = "hdmi";
+        power-domains = <&power RK3588_PD_VO1>;
+        resets = <&cru SRST_HDMITX0_REF>, <&cru SRST_HDMIHDP0>;
+        reset-names = "ref", "hdp";
+        rockchip,grf = <&sys_grf>;
+        rockchip,vo1-grf = <&vo1_grf>;
+        #sound-dai-cells = <0>;
+
+        ports {
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          port@0 {
+            reg = <0>;
+
+            hdmi0_in_vp0: endpoint {
+                remote-endpoint = <&vp0_out_hdmi0>;
+            };
+          };
+
+          port@1 {
+            reg = <1>;
+
+            hdmi0_out_con0: endpoint {
+                remote-endpoint = <&hdmi_con0_in>;
+            };
+          };
+        };
+      };
+    };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
