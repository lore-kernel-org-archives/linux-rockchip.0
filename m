Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF43C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/B+13i3IbValZfKyAm8D6FxZ+TXRUdqPJXO3HKK5RV0=; b=VA1jVo2jv6llnZ
	O8WRIL8iYOW1h4yBJUpKlw6VHY/ULHYIVWVb4J1p3uhJZmMXlSMwzA2LhE+eobyjUzgxXiqt/6xyG
	6ztUmSI65Zhuv2BA8MPGVxb3/ZAfiP8arSMTWFHmS0X1oN9nLmJhUTTedPaaa8hGs2YbuHVE1jYT7
	8uOCRQucDmEfeLQegGIOaUEiMklakw+qM3picFdi3vI0JsCrdIQoTjqUa7AhQ63rROS0im9daHIFp
	llTEhdmCzXfeQqxW4Oirc+ludlCewmO8hJLjICRJ38WnPq2WeWWBgcESB9GOLiGUViioKD1CtRjfQ
	IbvtXDFR//51ekSevaFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83hV-000Ug6-I2; Wed, 21 Dec 2022 18:20:21 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83hG-000URH-JC; Wed, 21 Dec 2022 18:20:08 +0000
Received: by mail-ej1-x631.google.com with SMTP id u9so443499ejo.0;
        Wed, 21 Dec 2022 10:20:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oICMjrhWPQNlOjRYsHXcTIDJG/XY6KY3jXRiCxaOR5k=;
        b=mpMpTYrKmvQKR45tEnN8rPjjRK2vmIyCfoHuZoMGcECzjqRp4GJN2fNZXghPxL3bci
         QpY5Yz69D0wlVf9Dhr+NrGYjVZE4uJt7vtKQd2S8rQz9N0evrn2sSS7JxOwVDrFwZdFW
         yA0cjs/4kWDas+eb6bvKwuFKAMopNyHDdsy7Ii233hZQJAfFtDVoQGn+BYi8IdzhDaKB
         5VVSegRY0YP8/pczOH8wWSDr/9JGWWUswoNSFn+7s5E+a1Oa284qPX23fstwLeuyhItz
         X9wO0Y+djEYgB9VAIxU02ujfvHr3yAQWegOF/0YSbGHR+9A4AZkV7Nz+7TVs/mdTcG+C
         hfwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oICMjrhWPQNlOjRYsHXcTIDJG/XY6KY3jXRiCxaOR5k=;
        b=HvcIC7YHt3Hw4zXdRLn1jJRsbpge25SLuUipqvcJicIzkY2Qdi6SCBIgzKROq7+SR2
         G/BUPCiShj1wPHtNbk4fX7+W5PColJS2L0l6U0hIsrJK1usb9/Bf47PYw7Z4qdbIbnLk
         Fwj6KrAASm6VOFP1sP5mcFqzUhNjI/E3t6NGDLEQ47B5TIsviJChOvHIb80CV6KsKpEe
         jtxvb3gMa0AlRlzEdLrmN1VS+4Ly85qNgsyTZRr3csjQpzKDdP4YkNIC8UHGk8GO3KX3
         WAuiK0rKKNeJCa64Ql3bVNOKPnj+i1fPQzQSuW1ptus2SyPOIAj2eBme43yXkKIuhX6X
         3GSg==
X-Gm-Message-State: AFqh2kpf3nuINauk8md5VoDD5T+1lE2/aqQbSHH/cUWvGAan47VY5thg
	gVEI1xuRaEIwKcknOgVEi4M=
X-Google-Smtp-Source: AMrXdXueXAVF4LxAnfZfIoZqqygUHnsTiu71LNBrRqH4gnVAe46GpLxicVSVa4DX40viLigQbIf0Ow==
X-Received: by 2002:a17:907:9d19:b0:7b9:f9d8:9554 with SMTP id kt25-20020a1709079d1900b007b9f9d89554mr2016613ejc.40.1671646800337;
        Wed, 21 Dec 2022 10:20:00 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id h17-20020a170906111100b007bff9fb211fsm7463148eja.57.2022.12.21.10.19.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:19:59 -0800 (PST)
Message-ID: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Date: Wed, 21 Dec 2022 19:19:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 01/12] dt-bindings: display: rockchip: convert
 rockchip-lvds.txt to YAML
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102006_707064_0F46FD32 
X-CRM114-Status: GOOD (  17.27  )
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

Convert rockchip-lvds.txt to YAML.

Changed:
  Add power-domains property.
  Requirements between PX30 and RK3288

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changed V3:
  Filename matching compatible style
  Drop "Regulator phandle for "
  Specify properties and requirements per SoC
  Sort order and restyle

Changed V2:
  Fix title
---
 .../display/rockchip/rockchip,lvds.yaml       | 170 ++++++++++++++++++
 .../display/rockchip/rockchip-lvds.txt        |  92 ----------
 2 files changed, 170 insertions(+), 92 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
