Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BEB4C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 17:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h/Gk3+0bdO/DlP8m2XFCHsxZY+ezvVg3zecwqIWh6qA=; b=ly43vXrEXexgzM
	awhMvsN+CkX5eNN/uZKFl5Z7MCFSvr795293a1r+i5KzGxqmhscqU3jo60Nv4HXXy0l/CzvFCahyG
	fd1JxBf+VCb3ttpX7kJhoTXvhLmz7y7dFaXAm/tAtVND226lFwYTEvj7F0vfk2sece+shOgOv/oyc
	omkPeZCT+x8u3yCYYJIM6qIGggGe7VNkfNyiduOO1yJ9w19vlpYcmC9dALvnxnVCwpdqkdsKLhpVA
	vamj0yALwjeK1iGpKBoQINY6qsYLUthtBLcdV5pysR1LubM9H68vKMCVfKUqI08Fdab2o1v+G0SbX
	EPqcpFvj4rhPG40Vlwfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rACuV-005DOq-39;
	Mon, 04 Dec 2023 17:39:11 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rACuR-005DNu-25;
	Mon, 04 Dec 2023 17:39:09 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a1b7b6bf098so189220266b.1;
        Mon, 04 Dec 2023 09:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701711545; x=1702316345; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RDbV8KEqo360AWt22zz09PqUE/cssUErxHrowGLoINk=;
        b=Bb8/IWqGOF63PhurZcYPLMbWd0/1vig1l1ShMmlsEC+RKU9E6DLa48X4T6qp20bSFP
         0MPC8PvrxzH0dSg6CXA3o+yB1NlsI11EMnfVTykdngzv7StVFlgn3kmX/enn7mVSbZGE
         aowPUS1CXWM5NZVqbAiFsc7KyTy/4BsoIbyn/pQEzVgplsaTGVtI5sis5PwUKag14sU0
         6TEHRseqbuBCRfcbE7kq8kbB39bQ7kbYVzwinofuVEy8JCBvkARLVVAB4stoDeHrS0lh
         zCe4XmFx16FFzawUtI5GbZvEEia7X+xlqRerLmQ08g4fHVow37iRE6c5EyrILHqGNQdy
         klsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701711545; x=1702316345;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RDbV8KEqo360AWt22zz09PqUE/cssUErxHrowGLoINk=;
        b=GnLT38N44ejqgqF4nGlUbb1nmIA69QzT9s5i++7d/d+ONsZclyopgwtcRutjaZV/cc
         k+oVcjLv3ngRcpP3lH4ByYZNwUhtRx3V8Z1s31Ura5ecOvRAAaWgn6T9REynuCqucaIA
         vd/DM29tkpP/DHlDi+bj+Bb4xSsDtnDDJy37V3laSki3pD2zHx2K4KfI5OWotiVgT59n
         rtuHtIe7kwl7Suk0x7BoTn40lcgbmE7BSDNKOeXQnzGzA5ciqubIrHuTowbPW+Vhwj2+
         GlUYIk471cVxEy9n6tBvMmQaj2p20M5eH2lpa5Ci9c65U8/+nS+eqZbuLviSq9kO0i3L
         DUJw==
X-Gm-Message-State: AOJu0YxSAYnzBsVQcJEIMsVyD8WCrnDvXmxIWRfBqJIjAWzyhZObN7X3
	hs8tT0UqvZ6pkAjWqtadXA8=
X-Google-Smtp-Source: AGHT+IFY1TkeVeRGWBrgWf2i0O9q9pzjrUYsznblS+VoCoNd0mGuLFzQmCXoRFFl4jZvbkNMocSkjA==
X-Received: by 2002:a17:906:1d4:b0:a1b:774f:df5c with SMTP id 20-20020a17090601d400b00a1b774fdf5cmr1686472ejj.14.1701711545198;
        Mon, 04 Dec 2023 09:39:05 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id mj9-20020a170906af8900b00a1907e36244sm5128328ejb.118.2023.12.04.09.39.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 09:39:04 -0800 (PST)
Message-ID: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
Date: Mon, 4 Dec 2023 18:39:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/3] dt-bindings: drm: rockchip: convert
 inno_hdmi-rockchip.txt to yaml
