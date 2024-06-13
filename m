Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AD3DC27C75
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 09:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PPICbQIndIxmWkh8f04kl3XGgBHa9Sg+7hWfSW74Y4k=; b=PUiUIzFQc+fl65
	k+Zel1vthyOmJw3KAOxAhP8p3lQOYADrA6Gbke9zNdG2iHF6Rd/n7zTsg2qxAPM5nymc9TtTOv/m8
	vgXkv9YBLx0RfNxsbau4YUdrvagcCpxiUYZg8ncWD+DkqJew//5YWnVhOpFRBstC+8pjtTdvPPRz6
	DdjHjf04JeCImkkaYRRvN8dAQIDh3GotrSZbP8npcrfc4JRjs2/eW4KtFAHFswOkJ9tx/kcRW2De3
	URVXxY95nVKz0wgPCMwu0VckiEj2c2q/qCWzBgfpv4z+mzktOoLciX3xKrCMgXjwNftPefaXS2by7
	ARaTapk7l3zxCj3xK6DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgJv-0000000FrBk-2i6m;
	Thu, 13 Jun 2024 09:00:35 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHgJq-0000000Fr9q-3PcN;
	Thu, 13 Jun 2024 09:00:32 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1f4c7b022f8so7549865ad.1;
        Thu, 13 Jun 2024 02:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718269227; x=1718874027; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SxIVzyf9PimEVOucHthqxn21ESGQccRm+KuqO9GK610=;
        b=A9ZDzb5Z+40zBPIWeS+CE7mufyx7qGf5ToKt/d5i95jlJ5LwUrXCpNhZYWL1+AgU78
         3Tm0rj0kIHQNe876xtrzH87Y15KnLaQu7TaeHDtSU/SRi9ujF85ui57oG3g5GHhzTdgq
         U2YcmXvmEYMpx0nG+R9tcrWN5nCzQJkHwub0Jv0oYrtbJjZ5uudX5eX3cR7q3yQP/dMW
         iPycRAz7gEJLI1NbxnrrUJn8glVK8sMRFT4ySLIQPtffiPALd4Nm39h0vvyjqJwbIkoh
         2GrKXk0w2SBphp1nDOen8RRXSsUQuehZwu4crUf0Kg+S2ow3ToGK6rQyedIh2mN/uWCK
         Ao/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718269227; x=1718874027;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SxIVzyf9PimEVOucHthqxn21ESGQccRm+KuqO9GK610=;
        b=rfnxejviYwAFmRbF+wMrbi8WELzA+ACr2fol1u+0pzJtUCkWuGThpV99rKVaS1Eq/X
         7MMpdrQDBsKNjt8D5bm3aQrjvsXkkbID3WTJmzHrSf9682iMQoo3XdJBMaFU8pHQPSiM
         XmaCKPghHe+jV4HMgk+/9p1lHroxEeK2A70I3xc9dbwFIXIHIlbBS+iJRxEdCTKSeUF1
         hqoOVw7Z85/MJKIK3DHIKgR8tinQ9U28B3aZdnJT/E7/hfBzYpSnTYYomfRn0MzElnXN
         Wg2w63MFak8jXjSQ/hf1VO44mEANdc6hS+CODccL5/CUzs2eiEaGUIDo5410F2SbAUN/
         bH/A==
X-Forwarded-Encrypted: i=1; AJvYcCX7+gNYazig2e+jSJ0wFEgUhCsSBK+w7SdiFWNUGfclwcz6PmZ/ZH3hD0F6WBZHndxVI+miLIJmxpVfG9TD1qzeWw54IM4NHApsGJReWO0hMwJs9iRhLELZzEOKcBWvERFOqsDBZ8i6nV6//fVir+nmHv79quVypVE=
X-Gm-Message-State: AOJu0Yxp4VV1Qcjnt8WcfLW30R8MDy9KQYBNKCnz8UzACXsyzAFJ8wo8
	he3ZofjVqgT9zK4C2CSBk3wtNdiygaI5smuJERaJsfe8iGPS3jjOrRk9KIKd
X-Google-Smtp-Source: AGHT+IHebA6zUpF1OzPjp9lAJ5eM6arVSXRTaiJFDOXPT4G11C9bXRMGbkEWnrg5Ozkc/q2yoyktKA==
X-Received: by 2002:a17:903:2281:b0:1f7:126:5bab with SMTP id d9443c01a7336-1f83b6ca36emr41855705ad.40.1718269227364;
        Thu, 13 Jun 2024 02:00:27 -0700 (PDT)
Received: from shresth-aspirea71576g.abesec.ac.in ([139.5.197.147])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855ee6a7bsm8575765ad.159.2024.06.13.02.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 02:00:26 -0700 (PDT)
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
Subject: [PATCH v3] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
Date: Thu, 13 Jun 2024 14:28:13 +0530
Message-ID: <20240613085812.4020-2-shresthprasad7@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_020030_885232_34E70CAE 
X-CRM114-Status: GOOD (  16.34  )
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
Changes in v3:
    - fix `reg` in example being too long

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
index 000000000000..85d74b343991
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
+      reg = <0xff770000 0x10000>;
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