new file mode 100644
index 000000000..03b002a05
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,lvds.yaml
@@ -0,0 +1,170 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,lvds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip low-voltage differential signal (LVDS) transmitter
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-lvds
+      - rockchip,rk3288-lvds
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: pclk_lvds
+
+  avdd1v0-supply:
+    description: 1.0V analog power.
+
+  avdd1v8-supply:
+    description: 1.8V analog power.
+
+  avdd3v3-supply:
+    description: 3.3V analog power.
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: Phandle to the general register files syscon.
+
+  rockchip,output:
+    $ref: /schemas/types.yaml#/definitions/string
+    enum: [rgb, lvds, duallvds]
+    description: This describes the output interface.
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: dphy
+
+  pinctrl-names:
+    const: lcdc
+
+  pinctrl-0: true
+
+  power-domains:
+    maxItems: 1
+
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Video port 0 for the VOP input.
+          The remote endpoint maybe vopb or vopl.
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description:
+          Video port 1 for either a panel or subsequent encoder.
+
+    required:
+      - port@0
+      - port@1
+
+required:
+  - compatible
+  - rockchip,grf
+  - rockchip,output
+  - ports
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-lvds
+
+    then:
+      properties:
+        reg: false
+        clocks: false
+        clock-names: false
+        avdd1v0-supply: false
+        avdd1v8-supply: false
+        avdd3v3-supply: false
+
+      required:
+        - phys
+        - phy-names
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3288-lvds
+
+    then:
+      properties:
+        phys: false
+        phy-names: false
+
+      required:
+        - reg
+        - clocks
+        - clock-names
+        - avdd1v0-supply
+        - avdd1v8-supply
+        - avdd3v3-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+
+    lvds: lvds@ff96c000 {
+      compatible = "rockchip,rk3288-lvds";
+      reg = <0xff96c000 0x4000>;
+      clocks = <&cru PCLK_LVDS_PHY>;
+      clock-names = "pclk_lvds";
+      avdd1v0-supply = <&vdd10_lcd>;
+      avdd1v8-supply = <&vcc18_lcd>;
+      avdd3v3-supply = <&vcca_33>;
+      pinctrl-names = "lcdc";
+      pinctrl-0 = <&lcdc_ctl>;
+      rockchip,grf = <&grf>;
+      rockchip,output = "rgb";
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        lvds_in: port@0 {
+          reg = <0>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          lvds_in_vopb: endpoint@0 {
+            reg = <0>;
+            remote-endpoint = <&vopb_out_lvds>;
+          };
+          lvds_in_vopl: endpoint@1 {
+            reg = <1>;
+            remote-endpoint = <&vopl_out_lvds>;
+          };
+        };
+
+        lvds_out: port@1 {
+          reg = <1>;
+
+          lvds_out_panel: endpoint {
+            remote-endpoint = <&panel_in_lvds>;
+          };
+        };
+      };
+    };
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
deleted file mode 100644
index aaf8c44cf..000000000
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
+++ /dev/null
@@ -1,92 +0,0 @@
-Rockchip RK3288 LVDS interface
-================================
-
-Required properties:
-- compatible: matching the soc type, one of
-	- "rockchip,rk3288-lvds";
-	- "rockchip,px30-lvds";
-
-- reg: physical base address of the controller and length
-	of memory mapped region.
-- clocks: must include clock specifiers corresponding to entries in the
-	clock-names property.
-- clock-names: must contain "pclk_lvds"
-
-- avdd1v0-supply: regulator phandle for 1.0V analog power
-- avdd1v8-supply: regulator phandle for 1.8V analog power
-- avdd3v3-supply: regulator phandle for 3.3V analog power
-
-- rockchip,grf: phandle to the general register files syscon
-- rockchip,output: "rgb", "lvds" or "duallvds", This describes the output interface
-
-- phys: LVDS/DSI DPHY (px30 only)
-- phy-names: name of the PHY, must be "dphy" (px30 only)
-
-Optional properties:
-- pinctrl-names: must contain a "lcdc" entry.
-- pinctrl-0: pin control group to be used for this controller.
-
-Required nodes:
-
-The lvds has two video ports as described by
-	Documentation/devicetree/bindings/media/video-interfaces.txt
-Their connections are modeled using the OF graph bindings specified in
-	Documentation/devicetree/bindings/graph.txt.
-
-- video port 0 for the VOP input, the remote endpoint maybe vopb or vopl
-- video port 1 for either a panel or subsequent encoder
-
-Example:
-
-lvds_panel: lvds-panel {
-	compatible = "auo,b101ean01";
-	enable-gpios = <&gpio7 21 GPIO_ACTIVE_HIGH>;
-	data-mapping = "jeida-24";
-
-	ports {
-		panel_in_lvds: endpoint {
-			remote-endpoint = <&lvds_out_panel>;
-		};
-	};
-};
-
-For Rockchip RK3288:
-
-	lvds: lvds@ff96c000 {
-		compatible = "rockchip,rk3288-lvds";
-		rockchip,grf = <&grf>;
-		reg = <0xff96c000 0x4000>;
-		clocks = <&cru PCLK_LVDS_PHY>;
-		clock-names = "pclk_lvds";
-		pinctrl-names = "lcdc";
-		pinctrl-0 = <&lcdc_ctl>;
-		avdd1v0-supply = <&vdd10_lcd>;
-		avdd1v8-supply = <&vcc18_lcd>;
-		avdd3v3-supply = <&vcca_33>;
-		rockchip,output = "rgb";
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			lvds_in: port@0 {
-				reg = <0>;
-
-				lvds_in_vopb: endpoint@0 {
-					reg = <0>;
-					remote-endpoint = <&vopb_out_lvds>;
-				};
-				lvds_in_vopl: endpoint@1 {
-					reg = <1>;
-					remote-endpoint = <&vopl_out_lvds>;
-				};
-			};
-
-			lvds_out: port@1 {
-				reg = <1>;
-
-				lvds_out_panel: endpoint {
-					remote-endpoint = <&panel_in_lvds>;
-				};
-			};
-		};
-	};
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
