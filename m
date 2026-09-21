Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE8D2C982E1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u3g5X2roUDYgcnQFGqvKeXvaIUCcXU4tYDeCvsWi9nU=; b=qZW3ZYcCS1qebu
	Kv4/pCMpOKZTJ2bc5RgBhgvLFPxqQArKZPH+actif6lS1DDmUIWD6h/x6MZFNm8RCBnwjtF7nz9mV
	VDKXS2iiROwZScYrQBo8m1vMsK/jHS4DZCYEObco7lxW9zKRajrRko+dqw4uuGGZm1kGUFcMM8m23
	TeFG529gULaFJCmYAlVYgjExtoDhQTjcVXcM/OgV8RYrMby0syK13XmD7DLXRhlgbbZfYjsd0akzE
	bznOQFQjutJmF9xSIaL5+Opt+KKQFXBvfIaIP3i7KitvngAGBXqAr4sVIrMgeprZ9ve7WQXbURUXK
	+Jvh9LxzG+48Ncd1mO2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XuD-000000017pE-2x6S;
	Mon, 21 Sep 2026 06:53:37 +0000
Received: from mail-m128205.netease.com ([103.209.128.205])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8XuA-000000017mf-1ruE
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:53:36 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e889c037;
	Mon, 21 Sep 2026 14:53:30 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 2/4] pmdomain: rockchip: fix clock leak on domain probe failure
Date: Mon, 21 Sep 2026 14:52:51 +0800
Message-Id: <1789973573-151146-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0c2bdbe9403a4kunmfcbddeea30c369
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZT0hIVklDSR1MTxpMSh4eTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=T7hTaZcQBtqY23/gHX8yFy/OD/oSPWLeJvL8A1QyIFfqLNvwbTcHUoOnJD/GHjqAEpmkNvrIEBEoFTHozNINweyXVQnZGWDT5/rnQJ6Kkqy1+nIDMw1fv1D5DcW+p7fbZ2xT9P1K/rAg1aClOSOu4FSUpYBBnpRchG66frn9uVQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YZBpSxvjQnOmwoOiy0D7uUWIiEP3fUbB+iN1q+GjoLI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_235334_690644_F1068362 
X-CRM114-Status: GOOD (  11.00  )
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

Fixes: d909072d0521 ("soc: rockchip: power-domain: use clk_bulk APIs")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v3:
- drop the devm_kcalloc() to devm_kzalloc() switch; kcalloc() already
  zeroes the array and takes an element count, while devm_kzalloc()
  does not.

Changes in v2:
- add Sebastian's tag

 drivers/pmdomain/rockchip/pm-domains.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 068dd4b3..b6b099b 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
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
