Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0791BC433E6
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 06:22:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3786E64FD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 06:22:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3786E64FD3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8+8UWPrl/IojbZdqrbAz/n4lLiebpUK3gX0V3s8Yeqs=; b=T1KZzxCfVCsnmFiXMqraRfk/5o
	8fHosFswfeR4CdOg1Is+xwacCmBZkfhtFZF+cd25qw+U7sp/YcfpLIgz/k6M/v1BN9n01Rt7T5L66
	Fh2lWg55Ut6GxX9mZCuHttxxPk9fHDWl3qGYNwUnFB6OQ3aWxgUDcCCsLcnZxEd1MqRIbRiM6m5G3
	iMGuR0Y5V7IVh7s5fsVYldF+arvoCYpHp1ihbXldbYjZ/f74/krYNJoCrpjGOGQQtj/zk0x55GpXy
	EonYWUwKCpHNAFIZmSp4GIO4FQunjpVlJ07bYyxxpQRV+2lyDXPuc16AcJr50vBq+FjuPtIOLGOC3
	I5kiidZg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKEiT-008Snq-9D; Thu, 11 Mar 2021 06:22:37 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKEhc-008SRo-GZ
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 06:21:48 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 0D175F2D0A;
 Thu, 11 Mar 2021 14:21:39 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13109T139928614725376S1615443697190972_; 
 Thu, 11 Mar 2021 14:21:39 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <547d4f46cb5b92e042ac684ae553b291>
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
Subject: [PATCH v4 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rockchip
 support
Date: Thu, 11 Mar 2021 14:21:23 +0800
Message-Id: <1615443684-198078-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1615443684-198078-1-git-send-email-shawn.lin@rock-chips.com>
References: <1615443684-198078-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_062145_438200_37CB0834 
X-CRM114-Status: GOOD (  14.12  )
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

Changes in v4:
- rename compatible to rockchip,rk3568-dwcmshc
- constrains rockchip,txclk-tapnum to u8 to match the register map

 .../bindings/mmc/snps,dwcmshc-sdhci.yaml           | 24 ++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index f99fb9f..e6c9a2f 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -16,6 +16,7 @@ allOf:
 properties:
   compatible:
     enum:
+      - rockchip,rk3568-dwcmshc
       - snps,dwcmshc-sdhci
 
   reg:
@@ -31,12 +32,24 @@ properties:
     items:
       - description: core clock
       - description: bus clock for optional
+      - description: axi clock for rockchip specified
+      - description: block clock for rockchip specified
+      - description: timer clock for rockchip specified
+
 
   clock-names:
     minItems: 1
     items:
       - const: core
       - const: bus
+      - const: axi
+      - const: block
+      - const: timer
+
+  rockchip,txclk-tapnum:
+    description: Specify the number of delay for tx sampling.
+    $ref: /schemas/types.yaml#/definitions/uint8
+
 
 required:
   - compatible
@@ -49,6 +62,17 @@ unevaluatedProperties: false
 
 examples:
   - |
+    mmc@fe310000 {
+      compatible = "rockchip,rk3568-dwcmshc";
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
