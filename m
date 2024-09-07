Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FBD2E6FE47
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:07:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqlAhDoDBJNLd7hlQ0CQdw6AUw4dNWhL0UtMV+BE698=; b=v2a+jUWqP5L2kS
	M1B/OaVroqd+AfXFSF8c46XFEotTDvNHAwYJ/2a3+Fa4PWypULeYgsXGWr2GpsJhEpBfRPWF+/imy
	RE+ov6uTrDFmc7knihidRxJl4pxRYq+RqhPGDTCiE2pHdZe4AmM7DjoZdFb8+q5L50s6rWOH++1YY
	QDhuwlAol0iuTxHUpdma0C30yzQTUlLvcPTWaLSa/5IeOKbLJWqaq6G1Y3uhYIxQObkz9rIr99zqg
	cEo+BvaZ7W/62B4Vc/Wu2VZor7Flz7MWbiJ5Z7zAMCxWtuWvjcFiOVEHPzHUeyZdysLb25qzfQt9B
	P2dbeDYOKM/q93nLcKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlnU-0000000EAhr-1EEq;
	Sat, 07 Sep 2024 03:07:36 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlhY-0000000E9UD-3TdP;
	Sat, 07 Sep 2024 03:01:31 +0000
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4X0yXB5KYYzyRRW;
	Sat,  7 Sep 2024 11:00:42 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id B4300180064;
	Sat,  7 Sep 2024 11:01:23 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:01:22 +0800
From: Li Zetao <lizetao1@huawei.com>
To: <mchehab@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <wens@csie.org>,
	<jernej.skrabec@gmail.com>, <samuel@sholland.org>, <heiko@sntech.de>,
	<yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>, <hauke@hauke-m.de>,
	<alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
	<mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>, <hdegoede@redhat.com>,
	<ilpo.jarvinen@linux.intel.com>, <lizetao1@huawei.com>,
	<ruanjinjie@huawei.com>, <hverkuil-cisco@xs4all.nl>,
	<u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>,
	<jacob.e.keller@intel.com>
CC: <linux-media@vger.kernel.org>, <netdev@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
	<linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<platform-driver-x86@vger.kernel.org>
Subject: [PATCH net-next v2 03/10] net: ethernet: arc: Convert using devm_clk_get_enabled() in emac_probe()
Date: Sat, 7 Sep 2024 11:10:02 +0800
Message-ID: <20240907031009.3591057-5-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031009.3591057-1-lizetao1@huawei.com>
References: <20240907031009.3591057-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_200129_426769_AD53B0EA 
X-CRM114-Status: GOOD (  12.02  )
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

Use devm_clk_get_enabled() instead of devm_clk_get() +
clk_prepare_enable(), which can make the clk consistent with the device
life cycle and reduce the risk of unreleased clk resources. Since the
device framework has automatically released the clk resource, there is
no need to execute clk_disable_unprepare(clk) on the error path, drop
the out_clk_disable_unprepare label, and the original error process can
changed to the out_dispose_mapping error path.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/ethernet/arc/emac_rockchip.c | 34 +++++-------------------
 1 file changed, 6 insertions(+), 28 deletions(-)

diff --git a/drivers/net/ethernet/arc/emac_rockchip.c b/drivers/net/ethernet/arc/emac_rockchip.c
index 493d6356c8ca..22b3ebe059d9 100644
--- a/drivers/net/ethernet/arc/emac_rockchip.c
+++ b/drivers/net/ethernet/arc/emac_rockchip.c
@@ -144,7 +144,7 @@ static int emac_rockchip_probe(struct platform_device *pdev)
 		goto out_netdev;
 	}
 
-	priv->refclk = devm_clk_get(dev, "macref");
+	priv->refclk = devm_clk_get_enabled(dev, "macref");
 	if (IS_ERR(priv->refclk)) {
 		dev_err(dev, "failed to retrieve reference clock (%ld)\n",
 			PTR_ERR(priv->refclk));
@@ -152,18 +152,12 @@ static int emac_rockchip_probe(struct platform_device *pdev)
 		goto out_netdev;
 	}
 
-	err = clk_prepare_enable(priv->refclk);
-	if (err) {
-		dev_err(dev, "failed to enable reference clock (%d)\n", err);
-		goto out_netdev;
-	}
-
 	/* Optional regulator for PHY */
 	priv->regulator = devm_regulator_get_optional(dev, "phy");
 	if (IS_ERR(priv->regulator)) {
 		if (PTR_ERR(priv->regulator) == -EPROBE_DEFER) {
 			err = -EPROBE_DEFER;
-			goto out_clk_disable;
+			goto out_netdev;
 		}
 		dev_err(dev, "no regulator found\n");
 		priv->regulator = NULL;
@@ -173,7 +167,7 @@ static int emac_rockchip_probe(struct platform_device *pdev)
 		err = regulator_enable(priv->regulator);
 		if (err) {
 			dev_err(dev, "failed to enable phy-supply (%d)\n", err);
-			goto out_clk_disable;
+			goto out_netdev;
 		}
 	}
 
@@ -200,7 +194,7 @@ static int emac_rockchip_probe(struct platform_device *pdev)
 	}
 
 	if (priv->soc_data->need_div_macclk) {
-		priv->macclk = devm_clk_get(dev, "macclk");
+		priv->macclk = devm_clk_get_enabled(dev, "macclk");
 		if (IS_ERR(priv->macclk)) {
 			dev_err(dev, "failed to retrieve mac clock (%ld)\n",
 				PTR_ERR(priv->macclk));
@@ -208,37 +202,26 @@ static int emac_rockchip_probe(struct platform_device *pdev)
 			goto out_regulator_disable;
 		}
 
-		err = clk_prepare_enable(priv->macclk);
-		if (err) {
-			dev_err(dev, "failed to enable mac clock (%d)\n", err);
-			goto out_regulator_disable;
-		}
-
 		/* RMII TX/RX needs always a rate of 25MHz */
 		err = clk_set_rate(priv->macclk, 25000000);
 		if (err) {
 			dev_err(dev,
 				"failed to change mac clock rate (%d)\n", err);
-			goto out_clk_disable_macclk;
+			goto out_regulator_disable;
 		}
 	}
 
 	err = arc_emac_probe(ndev, interface);
 	if (err) {
 		dev_err(dev, "failed to probe arc emac (%d)\n", err);
-		goto out_clk_disable_macclk;
+		goto out_regulator_disable;
 	}
 
 	return 0;
 
-out_clk_disable_macclk:
-	if (priv->soc_data->need_div_macclk)
-		clk_disable_unprepare(priv->macclk);
 out_regulator_disable:
 	if (priv->regulator)
 		regulator_disable(priv->regulator);
-out_clk_disable:
-	clk_disable_unprepare(priv->refclk);
 out_netdev:
 	free_netdev(ndev);
 	return err;
@@ -251,14 +234,9 @@ static void emac_rockchip_remove(struct platform_device *pdev)
 
 	arc_emac_remove(ndev);
 
-	clk_disable_unprepare(priv->refclk);
-
 	if (priv->regulator)
 		regulator_disable(priv->regulator);
 
-	if (priv->soc_data->need_div_macclk)
-		clk_disable_unprepare(priv->macclk);
-
 	free_netdev(ndev);
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
