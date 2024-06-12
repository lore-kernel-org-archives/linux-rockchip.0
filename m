Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87125C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 16:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=np+8RIihXJ+H6DB7d2Zey9ZILLtxFwaPh/356BxpP+w=; b=BGgfFOa7UKsbCM
	t0oDojGGgu91V1p70TDJj0yRePSzNiOirI/HnJxWtDek5C1blbCEh8wYgn2HVlLqBS3tqI2t7Sg1q
	8QKKsxdl3PQCRWr77CaI3zuXth2MslaFoFlHWcdV6WaswCTeDLw6UnFe0aTSnEmSE2HS/G7AQFjud
	K5wkDoeYdBIWoGcH5r0CWU51pN7ve4K8W9HdladTRu2OLG4xfPrqqU1zgqUWjObaJ9J8vn/mElmoY
	zec3VFjL+mWe/uV25zysCjHCdi0oBmU+I/KPPbBe90x/BgqTW1geBYpKkwXkYnHBQUKQkmiTNmCyg
	sG9xOM08n+yD/bPRIBPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQSQ-0000000DIjL-2QL0;
	Wed, 12 Jun 2024 16:04:18 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHQSN-0000000DIhr-15QF;
	Wed, 12 Jun 2024 16:04:16 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-7041ed475acso4084098b3a.2;
        Wed, 12 Jun 2024 09:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718208252; x=1718813052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AH50orR5FyIlpjugYepr6bfFOHdgPbrZzYYt/ypEgjU=;
        b=TfDHqAu2roVofA2pO24hvDb56i0abUQ8gPunCUmcw+dYZuGKqE95OJFigi7GvuFSpD
         7gNaSbDyhysw0fCEMlHfrytjnH9I0x1FyHN8GbxpyNw3baoF1DwR3kHV0luFJSpDMvUv
         wkTdL/qdWKAy4JJQ73Y/pCvVKjAk4/P0VUCcghirAuq4MjStNvI8vqqregibgj/Ys46b
         yC46jsaBgHMxmKbh8iaDIKBGbZjL+q5Rvvth3iALB1tMsvaWY1fW4NFTaaU+TFrbB0HW
         GVTgN4wqAHi66W+XMChmXGrSZSF7Sd5XkcamYu0qS6OhiwhNPhvoBLR163hg80I1Akbn
         U5MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718208252; x=1718813052;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AH50orR5FyIlpjugYepr6bfFOHdgPbrZzYYt/ypEgjU=;
        b=ObnCxdXIjRxMhtCtBSK0n1534WfqdV/pwvAFf6iysZ5n+Psz7ewr6FOneSnGsf4eJm
         uBE/zL09RxpgMz2v85/8LHMOQn/KWvoBpHnJy6oHQbC1sP7BTT5UobxCXOZnGVmbJ06o
         wcxfzx1cHYutCAq8geV1oVDH37tHTY9KLNpkWPGSlQfbH0x/hENfBpwfSSEWnbfEDpWv
         bFqL56l7j85POZYg89mmHkchuGoYcQmpU3Z9hTmBhmk32xMFD8rghCy1M9qZU24zd0X6
         Cz0sRB6fXMUOmU3T2W4RGooEgENv2cMMOaxlkzpTdA3S1Klkmym13WYwp/ZemDwo+5yX
         o2QQ==
X-Forwarded-Encrypted: i=1; AJvYcCVohN3QGzy7oJTPQvjn60KxzzmAJfHmlKA5YgNZFkAPGetDO9PbHE2XLYwkuiSLI+XnLeUOuCTtN+FzkOliFZXt1nHoz9XIV2bxBEfBMTbzSfOE970jLSWfwInccDv477c45zfS85S87UszJvuvN9fN1rsj4SWFjns=
X-Gm-Message-State: AOJu0YwcvJRF8/O40WhhlT66KZKSy5YlTmVT7y+VQ/rzESEi7/Bi+9ML
	1KmZTTzKQyAOUuQc9jjzl1jFFpq/d3tuqDiJLACIC04X4O/nRCyN
X-Google-Smtp-Source: AGHT+IHc7rN5RhTKgGX+U2xnByt7BB6V+V8NYKfp2g4qSX34Lk1wtCxbkckFHtg4nNii+mCRqOfJPg==
X-Received: by 2002:a05:6a00:a14:b0:6fc:fcc8:cb38 with SMTP id d2e1a72fcca58-705bcf1accamr2931743b3a.33.1718208251825;
        Wed, 12 Jun 2024 09:04:11 -0700 (PDT)
