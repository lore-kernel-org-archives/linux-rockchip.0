Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0312EC77B7C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mH52IfVRcpCZGr/bVokvYeO6JF7nkLQ8q9fKSIZq+UA=; b=RCfBPSmQ6r1jC3
	U82jqQqbdy+QP2LQzfNq47o6MXnhrNucEXsp8X5bPc+AH0Sk0wRWgRCNVJAkKtCDhh9xh/2Hlulre
	1t/9Vx3Q9DISp5Wr4TGXBlmcwcDrKHSDjGTw4k4J8qBgtUUoOtQAXoHU1wK6LUo3VUq4Go5la5FCa
	LWML16j7v/oSk1K+x3JfEvyWVltDSOswiIfxoDY42RnJCkf689VdPLuKGxqSGKj865E91sN1DxBS6
	bMng5V28uCmPvmt6SY+rVNBCmxmC83/QeHrngXhFk/vhN/11b5UTZIxwDBF1TFvXIONzs0YgB7Hcg
	JWB3VooqRCp3Qiyid4XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pugiZ-0095Lv-0e;
	Thu, 04 May 2023 21:42:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pugiW-0095Kd-31;
	Thu, 04 May 2023 21:42:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=jOSikDBicr334yX7WdftP/MqUKN6oyw5iHw0bLsFGjE=; b=pmIQ/5FZHq5nRycX7L7VrU1Iak
	e7INQ3bJD61iFggvR8JlP5XP+evR1O4dY/1pxg+MKCH/m2W/m8rK5Jt6tfeCSoFu4Y+S4zdOaGN+z
	lzfljnmkxdt9fsMq4fceLUfToyXvnR7DqjAebLYEOJE9LT5nS2cxBQML1nYIhT1PUG1eK860JZyNN
	BB16GTLQoZmws3RMFpgP3iawCrUAbDQ+aA1yEE1eT2UDUsBaQKbraPunPGuZcv/RaVgDCOAok/M8U
	nH2uGYLgxVNZrsFjJ1hkaip//NQ73j9d3g0zL0ap8J7Tkd2p+YH/T452BJVj2UsEyFyVJnySyPKko
	rU/5ZsfA==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufEE-001pjM-1S;
	Thu, 04 May 2023 20:07:05 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1ACB166056FE;
	Thu,  4 May 2023 21:06:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230819;
	bh=FAY1EPbzVsY+T4aD7Y+s8uKBaKAiDAFUSJuuliQH5Ko=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K0g/PopkGy/ytdJlNuQK+/YBNqdYPmR0qFKbxcczNPnJu7F4Vz3YUtRGMnoPOd4/Q
	 SVkO3mP1g04isjX3tDLN6ehlb/E2SzBQbQzMERbqfQvvGgDgYCCbyi17a5PmMOADGN
	 PNpx4mMQqRidja+tIKODSw4CWllXJxxLF9aKOnJLzZF2kPAIzUyhGGTUnzyd0vfyvf
	 2dmgYqlDsef5SutVFB7yStze4ghkDiOPhrH8ZBznAsvRrqhZ7saT6gCI+Tv2TPUFt7
	 V56dfFuB9q+Kg5afDmszFAtxsgLZCcuPT6qk7mSm1kPrW6X1mD9x8SviEkvDQbUP3B
	 eRH83iAyVHEgg==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 1/8] dt-bindings: nvmem: Convert rockchip-otp.txt to dt-schema
Date: Thu,  4 May 2023 23:06:41 +0300
Message-Id: <20230504200648.1119866-2-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
References: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_210703_038762_2F73DCE7 
X-CRM114-Status: GOOD (  15.73  )
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
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 .../bindings/nvmem/rockchip,otp.yaml          | 82 +++++++++++++++++++
 .../bindings/nvmem/rockchip-otp.txt           | 25 ------
 2 files changed, 82 insertions(+), 25 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
 delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt

diff --git a/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
new file mode 100644
index 000000000000..4cd425ae2823
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
@@ -0,0 +1,82 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/rockchip,otp.yaml#
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
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
