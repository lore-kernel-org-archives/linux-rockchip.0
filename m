Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B51E0C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 08:07:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92E8264FEA
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 08:07:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 92E8264FEA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UCXNtKb/tg8R6HUe0whS/z55GsM52mkvYietK4S9XZI=; b=jBLcUOtPng+Z8yjgFmciefz2tN
	vH4Xj5xp641DdyGiHeuQyOMFpqExpsyFPIoFV0412rYTT5U5P/eLYp/kWvfknxtqVNNH6hnNokJ1h
	ayUpRHJkC4+kKKFbpnNrUTDUiZqXjOMpHdNOCrMyuQoAVPfkKn84gzyXRt3x+VyCWuoC2BFdXL730
	3N6SASzvId4m8HiM/zxUp2QyxYVf2ikG5seRuK77bpv2pEaI8fNKBJf11DxT66x7phKNE3CjwXleE
	UK8Qkz3jaw5uJD6VHc7FsRInCFDn1qXSDV0a/vgI6emsO5YyEDfSvyo76y9jiJH+wPv+GK5LDUaDh
	Auxm+L1A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lI5UT-00Du3A-JJ; Fri, 05 Mar 2021 08:07:17 +0000
Received: from lucky1.263xmail.com ([211.157.147.135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lI5UP-00Du11-Ds
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 08:07:15 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id A17E9A8047;
 Fri,  5 Mar 2021 16:07:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19729T140185094313728S1614931620063598_; 
 Fri, 05 Mar 2021 16:07:01 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dee109ebc5adcaa58bd83e5eced281a7>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: tglx@linutronix.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: tglx@linutronix.de
Cc: linux-kernel@vger.kernel.org, linus.walleij@linaro.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH] kernel/irq: export irq_gc_set_wake
Date: Fri,  5 Mar 2021 16:06:58 +0800
Message-Id: <20210305080658.2422114-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_080713_743102_602631C8 
X-CRM114-Status: UNSURE (   7.78  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Module driver may use irq_gc_set_wake.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 kernel/irq/generic-chip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/irq/generic-chip.c b/kernel/irq/generic-chip.c
index a23ac2bbf433..f8f23af6ab0d 100644
--- a/kernel/irq/generic-chip.c
+++ b/kernel/irq/generic-chip.c
@@ -200,6 +200,7 @@ int irq_gc_set_wake(struct irq_data *d, unsigned int on)
 	irq_gc_unlock(gc);
 	return 0;
 }
+EXPORT_SYMBOL_GPL(irq_gc_set_wake);
 
 static u32 irq_readl_be(void __iomem *addr)
 {
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
