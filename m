Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3DA5C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 02:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/Xeyp69QcKKcLnbzRTLAdfd7f7Y4b4SRcc65y/YtqY=; b=e92T6RieiOLF1E
	fmw4T35eKZIVw3iqeevpYxZDIVhyfsf6lClAK4jYVx4Zy+8ae7mqTtp3ClEkHCEA7u+SUAnlJIHQC
	eMCiLUTd1wyZ91mGX3ADRCKLW5Yr+DAtTXjb1z3FSK1I5KzsZU9mzuKxmbNnrclBRDu5yKpo0f2t4
	vjF/YTzxTLfGDIuNHW7V/v9vYu6TF082Nz8vmG60bwNFDFNa3Zh9+1QU5r5Y7t2bT1CqTECGot/mU
	nEt9TxkhLwJoK7OcoN47CQ72mTgwEmhYvAZ+bfyTWUexcWM0z3XiJa7O9PnkAKImQIS+anazLkxDx
	pvg9UBd2cgC6J4J43GHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqZ3-00000007s1V-13J9;
	Mon, 19 May 2025 02:49:17 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGqYy-00000007rtE-2vXR
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 02:49:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1747622938;
	bh=51zla7Xc4LCMggt7iqJMIT3uS5MO7KWP4SC6W8frZC0=;
	h=From:To:Subject:Date:Message-Id;
	b=QuUD/6ZvI7y0HqB9qnq3Xny5oLf7xqen1ZtdNJ20ItKZRp/NSVjfinvoaOcsZYbJv
	 UCLWzb/FI2MiIKnnPPIe+A0Um4LPodi7uJrZathUsNbWCzd1r7vE+2OYneHfevBob4
	 UtLRcMTM0nk9mSdQMsHugZyT3PZsbGzDoJQFZsS8=
