Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88F1AC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 20:58:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7774764E87
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 20:58:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7774764E87
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YZBzkBTDPUcyFHsMY9WyjsL+nQlO+RBeZaAEP/yffAE=; b=cC29fPNz0UKFHn33HScM+RFEj9
	yMvNwokQkH/QberovVEXu4tL9gD7JIiNwlwl8tqgFUmQHtDMjZH+8VeTJTd/cNGx1G/+ksXsGLtMh
	g9F3VUYD+sRjDSTfxvaVG4HYyNnkya3pEZZKYC67shfj1NhBpbmB4gYdJxi6yqvqg2fUnF0PJ1XHu
	fpcB3zHWjZoKkFikKkGEPx/qkVsIQVCgShjoq+yPBYIgBJ2pUisKMp3tFjZ5W1+CvNgRaSrgcxB+h
	fTBLFbp5kXK5v5uzS7VyJKqta6mWq2XqKJWLw5E9sxR4tRtK8U823MklaH1V5mi5TCRCBtNO/yl31
	BeFotaqw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHYZB-006ViB-Sz; Wed, 03 Mar 2021 20:57:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHT7V-005JR0-MU
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 15:09:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=VJhkGKAX9qudk4Ggp5etOWoPJMaJEUmWZLILG3GBD88=; b=ZavHljqsiCYB2+Y3tuo28eZTH9
 SmI4P8feWWzrL1bzaf9IN/FWDxz1RRCnTiwBq+u53oK1GFBIt50kL6j+HunSMpS3CRuOHNDw2VI6D
 X5lWkfYV3kQ1M6bLAVxYR6Rr03B+ZTeFI82sRhe+OVQWLKyJRDtmkw/+NiLditDm4Cq8BSIEXN9fO
 5c3mhJhA23MGGVdZpcWFK27cVgwmqe6Dc3nDaK9pTm0gh0C0gHqZco3xmTIUAKq9NM5XDsfZwccfj
 P9XcNOKH3QcFfLiLjyaqj4VhErZbgP5yJuMZf82p5M2U3jN4RDgO9R4EFGqU3qtoSBVebxONujWKl
 0EIcd3wA==;
Received: from lucky1.263xmail.com ([211.157.147.135])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHMFz-001j8A-LJ
 for linux-rockchip@lists.infradead.org; Wed, 03 Mar 2021 07:49:21 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 99419A7884;
 Wed,  3 Mar 2021 15:48:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19729T140185384916736S1614757734881043_; 
 Wed, 03 Mar 2021 15:48:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <8c5b24f560b714c292c798000abcaba7>
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
Subject: [PATCH 2/3] dt-bindings: mmc: sdhci-of-dwcmhsc: Add rockchip support
Date: Wed,  3 Mar 2021 15:48:42 +0800
Message-Id: <1614757723-225262-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1614757723-225262-1-git-send-email-shawn.lin@rock-chips.com>
References: <1614757723-225262-1-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_074921_866877_4038AD55 
X-CRM114-Status: GOOD (  12.29  )
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

 .../devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml  | 24 ++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
index ff2bff1..4808094 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-of-dwcmshc.yaml
@@ -22,6 +22,7 @@ select:
 properties:
   compatible:
     enum:
+      - rockchip,dwcmshc-sdhci
       - snps,dwcmshc-sdhci
 
   reg:
@@ -33,16 +34,26 @@ properties:
 
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
       - const: bus
       - const: core
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
@@ -55,6 +66,15 @@ unevaluatedProperties: false
 
 examples:
   - |
+    sdhci@fe310000 {
+      compatible = "rockchip,dwcmshc-sdhci";
+      reg = <0xfe310000 0x10000>;
+      interrupts = <0 25 0x4>;
+      bus-width = <8>;
+      clocks = <&cru 17>, <&cru 18>, <&cru 19>, <&cru 20>;
+      clock-names = "core", "axi", "block", "timer";
+    };
+  - |
     sdhci@aa0000 {
       compatible = "snps,dwcmshc-sdhci";
       reg = <0xaa000 0x1000>;
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
