Return-Path: <SRS0=ealT=HM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 887F0C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 21:42:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 05D7E64EE0
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Feb 2021 21:42:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 05D7E64EE0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4LdvCN46acW4W7Sv+RaTN9TFLS8oah+AAZyRhQZu1FU=; b=QGzWwppHe/xk8h8/v5rkjk2De
	V4m2S7/YxXFWtPOMZDugaGyqJQje6RulFDgoGmwcezigk6dMM7qK6ePmS9Bid0OQKDjnL6OpZxmaF
	tG/BcZaVwu7LuyfFXEvvIdo89jQR7DYMvue7dI5CZEEAJFal9FzXBov3pgwIc56kMgoxpCJCZzxF+
	Eiw7PMtDCDqIX+sn4C61N3R00knJaS+MzqCqPMxXWC2FKp3nPzSBuPFCsHVQPJ/LFi6KLpnLEjoEk
	Iaa1fxinJ9iZT++wxrDMy6IKTjoXjDOAbeT6ueB3vo2NUtm/I1EOpSx6ydITQkl1EghSBJqbgtysq
	v+RIRc8HQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9xFj-000868-QL; Wed, 10 Feb 2021 21:42:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9xFf-00083i-TR
 for linux-rockchip@lists.infradead.org; Wed, 10 Feb 2021 21:42:25 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.sntech)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l9xFZ-0006dd-HH; Wed, 10 Feb 2021 22:42:17 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: kishon@ti.com,
	vkoul@kernel.org
Subject: [PATCH 1/2] dt-bindings: phy: add yaml binding for
 rockchip-inno-csi-dphy
Date: Wed, 10 Feb 2021 22:42:04 +0100
Message-Id: <20210210214205.2496336-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210210214205.2496336-1-heiko@sntech.de>
References: <20210210214205.2496336-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210210_164224_035358_B767B289 
X-CRM114-Status: GOOD (  13.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, heiko@sntech.de, cmuellner@linux.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Some Rockchip SoCs like the rk3368, rk3326, px30 use a CSI dphy
based on an Innosilicon IP. Add a binding for them.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 .../bindings/phy/rockchip-inno-csi-dphy.yaml  | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
new file mode 100644
index 000000000000..b7c5a4027684
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -0,0 +1,79 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/rockchip-inno-csi-dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
+
+maintainers:
+  - Heiko Stuebner <heiko@sntech.de>
+
+description: |
+  The Rockchip SoC has a MIPI CSI D-PHY based on an Innosilicon IP wich
+  connects to the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
+
+properties:
+  compatible:
+    enum:
+      - rockchip,px30-csi-dphy
+      - rockchip,rk1808-csi-dphy
+      - rockchip,rk3326-csi-dphy
+      - rockchip,rk3368-csi-dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    const: pclk
+
+  '#phy-cells':
+    const: 0
+
+  power-domains:
+    description: Video in/out power domain.
+    maxItems: 1
+
+  resets:
+    items:
+      - description: exclusive PHY reset line
+
+  reset-names:
+    items:
+      - const: apb
+
+  rockchip,grf:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Some additional phy settings are access through GRF regs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#phy-cells'
+  - power-domains
+  - resets
+  - reset-names
+  - rockchip,grf
+
+additionalProperties: false
+
+examples:
+  - |
+
+    csi_dphy: phy@ff2f0000 {
+        compatible = "rockchip,px30-csi-dphy";
+        reg = <0xff2f0000 0x4000>;
+        clocks = <&cru 1>;
+        clock-names = "pclk";
+        #phy-cells = <0>;
+        power-domains = <&power 1>;
+        resets = <&cru 1>;
+        reset-names = "apb";
+        rockchip,grf = <&grf>;
+    };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
