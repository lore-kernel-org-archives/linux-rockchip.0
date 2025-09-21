Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DF1CAC59A
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 21:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ow6eDwf0Q7M2ln9Ow445yXFIUrnmO0djh8QmhLUKGvY=; b=HjKv1JQw2mTc/m
	FM+ZDxoQhv5kORrx/Ej0FWyywXi7L5TWHBIBWBJV2iqQCjPy6bGv4mFZFe4grMO+Qb3ZkUe9eBij0
	nqeM3cgjDMY9pe36k5e00VVPjHofrwGVb9oo8v7R8MDxPngHvBh+hFnzjPWPxXGgtZrBQoJIDb0vo
	t3XXD2Z6qrNr6LeInxuNJevfUjkHYysSy2NMgtlLQGOH8XNdsSchu1q5gGyLqu6s376cZCVBRpwnd
	aqxLXnYyO98mjk73rsGaQv858WDaueyDL2JnjTvuJokFWP1cTrtsIsaAEOnRHEVx9QdceysDJqS6R
	Wg3a/WJAC4VeCZQVLdww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RA5-00000008CFw-1EkM;
	Sun, 21 Sep 2025 20:59:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RA1-00000008CDk-0vl1
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Sep 2025 20:59:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=huK5CpmxMXb5T6on4tR9EKj5JuGqYpWil2JrKF2Fx2A=; b=frSDbpY4vrmuUjIGC2pDcq0oTK
	5+lohheHj+xjTrPzZG3C8hXHMhouRCyqWG+xW/MVZF87K1daPf56OAZIiKcWVed7klzV15RVyM4ck
	dRk5zZxsMQnRflP9zLtU4FYRLdAsiG4sBEFGZtLib1PfILfWTsEnVpFJCIUuqJIjbHtVSVdVh6k/4
	IYJYbj7xbYTjpRgZZrZBGEQQ5YYOVk/8zKINzdy384zAEEkbzStPQyUs8GJFg+MiamxOwl6PiRtm2
	XBVaj6QI7jvKAgBpSQU04DmqdwRCuhoxoohr135l4/fndu394SsRq/K1R+vf8SlXW7G9LoCbGIqld
	EcEvJ6QQ==;
Received: from i53875add.versanet.de ([83.135.90.221] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v0R9o-0007cj-Vy; Sun, 21 Sep 2025 22:59:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.18 #1
Date: Sun, 21 Sep 2025 22:59:39 +0200
Message-ID: <1897877.QZUTf85G27@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_135953_287381_C72442F1 
X-CRM114-Status: UNSURE (   9.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Mike, Stephen,

please find below a pull-request with Rockchip clock change for 6.18
Just a single newly exported clock for an older SoC.


Please pull.

Thanks
Heiko


The following changes since commit 8f5ae30d69d7543eee0d70083daf4de8fe15d585:

  Linux 6.17-rc1 (2025-08-10 19:41:16 +0300)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.18-rockchip-clk1

for you to fetch changes up to 77111b2c22ef5b368da5c833175b6f7806b39ccb:

  clk: rockchip: rk3368: use clock ids for SCLK_MIPIDSI_24M (2025-09-03 14:17:54 +0200)

----------------------------------------------------------------
Export the dsi-24MHz clock on the RK3368, which seems to get some
attention to enable DSI support there.

----------------------------------------------------------------
WeiHao Li (2):
      dt-bindings: clock: rk3368: Add SCLK_MIPIDSI_24M
      clk: rockchip: rk3368: use clock ids for SCLK_MIPIDSI_24M

 drivers/clk/rockchip/clk-rk3368.c      | 2 +-
 include/dt-bindings/clock/rk3368-cru.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
