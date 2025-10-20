Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F07BCCCD184
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 01:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VO9flALKxpe4eyJ+uRr4iPxnT4m2nY99OmexV6DdveQ=; b=ckM+I4Zk0sHOA8
	HqMAsWBfgiPyY5uEDV1UOvvboxf6waqdd7Iil7NbybOxpZAajWpXE5q/gnkpYug1pA+Ml2qTGw6si
	TkzwJTe+zZSTA7g4qf4e8v66luHoeYyMuCiiJX8PLJmaeXWuti7yyZKMdh1oIdJ/HF/bQMU9PHlDT
	GPVn6AOi1DWcnNUdj8XZJxum4MvwOInarJY3KxaA4AgoLUjglTknZx2HVxIt4A/77mU1JtNZu3LkJ
	AYTZRVcTr3sHdFN0U2wL5fp57g2VeJOlbXPCvWjPR0105AOnunxje/KmtuUe3Oap8G0+ha12ONntx
	4gW3tqIj/UFJ6j08dAMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAf2A-0000000Bec7-2eAK;
	Mon, 20 Oct 2025 01:50:02 +0000
Received: from mail-m1973171.qiye.163.com ([220.197.31.71])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAf26-0000000BebV-46GQ
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 01:50:00 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 266f2011d;
	Mon, 20 Oct 2025 09:49:49 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT to 0x4
Date: Mon, 20 Oct 2025 09:49:41 +0800
Message-Id: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a99ff4ef5e709cckunm7dc9b9f843d19c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlJTVZIGBhDH0sZQ0xKT0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UQoChc5zjOocAgpWqLLP9Qgm9zi/FPOfn4sIeBewkzW4Fg3Dtl5lWFiybHBvVzHaYKjGVBq6liC1HbU1k4y8V32uecJepPQ14lsg6PhHyQhNdK5RXyzzMClHqMpDNbf4KV6VvSevOXTejCNBF8OlfU1DA04oCbw/4YqlEFtmssA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=yxXr5m9qvrc7RSco+mIdwPHLMRI0rH10mp0tZFbsHZY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_184959_516177_C5E5F823 
X-CRM114-Status: UNSURE (   9.18  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

strbin signal delay under 0x8 configuration is not stable after massive
test. The recommandation of it should be 0x4.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/mmc/host/sdhci-of-dwcmshc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-of-dwcmshc.c b/drivers/mmc/host/sdhci-of-dwcmshc.c
index eebd453..5b61401 100644
--- a/drivers/mmc/host/sdhci-of-dwcmshc.c
+++ b/drivers/mmc/host/sdhci-of-dwcmshc.c
@@ -94,7 +94,7 @@
 #define DLL_TXCLK_TAPNUM_DEFAULT	0x10
 #define DLL_TXCLK_TAPNUM_90_DEGREES	0xA
 #define DLL_TXCLK_TAPNUM_FROM_SW	BIT(24)
-#define DLL_STRBIN_TAPNUM_DEFAULT	0x8
+#define DLL_STRBIN_TAPNUM_DEFAULT	0x4
 #define DLL_STRBIN_TAPNUM_FROM_SW	BIT(24)
 #define DLL_STRBIN_DELAY_NUM_SEL	BIT(26)
 #define DLL_STRBIN_DELAY_NUM_OFFSET	16
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
