Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54AB8C77B71
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 18:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONwxrMJB9Agvcz1Nw6O7Hzzi+dWWWhlnFJXhbyVWMxw=; b=erAYyacEV3OeOM
	bQD4/dLbtXc35orDwawoAGAHTS9/QlkHO/KrmFPivumgGRKWSaKo8/lVWGBLp5aJKOPEOd+4m5EsT
	7uF+jk3JS3qEdfKLslLKC/MGy5X+Yas4aNtl7k69n9CDjF1fkfQufxWT/VmjzFGe4UjQpPMxDjUu+
	xSXin4/WezY3DS7jCN86Y9A22H8bR4DULj3GOiqUjRSW8RPtl8PedbaWqWXGyJjieDrr3kA2o7LYA
	QqBF/DA0GRL1JktWpwOUimrqm3TV74zRrAuC1Nnxcoa09u89INIRUeTP4FruxbaYUITRmTRWHzZmp
	P23pboWQrkxykwRmjC2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1c5-006twJ-39;
	Thu, 13 Apr 2023 18:24:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1bz-006toR-1M;
	Thu, 13 Apr 2023 18:24:02 +0000
Received: from jupiter.universe (dyndsl-091-248-212-251.ewe-ip-backbone.de [91.248.212.251])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 57910660321D;
	Thu, 13 Apr 2023 19:23:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681410231;
	bh=KE/Qh2dz/391cip/CPeIBTyPxaiySIGR7XU//jF9HQ0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BLL+poNly6f3IBlk3AcHxjpOJ8gIQE2cGE4I6Xg1ZFICMpx1DyZUTlpHA+IUtO4hJ
	 kCZbWdMjfXNjAgcx/JbDOatnmGbyWSZXPW5qG54p7HUJHRqE4deVIBld/FouDB2Ki0
	 M0uO0E06O/+8f+ROutsz3y42AeShpdj/HORVnBWjn/5K9k91zRQ/TC//tvP8w11COD
	 HKG7PivvGp93lzC9lqw6xk+mIOIX7gaIG1/yBJQ3XVUWflmgBdxsASaN2clW4zfaq3
	 sxyPYMDcFM80u21UXU2UzLqLucuLRXRoCz2siDHI/1q5EvtMuOCp9dd4xROp6dRgGK
	 68pN6ewd0rHMA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8CA424807EF; Thu, 13 Apr 2023 20:23:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 2/5] dt-bindings: ata: ahci: add RK3588 AHCI controller
Date: Thu, 13 Apr 2023 20:23:42 +0200
Message-Id: <20230413182345.92557-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230413182345.92557-1-sebastian.reichel@collabora.com>
References: <20230413182345.92557-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_112359_631489_4686E7B8 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

Just like RK3568, the RK3588 has a DWC based AHCI controller.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
FWIW IDK what exactly the ASIC clock is. The TRM does not provide any
details unfortunately. It is required for functional SATA, though.
---
 .../devicetree/bindings/ata/snps,dwc-ahci-common.yaml       | 6 ++++--
 Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml    | 6 ++++--
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
index c1457910520b..0df8f49431eb 100644
--- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
+++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci-common.yaml
@@ -31,11 +31,11 @@ properties:
       PM-alive clock, RxOOB detection clock, embedded PHYs reference (Rx/Tx)
       clock, etc.
     minItems: 1
-    maxItems: 4
+    maxItems: 5
 
   clock-names:
     minItems: 1
-    maxItems: 4
+    maxItems: 5
     items:
       oneOf:
         - description: Application APB/AHB/AXI BIU clock
@@ -50,6 +50,8 @@ properties:
           const: rxoob
         - description: SATA Ports reference clock
           const: ref
+        - description: Rockchip ASIC clock
+          const: asic
 
   resets:
     description:
diff --git a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
index 5afa4b57ce20..c6a0d6c8b62c 100644
--- a/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
+++ b/Documentation/devicetree/bindings/ata/snps,dwc-ahci.yaml
@@ -23,9 +23,11 @@ properties:
         const: snps,dwc-ahci
       - description: SPEAr1340 AHCI SATA device
         const: snps,spear-ahci
-      - description: Rockhip RK3568 AHCI controller
+      - description: Rockhip AHCI controller
         items:
-          - const: rockchip,rk3568-dwc-ahci
+          - enum:
+              - rockchip,rk3568-dwc-ahci
+              - rockchip,rk3588-dwc-ahci
           - const: snps,dwc-ahci
 
 patternProperties:
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
