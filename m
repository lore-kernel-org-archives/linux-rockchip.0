Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC00AC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/WSnt17KxschfygcwcJbjyZtoZw5L8CcqqaEc8dN3qM=; b=GZSicf5EyeM4rF
	70CiFatIj3n2SUenVxj7YO292UR1TOHWVhiXRKm+zrhm16KbTGwLcY/XDyeOwAyEUMqXCBAUFyCdo
	Kc3nu5ouOL6WKdkrThO7sPAv+PRrUjb4WDMgVQE1ex6O3ylIqR/luhvTbTeZWWwX8YfusuNgH+zEF
	J2ZNbiLIuWPOedHDJmDfPfzIcpv0Xd2Y4pvCpv9wMWEX8XkwJlI93rwtVtI9CBD3oC5afboxdzbQc
	+hcZg0wvmlaN4VybJNpP2vikwFOVJiPZyiJ/Yhtc7VtSOCYOwUuD0KU4C4LsteItqWAT+zZQ3okwu
	twCi4y6vxNMHgJ2i5xsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Myi-00DDUW-Gu; Thu, 22 Dec 2022 14:55:24 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MXt-00CxD4-Lp; Thu, 22 Dec 2022 14:27:43 +0000
Received: by mail-ed1-x536.google.com with SMTP id m21so3152945edc.3;
        Thu, 22 Dec 2022 06:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=O9UePTIdh8BLFeT/9sLTPNaa6psTC9fQZbGE7Nodn9I=;
        b=hLYUbYUNOzWKT8UBWlJ51u2iJA1D9bz/x01b8uQLLe0r+lxgJcH5k7DKE2eVkOWQIX
         glX/2BPYpbtrS/A/M+irYpogYerFjEv47Xq0hYcJQzcrnJEqlRV1meEpId/cZ/2bvBeu
         eZwBTSz99uyZ/ohl5vAMMqjiYlUCKPpeaF3wEgfEFJ+l2tgmahGaoM8Kd5s5syhvL9Ft
         v2aIxyD/oimeosAhZg6/4eFM/2BpVhYWFnKQuvp3/psKirkpTKnLrBVKO40G2ypqaaZv
         wi/twPnbyp+yvlcPmDGN7wsiH4YMsec6chf6BXVT4e7mbNI+VLTGXp/P+XNlgysAxzfJ
         oHmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O9UePTIdh8BLFeT/9sLTPNaa6psTC9fQZbGE7Nodn9I=;
        b=SMVWiqKf5/tHpH5HcD5XOr/YJ29cU3Ezdgas9gb5jfGhIQGI8FU6brexsAbA4lx923
         rqeYmeELKS4qc+yVpqhvsp1Ovvt0/tLbHwp6qXLwK0gO1TVmnEQLLRjlOk6gRMZ6G2Iz
         ShyQ5pe/0yG/PcE/aD795SZpgV6vKaZ/uHb4NmlK3GA3xbKQ73dZhpEGeTctDk0bNggT
         KiFXUnyDQx7vJ5gUYpc/mZGdoM/mpCRDICbY7nBXjhrga3m9o7124DAS6cJwg3Iv5b/h
         Cf4/crRNktxczsF4lE1Zm3xfDGPTjF8p8VoGW8T9ycDvLSoIsxa1xMGwPGAHhY/YC6jQ
         Wzsw==
X-Gm-Message-State: AFqh2kq1p3Fwow3CHf5z96eeP43S7iNBl/GPSaqiCVkg4UZzggUHGb6q
	T6L+ZAQECd8t0DaJ9C8/ssw=
X-Google-Smtp-Source: AMrXdXuFTs5mURL/LSDTL8IcGuh27Bwo1dU7Yjt7h6xB4T5t6YKFMjM97FQ4834XnJSqneb7EOE2Ag==
X-Received: by 2002:aa7:ccc2:0:b0:462:2e05:30ce with SMTP id y2-20020aa7ccc2000000b004622e0530cemr4663623edt.42.1671719257488;
        Thu, 22 Dec 2022 06:27:37 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id l26-20020a056402125a00b0046b471596e6sm426812edw.57.2022.12.22.06.27.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:27:37 -0800 (PST)
Message-ID: <88a5a9e3-9bc8-5966-22ec-5bdb1fa7a5b1@gmail.com>
Date: Thu, 22 Dec 2022 15:27:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 07/17] dt-bindings: display: rockchip: convert
 analogix_dp-rockchip.txt to yaml
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
X-CRM114-CacheID: sfid-20221222_062741_793994_756EC78F 
X-CRM114-Status: GOOD (  16.88  )
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

Convert analogix_dp-rockchip.txt to yaml.

Changed:
  Add power-domains property
  File name

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../display/rockchip/analogix_dp-rockchip.txt |  98 -----------------
 .../rockchip/rockchip,analogix-dp.yaml        | 103 ++++++++++++++++++
 2 files changed, 103 insertions(+), 98 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/rockchip/analogix_dp-rockchip.txt
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml

