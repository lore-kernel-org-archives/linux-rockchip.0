Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA17FEED607
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 13:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WdghkE0Q+f3P9vpsNTNEXULSgugyCyfVQXv/tuhsB/I=; b=Yzm0M7yFW9Bfdm
	ouZSUyLdSv6b1IIW2sYgk4X9R+lJ7+0yL1M17vzHwk26oy48POfGVwDwr9Z85NzD94XQ/lZQY2Gb3
	x+v0GZ1AObuNdrsmVA0tNbL7ASqUfH6XcB4i8Yqm3FzQwwNaDapXnRra1jShBkMwVhLVyPmT6n8K/
	ZK8GQMN8wY2yePvV0hKOfiAKhqfrKUw4o2En5AsmPCk8ux489dj9JNv9QcHLxCqIJdlqAS9QVO5eL
	R2tfZcJ8uNo+7+ocxg01083jaCaPCk5oJ79JE2VEiZ0ZRLNncnZA/MFhu04BnbJ4NNIJZf+CNV2QL
	EDtILCOfiEDRheDjGJog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sojyc-0000000DDns-07Lq;
	Thu, 12 Sep 2024 13:35:14 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sojwf-0000000DDMs-3tW5;
	Thu, 12 Sep 2024 13:33:15 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7821D415A6;
	Thu, 12 Sep 2024 15:33:10 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sCzmfGIyV1SI; Thu, 12 Sep 2024 15:33:09 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1726147989; bh=sSx55JSXBPmJajPAqiQ992oJNfQ2IRvppQcIcT6BETs=;
	h=From:To:Cc:Subject:Date;
	b=PPTJoxPUworTGmi4YX2ryyYOdS7aV7cYjTOsF7EI8BIWsO1hXIuqqVmUJkCiJgr+j
	 HrkbW3e4OmfZC7osP9GDwKM40kfEIRwaQEi1YsW04GD0ktQVFBJM9gAtWw5U3uAMXo
	 MwsVnE2bvqig5e6kaa7VDCymkGIlvBZAKw15HBjwGz5I0MdjpSoCo8J8uBqapSIMrz
	 gpEci9gz1jr6wtQYg+DF7+4LNJ6JzZhzJ340i0HXNzaYGx3WTGneclLQuSXLfvIKW1
	 GOBH+DiERQs0++JevyRtbv/u4rZ7lKjffNlZdzf/ZXDNRVMh/HKsTCoBxJbISVybHv
	 2zHS2UenRFMQQ==
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH] clk: rockchip: fix finding of maximum clock ID
Date: Thu, 12 Sep 2024 13:32:05 +0000
Message-ID: <20240912133204.29089-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_063314_396782_71376D01 
X-CRM114-Status: GOOD (  10.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

If an ID of a branch's child is greater than current maximum, we should
set new maximum to the child's ID, instead of its parent's.

Fixes: 2dc66a5ab2c6 ("clk: rockchip: rk3588: fix CLK_NR_CLKS usage")
Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 drivers/clk/rockchip/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 73d2cbdc716b..0972e9f87470 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -439,7 +439,7 @@ unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
 		if (list->id > max)
 			max = list->id;
 		if (list->child && list->child->id > max)
-			max = list->id;
+			max = list->child->id;
 	}
 
 	return max;
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
