Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06119C982DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 06:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZLHwl0sOWfaveMlYsDr0DEdSHprI6XySLtN2ZcQNFmM=; b=2xWn3Z18WNtljJ
	BFNI9rugeX31+udwiwPDPCwII34V2epcr6sSkCn4Gu8VzMaWLWKWpRcVwlJmPxIPfwxPNAdCPKoqk
	ForqL0EUSfmw1eQbdafYvjgBlu23ETmAbObFfwJkIYqwuShl9sLKWWMfBWXh1/72NQzocBcaz1MOU
	FMW2U8ZMHbvw0kpS2IIu35Eb3E5W5N8hC8YzAgCFvhvirnn35VtHQhaZmI7yrg4fBJrI8iBV3QFlX
	29LmirHC5aPGRhWn2otSwk4O/edLm6f7Rq3B5Jb4fo/WWIke6z1IvgT8yvnu6P3LBOSBJaCKatj79
	A4g9WOQBeptwTo0aXsqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xts-000000017ha-23bU;
	Mon, 21 Sep 2026 06:53:16 +0000
Received: from mail-m1602365254.xmail.ntesmail.com ([160.236.52.54])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Xtp-000000017hI-2ECe
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Sep 2026 06:53:15 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e889bfae;
	Mon, 21 Sep 2026 14:53:08 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 0/4] Small fixes and improvement for Rockchip pm-domains driver
Date: Mon, 21 Sep 2026 14:52:49 +0800
Message-Id: <1789973573-151146-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0c2bd678103a4kunmfcbddeea30c25c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCT09CVk9CTU4fGR9KGkIaGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=VNT9jev5m12JnfEWc+5/r+EFX+xvnaGIul0Rqfz2m9BcQj0FNkj2aI92ipnkaku35cbaEZFZ6s6dGLj5q6vJzY3PcPaHubL2S8hSP5FOY57AXnBlPTJe4i9tHR84WsMfrl2iuG9q9NH1gujiVOxQebsycjxBj+V8TbMn3DsHnBE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=3k42KZJn9X6gzZBWTWGKQOSpmzh/TPNG6kCKWGqJ9xs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_235314_149122_6FFD8C9F 
X-CRM114-Status: UNSURE (   6.79  )
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


The first 3 patches are for fixing. And the last one is for
improvement.


Changes in v3:
- drop the devm_kcalloc() to devm_kzalloc() switch; kcalloc() already
  zeroes the array and takes an element count, while devm_kzalloc()
  does not.

Changes in v2:
- add Sebastian's tag

Shawn Lin (4):
  pmdomain: rockchip: propagate subdomain add errors
  pmdomain: rockchip: fix clock leak on domain probe failure
  pmdomain: rockchip: don't ignore clock lookup errors on attach
  pmdomain: rockchip: drop duplicated errno from supply failure message

 drivers/pmdomain/rockchip/pm-domains.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