diff --git a/Documentation/devicetree/bindings/display/rockchip/analogix_dp-rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/analogix_dp-rockchip.txt
deleted file mode 100644
index 43561584c..000000000
--- a/Documentation/devicetree/bindings/display/rockchip/analogix_dp-rockchip.txt
+++ /dev/null
@@ -1,98 +0,0 @@
-Rockchip RK3288 specific extensions to the Analogix Display Port
-================================
-
-Required properties:
-- compatible: "rockchip,rk3288-dp",
-	      "rockchip,rk3399-edp";
-
-- reg: physical base address of the controller and length
-
-- clocks: from common clock binding: handle to dp clock.
-	  of memory mapped region.
-
-- clock-names: from common clock binding:
-	       Required elements: "dp" "pclk"
-
-- resets: Must contain an entry for each entry in reset-names.
-	  See ../reset/reset.txt for details.
-
-- pinctrl-names: Names corresponding to the chip hotplug pinctrl states.
-- pinctrl-0: pin-control mode. should be <&edp_hpd>
-
-- reset-names: Must include the name "dp"
-
-- rockchip,grf: this soc should set GRF regs, so need get grf here.
-
-- ports: there are 2 port nodes with endpoint definitions as defined in
-  Documentation/devicetree/bindings/media/video-interfaces.txt.
-    Port 0: contained 2 endpoints, connecting to the output of vop.
-    Port 1: contained 1 endpoint, connecting to the input of panel.
-
-Optional property for different chips:
-- clocks: from common clock binding: handle to grf_vio clock.
-
-- clock-names: from common clock binding:
-	       Required elements: "grf"
-
-For the below properties, please refer to Analogix DP binding document:
- * Documentation/devicetree/bindings/display/bridge/analogix_dp.txt
-- phys (required)
-- phy-names (required)
-- hpd-gpios (optional)
-- force-hpd (optional)
--------------------------------------------------------------------------------
-
-Example:
-	dp-controller: dp@ff970000 {
-		compatible = "rockchip,rk3288-dp";
-		reg = <0xff970000 0x4000>;
-		interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
-		clocks = <&cru SCLK_EDP>, <&cru PCLK_EDP_CTRL>;
-		clock-names = "dp", "pclk";
-		phys = <&dp_phy>;
-		phy-names = "dp";
-
-		rockchip,grf = <&grf>;
-		resets = <&cru 111>;
-		reset-names = "dp";
-
-		pinctrl-names = "default";
-		pinctrl-0 = <&edp_hpd>;
-
-
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			edp_in: port@0 {
-				reg = <0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				edp_in_vopb: endpoint@0 {
-					reg = <0>;
-					remote-endpoint = <&vopb_out_edp>;
-				};
-				edp_in_vopl: endpoint@1 {
-					reg = <1>;
-					remote-endpoint = <&vopl_out_edp>;
-				};
-			};
-
-			edp_out: port@1 {
-				reg = <1>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-				edp_out_panel: endpoint {
-					reg = <0>;
-					remote-endpoint = <&panel_in_edp>
-				};
-			};
-		};
-	};
-
-	pinctrl {
-		edp {
-			edp_hpd: edp-hpd {
-				rockchip,pins = <7 11 RK_FUNC_2 &pcfg_pull_none>;
-			};
-		};
-	};
diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
new file mode 100644
index 000000000..60dedf9b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
@@ -0,0 +1,103 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip specific extensions to the Analogix Display Port
+
+maintainers:
+  - Sandy Huang <hjc@rock-chips.com>
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    enum:
+      - rockchip,rk3288-dp
+      - rockchip,rk3399-edp
+
+  clocks:
+    minItems: 2
+    maxItems: 3
+
+  clock-names:
+    minItems: 2
+    items:
+      - const: dp
+      - const: pclk
+      - const: grf
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    const: dp
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      This SoC makes use of GRF regs.
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - rockchip,grf
+
+allOf:
+  - $ref: /schemas/display/bridge/analogix,dp.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3288-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/interrupt-controller/irq.h>
+    dp@ff970000 {
+      compatible = "rockchip,rk3288-dp";
+      reg = <0xff970000 0x4000>;
+      interrupts = <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>;
+      clocks = <&cru SCLK_EDP>, <&cru PCLK_EDP_CTRL>;
+      clock-names = "dp", "pclk";
+      phys = <&dp_phy>;
+      phy-names = "dp";
+      resets = <&cru 111>;
+      reset-names = "dp";
+      rockchip,grf = <&grf>;
+      pinctrl-0 = <&edp_hpd>;
+      pinctrl-names = "default";
+
+      ports {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        edp_in: port@0 {
+          reg = <0>;
+          #address-cells = <1>;
+          #size-cells = <0>;
+
+          edp_in_vopb: endpoint@0 {
+            reg = <0>;
+            remote-endpoint = <&vopb_out_edp>;
+          };
+          edp_in_vopl: endpoint@1 {
+            reg = <1>;
+            remote-endpoint = <&vopl_out_edp>;
+          };
+        };
+
+        edp_out: port@1 {
+          reg = <1>;
+
+          edp_out_panel: endpoint {
+            remote-endpoint = <&panel_in_edp>;
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
