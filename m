Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B780BC2BA18
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 21:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x+TUtZMRqy/zfVAbJ+2UM738l0J9vfJh4S4ZatPFeUQ=; b=NfMzOgJxjWjnh4
	HnTW55nDq+DGd47EeozGlHEgzD03ZhlUm8xFrwi8rg7RbpYeoNc7v1S6nECOy6JISLZBJx6egjPrv
	bxgQ/PJjaE1rFGwh6nhG15CSBOW+NxKfAS0YAZAKrlCfCI+mVGE/btrD7q+f1lDFuAjq5J9ByqMDR
	MdM9PAQ6O+zOzYBizXLSKFwGV2DtRNljTTNP5WjXSj5E/+AvwAAMbrALnwgvJS6hMKWtse4/JvPo3
	LIvJBf5qKXlBXxaS53JLkfb4IvKoVUcm8JQRVeXw1kcPq7Yy/OlMMBQYS593SQoZMolrmV4htHrZV
	P0HgI4XP5qquURy5aGjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKPKv-00000006mY0-1hfe;
	Thu, 20 Jun 2024 21:28:53 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKPKr-00000006mWn-16Ya;
	Thu, 20 Jun 2024 21:28:50 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2c72becd4fdso1179533a91.0;
        Thu, 20 Jun 2024 14:28:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718918927; x=1719523727; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B2IrnnGEnY0PAdsg8+78PSsbMokLJN/NcVtSSSZKo7A=;
        b=M7oTH3mj38HLTQ/5JKtOq+NSvImtBLEECcvCkTVqSDfeSZmnT5JGulW4WsdZc/oEJb
         X745eF6Ucu87LlBJ+/CEjm2hRhgW5ng/9CP0jmr7gvgePrerkUvzoRLowZewdXYfW0iw
         zeAJ977/oyIbz+aUyIZ0IiAHysPkbOCB5kiRXnMkZi6T7f46O4U+0rn31kKTrKE9s9i3
         tBKytLK8lWCzhN2XcsyeZ69800CFfmPuQjbFlIzcO4vZrpdMvcj1O66kOLm11fbZ7SP7
         mMLk129CQAg7PumcvnVWH6reiTOsIBqrj7Dwny0M+ie+ny+BgA9SJtMFCnBYAtfT7KR8
         c3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718918927; x=1719523727;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B2IrnnGEnY0PAdsg8+78PSsbMokLJN/NcVtSSSZKo7A=;
        b=qzlKesU65/UaP02TPFobC7oLmZ3ycnUVUDAmvxXZBzvyrLupkIdYQ0nMTe03ZysWGT
         wVOplKivWeRswmKE2CGcFX0hT4BAEFCRcot5wIAGOQiu9c11khd1gu24Rk0qQa3dQmz5
         gx0KnHQzBW82nkr7xZjj058D3J3WA84aNdg1ycuP2m67e3f3SH+l8ndqQVt4P/NG+W4e
         kXwx1vKDmRWWGrzQV80+L/bmYH2KtrjNOquHiV1sS0eMcXTGajSrpNDF8jmflaAnQEob
         6HQND7FaK2uF7MXm7ywIXeRwILtsoOC5ehK0c8QH9xpBCeSrGCkcQeI28x8e7DlefdoG
         Sxww==
X-Forwarded-Encrypted: i=1; AJvYcCW/F82/C1VMoNmLqDIdG/jMsbyACGtMlQxlIsSJD0Lh1WEdO/pxyCPTtB6NKApb6eOluaJk24BnWXBjnxOxcoovjzO2JWG27H0OF3/+q+EUISlWbpiVCidfgfm2563FurriML5HJD5K/fNp/Gt1ZKWtIDCS6ODJaQE=
X-Gm-Message-State: AOJu0Yzqxv8oehx6NAH+++d6n11B/iP9X6gCLaq1YXbMiBNK1fSY5PIK
	nstcAlPEWfkHPpE5lthSafRXk6SnZvYL8xjHwc0uVutf3Lakp0qz
X-Google-Smtp-Source: AGHT+IH4Mmq3L3BL4GOBwjn22i7w8MWuGPUuZniUS0Ra/uXagWa+InuUen9W/sgAZvNVcMUn5CtXCg==
X-Received: by 2002:a17:90a:4217:b0:2c8:81b:e798 with SMTP id 98e67ed59e1d1-2c8081be805mr1710242a91.30.1718918926729;
        Thu, 20 Jun 2024 14:28:46 -0700 (PDT)
Received: from shresth-aspirea71576g.abesec.ac.in ([139.5.197.147])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c819a8f68csm147411a91.30.2024.06.20.14.28.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 14:28:46 -0700 (PDT)
From: Shresth Prasad <shresthprasad7@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	andy.yan@rock-chips.com,
	s.hauer@pengutronix.de,
	jbx6244@yandex.com
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	javier.carrasco.cruz@gmail.com,
	skhan@linuxfoundation.org,
	Shresth Prasad <shresthprasad7@gmail.com>
Subject: [PATCH v5] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
Date: Fri, 21 Jun 2024 02:58:07 +0530
Message-ID: <20240620212806.3011-2-shresthprasad7@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_142849_330542_075749C0 
X-CRM114-Status: GOOD (  18.11  )
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
Request for an Ack from the PHY maintainers, so that the DT maintainer Heiko 
can merge it to grf.yaml in the order that he likes.

Changes in v5:
    - remove myself from maintainers list
    - put `clocks` before `clock-names`
    - remove node lables
    - remove `grf` node from example
    - remove blank lines in grf.yaml
    - add to example in grf.yaml

Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
and `rockchip/rk3399-pinebook-pro.dtb`.
---
 .../phy/rockchip,rk3399-emmc-phy.yaml         | 64 +++++++++++++++++++
 .../bindings/phy/rockchip-emmc-phy.txt        | 43 -------------
 .../devicetree/bindings/soc/rockchip/grf.yaml | 16 ++++-
 3 files changed, 77 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml
new file mode 100644
index 000000000000..3e3729b1c799
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: GPL-2.0-only
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3399-emmc-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip EMMC PHY
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+properties:
+  compatible:
+    const: rockchip,rk3399-emmc-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: emmcclk
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
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@f780 {
+      compatible = "rockchip,rk3399-emmc-phy";
+      reg = <0xf780 0x20>;
+      clocks = <&sdhci>;
+      clock-names = "emmcclk";
+      drive-impedance-ohm = <50>;
+      #phy-cells = <0>;
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
index 79798c747476..78c6d5b64138 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -176,9 +176,10 @@ allOf:
             Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
 
       patternProperties:
-        "phy@[0-9a-f]+$":
-          description:
-            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+        "^phy@[0-9a-f]+$":
+          type: object
+          $ref: /schemas/phy/rockchip,rk3399-emmc-phy.yaml#
+          unevaluatedProperties: false
 
   - if:
       properties:
@@ -292,6 +293,15 @@ examples:
         #phy-cells = <0>;
       };
 
+      phy@f780 {
+        compatible = "rockchip,rk3399-emmc-phy";
+        reg = <0xf780 0x20>;
+        clocks = <&sdhci>;
+        clock-names = "emmcclk";
+        drive-impedance-ohm = <50>;
+        #phy-cells = <0>;
+      };
+
       u2phy0: usb2phy@e450 {
         compatible = "rockchip,rk3399-usb2phy";
         reg = <0xe450 0x10>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
