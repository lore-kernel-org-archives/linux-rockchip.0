Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 207E9C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 13:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxwJ8C93zIUty2tzaccVoejyx2zR8HajogO1ihej8SI=; b=YzWIfRqQ7XK6+d
	NOpjdSKBRXrFncEiH8wNzlKsHWduheYt45GIDg9WKkamcEFw1JblsP/8VoIRPah4P1EmlL5mUWS7K
	D6RqlBkg/nbwXIhMp2nMSgolKroCYN0r0y8M6F5MNPq6q7aYSJw+VFSNaW5+489lCkpF7Qev1KGqt
	JtL09+N2VvMqxERwIwPg62O0g5cT3TFfLghOq880gYJavZQU2305zkMsdeGs9pSf2B7muaPX6J7eH
	FwqKEJCHMn/nGE+6elfXmXiMfqtvnTbhDpdlyYrjw3kNozfxUimYALT5EGuJW2ews4ljD0c1u2RvK
	f/FownUVanl76ko4Q0bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myCzL-00AIo6-DU; Fri, 17 Dec 2021 13:09:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myCzI-00AIm9-Bm
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 13:09:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzF-0004Uq-9K; Fri, 17 Dec 2021 14:09:25 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1myCzE-00Cjq3-06; Fri, 17 Dec 2021 14:09:24 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 2/4] soc: rockchip: power-domain: Use devm_clk_bulk_get_all()
Date: Fri, 17 Dec 2021 14:09:17 +0100
Message-Id: <20211217130919.3035788-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211217130919.3035788-1-s.hauer@pengutronix.de>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_050928_424232_C1C9C4B3 
X-CRM114-Status: GOOD (  15.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Now that each power domain has its own device we no longer have to use
of_clk_get(), but can instead simplify retrieving the clocks by using
devm_clk_bulk_get_all().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/soc/rockchip/pm_domains.c | 31 +++++--------------------------
 1 file changed, 5 insertions(+), 26 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index d2f71437c73a9..dcfd3db649f58 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -490,7 +490,7 @@ static int rockchip_domain_probe(struct platform_device *pdev)
 	struct device_node *qos_node;
 	struct rockchip_pmu *pmu = pd_info->pmu;
 	struct generic_pm_domain *parent_domain;
-	int i, j;
+	int j;
 	int error;
 
 	pd = devm_kzalloc(&pdev->dev, sizeof(*pd), GFP_KERNEL);
@@ -500,32 +500,13 @@ static int rockchip_domain_probe(struct platform_device *pdev)
 	pd->info = pd_info;
 	pd->pmu = pd_info->pmu;
 
-	pd->num_clks = of_clk_get_parent_count(node);
-	if (pd->num_clks > 0) {
-		pd->clks = devm_kcalloc(&pdev->dev, pd->num_clks,
-					sizeof(*pd->clks), GFP_KERNEL);
-		if (!pd->clks)
-			return -ENOMEM;
-	} else {
-		dev_dbg(&pdev->dev, "%pOFn: doesn't have clocks: %d\n",
-			node, pd->num_clks);
-		pd->num_clks = 0;
-	}
-
-	for (i = 0; i < pd->num_clks; i++) {
-		pd->clks[i].clk = of_clk_get(node, i);
-		if (IS_ERR(pd->clks[i].clk)) {
-			error = PTR_ERR(pd->clks[i].clk);
-			dev_err(&pdev->dev,
-				"%pOFn: failed to get clk at index %d: %d\n",
-				node, i, error);
-			return error;
-		}
-	}
+	pd->num_clks = devm_clk_bulk_get_all(&pdev->dev, &pd->clks);
+	if (pd->num_clks < 0)
+		return pd->num_clks;
 
 	error = clk_bulk_prepare(pd->num_clks, pd->clks);
 	if (error)
-		goto err_put_clocks;
+		return error;
 
 	pd->num_qos = of_count_phandle_with_args(node, "pm_qos",
 						 NULL);
@@ -612,8 +593,6 @@ static int rockchip_domain_probe(struct platform_device *pdev)
 	pm_genpd_remove(&pd->genpd);
 err_unprepare_clocks:
 	clk_bulk_unprepare(pd->num_clks, pd->clks);
-err_put_clocks:
-	clk_bulk_put(pd->num_clks, pd->clks);
 	return error;
 }
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
