Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE523C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 21:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mtjE5wrJmHvq5YGVVlMnXnaTB90SH4zWOfmKsGBwwvk=; b=PcejkwLlUW6Q4v
	oVmnygTk8QPwAquihmkcM+giY1WLq9BdGdXnjDE6xj9W+QtJ+NVCxS/mmKKEcS70OBVD0yuHTqV5B
	yy+qu8DpqIKtrpnanK5hf5NW10lpX1pO1d/roESk9qoOgJwe5DXK2U3hCfcBQlAJdWexGRmYRdBL8
	1Uhc3L44BXOFD/JrcNPlczGx3rGzDCFNMf84QLQJj7zig8qXJDO1hv79LBUrmNjGMU9lWZEduIxpx
	Mb9nJTv7b5CBhGat5yQ0KN3sVOW3x8P1dxb0NqSoNP6jm8XZUPD43uMTqvGyWT/A/tpdUw528sDoX
	qFAIY5O/HXDsPxWWrZfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH829-0000000AXzh-2HnI;
	Mon, 19 May 2025 21:28:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uH7wH-0000000AW3H-2GPY;
	Mon, 19 May 2025 21:22:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3D7A14AB3C;
	Mon, 19 May 2025 21:22:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9C5BC4CEE9;
	Mon, 19 May 2025 21:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747689745;
	bh=G736kJmx7ZAHce0+/nkrSSIWUxgBCRg1Sk81e42FNXE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oLYz38OcO9vokB5OkrtdlwDJJXK7G7WfAD83pKcdBquS3B7ui5eIkZBQ97I+yLHru
	 4x9HkgEJXAXdUcHcGRtr/yBya0JTDHIIRQO6NXUGUx+rzTr3D4Jvw8fDAjWd5qtbVo
	 BCNUhkSjBLw2s7XGCMczTTPrDe5MhC5OkQktk9In6cko2Wd3Ru9ZMMjSAOQuxpiX9i
	 sslAFTGLpMCmIWkpO0V5QTJvhDMPJwlGJDoHwKmb/WV/NSm5GHqqTeUKk7ZcyyFgO1
	 REVVLfdLMMY87O6wQyGhOiuze3UfSCV54Tpep0rUymQh5hY8D9rgoLjITqaafzSZIU
	 sdygTqjA9HRSw==
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 6.12 10/18] phy: phy-rockchip-samsung-hdptx: Fix PHY PLL output 50.25MHz error
Date: Mon, 19 May 2025 17:21:59 -0400
Message-Id: <20250519212208.1986028-10-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250519212208.1986028-1-sashal@kernel.org>
References: <20250519212208.1986028-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.12.29
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_142225_604763_8C00E1BA 
X-CRM114-Status: GOOD (  10.48  )
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
Cc: Sasha Levin <sashal@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, kishon@ti.com, linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Algea Cao <algea.cao@rock-chips.com>

[ Upstream commit f9475055b11c0c70979bd1667a76b2ebae638eb7 ]

When using HDMI PLL frequency division coefficient at 50.25MHz
that is calculated by rk_hdptx_phy_clk_pll_calc(), it fails to
get PHY LANE lock. Although the calculated values are within the
allowable range of PHY PLL configuration.

In order to fix the PHY LANE lock error and provide the expected
50.25MHz output, manually compute the required PHY PLL frequency
division coefficient and add it to ropll_tmds_cfg configuration
table.

Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Acked-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20250427095124.3354439-1-algea.cao@rock-chips.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index be6f1ca9095aa..23a022da3f72d 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -328,6 +328,8 @@ static const struct ropll_config ropll_tmds_cfg[] = {
 	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 650000, 162, 162, 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 54, 0, 16, 4, 1,
 	  1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
+	{ 502500, 84, 84, 1, 1, 7, 1, 1, 1, 1, 1, 1, 1, 11, 1, 4, 5,
+	  4, 11, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 337500, 0x70, 0x70, 1, 1, 0xf, 1, 1, 1, 1, 1, 1, 1, 0x2, 0, 0x01, 5,
 	  1, 1, 1, 0, 0x20, 0x0c, 1, 0x0e, 0, 0, },
 	{ 400000, 100, 100, 1, 1, 11, 1, 1, 0, 1, 0, 1, 1, 0x9, 0, 0x05, 0,
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
