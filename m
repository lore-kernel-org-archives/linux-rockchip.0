Return-Path: <SRS0=mpbD=JY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7921FC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:51:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 190126100C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Apr 2021 07:51:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 190126100C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CdNeS0YITYHsif1fcIbdxxwWPJGQiO3HDRRGfZEPGgc=; b=kJ69AwfTQswJG+HClARmSywIaY
	rSbhou7uP++4r56IgnuDgI2xbkRCJwoGf100AxzFYEC4mfbrzQT+31AtNjf/C8tgfyCQ2HETgIk5A
	2neXjglOqCPev5ITbBwDAwnZCBwzjw3rBaW1vrUGoj8LD1BAXvgK1N+t5ACmT8A4G2JJb6psYQBv8
	ruTety32M9SurJ5w8aW5mBsIz95RswCsLXzFxeS+gj+B9K6v8Hoal5We5CNGRZYsRdj7hgBX65jqD
	TzHmw3O36lgH/z7G9FTEwQMbaOYHkHnSSK/ivnbZw6KrQR65r+FjsnBGY4UAavWMN2dp7eGstZ5HJ
	v8ATfVcw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbIVZ-0011in-Px; Tue, 27 Apr 2021 07:51:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbIIi-000zF6-BF; Tue, 27 Apr 2021 07:38:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ZaWLBlLp0/3ortZ741E/KJSSxmqZGhvr0wESXHkgrFM=; b=szbcOCTsz7RiOvCrHyIX/uIuoq
 WG0GzFd1ULtV8fd9RcPXGDBRkcTWkXFYCChphtIXTkgzinmRN8MPIdS8Ft2nynDbj9me1SlKN9//H
 5eU1kJCkLrU6nLjTJRxlbZJ39dZhxhOcFYmEhlXzpHCxFwDKjGhbQjJzv50X330xzGc5GVkJBP+rM
 8YJJNmdM7cFvu7PK9SMHP6RlFINd0ITGIjz36jq3G733e/KgD+Ib2Rlqtp3HQcEcojQJweD2pn0GF
 LP8cNFNr84byZhfzWBjtFsEEOJkWIwyIrVZme697A9Z2H0XA20/BrSei1rslMxdRxhBchyeUbf2yx
 abXFvFbw==;
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbIIb-00GVrT-HB; Tue, 27 Apr 2021 07:38:30 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id E8FEEBA258;
 Tue, 27 Apr 2021 15:38:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26232T140422993086208S1619509101181570_; 
 Tue, 27 Apr 2021 15:38:22 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9332ac1d107f7786e88a539998781cd2>
X-RL-SENDER: jon.lin@rock-chips.com
X-SENDER: jon.lin@rock-chips.com
X-LOGIN-NAME: jon.lin@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 8
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jon Lin <jon.lin@rock-chips.com>
To: broonie@kernel.org
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@esmil.dk,
 Jon Lin <jon.lin@rock-chips.com>
Subject: [PATCH v2 6/8] dt-bindings: spi: spi-rockchip: add description for
 rk3568
Date: Tue, 27 Apr 2021 15:38:18 +0800
Message-Id: <20210427073820.31797-1-jon.lin@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210427073733.31419-1-jon.lin@rock-chips.com>
References: <20210427073733.31419-1-jon.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_003825_747115_C3DE796C 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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

Add compatible string for rk3568 to applications for potential
applications.

Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 4ed5b72a8494..2d7957f9ae0a 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -34,6 +34,7 @@ properties:
               - rockchip,rk3328-spi
               - rockchip,rk3368-spi
               - rockchip,rk3399-spi
+              - rockchip,rk3568-spi
           - const: rockchip,rk3066-spi
 
   reg:
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
