Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 491E4C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 02:11:40 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 423B16500F
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 02:11:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 423B16500F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HVcltIYlvoeAjeABn5+YxGUxfqSS6yf1DU6SBy9TRl8=; b=IX/BWt5UnmhYqyVJLfGEYYxNVL
	Jm7/p7Jfy87JnsZwOnG3IkT5E5mw522s8+JR0I3uOwTzh3wtPm8Oj1ZtwPs2knn8GIuy+PfncWEjx
	TrUU9f088TGTcU6AYT7MvXrMmUaHM4wtt2sPg1E00dqVralkYg2R5Vvwie0pzkCca37Q8lRQOQJAJ
	1AhYmaOnEtff4bXY52S2AJzXbd5MqDxJLgIlX/9TYCCCvSKM09ny1sHLmB0aWw5d+l1tXB/uCtGRU
	AkuGWb+6bqUMIacVcrJUr10AKAPOVc3mrRfyvtpbbZQDXowGcLRYb9dvy0cqtKEB0L/GqxLrqm9Os
	F+IXpApw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHzgD-00BUBX-RP; Fri, 05 Mar 2021 01:55:02 +0000
Received: from lucky1.263xmail.com ([211.157.147.134])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHzg8-00BU5c-W3
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 01:54:59 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 714A2C7879;
 Fri,  5 Mar 2021 09:54:41 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19729T140184970585856S1614909278778031_; 
 Fri, 05 Mar 2021 09:54:41 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a791826a7deeea1e23b63ecb992322a0>
X-RL-SENDER: shawn.lin@rock-chips.com
X-SENDER: lintao@rock-chips.com
X-LOGIN-NAME: shawn.lin@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Rob Herring <robh+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rockchip
 support
Date: Fri,  5 Mar 2021 09:54:21 +0800
Message-Id: <1614909262-205658-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1614909262-205658-1-git-send-email-shawn.lin@rock-chips.com>
References: <1614909262-205658-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_015457_522269_54BF13DA 
X-CRM114-Status: GOOD (  13.11  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch adds rockchip support in sdhci-of-dwcmhsc.yaml

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 .../devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml  | 26 ++++++++++++++++++++--
 1 file changed, 24 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
index 9d717a8..efec5d5 100755
--- a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
@@ -16,6 +16,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - rockchip,dwcmshc-sdhci
       - snps,dwcmshc-sdhci
 
   reg:
@@ -27,16 +28,26 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 2
+    maxItems: 5
     description:
       Handle to "core" for core clock and "bus" for optional bus clock.
+      "axi", "block" and "timer" are for Rockchip specified which aims for
+      DMA, pipe and internal timer respectively.
 
   clock-names:
     minItems: 1
-    maxItems: 2
+    maxItems: 5
     items:
       - const: core
       - const: bus
+      - const: axi
+      - const: block
+      - const: timer
+
+  rockchip,txclk-tapnum:
+    description: Specify the number of delay for tx sampling.
+    $ref: /schemas/types.yaml#/definitions/uint32
+
 
 required:
   - compatible
@@ -49,6 +60,17 @@ unevaluatedProperties: false
 
 examples:
   - |
+    mmc@fe310000 {
+      compatible = "rockchip,dwcmshc-sdhci";
+      reg = <0xfe310000 0x10000>;
+      interrupts = <0 25 0x4>;
+      clocks = <&cru 17>, <&cru 18>, <&cru 19>, <&cru 20>, <&cru 21>;
+      clock-names = "core", "bus", "axi", "block", "timer";
+      bus-width = <8>;
+      #address-cells = <1>;
+      #size-cells = <0>;
+    };
+  - |
     mmc@aa0000 {
       compatible = "snps,dwcmshc-sdhci";
       reg = <0xaa000 0x1000>;
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
