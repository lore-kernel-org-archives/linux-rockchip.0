Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80DBCC54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 19:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xwngzq5OtEmDuvlQBGHpECIw0HHbt0Y96I6lHKguTU8=; b=A364b7jKHhdJzW
	7l6oauzyD419d3tyJLBGIgZPDPoo4f6y9Y1lUgcjWUe3KWVgmr8Q/Y362jnmus4lH3RKGISnYBZpS
	31bKYzZoInEHaeXdFyGP4CLFYeJJw8t/6ptaOFcWa5Wlkvv2J8mBbMvVeYbj72u8+sJ9G4xMABV5Z
	Z865KnF63FAVjmOSp/S48GQQp+JZhLWUIfJ6s7hk91qdgqqMOtzxT9DHNoAl2Wk+S37FQbV12+gzK
	QBa6EVJEZO3OfB1QhRU1q/UW3Llomw/fXX90PGiBpDQJfNFApIZwU9/OJkhx8hjR6+C3vzkb1+Ko5
	/YGgZF3mqoA6cuwBHovg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7J-00000001cpX-1HYL;
	Mon, 25 Mar 2024 19:36:21 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7D-00000001clF-1bQa
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 19:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711395371;
	bh=dWB1ebbOPIt/t+07nVYRoz6saCSS1xYln+HgtgNynjQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=3hCh56Hp9p7c5J1NqhZvIgRUpHQPQqWjn6XJWYZvFMzOkI/Q+uH6AD/AYZa0zLMGX
	 P5xlYPlDImP9/xHVy5UpEunzMlNY0IO3diUI9vJ6e6XGz4RYQ7hgTdcHCzGCd24wmQ
	 fm/d8jNUNe6ZKK6MGl0qBWbq6VFrvcBD3HonX5qtpUPuxNQDTrLb1F5kUFQUC6IOap
	 bj6wa7AcjoDJAHGYRl04jefn20mVwXQy+tcP2iiQsE6F1NgKqd5CqD3yfE1NKhkgnv
	 /4zy4Ny6t/9sJ56iJe8bOSwG9s/bTxFrH2QonqwIjMJH3RBYAznSdAYx4gorA+soxk
	 FndC32utK53BA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6B49937820E4;
	Mon, 25 Mar 2024 19:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 109B94800CB; Mon, 25 Mar 2024 20:36:11 +0100 (CET)
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
Subject: [PATCH v9 1/7] clk: rockchip: rk3588: drop unused code
Date: Mon, 25 Mar 2024 20:33:32 +0100
Message-ID: <20240325193609.237182-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240325193609.237182-1-sebastian.reichel@collabora.com>
References: <20240325193609.237182-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_123615_612031_48499AD1 
X-CRM114-Status: GOOD (  13.22  )
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

All clocks are registered early using CLK_OF_DECLARE(), which marks
the DT node as processed. For the processed DT node the probe routine
is never called. Thus this whole code is never executed. This could
be "fixed" by using CLK_OF_DECLARE_DRIVER, which avoids marking the
DT node as processed. But then the probe routine would re-register
all the clocks by calling rk3588_clk_init() again.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 40 -------------------------------
 1 file changed, 40 deletions(-)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index b30279a96dc8..74051277ecea 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -2502,43 +2502,3 @@ static void __init rk3588_clk_init(struct device_node *np)
 }
 
 CLK_OF_DECLARE(rk3588_cru, "rockchip,rk3588-cru", rk3588_clk_init);
-
-struct clk_rk3588_inits {
-	void (*inits)(struct device_node *np);
-};
-
-static const struct clk_rk3588_inits clk_3588_cru_init = {
-	.inits = rk3588_clk_init,
-};
-
-static const struct of_device_id clk_rk3588_match_table[] = {
-	{
-		.compatible = "rockchip,rk3588-cru",
-		.data = &clk_3588_cru_init,
-	},
-	{ }
-};
-
-static int __init clk_rk3588_probe(struct platform_device *pdev)
-{
-	const struct clk_rk3588_inits *init_data;
-	struct device *dev = &pdev->dev;
-
-	init_data = device_get_match_data(dev);
-	if (!init_data)
-		return -EINVAL;
-
-	if (init_data->inits)
-		init_data->inits(dev->of_node);
-
-	return 0;
-}
-
-static struct platform_driver clk_rk3588_driver = {
-	.driver		= {
-		.name	= "clk-rk3588",
-		.of_match_table = clk_rk3588_match_table,
-		.suppress_bind_attrs = true,
-	},
-};
-builtin_platform_driver_probe(clk_rk3588_driver, clk_rk3588_probe);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
