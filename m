Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 062A3C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GkRqgpc9+DeJaqNDLkYlzM8dshZ2b4VcoM8z1g7+w2s=; b=EG0Z2zbvmXVTLT
	iN0Rmoba0s6TZSulOHLJezolNv3RH4bO4BXy6k363qg3cLxjJU2Yya3Ks5+BkbyiNFuYNctrvHoVx
	whD/ycrS/NiybQPHmyHfBwlhSr/3QrHT9XWpQvkCps3JLEW9uqKbY+TW5ZGDyNXZuHVe6ivqdzPdy
	lx8vb+kIgZHk9sLwaaJwWasRxvMUInTvd7Uo1xhdV/1G0xS9Izzq9HIlBKW/ikToLuCYG8LSaVLEi
	W5RNXpYR8piICxLi5pOFzRoczHe6YH9iixLIhSOiz4Ig9GFoq+w9QzhfEvMydO9VyjpUoT0fep7tQ
	+7ObTytYnRnAbYTvpcSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MvD-00DBTD-NO; Thu, 22 Dec 2022 14:51:47 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MWp-00CwZ1-QE; Thu, 22 Dec 2022 14:26:39 +0000
Received: by mail-ej1-x629.google.com with SMTP id x22so5235932ejs.11;
        Thu, 22 Dec 2022 06:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gW1/jKASy/dqoUo1+IoY1GOe6slGbC7iNfS7dQCoHa8=;
        b=oQfQc5C+Y/yHo7qep+yb34cr7QFdvqKZFnoJwV3zpbaq2I23e93oQRVd/dB9jLkWO1
         qKs0MV9Zzde+IHDgXjE0nUA3avMLUann2hqT2BG6nFYtIzGwmkKa4J7a0GXgOtY06pY2
         4v2rKKLHuBvFMqhJORBeFhJTx34c7/j8vM26scCMF9ir+Rk+ScS33aIAZbssp4Owidng
         XnoDgfK0KUvgROb3EbZvEM9ZoDbK4YZpHhaeyv71qFhAljGtn0mAy3kNxZa30mj6sNIE
         TtFUdkp0gfGk4TTI9tsPubbXgx/y1Ol6KLvF7yxJJS8C40WQDowGXmdmEMkshqENHN/b
         Yggw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gW1/jKASy/dqoUo1+IoY1GOe6slGbC7iNfS7dQCoHa8=;
        b=qtEazd9aU2HA1s0y4VGWrtpPQUVn4X4n5WbOFEHQKgSkQHIUAi3m+v9Xvylzgh7NTZ
         tNlmvQjMp5PN/REOiFmWLEKbyajfcNi8pXIQBecPqfH9Y+QI+M6i0vt5jXmKSI/9nRt6
         40O4eBEbAaLZa5myTsuwp6ueh5xX1AwGz/PzD/9sA2z/u5CDYtTEMs0Phhg+hB1FiCk1
         5SeQXoesg057MVFug9fZQx1FE+FxOEkX6Ew2hwm2Uo/+Ltqlb7xbbXYGlfOb+A5Tm9iW
         RhxLJmGgMQ2047bYD5sipZuvM0qlF2IpC+u5R5AY2L/41XyXAFRLn3E+y1ufJ5qnq6pR
         rehQ==
X-Gm-Message-State: AFqh2kq6QOYfptPbChuRG5sc7efwUKz1fu8cSBS0OPzkYEOZ707Fg5nf
	SJcBqAhWBqppVSLOIL2YLTc=
X-Google-Smtp-Source: AMrXdXt5nWXarIXQUAhJJSBfW55uS6pZyVRA/D1pYXQIoxDY53hZhCWczlOJSWd3LRtyB+JhGKnriQ==
X-Received: by 2002:a17:907:d311:b0:829:5e3f:3c92 with SMTP id vg17-20020a170907d31100b008295e3f3c92mr6306751ejc.73.1671719190095;
        Thu, 22 Dec 2022 06:26:30 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id v1-20020a170906292100b0073c10031dc9sm303336ejd.80.2022.12.22.06.26.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:26:29 -0800 (PST)
Message-ID: <d6dc8453-4807-0a5d-15bf-6dcf80dcd0fe@gmail.com>
Date: Thu, 22 Dec 2022 15:26:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 05/17] dt-bindings: display: rockchip: convert
 dw_mipi_dsi_rockchip.txt to yaml
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062635_971842_038A611B 
X-CRM114-Status: GOOD (  16.35  )
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

Convert dw_mipi_dsi_rockchip.txt to yaml.

Changed:
  file name
  requirements

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V6:
  Remove clock-master property
  Fix $ref
---
 .../display/rockchip/dw_mipi_dsi_rockchip.txt |  94 ----------
 .../rockchip/rockchip,dw-mipi-dsi.yaml        | 166 ++++++++++++++++++
 2 files changed, 166 insertions(+), 94 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
