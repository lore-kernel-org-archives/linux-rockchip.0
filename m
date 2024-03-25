Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B70BCD11DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 19:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zv12CrEyzNRsFd07la6UTJgbPsg4y3pmHiwga+a++o=; b=S29aB4w89iIK/a
	840D/xOoVWJccDJPOfcLvjNRrhtaM2oUUIDI9Ct+c23Sxgw+ShV1tKWnwsDuQpW7Oq4SoNOXqxiU2
	9sPm+CjwfPLVDfK1U703Pu7f72xJXPOO9eCzEK1WthsVhgZBZlPXJIOR5dvtqRdeKSKvkXGjhePKE
	YRQt8jwlZrWNtPlXeNHRTvlnoaMMcSGcXw0TG+N2agE+gIvlGjxecNIXWSAM3eZycSojvjw2oiaAw
	c5k6mi2YtXiV9LnpSvR92OrSH6YFXWbstNokMU8nBSRT5eMYmPo01mEBaLDbnUyD2PAmyCGabzRDA
	siWUg/19vhCMwjdE51WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7L-00000001cr9-0XaH;
	Mon, 25 Mar 2024 19:36:23 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7G-00000001cnW-0ZoE
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 19:36:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711395372;
	bh=hAH9JfnF/oWPF5azFrsdH6WoJrOjS9HW0tUPNWlngE0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OFuHmFYUyBPH2yLqm5XdUgj7yC4FGz3MdTgTwjcmfSV8X9N1IjH4Oxhe9DiAGk8S2
	 Izxa7O7BDfBgi/ZSMS020vbSEYTuxkX0WaVLPC1JxBvo2++xXNHYVOjmy6UvzvBu0M
	 ZHchWs8A2sqpgDgfxq1s6C54PyaXavUa5aUwxBj+5SkBcsl/1rDql2azEKFiqpI5zc
	 QHdAwbRgGGjJ+1LkItpYCrigxbcBze6MhlE3NuKTlh/y0lv8G9p4tgyR9X8OesmIUM
	 SNYtj+b/3BxU4zp4Vp52GtkYj3jVCHTePSnhiAJpR2CcRHkSxcVbHQOL2A+QHKVwBw
	 hTBmBKf4CCAwQ==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E984337820FC;
	Mon, 25 Mar 2024 19:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 182D94800D2; Mon, 25 Mar 2024 20:36:11 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>,
	Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v9 5/7] clk: rockchip: fix error for unknown clocks
Date: Mon, 25 Mar 2024 20:33:36 +0100
Message-ID: <20240325193609.237182-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325193609.237182-1-sebastian.reichel@collabora.com>
References: <20240325193609.237182-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_123618_606614_A952BBEC 
X-CRM114-Status: GOOD (  13.68  )
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

There is a clk == NULL check after the switch to check for
unsupported clk types. Since clk is re-assigned in a loop,
this check is useless right now for anything but the first
round. Let's fix this up by assigning clk = NULL in the
loop before the switch statement.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index ef2408f10f39..e150bc1fc319 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -444,12 +444,13 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk)
 {
-	struct clk *clk = NULL;
+	struct clk *clk;
 	unsigned int idx;
 	unsigned long flags;
 
 	for (idx = 0; idx < nr_clk; idx++, list++) {
 		flags = list->flags;
+		clk = NULL;
 
 		/* catch simple muxes */
 		switch (list->branch_type) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
