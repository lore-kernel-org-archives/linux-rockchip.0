Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C92C1C27C55
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 18:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fPI2rIHpawaYaCboA7763qiQqsrd4SMb1mv8w2PC/Co=; b=B7h8E8Gg4CfKOc
	JNK6CUvwKq8Gwt4biitXzpxEzCJ9z0Y9O0L272TREkCa21ke2SUQSsX8YAnTH7vbCdenSy1XsfUon
	ElkqZD5zflll253HmAAf00N1yqZ7ambaTMiiXRfV69lZ6R5zDddswOcplYVZZZijm5epH6JQt+H30
	/CLWtQz1/24cgNyKvqZZQQEuCbqbrTqDsA3N3vMggAudmbcJNmZIq+6ba8I6CnxAeURFjvuUy9iZo
	dPcOOYe4qto/ycydotpyt21Qoj4GK7WgXvzRfeWdP921A304iE/pl42oWOrXj4gEp9njJRZy/9glP
	KTgZ7CUtkaW7VUKjH+qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFI4F-0000000AzBc-38b6;
	Thu, 06 Jun 2024 18:42:31 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFI4B-0000000AzAD-24YA;
	Thu, 06 Jun 2024 18:42:29 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-1f480624d0fso12066955ad.1;
        Thu, 06 Jun 2024 11:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717699344; x=1718304144; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4iZQmT4vxNQolNnYp5zIseeWy4wyJJ76G+a9PWEi2OQ=;
        b=QZ7E8hLABLOGs5SJcFKg8zE4Wg0dj2NmIYiBGsxfq3u75sNAN5GL6qe9EnfwaL0onq
         dmc8MwkE3M1PIYAfJf1arRVWijvyiAwfvAz4vn1Aeg4ss7qDXESovG8162pLhdPTV0By
         PcDAu5QvyIYbq2133ddlxvPKc/+YIxMuTJ0C2VRjY0TiB1ZYtiL49qodn72/yBpGxZUb
         ytYBORKG3MICbKtE263F67LqpAk4L/+d3QjzpP3EYSuhXdVU89/qEUYfcykiF06LTOat
         /GQzKc3zHZddFiuN69pCFSasPbbLOzxs2Y5mgCPffhUWD39bfUR4ZkXGqyt2zbhsVwWp
         Urzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717699344; x=1718304144;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4iZQmT4vxNQolNnYp5zIseeWy4wyJJ76G+a9PWEi2OQ=;
        b=a+wwopP2huHLAJUm0WAz5G2BRGI+9cx92dKb48bjb6+RLwIJO/FXpWKUb4Y4k5k2yx
         YAdC9LPvPoAcINWnIWvN6wuBYj2FQj9Pxxh5DRZe8P31sO8+iqjzF/aotLnfOTcOQ6B0
         tFe+onApEdmUtrTCz+dwWQQiwcz5qmzRh9Mlx4YXXG548d7TACnojyt6j59RgHkKUF6i
         2gzWHzv/MfX6i9olvpoJ8jWsJie3AUP8AzkH3DMgYdcoNQziGctiwMCWICq9GDu0Bhr1
         MnqfOWz2q4OFaHwOd5cGg1fqXon4ncxOm0zAzCJmqzsCnsIbbdCzkhuz/hhVi9yeWKOI
         Dijw==
X-Forwarded-Encrypted: i=1; AJvYcCVqvH3dyGI9u3zW6yZ83blKeANlNvhXORl2sszad/AWEyaE/ZzKt6Y3nfhQH2yDkX3PDMOCnxRPYqNgWnCYOsSCcjwBtfB/2ZUokqEY2GRx4xJtWlX8XIAQmyUdd+LWklA35/OIjYJzSJ+nUiyrgCpq6ibr4Vf4UMo=
X-Gm-Message-State: AOJu0YylgDH2IC+fi+lG6SQeCOQmnd9IA/5dNamaEUYoGr5gNlmoliVA
	5MWYjXBIsn+ZI3LMJJRyECpwc+myprMHRKsddzy3BA3pExypM1L9
X-Google-Smtp-Source: AGHT+IFkQ8Z6wzTxzhMDbB5Ba2CM0TWh/R5abXx0fHzeL39jtPW0SNgr7hl/LnynWuc0TSMqC4UxAg==
X-Received: by 2002:a17:902:e849:b0:1f6:6c3f:1664 with SMTP id d9443c01a7336-1f6d0301bb0mr4632405ad.38.1717699344437;
        Thu, 06 Jun 2024 11:42:24 -0700 (PDT)
Received: from shresth-aspirea71576g.abesec.ac.in ([117.55.241.163])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6bd81bca0sm18446625ad.305.2024.06.06.11.42.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 11:42:24 -0700 (PDT)
From: Shresth Prasad <shresthprasad7@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org,
	javier.carrasco.cruz@gmail.com,
	Shresth Prasad <shresthprasad7@gmail.com>
Subject: [PATCH] dt-bindings: phy: rockchip-emmc-phy: Convert to dtschema
Date: Fri,  7 Jun 2024 00:11:36 +0530
Message-ID: <20240606184135.11065-2-shresthprasad7@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_114227_562044_00961E61 
X-CRM114-Status: GOOD (  14.63  )
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
Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
and `rockchip/rk3399-pinebook-pro.dtb`.

 .../bindings/phy/rockchip,emmc-phy.yaml       | 78 +++++++++++++++++++
 .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
 2 files changed, 78 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
 delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
new file mode 100644
index 000000000000..bd8485c77bfe
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
@@ -0,0 +1,78 @@
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
+    grf {
+      compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
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
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
