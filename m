Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 892B3C7619A
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Apr 2023 09:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VR2FIG9RUV3YcAmdTbOAwi+v0lOlBTrxeuqgLd7KHPQ=; b=qYIwc1jguAgLXA
	BUUQzYWYMPSSSHrlhFWQTPqJXkpy8D+WqEh0BmZdMvFmFu1HySXNPjkXcbBFYGrbxwMd+NihskT6k
	eAG/RvUe1IyF/0Fbyj0cglMaiv0sHinxOPTQ0D9QLr+RVNfbXsBrFJcpVeLr9YO+o7tU7a/2DAyC1
	GMxcUBdkUVz6OqL3vkpuupl3Mtnj1ePAdKLAMzqdLAKqjNqiHqJZcGOzI/sSBPPnrcyBMKAJOdpSe
	HDDTPEgVGBya7GQAvbzzD5JOGzQMy1jji+9I8b880bZ7KbN7jIIjhZO3r0n6XWqgQQk3+WnOE9W5I
	aIclcpj3nJaVUnwc3/Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piuED-00CAEF-0v;
	Sun, 02 Apr 2023 09:42:29 +0000
Received: from smtp-22.smtpout.orange.fr ([80.12.242.22] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piuE7-00CACE-29
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Apr 2023 09:42:22 +0000
Received: from pop-os.home ([86.243.2.178])
	by smtp.orange.fr with ESMTPA
	id iuDzpwm4hwFKBiuE0peDgu; Sun, 02 Apr 2023 11:42:15 +0200
X-ME-Helo: pop-os.home
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 02 Apr 2023 11:42:15 +0200
X-ME-IP: 86.243.2.178
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	abelvesa@kernel.org,
	peng.fan@nxp.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	heiko@sntech.de
Cc: linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v2 0/4] clk: shrink struct clk_fractional_divider
Date: Sun,  2 Apr 2023 11:42:03 +0200
Message-Id: <cover.1680423909.git.christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230402_024219_863799_99260331 
X-CRM114-Status: UNSURE (   9.48  )
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

This serie removes 2 fields from struct clk_fractional_divider and shrinks it
from 72 to 56 bytes.

Instead of been pre-computed, thse fields are now computed when needed.

The first patch makes the [mn]mask fields useless.
Patch 2 and 3 make some needed modification in 2 drivers that where using these
fields.
Finally, patch 4 removes the now used fields.

This is a another approach of what was proposed in v1. (i.e. just moving a field
to shrink from 72 ro 64 bytes)

Compared to v1, all 4 patches are new.

Suggested-by: Stephen Boyd <sboyd@kernel.org>

v1:
https://lore.kernel.org/linux-kernel/d1874eb8848d5f97f87337011188640a1463a666.1676649335.git.christophe.jaillet@wanadoo.fr/

Christophe JAILLET (4):
  clk: Compute masks for fractional_divider clk when needed.
  clk: imx: Remove values for mmask and nmask in struct
    clk_fractional_divider
  clk: rockchip: Remove values for mmask and nmask in struct
    clk_fractional_divider
  clk: Remove mmask and nmask fields in struct clk_fractional_divider

 drivers/clk/clk-fractional-divider.c | 16 +++++++++++-----
 drivers/clk/imx/clk-composite-7ulp.c |  4 ----
 drivers/clk/rockchip/clk.c           |  2 --
 include/linux/clk-provider.h         |  2 --
 4 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