Received: from shresth-aspirea71576g.abesec.ac.in ([139.5.197.147])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-705382784b9sm5911884b3a.48.2024.06.12.09.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 09:04:11 -0700 (PDT)
From: Shresth Prasad <shresthprasad7@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	s.hauer@pengutronix.de,
	cristian.ciocaltea@collabora.com,
	andy.yan@rock-chips.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org,
	javier.carrasco.cruz@gmail.com,
	Shresth Prasad <shresthprasad7@gmail.com>
Subject: [PATCH v2] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
Date: Wed, 12 Jun 2024 21:33:37 +0530
Message-ID: <20240612160336.5132-2-shresthprasad7@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_090415_324925_676E5BBF 
X-CRM114-Status: GOOD (  16.90  )
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

Convert txt bindings of Rockchip EMMC PHY to dtschema to allow
for validation.

Signed-off-by: Shresth Prasad <shresthprasad7@gmail.com>
---
Changes in v2:
    - Fixed example
    - Changed file referenced in grf.yaml

Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
and `rockchip/rk3399-pinebook-pro.dtb`.

 .../bindings/phy/rockchip,emmc-phy.yaml       | 79 +++++++++++++++++++
 .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
 .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +-
 3 files changed, 80 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
new file mode 100644
index 000000000000..f42045389383
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,emmc-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip EMMC PHY
+
+maintainers:
+  - Shresth Prasad <shresthprasad7@gmail.com>
+
+properties:
+  "#phy-cells":
+    const: 0
+
+  compatible:
+    const: rockchip,rk3399-emmc-phy
+
+  reg:
+    description:
+      PHY register address offset and length in "general register files"
+    maxItems: 1
+
+  clock-names:
+    description: |
+      Although this is not a required property (because most boards can get
+      basic functionality without having access to it), it is strongly
+      suggested.
+    const: emmcclk
+
+  clocks:
+    description:
+      Should have a phandle to the card clock exported by the SDHCI driver.
+    maxItems: 1
+
+  drive-impedance-ohm:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Specifies the drive impedance in Ohm.
+    enum: [33, 40, 50, 66, 100]
+    default: 50
+
+  rockchip,enable-strobe-pulldown:
+    type: boolean
+    description: |
+      Enable internal pull-down for the strobe
+      line.  If not set, pull-down is not used.
+
+  rockchip,output-tapdelay-select:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Specifies the phyctrl_otapdlysec register.
+    default: 0x4
+    maximum: 0xf
+
+required:
+  - "#phy-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    grf: syscon@ff770000 {
+      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
+      reg = <0x0 0xff770000 0x0 0x10000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      emmcphy: phy@f780 {
+        #phy-cells = <0>;
+        compatible = "rockchip,rk3399-emmc-phy";
+        reg = <0xf780 0x20>;
+        clocks = <&sdhci>;
+        clock-names = "emmcclk";
+        drive-impedance-ohm = <50>;
+      };
+    };
diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
deleted file mode 100644
index 57d28c0d5696..000000000000
--- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+++ /dev/null
@@ -1,43 +0,0 @@
-Rockchip EMMC PHY
------------------------
-
-Required properties:
- - compatible: rockchip,rk3399-emmc-phy
- - #phy-cells: must be 0
- - reg: PHY register address offset and length in "general
-   register files"
-
-Optional properties:
- - clock-names: Should contain "emmcclk".  Although this is listed as optional
-		(because most boards can get basic functionality without having
-		access to it), it is strongly suggested.
-		See ../clock/clock-bindings.txt for details.
- - clocks: Should have a phandle to the card clock exported by the SDHCI driver.
- - drive-impedance-ohm: Specifies the drive impedance in Ohm.
-                        Possible values are 33, 40, 50, 66 and 100.
-                        If not set, the default value of 50 will be applied.
- - rockchip,enable-strobe-pulldown: Enable internal pull-down for the strobe
-                                    line.  If not set, pull-down is not used.
- - rockchip,output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
-                                    If not set, the register defaults to 0x4.
-                                    Maximum value 0xf.
-
-Example:
-
-
-grf: syscon@ff770000 {
-	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-...
-
-	emmcphy: phy@f780 {
-		compatible = "rockchip,rk3399-emmc-phy";
-		reg = <0xf780 0x20>;
-		clocks = <&sdhci>;
-		clock-names = "emmcclk";
-		drive-impedance-ohm = <50>;
-		#phy-cells = <0>;
-	};
-};
diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 79798c747476..1f88416657cc 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -178,7 +178,7 @@ allOf:
       patternProperties:
         "phy@[0-9a-f]+$":
           description:
-            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+            Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
 
   - if:
       properties:
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