X-QQ-mid: zesmtpgz6t1747622936t0ff7d94a
X-QQ-Originating-IP: 8YgXUJaUaZeSF9bDVSE+OaB+S3xyHum1Mevw1nMQceM=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 10:48:54 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10137376230165119651
From: Chaoyi Chen <kernel@airkyi.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Zhang Yubing <yubing.zhang@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Diederik de Haas <didi.debian@cknow.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: [PATCH 2/2] dt-bindings: phy: Convert phy-rockchip-typec.txt to yaml
Date: Mon, 19 May 2025 10:48:20 +0800
Message-Id: <20250519024820.194-3-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250519024820.194-1-kernel@airkyi.com>
References: <20250519024820.194-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: ND42uzdxTIzrwP8w4Ji/p0VKEwTwOZ2W96XNgXu/pdbsQGSs/XzT66Ww
	MFTM4UcnfdpY0436HN7+4JUgKood9g00wNtDJSRCjuo7RkOSAOCe1APzvTiY4Q225aKutcW
	YuONBx8BmhpoJGd0gqFknzvexwicWtRTVClVkkNdelq1/EJoE145aVbqpjtOiFZkMCpIShK
	h6DTuwULtU3EkHx8m3MFphhiqSvBUKt7V97HVmBJBRQfOpDwKqpd4WCQWM5vJG6GzUMm3aL
	r7e52/yWPD9wqP3AXVp5bTaELVyS2d+aEDpd8zWfyCYxJ83YUv2KTxY5IOZPm5LoaTrr6iF
	1P4xL0drQrebK/Eb6nkq/S1IWMWif2CBGmNTAuMF3DSAN7Rn17bunToMErHawBGHYScdkjI
	Fu1SGHBTJTkgwqOOD3Va5/yi6XMmsVem+tQ2aaXCI3D87DOL7wCfKTLMpglUTGB1lIt8cPy
	Hgvb422Yc00O00Pzax2yAbxvgR4ituLyYegPd+rAj8tyiqva7YoApYQPxCM3znlGYdFW+D9
	M9tkg71M6tB7k/qmsAQ5YSPZozAxVlM+WgURv/36i+pLvY0wmI0tBsKrv6rnOfev1f+RRwo
	i9pmdGvwdbvsC19ykFgEW+BAgobmSYCFHCZCanDAAuOWJ8vT98U9WnKZsDS+lKu21b4SUP0
	vz2szMddLsZU1/KZzdCRraCIREjxttOh1av3r1NQNclyVbHaxFc4kk3KzEeGIG3QJGOsCAS
	NduREMMNSlL9cWVPRGAd+ssC6LnFtgBtoceVwbUgB55SyTRTxYN9mmLcswFsVg2+zyiH8rr
	sfYVNpyhKVk+4dOoJ034PV/ZW9h1d5k5FzjrhLRp2KaF/Z5jD6horVLQeafEil3E9LmKKLC
	S7MdABHMlpftgoIPhNvz5cJ8bSlIrAQSwABjEnCX48N3ylD1aZiAvt7PI2ew9yMLk9ItUdd
	Yg3K+ZTTtw93lFV4UnK3hMVLQOSq8fHRq8vVqTubaQt1eHp2rgNHXAlMc/gIZ0o71bFqTOI
	pyT9bIGA==
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_194913_876587_684C794C 
X-CRM114-Status: GOOD (  16.50  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Convert phy-rockchip-typec.txt to yaml.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 .../bindings/phy/phy-rockchip-typec.txt       |  84 -------------
 .../phy/rockchip,rk3399-typec-phy.yaml        | 111 ++++++++++++++++++
 2 files changed, 111 insertions(+), 84 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt b/Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
deleted file mode 100644
index 960da7fcaa9e..000000000000
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-typec.txt
+++ /dev/null
@@ -1,84 +0,0 @@
-* ROCKCHIP type-c PHY
----------------------
-
-Required properties:
- - compatible : must be "rockchip,rk3399-typec-phy"
- - reg: Address and length of the usb phy control register set
- - rockchip,grf : phandle to the syscon managing the "general
-   register files"
- - clocks : phandle + clock specifier for the phy clocks
- - clock-names : string, clock name, must be "tcpdcore", "tcpdphy-ref";
- - assigned-clocks: main clock, should be <&cru SCLK_UPHY0_TCPDCORE> or
-		    <&cru SCLK_UPHY1_TCPDCORE>;
- - assigned-clock-rates : the phy core clk frequency, shall be: 50000000
- - resets : a list of phandle + reset specifier pairs
- - reset-names : string reset name, must be:
-		 "uphy", "uphy-pipe", "uphy-tcphy"
-
-Optional properties:
- - extcon : extcon specifier for the Power Delivery
-
-Required nodes : a sub-node is required for each port the phy provides.
-		 The sub-node name is used to identify dp or usb3 port,
-		 and shall be the following entries:
-	* "dp-port" : the name of DP port.
-	* "usb3-port" : the name of USB3 port.
-
-Required properties (port (child) node):
-- #phy-cells : must be 0, See ./phy-bindings.txt for details.
-
-Deprecated properties, do not use in new device tree sources, these
-properties are determined by the compatible value:
- - rockchip,typec-conn-dir
- - rockchip,usb3tousb2-en
- - rockchip,external-psm
- - rockchip,pipe-status
-
-Example:
-	tcphy0: phy@ff7c0000 {
-		compatible = "rockchip,rk3399-typec-phy";
-		reg = <0x0 0xff7c0000 0x0 0x40000>;
-		rockchip,grf = <&grf>;
-		extcon = <&fusb0>;
-		clocks = <&cru SCLK_UPHY0_TCPDCORE>,
-			 <&cru SCLK_UPHY0_TCPDPHY_REF>;
-		clock-names = "tcpdcore", "tcpdphy-ref";
-		assigned-clocks = <&cru SCLK_UPHY0_TCPDCORE>;
-		assigned-clock-rates = <50000000>;
-		resets = <&cru SRST_UPHY0>,
-			 <&cru SRST_UPHY0_PIPE_L00>,
-			 <&cru SRST_P_UPHY0_TCPHY>;
-		reset-names = "uphy", "uphy-pipe", "uphy-tcphy";
-
-		tcphy0_dp: dp-port {
-			#phy-cells = <0>;
-		};
-
-		tcphy0_usb3: usb3-port {
-			#phy-cells = <0>;
-		};
-	};
-
-	tcphy1: phy@ff800000 {
-		compatible = "rockchip,rk3399-typec-phy";
-		reg = <0x0 0xff800000 0x0 0x40000>;
-		rockchip,grf = <&grf>;
-		extcon = <&fusb1>;
-		clocks = <&cru SCLK_UPHY1_TCPDCORE>,
-			 <&cru SCLK_UPHY1_TCPDPHY_REF>;
-		clock-names = "tcpdcore", "tcpdphy-ref";
-		assigned-clocks = <&cru SCLK_UPHY1_TCPDCORE>;
-		assigned-clock-rates = <50000000>;
-		resets = <&cru SRST_UPHY1>,
-			 <&cru SRST_UPHY1_PIPE_L00>,
-			 <&cru SRST_P_UPHY1_TCPHY>;
-		reset-names = "uphy", "uphy-pipe", "uphy-tcphy";
-
-		tcphy1_dp: dp-port {
-			#phy-cells = <0>;
-		};
-
-		tcphy1_usb3: usb3-port {
-			#phy-cells = <0>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
new file mode 100644
index 000000000000..4b4e37ec13cd
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip,rk3399-typec-phy.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip,rk3399-typec-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip RK3399 USBDP Combo PHY
+
+maintainers:
+  - Frank Wang <frank.wang@rock-chips.com>
+  - Zhang Yubing <yubing.zhang@rock-chips.com>
+
+properties:
+  compatible:
+    items:
+      - const: rockchip,rk3399-typec-phy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: tcpdcore
+      - const: tcpdphy-ref
+
+  extcon:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      extcon specifier for the Power Delivery
+
+  power-domains:
+    maxItems: 1
+
+  resets:
+    maxItems: 3
+
+  reset-names:
+    items:
+      - const: uphy
+      - const: uphy-pipe
+      - const: uphy-tcphy
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional phy settings are access through GRF regs.
+
+  dp-port:
+    description: A sub-node to identify the dp phy provides.
+    type: object
+    additionalProperties: false
+    properties:
+      port:
+        $ref: /schemas/graph.yaml#/properties/port
+      "#phy-cells":
+        const: 0
+
+  usb3-port:
+    description: A sub-node to identify the usb3 phy provides.
+    type: object
+    additionalProperties: false
+    properties:
+      port:
+        $ref: /schemas/graph.yaml#/properties/port
+      "#phy-cells":
+        const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - reset-names
+  - rockchip,grf
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/rk3399-cru.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/power/rk3399-power.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        phy@ff7c0000 {
+            compatible = "rockchip,rk3399-typec-phy";
+            reg = <0x0 0xff7c0000 0x0 0x40000>;
+            extcon = <&fusb0>;
+            clocks = <&cru SCLK_UPHY0_TCPDCORE>, <&cru SCLK_UPHY0_TCPDPHY_REF>;
+            clock-names = "tcpdcore", "tcpdphy-ref";
+            assigned-clocks = <&cru SCLK_UPHY0_TCPDCORE>;
+            assigned-clock-rates = <50000000>;
+            resets = <&cru SRST_UPHY0>, <&cru SRST_UPHY0_PIPE_L00>, <&cru SRST_P_UPHY0_TCPHY>;
+            reset-names = "uphy", "uphy-pipe", "uphy-tcphy";
+            rockchip,grf = <&grf>;
+
+            tcphy0_dp: dp-port {
+                #phy-cells = <0>;
+            };
+
+            tcphy0_usb3: usb3-port {
+                #phy-cells = <0>;
+            };
+        };
+    };
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