deleted file mode 100644
index 9a223df85..000000000
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ /dev/null
@@ -1,94 +0,0 @@
-Rockchip specific extensions to the Synopsys Designware MIPI DSI
-================================
-
-Required properties:
-- #address-cells: Should be <1>.
-- #size-cells: Should be <0>.
-- compatible: one of
-	"rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi"
-	"rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi"
-	"rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi"
-	"rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi"
-- reg: Represent the physical address range of the controller.
-- interrupts: Represent the controller's interrupt to the CPU(s).
-- clocks, clock-names: Phandles to the controller's pll reference
-  clock(ref) when using an internal dphy and APB clock(pclk).
-  For RK3399, a phy config clock (phy_cfg) and a grf clock(grf)
-  are required. As described in [1].
-- rockchip,grf: this soc should set GRF regs to mux vopl/vopb.
-- ports: contain a port node with endpoint definitions as defined in [2].
-  For vopb,set the reg = <0> and set the reg = <1> for vopl.
-- video port 0 for the VOP input, the remote endpoint maybe vopb or vopl
-- video port 1 for either a panel or subsequent encoder
-
-Optional properties:
-- phys: from general PHY binding: the phandle for the PHY device.
-- phy-names: Should be "dphy" if phys references an external phy.
-- #phy-cells: Defined when used as ISP phy, should be 0.
-- power-domains: a phandle to mipi dsi power domain node.
-- resets: list of phandle + reset specifier pairs, as described in [3].
-- reset-names: string reset name, must be "apb".
-
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/media/video-interfaces.txt
-[3] Documentation/devicetree/bindings/reset/reset.txt
-
-Example:
-	mipi_dsi: mipi@ff960000 {
-		#address-cells = <1>;
-		#size-cells = <0>;
-		compatible = "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi";
-		reg = <0xff960000 0x4000>;
-		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_MIPI_24M>, <&cru PCLK_MIPI_DSI0>;
-		clock-names = "ref", "pclk";
-		resets = <&cru SRST_MIPIDSI0>;
-		reset-names = "apb";
-		rockchip,grf = <&grf>;
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			mipi_in: port@0 {
-				reg = <0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				mipi_in_vopb: endpoint@0 {
-					reg = <0>;
-					remote-endpoint = <&vopb_out_mipi>;
-				};
-				mipi_in_vopl: endpoint@1 {
-					reg = <1>;
-					remote-endpoint = <&vopl_out_mipi>;
-				};
-			};
-
-			mipi_out: port@1 {
-				reg = <1>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				mipi_out_panel: endpoint {
-					remote-endpoint = <&panel_in_mipi>;
-				};
-			};
-		};
-
-		panel {
-			compatible ="boe,tv080wum-nl0";
-			reg = <0>;
-
-			enable-gpios = <&gpio7 3 GPIO_ACTIVE_HIGH>;
-			pinctrl-names = "default";
-			pinctrl-0 = <&lcd_en>;
-			backlight = <&backlight>;
-
-			port {
-				panel_in_mipi: endpoint {
-					remote-endpoint = <&mipi_out_panel>;
-				};
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
new file mode 100644
index 000000000..8e8a40879
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -0,0 +1,166 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-mipi-dsi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip specific extensions to the Synopsys Designware MIPI DSI
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - rockchip,px30-mipi-dsi
+          - rockchip,rk3288-mipi-dsi
+          - rockchip,rk3399-mipi-dsi
+          - rockchip,rk3568-mipi-dsi
+      - const: snps,dw-mipi-dsi
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 4
+
+  clock-names:
+    oneOf:
+      - minItems: 2
+        items:
+          - const: ref
+          - const: pclk
+          - const: phy_cfg
+          - const: grf
+      - const: pclk
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      This SoC uses GRF regs to switch between vopl/vopb.
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: dphy
+
+  "#phy-cells":
+    const: 0
+    description:
+      Defined when in use as ISP phy.
+
+  power-domains:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - rockchip,grf
+
+allOf:
+  - $ref: /schemas/display/bridge/snps,dw-mipi-dsi.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-mipi-dsi
+              - rockchip,rk3568-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+
+        clock-names:
+          maxItems: 1
+
+      required:
+        - phys
+        - phy-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          maxItems: 2
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3399-mipi-dsi
+
+    then:
+      properties:
+        clocks:
+          minItems: 4
+
+        clock-names:
+          minItems: 4
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+
+    mipi_dsi: dsi@ff960000 {
+      compatible = "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi";
+      reg = <0xff960000 0x4000>;
+      interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_MIPIDSI_24M>, <&cru PCLK_MIPI_DSI0>;
+      clock-names = "ref", "pclk";
+      resets = <&cru SRST_MIPIDSI0>;
+      reset-names = "apb";
+      rockchip,grf = <&grf>;
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        mipi_in: port@0 {
+          reg = <0>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          mipi_in_vopb: endpoint@0 {
+            reg = <0>;
+            remote-endpoint = <&vopb_out_mipi>;
+          };
+          mipi_in_vopl: endpoint@1 {
+            reg = <1>;
+            remote-endpoint = <&vopl_out_mipi>;
+          };
+        };
+
+        mipi_out: port@1 {
+          reg = <1>;
+
+          mipi_out_panel: endpoint {
+            remote-endpoint = <&panel_in_mipi>;
+          };
+        };
+      };
+    };
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
