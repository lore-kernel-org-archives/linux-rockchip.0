Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6326AC982D7
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 00:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b84kuwh3U3/umivv/4y4enFN6b612qcYINnK/2FAnbM=; b=MIRC97uGr9fBi7
	cicVksnsQVdgaEBylsynaDpObDb1OAE/s24Wrp0rGV0WPaOrwowyXQEa3XzaNspvdeUIsTs6oBW9N
	l2guYZAXiOL363fdCo84jU1Vl4gswqJdp99U4GwZ4dNzGzvUwWXAlpXQi2WVulEnRaGrUpXM8G4Wt
	LLdLQBAMiiA/duYT9uFpZI88v8n8opP7p9rkKq6a//KA2ecAiek8fhTV1HlMaBypIjFWx9ValFJI6
	KTsfyHlReKKysfEQ+ZLUt/C+XbLevhItIIA/yGls2avAG7WMHe3GHLMdoDKVm1oL5ptZgiNqzguvm
	xtFSyKYKpQfa68tPZ7mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3N-0000000FmCO-2j40;
	Sat, 19 Sep 2026 00:35:41 +0000
Received: from mail-m81177.netease.com ([47.88.81.177])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7j3K-0000000FmA4-2isq
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 00:35:40 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e57cbc33;
	Sat, 19 Sep 2026 08:35:33 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/4] pmdomain: rockchip: fix clock leak on domain probe failure
Date: Sat, 19 Sep 2026 08:35:09 +0800
Message-Id: <1789778111-173149-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789778111-173149-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0b717036c03a4kunm44a9997f1a8f48
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUtJSlYeHx0fHx8aHx
	5JQh1WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=kH54/VFk6EvU9fU8EhdG14A8ceKlzrcF56qKf43MS6txJKjcSTTGtOT7sQG0lXg/YNI0RbVkDhLfFOOr0QlD6dNCMDxACvUGgHsAzOygZj7x2RxJeaRe4jIfpMKu1zQLZSR0y1Jmi91SMF9dPtB3mCOVdB2zH3e8gvVcZTIlPhA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=WLDykJQrp5KlPCvARAF3I/UtgiimZR4PVoih3I+nZLU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_173539_216394_C3FFE182 
X-CRM114-Status: GOOD (  12.29  )
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

When of_clk_get() failed in the middle of the loop, the references of
the clocks acquired so far were leaked instead of being released by
the error path.

Also switch the clks array allocation from devm_kcalloc() to
devm_kzalloc() so that clk_bulk_put() cannot run over uninitialized
entries.

Fixes: d909072d0521 ("soc: rockchip: power-domain: use clk_bulk APIs")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v2:
- switch to use devm_kzalloc()
- add Sebastian's tag

 drivers/pmdomain/rockchip/pm-domains.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 068dd4b3..43fdb7f 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -825,7 +825,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 
 	pd->num_clks = of_clk_get_parent_count(node);
 	if (pd->num_clks > 0) {
-		pd->clks = devm_kcalloc(pmu->dev, pd->num_clks,
+		pd->clks = devm_kzalloc(pmu->dev, pd->num_clks,
 					sizeof(*pd->clks), GFP_KERNEL);
 		if (!pd->clks)
 			return -ENOMEM;
@@ -842,7 +842,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 			dev_err(pmu->dev,
 				"%pOFn: failed to get clk at index %d: %d\n",
 				node, i, error);
-			return error;
+			goto err_put_clocks;
 		}
 	}
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
