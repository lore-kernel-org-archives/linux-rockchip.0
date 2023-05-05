Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EA70C77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 11:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11weUjtNXR7prrIts5MOAFGpuvauSShPCrvPFpCCPyk=; b=is6C2dvkdhF2D/
	9Nvo1j311a9Vd45WQ24jDp79f+7V0x85dwjIDRnp/1fmP2S7URBF8I5RFIpuY+u6CaQH2MAEBIUvC
	5d1+ipJbu5UGScX1c4GdWsztUxxQMIm+Hs6rJafRL0CcS1l/Aw7Ji/2Z7nao9vhKlh2VZI87FX5Wi
	KW0bLLmZFQV8bWebki5lyMGypHn9WE/S2QuRmdQZUAiyoda66WDT3WQ9G+1vspl6DkM+cmOUb7ApP
	5mhRV3NNiGAyYkUuMK5BtbZecd0LBGnrwm/OTQ+3WuhNYqTgIKZqUO46eEVTapr805p3MtTUQYXvh
	+9GQPeeusCWprkcYLwjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puto6-00AkXJ-0Y;
	Fri, 05 May 2023 11:41:02 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmg-00AjFq-2j
	for linux-rockchip@bombadil.infradead.org;
	Fri, 05 May 2023 11:39:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=rRPG9zbxRNEmMbipwyizNsj67rkGE3tp0VTVDEiV5ow=; b=oPws8AATZ14DJPqkd0UFhJX5Z9
	amgnBr8XksBjxTduJEstAd7Pvg8ygXN/8aNoU/26NARc9ndyfTHTYfAqDTd0h+t7A0wnVxWaaOXCc
	Dbwpg6Bisp43UakKj/5Y7jj45R44e7Wl+2cN6V1IAhuBQiSh/YmzpzUPu/CfpysN2/tMB9GkqVQ9Z
	1RMJQMsxk4cemIhUz6txG+MHXHc1aYRntKjCT+PUM42TKWxJjKxfoZDAkUek4MnS5EYYzA0vPK2FT
	kPkcq+3P0CBU3w2gnLSvKB4FLHpJ9Hs4/TwvcU7MmGyCggHrgCLfd+XKSzC8neCHz5w+EswYNJVFm
	uohN09dg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1putmP-003ETy-0l
	for linux-rockchip@lists.infradead.org;
	Fri, 05 May 2023 11:39:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1putmC-0001Yg-GG; Fri, 05 May 2023 13:39:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putmB-001Hc9-Qj; Fri, 05 May 2023 13:39:03 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1putm8-003Rpz-GB; Fri, 05 May 2023 13:39:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 21/21] dt-bindings: devfreq: event: convert Rockchip DFI binding to yaml
Date: Fri,  5 May 2023 13:38:56 +0200
Message-Id: <20230505113856.463650-22-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_123923_558894_532C8A92 
X-CRM114-Status: GOOD (  16.93  )
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

Convert the Rockchip DFI binding to yaml. While at it add the newly
supported rk3568-dfi to the binding.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../bindings/devfreq/event/rockchip-dfi.txt   | 18 ---------
 .../bindings/devfreq/event/rockchip-dfi.yaml  | 39 +++++++++++++++++++
 2 files changed, 39 insertions(+), 18 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
 create mode 100644 Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml

diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
deleted file mode 100644
index 148191b0fc158..0000000000000
--- a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-
-* Rockchip rk3399 DFI device
-
-Required properties:
-- compatible: Must be "rockchip,rk3399-dfi".
-- reg: physical base address of each DFI and length of memory mapped region
-- rockchip,pmu: phandle to the syscon managing the "pmu general register files"
-- clocks: phandles for clock specified in "clock-names" property
-- clock-names : the name of clock used by the DFI, must be "pclk_ddr_mon";
-
-Example:
-	dfi: dfi@ff630000 {
-		compatible = "rockchip,rk3399-dfi";
-		reg = <0x00 0xff630000 0x00 0x4000>;
-		rockchip,pmu = <&pmugrf>;
-		clocks = <&cru PCLK_DDR_MON>;
-		clock-names = "pclk_ddr_mon";
-	};
diff --git a/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
new file mode 100644
index 0000000000000..c0ef02a2d262b
--- /dev/null
+++ b/Documentation/devicetree/bindings/devfreq/event/rockchip-dfi.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/devfreq/event/rockchip-dfi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Rockchip DFI
+
+maintainers:
+  - Sascha Hauer <s.hauer@pengutronix.de>
+
+properties:
+  compatible:
+    enum:
+      - rk3399-dfi
+      - rk3568-dfi
+      - rk3588-dfi
+
+  clocks:
+    maxItems: 1
+
+  rockchip,pmu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Phandle to the syscon managing the "PMU general register files".
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    dfi: dfi@fe230000 {
+        compatible = "rockchip,rk3568-dfi";
+        reg = <0x00 0xfe230000 0x00 0x400>;
+        rockchip,pmu = <&pmugrf>;
+    };
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
