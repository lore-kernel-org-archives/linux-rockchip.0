Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD781C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Dec 2022 14:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=snYv866xIgCkxXU9i942xy+CgNwRoERl4q2PxaEI1EI=; b=NLUaALl+TcWv9Q
	RKBfrVsMg5Dya7iuBiVvKwAau4Neidbo4Xap9S35zS9kzM7YHr19vo8VhCPZh8duvnQPmbkJhOYTT
	run9zialcxJmowWYWXpcGsJ/QBezEdFeOoADtAfswdw3QOuSsZQhNAPM12q3XLbFpHkF641dejxNu
	aIgB52UMWvpAoSzbryFxJstoqpbywIevkF7wbnup8t8kyh+0eRzjVKQx5SzacbMQfFV1qQ+ZdKteX
	BiPInnrBE4I12X3NTiGNYOBY5QjnhAlAXYdNMLE+w639tduIDpektyU6sgAowvZRS22iFLF7mBIG/
	AfgZ6fr5dJtefvOBVPWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6YCa-009oDW-OS; Sat, 17 Dec 2022 14:30:13 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6YCO-009nse-Kx; Sat, 17 Dec 2022 14:30:02 +0000
Received: by mail-ej1-x62b.google.com with SMTP id gh17so12340721ejb.6;
        Sat, 17 Dec 2022 06:29:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lQhV9ZLQ0rBir+Rwlz04DWdfpa5Y//vPvGj9FwWeR4Q=;
        b=RDngtkpOhyHk/y1Hu6UNv5iw8G8/Jqyi3UgSqrTEr9haacPwug7dje55GhH8SxU5we
         4gPsJ0jG82Ss8yJ9W9semLvAk7sZcLyphybc8l1XpyJK1mfRNAejQhJru+R2w5/2gSyE
         ftVc35yOle+l6zUguGi6O98fb0xLulVW07iSvUZ9gMvAnDcsZMJANjEbidI40y/LzSho
         VquW3aCMhqvS3Mm0/Ay0iJ6h/W2Y+RL7i7nIHJdpc4wPOFyMwZ1p1r/KZtpQZCWzNwDy
         vgJI1t1nsnBb5hahhnqQl4ZXPUIU6x0sHQCPo8PZEnbQayjBRrXj/KlYtYKfqbvi1Kj5
         VqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lQhV9ZLQ0rBir+Rwlz04DWdfpa5Y//vPvGj9FwWeR4Q=;
        b=6cl4W7xk9HTvL0MOOXSgm1OSbxzw/zd8LtrtgmuE14HPFG6SQ2a8Nm6Q12Nr0JK77h
         4+eEZhxjX3chfGcyflbTKbsTX1GQCUUQbIjiS49f7AWc9iQNe0f/xYfMT0MRxvUq+0v3
         gjwsMQJMhBO5CA6dcgYZeMwO9xn4bQnDfMJfkcbj+mzXnWbxCg1GM3kPm410e7oZy0jd
         O+gYjoXQ/t62YMudcC0eMDTNG1iiqZ2gUFH+ptVn2zC2Q+oXtg7oVPoJHjhFfLubQ97x
         v6CwbLgciyxlezPopXEA47BGn9x/JYbT8SmTBkWjSZAj8vx6gjOrKmSZELBzmwuZlq4J
         EGcA==
X-Gm-Message-State: ANoB5plMf0qG5GoHh+SNMIr+ThVNprMla6na9qt45udoCvP9NuKILO7L
	Y1fGDW3aHQijq67dJc39bsE=
X-Google-Smtp-Source: AA0mqf4Ew5SrfUly16kO8AwYm754mspeq8+vy5cdtvDEqqp7wWGzkpsHSApEJHYMoXIotEhLzf6dIQ==
X-Received: by 2002:a17:906:34c5:b0:7ae:e886:8ccb with SMTP id h5-20020a17090634c500b007aee8868ccbmr44247934ejb.14.1671287397463;
        Sat, 17 Dec 2022 06:29:57 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ku17-20020a170907789100b008072c925e4csm410251ejc.21.2022.12.17.06.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 06:29:57 -0800 (PST)
Message-ID: <a2d22ba1-d9a2-03ec-3c02-e5c8e885fac5@gmail.com>
Date: Sat, 17 Dec 2022 15:29:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] dt-bindings: display: rockchip: convert rockchip-lvds.txt
 to YAML
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221217_063000_750721_1EBB8880 
X-CRM114-Status: GOOD (  16.97  )
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
---
 .../display/rockchip/rockchip-lvds.txt        |  92 ----------
 .../display/rockchip/rockchip-lvds.yaml       | 159 ++++++++++++++++++
 2 files changed, 159 insertions(+), 92 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml

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
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml
new file mode 100644
index 000000000..13e12f4b5
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-lvds.yaml
@@ -0,0 +1,159 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip-lvds.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC display controller (VOP)
+
+description: Rockchip low-voltage differential signal (LVDS) transmitter
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
+    description: Regulator phandle for 1.0V analog power.
+
+  avdd1v8-supply:
+    description: Regulator phandle for 1.8V analog power.
+
+  avdd3v3-supply:
+    description: Regulator phandle for 3.3V analog power.
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
+          Video port 0 for the VOP input, the remote endpoint maybe vopb or vopl.
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
+additionalProperties: false
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,px30-lvds
+
+    then:
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
+      required:
+        - reg
+        - clocks
+        - clock-names
+        - avdd1v0-supply
+        - avdd1v8-supply
+        - avdd3v3-supply
+
+required:
+  - compatible
+  - rockchip,grf
+  - rockchip,output
+  - ports
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
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
