Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C9D2C27C77
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 08:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kgJid3jLjNDltsh+Cy6MMAn5kr578WCxDR53GwZl8jM=; b=jPGEQg6g817fie
	wvF25gDEecCG2K7Prv63448qJvmiFiHoUmCZJ3KGrkzGq7wuQEv0vvGQ4XsTDjvp03LERhkh0dkPH
	E6M480Vd0ZTxPvWurCewPKH1o2QsieBJ88anCphVPwJN7hqZxeXnMQgbf9w/jrs7Ccsmxa6USCFhH
	gCpX5TFiYHdxxfNGA2OUmZh1gwP6Hs3GQSAKumYoIQpBcuQBBFi9XkMu0529Ur/KTAwPi2iA+qTFt
	WFsqQYPH543Rmuzdxsb8/EgDSlmzpHJ2A+XI3b6t1yvnaLR2huFGuSIkAEhv+qNeX6ofvE5GPfQS4
	F6upTpT04trPp1+QoqaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8A4-00000009vRX-32hh;
	Mon, 17 Jun 2024 08:56:24 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8A0-00000009vQE-2gAp;
	Mon, 17 Jun 2024 08:56:22 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-1f4a0050b9aso34041725ad.2;
        Mon, 17 Jun 2024 01:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718614577; x=1719219377; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Px2F5O/xlFYH5rKqkkkLF6gjhpLOgiX0YoFm/7eZqRY=;
        b=Uml+a7tozf24NK3doc28a3sTcjznvF8ndw5pTq/8zd5r0n6jrpOOQSx4dVdvXMkRVZ
         zvvKHiWUhzHMjRDCBt5/GXHI4KQLbfHTaTUXbYcZ4/ZsprEE8r+xse2FViwjnxq2Nne2
         Lu/NJLkgmDqEC1+fuTEAs7E6MDz03UfaXbmkw/VAa7EEmWpW0uvHd4T2Bo4LFQxezSgv
         RcCehZFKtAC+AFRTWaCJFNrx3q6TpkvC0/0fqr53xgoYdXO1CZLu7LrExjpIE1qZxEKd
         RDWXNXd19XQedkZjnTWhuawhWs8NzvtEbivzcf3kULB9WJl4Pg8SGo88dCLUs5tZK2YS
         grjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718614577; x=1719219377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Px2F5O/xlFYH5rKqkkkLF6gjhpLOgiX0YoFm/7eZqRY=;
        b=RZXNUL2D5hyfrmow56ixy4dUM9Bv+z1DCR9cP5HDJb9qZQRiU7kzNbNR5E0+kSlbEr
         4Zr5YDI8Pn1v65KPpuc8d4eNuWZ7CCBiANjpukRzaIk3qStoBcxMkFYk5gGsQd970c+c
         1NeNUz9NTHVmLb4S3CR1ILE/YfeCHp2Lg+t7Qb6YPR49JDsGjbx6WdTpCP5Pb0zdjvV4
         1oK8TjSbpj1AGgHWzd2YSA4D9XW0Bgv5P0oG6r7jVEZbQA0xAucCtNa+uW3qjvrAefHZ
         AnNPPuvbwFA5mTz8mu8BXFJZ1N+vBJw3A10l4ffdDrPVkoayYU2Ujz4cq20Tit/+RANA
         VWEg==
X-Forwarded-Encrypted: i=1; AJvYcCWn5gvTj7dL2gzbdY47AIhyAbc5JLOqVS2EWaz0MA3dPB1AwLt3MCqeNcwvLgSy4YxzUaNq0k57CoKKCN4JwtSvjNoS4N5iOr5SN+LDkJ04kI+eTqfQ965MHh17oSvSThniQT37Ls/VArhblAonJh/dW/aynRkYDTY=
X-Gm-Message-State: AOJu0YwC+EAtBg5SdN9X4c4ODXQr3n0Ts3j01AVOkWMWocgNt7TF+l9c
	OAORYV4bVMheC2MH+9ubB0JU4n7Iz0R3nBi21IvTAWgMW0nxZh7X
X-Google-Smtp-Source: AGHT+IHeVjWVii646asJCpvxGnP4VmV3AlDIExZwWwDrivS9N4JaJa0DteWgOnOA+8uSzFbLsrsErQ==
X-Received: by 2002:a17:903:22c5:b0:1f7:e32f:f067 with SMTP id d9443c01a7336-1f862a1694emr96194705ad.50.1718614577443;
        Mon, 17 Jun 2024 01:56:17 -0700 (PDT)
Received: from localhost.localdomain ([122.161.50.215])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f28fd8sm75407295ad.252.2024.06.17.01.56.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 01:56:16 -0700 (PDT)
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
Subject: [PATCH v4] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
Date: Mon, 17 Jun 2024 14:23:42 +0530
Message-ID: <20240617085341.34332-2-shresthprasad7@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_015620_720498_5C1A242C 
X-CRM114-Status: GOOD (  17.84  )
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

Changes in v4:
    - change license to `GPL-2.0-only`
    - change dt-binding file name
    - remove descriptions
    - move `#phy-cells` to the bottom
    - add Heiko to maintainers
    - fix `patternProperties` regex in grf.yaml
    - change `description` to `$ref` in grf.yaml

Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
and `rockchip/rk3399-pinebook-pro.dtb`.
---
 .../phy/rockchip,rk3399-emmc-phy.yaml         | 72 +++++++++++++++++++
 .../bindings/phy/rockchip-emmc-phy.txt        | 43 -----------
 .../devicetree/bindings/soc/rockchip/grf.yaml |  9 ++-
 3 files changed, 78 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml
new file mode 100644
index 000000000000..e61ba2b0abcd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-emmc-phy.yaml
@@ -0,0 +1,72 @@
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
+  - Shresth Prasad <shresthprasad7@gmail.com>
+
+properties:
+  compatible:
+    const: rockchip,rk3399-emmc-phy
+
+  reg:
+    maxItems: 1
+
+  clock-names:
+    const: emmcclk
+
+  clocks:
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
+    grf: syscon@ff770000 {
+      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
+      reg = <0xff770000 0x10000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+
+      emmcphy: phy@f780 {
+        compatible = "rockchip,rk3399-emmc-phy";
+        reg = <0xf780 0x20>;
+        clocks = <&sdhci>;
+        clock-names = "emmcclk";
+        drive-impedance-ohm = <50>;
+        #phy-cells = <0>;
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
index 79798c747476..6e1b1cdea680 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -176,9 +176,12 @@ allOf:
             Documentation/devicetree/bindings/phy/rockchip-pcie-phy.txt
 
       patternProperties:
-        "phy@[0-9a-f]+$":
-          description:
-            Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+        "^phy@[0-9a-f]+$":
+          type: object
+
+          $ref: /schemas/phy/rockchip,rk3399-emmc-phy.yaml#
+
+          unevaluatedProperties: false
 
   - if:
       properties:
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