To: heiko@sntech.de, hjc@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_093907_728432_D0BFE3FA 
X-CRM114-Status: GOOD (  15.00  )
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

Convert inno_hdmi-rockchip.txt to yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Note for rob+dt:
  Used enum to "soon" be able to add "rockchip,rk3128-inno-hdmi"

Changed V1:
  Rename file to more common layout
  Add/fix hdmi_out port example
---
 .../display/rockchip/inno_hdmi-rockchip.txt   |  49 ---------
 .../display/rockchip/rockchip,inno-hdmi.yaml  | 103 ++++++++++++++++++
 2 files changed, 103 insertions(+), 49 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
deleted file mode 100644
index cec21714f0e0..000000000000
--- a/Documentation/devicetree/bindings/display/rockchip/inno_hdmi-rockchip.txt
+++ /dev/null
@@ -1,49 +0,0 @@
-Rockchip specific extensions to the Innosilicon HDMI
-================================
-
-Required properties:
-- compatible:
-	"rockchip,rk3036-inno-hdmi";
-- reg:
-	Physical base address and length of the controller's registers.
-- clocks, clock-names:
-	Phandle to hdmi controller clock, name should be "pclk"
-- interrupts:
-	HDMI interrupt number
-- ports:
-	Contain one port node with endpoint definitions as defined in
-	Documentation/devicetree/bindings/graph.txt.
-- pinctrl-0, pinctrl-name:
-	Switch the iomux of HPD/CEC pins to HDMI function.
-
-Example:
-hdmi: hdmi@20034000 {
-	compatible = "rockchip,rk3036-inno-hdmi";
-	reg = <0x20034000 0x4000>;
-	interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
-	clocks = <&cru  PCLK_HDMI>;
-	clock-names = "pclk";
-	pinctrl-names = "default";
-	pinctrl-0 = <&hdmi_ctl>;
-
-	hdmi_in: port {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		hdmi_in_lcdc: endpoint@0 {
-			reg = <0>;
-			remote-endpoint = <&lcdc_out_hdmi>;
-		};
-	};
-};
-
-&pinctrl {
-	hdmi {
-		hdmi_ctl: hdmi-ctl {
-			rockchip,pins = <1 8  RK_FUNC_1 &pcfg_pull_none>,
-					<1 9  RK_FUNC_1 &pcfg_pull_none>,
-					<1 10 RK_FUNC_1 &pcfg_pull_none>,
-					<1 11 RK_FUNC_1 &pcfg_pull_none>;
-		};
-	};
-
-};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
new file mode 100644
index 000000000000..96889c86849a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno-hdmi.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,inno-hdmi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip Innosilicon HDMI controller
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3036-inno-hdmi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: pclk
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Port node with one endpoint connected to a vop node.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Port node with one endpoint connected to a hdmi-connector node.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - pinctrl-0
+  - pinctrl-names
+  - ports
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3036-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/pinctrl/rockchip.h>
+    hdmi: hdmi@20034000 {
+      compatible = "rockchip,rk3036-inno-hdmi";
+      reg = <0x20034000 0x4000>;
+      interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru  PCLK_HDMI>;
+      clock-names = "pclk";
+      pinctrl-names = "default";
+      pinctrl-0 = <&hdmi_ctl>;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        hdmi_in: port@0 {
+          reg = <0>;
+          hdmi_in_vop: endpoint {
+            remote-endpoint = <&vop_out_hdmi>;
+          };
+        };
+
+        hdmi_out: port@1 {
+          reg = <1>;
+          hdmi_out_con: endpoint {
+            remote-endpoint = <&hdmi_con_in>;
+          };
+        };
+      };
+    };
+
+    pinctrl {
+      hdmi {
+        hdmi_ctl: hdmi-ctl {
+          rockchip,pins = <1 RK_PB0 1 &pcfg_pull_none>,
+                          <1 RK_PB1 1 &pcfg_pull_none>,
+                          <1 RK_PB2 1 &pcfg_pull_none>,
+                          <1 RK_PB3 1 &pcfg_pull_none>;
+        };
+      };
+    };
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
