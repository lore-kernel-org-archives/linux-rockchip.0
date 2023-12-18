Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EBBDC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 12:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oFz+XYx07lchr6p2tWRq0nNl688TvY5VxxX0rAcaZ3w=; b=H+I/LLcW7u4k4Z
	CZ5JfbeZEByWFFLfiHpBZCkJ3pfztd0es36AhkJJZ8G1MrL4mbiUL97u3SoVDNXkZuOs186bY04qB
	FtRzmPyHnUDtMDnuPhL7VgL/AZOxqM8DvRBAfu2ojRGhxJaX6kSq0nwJJ5J4bgrEh9lqem/Ik7GlQ
	573hKO9SP5sL94b92VljwG74hjKiJzucBxcIkB74EmQFe4FsK5gjhJw7XgOg/uK2eQrIKl6UqMQ1K
	eYBli6aA0O32H7h9sILwdVAimaMVdniAH2YVjoFV2K0qkGkb4f4lcOr8EGxyOsZpI0LHAqm9dttZk
	GtmPIYIwRKgDxB4V+ryQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCyt-00AfIb-11;
	Mon, 18 Dec 2023 12:44:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCyq-00AfH6-1P;
	Mon, 18 Dec 2023 12:44:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7059960FAA;
	Mon, 18 Dec 2023 12:44:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 187A2C433C7;
	Mon, 18 Dec 2023 12:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702903459;
	bh=lLy/lC6aZ8f1isiXe0PcaE037D+ZGlj/4j45v8Ta0qo=;
	h=From:To:Cc:Subject:Date:From;
	b=GUaMLsN0m5OIuelaAONBu3IvMpNSDCvHu42EBPo9vpetSI6Ae0OKEUyUwHAMLwaEW
	 boHcefgWiByDVKSCS2m6MXhDaND5WPHdekjOYF+mPArwDgb0U0RiRffRGU/Sd0Zz7h
	 eh4TejTpz24QojlTT8AkKX/MEwx7cHIcbk81VdiVOOYnJOCHpfng8uF1P+WVp/PIMG
	 eJ6+ABvnbif8H5MNjxRZBmzc6DJHecT2bwCxCEG2vdK5mZ9ZsB27S14Sz8HDCWCPJ+
	 y4PLyLLq+dA9CgR6MMGybdmcAYHRFzoE01OFvieQa+invMcjxoQ2ye4b0lJZf60VDz
	 +t6ycezZ5t4sA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.6 01/18] clk: rockchip: rk3568: Add PLL rate for 292.5MHz
Date: Mon, 18 Dec 2023 07:43:35 -0500
Message-ID: <20231218124415.1379060-1-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_044420_514879_D82BDC27 
X-CRM114-Status: UNSURE (   7.99  )
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

From: Chris Morgan <macromorgan@hotmail.com>

[ Upstream commit 1af27671f62ce919f1fb76082ed81f71cb090989 ]

Add support for a PLL rate of 292.5MHz so that the Powkiddy RGB30 panel
can run at a requested 60hz (59.96, close enough).

I have confirmed this rate fits with all the constraints
listed in the TRM for the VPLL (as an integer PLL) in Part 1 "Chapter
2 Clock & Reset Unit (CRU)."

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Link: https://lore.kernel.org/r/20231018153357.343142-2-macroalpha82@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/rockchip/clk-rk3568.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3568.c b/drivers/clk/rockchip/clk-rk3568.c
index 16dabe2b9c47f..db713e1526cdc 100644
--- a/drivers/clk/rockchip/clk-rk3568.c
+++ b/drivers/clk/rockchip/clk-rk3568.c
@@ -72,6 +72,7 @@ static struct rockchip_pll_rate_table rk3568_pll_rates[] = {
 	RK3036_PLL_RATE(408000000, 1, 68, 2, 2, 1, 0),
 	RK3036_PLL_RATE(312000000, 1, 78, 6, 1, 1, 0),
 	RK3036_PLL_RATE(297000000, 2, 99, 4, 1, 1, 0),
+	RK3036_PLL_RATE(292500000, 1, 195, 4, 4, 1, 0),
 	RK3036_PLL_RATE(241500000, 2, 161, 4, 2, 1, 0),
 	RK3036_PLL_RATE(216000000, 1, 72, 4, 2, 1, 0),
 	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
