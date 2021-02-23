Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5993CC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:19:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A71E664E4B
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 10:19:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A71E664E4B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8U4Sp+bbOyWLVMHXsJ1nErGtCrOTYTq8+z1+o+ZImmU=; b=y0aD+laXJYhmtnCJuzWC5Tlbzu
	GCsKNj/MiKS3g2GwyYwhtnkz6M6eISQQh8NpUE1fNqVN2VsRXni69rQ1RRiWw9b21G8l5f10gUDRr
	CeKaSkOwT+bcJjaDNxJnx2oC4nG6NlZib5w41N5fhT6uE5fygUqEviYQcCp7u+xMBCG/IdaxUVarm
	JEdoetU07hwwQvA+Pv0FKM4AnIMEOne8Xpti+MBHmEHDjJXRBSdFa8gKb4KeG3VudqZ+IF/Yu0i7p
	deCp+fVtEC7sS8V01p4BGn+ggbUpYvfwAg2qdZszTTW8NlByO5gqfTaEJYkN9TUZv8fGLqnyGzXDy
	1sxqB6ew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEUnJ-00005N-M2; Tue, 23 Feb 2021 10:19:53 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEUnF-0008WQ-Lt
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 10:19:50 +0000
Received: from localhost (unknown [192.168.167.70])
 by lucky1.263xmail.com (Postfix) with ESMTP id 13FFFB88A8;
 Tue, 23 Feb 2021 18:19:40 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P31655T140707257894656S1614075578214864_; 
 Tue, 23 Feb 2021 18:19:39 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <18b2e2b5e8dfee53ac67983dde7c59ee>
X-RL-SENDER: jay.xu@rock-chips.com
X-SENDER: xjq@rock-chips.com
X-LOGIN-NAME: jay.xu@rock-chips.com
X-FST-TO: linus.walleij@linaro.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Subject: [PATCH] pinctrl: rockchip: clear int status when driver probed
Date: Tue, 23 Feb 2021 18:19:37 +0800
Message-Id: <20210223101937.273085-1-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_051950_011305_FD72DA42 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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
Cc: linux-gpio@vger.kernel.org, Ziyuan Xu <xzy.xu@rock-chips.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some devices may do gpio interrupt trigger and make an int status before
pinctrl driver probed, then the gpio handler will keep complain untill
the device driver works to stop trigger.

Signed-off-by: Ziyuan Xu <xzy.xu@rock-chips.com>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index aa1a1c850d05..ec4cb88572cf 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -3433,6 +3433,7 @@ static int rockchip_interrupts_register(struct platform_device *pdev,
 		 * things enabled, so for us that's all masked and all enabled.
 		 */
 		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTMASK);
+		writel_relaxed(0xffffffff, bank->reg_base + GPIO_PORTS_EOI);
 		writel_relaxed(0xffffffff, bank->reg_base + GPIO_INTEN);
 		gc->mask_cache = 0xffffffff;
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
