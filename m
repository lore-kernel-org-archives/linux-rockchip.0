Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD060C432BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:18:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 859D761360
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 09:18:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 859D761360
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=al3XkFe4O71nKg/0s09gYsa0HLFAiT5KLbIIlzsokqg=; b=Gb0NvXbDr/ADpo
	gCY3pHF5P7/yg89SlHcWBBMVyxMEhC5IuIg1YnKloDyxh5mcbbaZwNu5fd/4HjgKcD4vXy6Vqdaow
	dUzgvQN3n6afFUGrqyVaLRwg33LN4zOFs/jcdhakr0HZ79390AjNgxTR9Egbld/1xJ6iLZS16iCbr
	3d7fP14un/FvCHORzcO4dIII3auyvfKIHvZL21pZaLursBCeHg0qgW5vEyrjiVQ9JfYl2IlVsyTHz
	v65shN8GyDdp60rNImtV47WzWlBXirGApTGSMjV60Cn4HtYqF1Z6mazS0mI9fklcnH5qPbC9Shysn
	VzsRWleVt97sdQgonCGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mISZQ-002HMV-9O; Tue, 24 Aug 2021 09:18:12 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mISZN-002HJv-DO
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 09:18:10 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id BE134B2FD5;
 Tue, 24 Aug 2021 17:18:06 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32763T139760842565376S1629796684553502_; 
 Tue, 24 Aug 2021 17:18:07 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <4adebc356d14529ee5ebf8d26979f1da>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: broonie@kernel.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v2 07/15] ASoC: dt-bindings: rockchip: Document reset property
 for i2s
Date: Tue, 24 Aug 2021 17:17:54 +0800
Message-Id: <1629796682-4170-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_021809_751015_27448509 
X-CRM114-Status: UNSURE (   8.86  )
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

This patch documents reset property for i2s.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 245895b..9f9cc48 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -61,6 +61,14 @@ properties:
   power-domains:
     maxItems: 1
 
+  reset-names:
+    items:
+      - const: reset-m
+      - const: reset-h
+
+  resets:
+    maxItems: 2
+
   rockchip,capture-channels:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 2
-- 
2.7.4




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
