Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5045CD1288
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 02:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w8LScOg3XfN66xr+ogVmWyMAMSo2qu7aoIFIulVey48=; b=lNhi10T0bFTR+0
	9txxmZuqjKzcI1I+d0TF/AUCUEqsvZe2M36GhzDiafch/G+pV1n/Tt+bHOHSCMAAui4tg31gh921N
	5pIhYApvXwsq5lvJwOI90euT6YD7jLoxRiX4yb4DGDxmXDuxEbHdthnoUvxuNUwvLskOFLR/Y2R0D
	3zCC+o/I+MlEazBCa6beHCOnSRt4VjxTDXkDJp7lTi75g4uw+CHs9lM09NuElDvIbN8663SEycqfn
	f4vHjbxJMKi/VBX5lgeWNMjzzJNJ6kURx7YrVZISYeYs43hnKHxu/dnxAyj4fBgegfgG1GKj9ko9D
	Kq4zilJEXAWqdcrJd3qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skDZd-00000008Id4-2B9m;
	Sat, 31 Aug 2024 02:10:45 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skDUZ-00000008Hg1-0DrP;
	Sat, 31 Aug 2024 02:05:33 +0000
Received: from mail.maildlp.com (unknown [172.19.88.234])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4WwdbP2Q9Nz1xwhw;
	Sat, 31 Aug 2024 10:03:29 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 254B6140109;
	Sat, 31 Aug 2024 10:05:28 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 31 Aug
 2024 10:05:26 +0800
From: Li Zetao <lizetao1@huawei.com>
To: <florian.fainelli@broadcom.com>, <andrew@lunn.ch>, <olteanv@gmail.com>,
	<davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
	<pabeni@redhat.com>, <wens@csie.org>, <jernej.skrabec@gmail.com>,
	<samuel@sholland.org>, <heiko@sntech.de>, <yisen.zhuang@huawei.com>,
	<salil.mehta@huawei.com>, <hauke@hauke-m.de>, <alexandre.torgue@foss.st.com>,
	<joabreu@synopsys.com>, <mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>,
	<ajay.kathat@microchip.com>, <claudiu.beznea@tuxon.dev>, <kvalo@kernel.org>,
	<lizetao1@huawei.com>, <u.kleine-koenig@pengutronix.de>,
	<jacky_chou@aspeedtech.com>
CC: <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>, <linux-wireless@vger.kernel.org>
Subject: [PATCH net-next 10/12] net: xilinx: axienet: Convert using devm_clk_get_optional_enabled() in axienet_probe()
Date: Sat, 31 Aug 2024 10:13:32 +0800
Message-ID: <20240831021334.1907921-11-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240831021334.1907921-1-lizetao1@huawei.com>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_190531_715470_317CCCC1 
X-CRM114-Status: GOOD (  11.29  )
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

Use devm_clk_get_optional_enabled() instead of devm_clk_get_optional() +
clk_prepare_enable(), which can make the clk consistent with the device
life cycle and reduce the risk of unreleased clk resources. Since the
device framework has automatically released the clk resource, there is
no need to execute clk_disable_unprepare(clk) on the error path.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index fe6a0e2e463f..48b41e95aa74 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -2584,22 +2584,17 @@ static int axienet_probe(struct platform_device *pdev)
 	seqcount_mutex_init(&lp->hw_stats_seqcount, &lp->stats_lock);
 	INIT_DEFERRABLE_WORK(&lp->stats_work, axienet_refresh_stats);
 
-	lp->axi_clk = devm_clk_get_optional(&pdev->dev, "s_axi_lite_clk");
-	if (!lp->axi_clk) {
+	lp->axi_clk = devm_clk_get_optional_enabled(&pdev->dev, "s_axi_lite_clk");
+	if (!lp->axi_clk)
 		/* For backward compatibility, if named AXI clock is not present,
 		 * treat the first clock specified as the AXI clock.
 		 */
-		lp->axi_clk = devm_clk_get_optional(&pdev->dev, NULL);
-	}
+		lp->axi_clk = devm_clk_get_optional_enabled(&pdev->dev, NULL);
+
 	if (IS_ERR(lp->axi_clk)) {
 		ret = PTR_ERR(lp->axi_clk);
 		goto free_netdev;
 	}
-	ret = clk_prepare_enable(lp->axi_clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Unable to enable AXI clock: %d\n", ret);
-		goto free_netdev;
-	}
 
 	lp->misc_clks[0].id = "axis_clk";
 	lp->misc_clks[1].id = "ref_clk";
@@ -2915,7 +2910,6 @@ static int axienet_probe(struct platform_device *pdev)
 		axienet_mdio_teardown(lp);
 cleanup_clk:
 	clk_bulk_disable_unprepare(XAE_NUM_MISC_CLOCKS, lp->misc_clks);
-	clk_disable_unprepare(lp->axi_clk);
 
 free_netdev:
 	free_netdev(ndev);
@@ -2939,7 +2933,6 @@ static void axienet_remove(struct platform_device *pdev)
 	axienet_mdio_teardown(lp);
 
 	clk_bulk_disable_unprepare(XAE_NUM_MISC_CLOCKS, lp->misc_clks);
-	clk_disable_unprepare(lp->axi_clk);
 
 	free_netdev(ndev);
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
