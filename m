Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A000C46CD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 12:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T/c51MJVBW+6j8Xx1tlp/mt/19id0eJM/vpUxASTJCs=; b=MBhWxc+uDPVKfr
	ubqswk7skkubvJaJ8q6B5ezi/EIByrVPDxj8xH/r2DqGIPl33SAe6IoPyZFq6wiqw2iUh2LkW1OnX
	ghrmeZn5yI4i4TZVQe3E7+BIqdMps6TUoLBHI6wnEmr6K3sToJmzkV2MG6gwd29ZUmTCbcDFEjhjr
	BNHoEdRLOWgD+9xQyMSxfG0auvsECaoW2EsqA6Sbj2XhHvh2QnHEl9iFPyzvEivu8JPOkdcnRrbVj
	T5VxG0jY9F50jyVoT4TwsvmrfbVtCaOpa4iX0dI0y1C5dXt/dCxL/PStP0MX83B0EI9ooqJh10lND
	kdvPl++HTIgx1mXG4kUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFD1V-00AgVk-1E;
	Mon, 18 Dec 2023 12:47:05 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFD1R-00AgTy-2l;
	Mon, 18 Dec 2023 12:47:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3C64ACE0A7C;
	Mon, 18 Dec 2023 12:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EDBAC433C7;
	Mon, 18 Dec 2023 12:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702903619;
	bh=hhH0S1d1h1iP5cEliJA43vXsxR1kP/uHQeuebebGyQE=;
	h=From:To:Cc:Subject:Date:From;
	b=W3AOJ6ipq22EP8pj7M5/sT+8PuAbW4JBPUQn7ksOMC6LkRyXguEDUhXK7NPwbNOBP
	 1a6jk3gKak3vldv9jBLBoxtNlMvNS6HiSeRK2VRyHeownOHyss1rS6j4/RepEnA2lL
	 WMMND+i6U7Bf1IbAYVfT4Kxt6svXfP7D/E2jhvHGdhNBH0ORHWYQOV8i92maOlqSjS
	 qJfiXbXatVAoF1T3SZlZLrGG49QJmIWW4iC5bvRNopjipmWaAUvLTlehvaBPn2Qbj6
	 aOHSuN3A5RlujYQeOIX8tqLzstxIZspADiE+wy+Gs+mU2gkoAg3COLnvZrunB7w+br
	 vH1oouZ2z7g7A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Weihao Li <cn.liweihao@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 1/7] clk: rockchip: rk3128: Fix HCLK_OTG gate register
Date: Mon, 18 Dec 2023 07:46:46 -0500
Message-ID: <20231218124656.1381949-1-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.4.264
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_044702_065888_8E30F808 
X-CRM114-Status: UNSURE (   9.63  )
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

From: Weihao Li <cn.liweihao@gmail.com>

[ Upstream commit c6c5a5580dcb6631aa6369dabe12ef3ce784d1d2 ]

The HCLK_OTG gate control is in CRU_CLKGATE5_CON, not CRU_CLKGATE3_CON.

Signed-off-by: Weihao Li <cn.liweihao@gmail.com>
Link: https://lore.kernel.org/r/20231031111816.8777-1-cn.liweihao@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/rockchip/clk-rk3128.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3128.c b/drivers/clk/rockchip/clk-rk3128.c
index 4b1122e98e167..ddfe1c402e80b 100644
--- a/drivers/clk/rockchip/clk-rk3128.c
+++ b/drivers/clk/rockchip/clk-rk3128.c
@@ -489,7 +489,7 @@ static struct rockchip_clk_branch common_clk_branches[] __initdata = {
 	GATE(HCLK_I2S_2CH, "hclk_i2s_2ch", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 2, GFLAGS),
 	GATE(0, "hclk_usb_peri", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 13, GFLAGS),
 	GATE(HCLK_HOST2, "hclk_host2", "hclk_peri", 0, RK2928_CLKGATE_CON(7), 3, GFLAGS),
-	GATE(HCLK_OTG, "hclk_otg", "hclk_peri", 0, RK2928_CLKGATE_CON(3), 13, GFLAGS),
+	GATE(HCLK_OTG, "hclk_otg", "hclk_peri", 0, RK2928_CLKGATE_CON(5), 13, GFLAGS),
 	GATE(0, "hclk_peri_ahb", "hclk_peri", CLK_IGNORE_UNUSED, RK2928_CLKGATE_CON(9), 14, GFLAGS),
 	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_peri", 0, RK2928_CLKGATE_CON(10), 9, GFLAGS),
 	GATE(HCLK_TSP, "hclk_tsp", "hclk_peri", 0, RK2928_CLKGATE_CON(10), 12, GFLAGS),
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
