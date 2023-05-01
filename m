Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 813BBC7EE21
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 May 2023 08:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kPvk0XDfWNlTSHYjDEh2mIe+hfI3OIj0ge6XyO7ctgo=; b=BmYtXycZbmUuSK
	YMNcvnuVNS8X0IRNEfNHRg+l8dNwjgIS4CVVLReA3laX53nweXPEsaHXE/B+xFN67prCbdD9En3aB
	jKNvqSWqJhiER64xsoeKVse02t4XRTU2C3scKLKzylQNyn36EkRPVaY56PlMprfBnUWmWCmkUGlB7
	B1Z0s3Iuv2pZZTNjj5YnEfEhpi6Az+HkgSbcAsbMimxeaDyjcGogXwGUWQbcxJmdrZSKhhxrR4E2o
	dTdVXHczGW3erqxmjIuj9qUuLX/ruh2KJItvfwwUS59rT4PSOOEu7OtqnlFl7jUw+XJ4CTXbZLOrl
	xjHiSe9Cfy8JuXgJkbCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8n-00FT2U-2V;
	Mon, 01 May 2023 08:44:13 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptP8j-00FT0k-0B;
	Mon, 01 May 2023 08:44:10 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BA6B1660316A;
	Mon,  1 May 2023 09:44:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682930647;
	bh=kd7zQbdIfdiTDSN/o2vEbLYpgYwM2fkzUD6The1XAxo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bW20S5pr2VrH21jPW2bW1Qq5Q0y22PBXadsQF8Sck9ckohiicu7jgY3TzwR12RNqa
	 hBm8yqUOBz6mqfbRmmVRKkJA1nsZQlpLPGmPsOxe4oFm1yu7IiU9uf5DgyiCnSkMRP
	 Hptrs25IORrQB0mO5LKbVkZnRDUJ6QcCjw+ozvKQhXssT6W0EW5DI17AVbcAf8YEho
	 u5uZ/qYegKtdT6fl1FdVDeeLBJPTmjUsWkK/jdbLfape3Ud4JWR8U8V05WB/CAbhtc
	 uQ1s+3+t82PUZ0rSTULlcuuG5hfGY9D97hj3fRzYMX9GtKJ+ro9CRJZULcBgMe717t
	 dYU9AwhdnDbqA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 1/8] dt-bindings: nvmem: Convert rockchip-otp.txt to dt-schema
Date: Mon,  1 May 2023 11:43:53 +0300
Message-Id: <20230501084401.765169-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
References: <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_014409_353839_E6C10116 
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

Convert the Rockchip OTP memory bindings to dt-schema.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../bindings/nvmem/rockchip-otp.txt           | 25 ------
 .../bindings/nvmem/rockchip-otp.yaml          | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt b/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
deleted file mode 100644
index 40f649f7c2e5..000000000000
--- a/Documentation/devicetree/bindings/nvmem/rockchip-otp.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-Rockchip internal OTP (One Time Programmable) memory device tree bindings
-
-Required properties:
-- compatible: Should be one of the following.
-  - "rockchip,px30-otp" - for PX30 SoCs.
-  - "rockchip,rk3308-otp" - for RK3308 SoCs.
-- reg: Should contain the registers location and size
-- clocks: Must contain an entry for each entry in clock-names.
-- clock-names: Should be "otp", "apb_pclk" and "phy".
-- resets: Must contain an entry for each entry in reset-names.
-  See ../../reset/reset.txt for details.
-- reset-names: Should be "phy".
-
-See nvmem.txt for more information.
-
-Example:
-	otp: otp@ff290000 {
-		compatible = "rockchip,px30-otp";
-		reg = <0x0 0xff290000 0x0 0x4000>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
-			 <&cru PCLK_OTP_PHY>;
-		clock-names = "otp", "apb_pclk", "phy";
-	};
diff --git a/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
new file mode 100644
index 000000000000..658ceed14ee2
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/rockchip-otp.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/rockchip-otp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip internal OTP (One Time Programmable) memory
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-otp
+      - rockchip,rk3308-otp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 3
+    maxItems: 3
+
+  clock-names:
+    items:
+      - const: otp
+      - const: apb_pclk
+      - const: phy
+
+  resets:
+    maxItems: 1
+
+  reset-names:
+    items:
+      - const: phy
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/px30-cru.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        otp: efuse@ff290000 {
+            compatible = "rockchip,px30-otp";
+            reg = <0x0 0xff290000 0x0 0x4000>;
+            clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+                     <&cru PCLK_OTP_PHY>;
+            clock-names = "otp", "apb_pclk", "phy";
+            resets = <&cru SRST_OTP_PHY>;
+            reset-names = "phy";
+            #address-cells = <1>;
+            #size-cells = <1>;
+
+            cpu_id: id@7 {
+                reg = <0x07 0x10>;
+            };
+
+            cpu_leakage: cpu-leakage@17 {
+                reg = <0x17 0x1>;
+            };
+
+            performance: performance@1e {
+                reg = <0x1e 0x1>;
+                bits = <4 3>;
+            };
+        };
+    };
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
