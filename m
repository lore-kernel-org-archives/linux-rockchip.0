Return-Path: <SRS0=66FD=N2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6060AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Sep 2021 15:29:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 289DD60F92
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Sep 2021 15:29:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 289DD60F92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=mediatek.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WrWkZU0x2GWFt8Vvs41jtgvon6mO3+SyEzRJcI6NeOA=; b=qsf80S/mxymDUy
	K/02ZZl1ZqAfS3pBChiiFoVh8ZEmXis0NsJg6yS3Q4wuwlbzTtkdv4kCZsGFTZdUY02aruxT4KSaL
	yPyQSyceomROCFaOxwH6G4Y5vAiQ798btziyuLpbNOV+uQz+SDJnabUpnE3ZxGJU8TcV+N8I/k2zq
	oY5aFid3KQycl6Ma5GiOKm/rKDJ+JD1WoDYDn56Ehg8G3VOXSke9ZOAFruhbClS9pNWdC94DeZEMN
	oEu1qQ22lA6qn/r8QOcze4+2H8Wk5RBJMjMvrtJzqre3rBe7ArOeeW6khP0/b5iL0zJwjOirfyUg0
	qhFuQP1bvTxIVeqNOi6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mMXbS-00ENuY-TY; Sat, 04 Sep 2021 15:29:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mMXbQ-00ENu3-Mb; Sat, 04 Sep 2021 15:29:10 +0000
X-UUID: a1d237470e8f439cbeac9a80b51daf03-20210904
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=bNWm7ZmLuWjpk7oD5qNQDtSccnLltiMpENyEtqNx374=; 
 b=JbOEepw20LK0mx9HkmkmGrPgsrF/iTcuxZ8dMhhgmcsgKDIbGrTrHJNgV/Pnletk7YRWCug8Phhh7qLRQzfPBHPa7WrBDhwwdIROq3h3aehCjlwNnF/UsxvCV0PRXUcHfhLVNk2QVodYPmGzSq9Q6c9V0bp36dQ9TTvEzrjq8MA=;
X-UUID: a1d237470e8f439cbeac9a80b51daf03-20210904
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLSv1.2 ECDHE-RSA-AES256-SHA384 256/256)
 with ESMTP id 762096574; Sat, 04 Sep 2021 08:29:00 -0700
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 4 Sep 2021 08:28:59 -0700
Received: from mtkcas11.mediatek.inc (172.21.101.40) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 4 Sep 2021 23:28:57 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas11.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 4 Sep 2021 23:28:57 +0800
From: Miles Chen <miles.chen@mediatek.com>
To: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-mediatek@lists.infradead.org>, <wsd_upstream@mediatek.com>, Miles Chen
 <miles.chen@mediatek.com>
Subject: [PATCH v2] clk: rockchip: use module_platform_driver_probe
Date: Sat, 4 Sep 2021 23:28:56 +0800
Message-ID: <20210904152856.31946-1-miles.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210904_082908_788309_48C0FC3F 
X-CRM114-Status: GOOD (  11.46  )
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

Replace builtin_platform_driver_probe with module_platform_driver_probe
because that rk3399 and rk3568 can be built as kernel modules.

Fixes: 70d839e2761d ("clk: rockchip: rk3399: Support module build")
Fixes: cf911d89c4c5 ("clk: rockchip: add clock controller for rk3568")
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Stephen Boyd <sboyd@kernel.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Miles Chen <miles.chen@mediatek.com>

---

Change since v1:
Add Fixes tags

---
 drivers/clk/rockchip/clk-rk3399.c | 2 +-
 drivers/clk/rockchip/clk-rk3568.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3399.c b/drivers/clk/rockchip/clk-rk3399.c
index 62a4f2543960..a5169156f1d2 100644
--- a/drivers/clk/rockchip/clk-rk3399.c
+++ b/drivers/clk/rockchip/clk-rk3399.c
@@ -1653,7 +1653,7 @@ static struct platform_driver clk_rk3399_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
+module_platform_driver_probe(clk_rk3399_driver, clk_rk3399_probe);
 
 MODULE_DESCRIPTION("Rockchip RK3399 Clock Driver");
 MODULE_LICENSE("GPL");
diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 75ca855e720d..939e7079c334 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -1719,7 +1719,7 @@ static struct platform_driver clk_rk3568_driver = {
 		.suppress_bind_attrs = true,
 	},
 };
-builtin_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
+module_platform_driver_probe(clk_rk3568_driver, clk_rk3568_probe);
 
 MODULE_DESCRIPTION("Rockchip RK3568 Clock Driver");
 MODULE_LICENSE("GPL");
-- 
2.18.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
