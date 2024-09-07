Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F3CE6FE47
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vOgMxSownPMl/+io2jxDh+9QeSYUCRmFiGJICZrNqps=; b=HXDhLCT5FczbHd
	cn3F/8Zf8qyzsZdoOwxOHrWVOVYXM8zR5KbOjZdxPt/5x2sp+l9g43cjJ2mP3eR6RRYh5ophCXO7o
	vWd5CLI3h5fJDx7p9+wEU31ERAaLbiRjj1oFcsAzgWnvECHT6Xs2xs3r5kj6jZU0/4S0plHM6JLYn
	0jURc4XwC6OeVAfnhMgfJji4F3NNf+e1iIErSBDLt7q7eOPd41LjlRNisK6S6zQ9qNUeOP129RheH
	fGiyIx6IKNUBSO/NZOV6KUP2oOTbYz09eisRdEhlgInd5bIeLhXOdA7ugNyJg5wPurRz6AKyFypNB
	Xp7DQOLW8cSb59a+43Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smm2E-0000000EDx8-2TPR;
	Sat, 07 Sep 2024 03:22:50 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqa-0000000EBJF-14zS;
	Sat, 07 Sep 2024 03:10:52 +0000
Received: from mail.maildlp.com (unknown [172.19.163.48])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4X0ylm10dwz69NV;
	Sat,  7 Sep 2024 11:10:44 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 906F0180064;
	Sat,  7 Sep 2024 11:10:45 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:44 +0800
From: Li Zetao <lizetao1@huawei.com>
To: <mchehab@kernel.org>, <florian.fainelli@broadcom.com>, <andrew@lunn.ch>,
	<olteanv@gmail.com>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <wens@csie.org>,
	<jernej.skrabec@gmail.com>, <samuel@sholland.org>, <heiko@sntech.de>,
	<yisen.zhuang@huawei.com>, <salil.mehta@huawei.com>, <hauke@hauke-m.de>,
	<alexandre.torgue@foss.st.com>, <joabreu@synopsys.com>,
	<mcoquelin.stm32@gmail.com>, <wellslutw@gmail.com>,
	<radhey.shyam.pandey@amd.com>, <michal.simek@amd.com>, <hdegoede@redhat.com>,
	<ilpo.jarvinen@linux.intel.com>, <ruanjinjie@huawei.com>,
	<lizetao1@huawei.com>, <hverkuil-cisco@xs4all.nl>,
	<u.kleine-koenig@pengutronix.de>, <jacky_chou@aspeedtech.com>,
	<jacob.e.keller@intel.com>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-sunxi@lists.linux.dev>, <linux-rockchip@lists.infradead.org>,
	<linux-stm32@st-md-mailman.stormreply.com>,
	<platform-driver-x86@vger.kernel.org>
Subject: [PATCH net-next v2 08/10] net: stmmac: dwmac-dwc-qos-eth: Convert using devm_clk_get_enabled() in dwc_qos_probe()
Date: Sat, 7 Sep 2024 11:19:24 +0800
Message-ID: <20240907031926.3591353-9-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201048_902754_724FB0D9 
X-CRM114-Status: GOOD (  12.04  )
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
the disable label, and the original error process can return directly.

The tegra_eqos_probe() also has similar modifications.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 .../stmicro/stmmac/dwmac-dwc-qos-eth.c        | 98 ++++---------------
 1 file changed, 17 insertions(+), 81 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
index ec924c6c76c6..d6e9a93771f4 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
@@ -123,49 +123,24 @@ static int dwc_qos_probe(struct platform_device *pdev,
 			 struct plat_stmmacenet_data *plat_dat,
 			 struct stmmac_resources *stmmac_res)
 {
-	int err;
-
-	plat_dat->stmmac_clk = devm_clk_get(&pdev->dev, "apb_pclk");
+	plat_dat->stmmac_clk = devm_clk_get_enabled(&pdev->dev, "apb_pclk");
 	if (IS_ERR(plat_dat->stmmac_clk)) {
 		dev_err(&pdev->dev, "apb_pclk clock not found.\n");
 		return PTR_ERR(plat_dat->stmmac_clk);
 	}
 
-	err = clk_prepare_enable(plat_dat->stmmac_clk);
-	if (err < 0) {
-		dev_err(&pdev->dev, "failed to enable apb_pclk clock: %d\n",
-			err);
-		return err;
-	}
-
-	plat_dat->pclk = devm_clk_get(&pdev->dev, "phy_ref_clk");
+	plat_dat->pclk = devm_clk_get_enabled(&pdev->dev, "phy_ref_clk");
 	if (IS_ERR(plat_dat->pclk)) {
 		dev_err(&pdev->dev, "phy_ref_clk clock not found.\n");
-		err = PTR_ERR(plat_dat->pclk);
-		goto disable;
-	}
-
-	err = clk_prepare_enable(plat_dat->pclk);
-	if (err < 0) {
-		dev_err(&pdev->dev, "failed to enable phy_ref clock: %d\n",
-			err);
-		goto disable;
+		return PTR_ERR(plat_dat->pclk);
 	}
 
 	return 0;
-
-disable:
-	clk_disable_unprepare(plat_dat->stmmac_clk);
-	return err;
 }
 
 static void dwc_qos_remove(struct platform_device *pdev)
 {
-	struct net_device *ndev = platform_get_drvdata(pdev);
-	struct stmmac_priv *priv = netdev_priv(ndev);
 
-	clk_disable_unprepare(priv->plat->pclk);
-	clk_disable_unprepare(priv->plat->stmmac_clk);
 }
 
 #define SDMEMCOMPPADCTRL 0x8800
@@ -283,53 +258,27 @@ static int tegra_eqos_probe(struct platform_device *pdev,
 	if (!is_of_node(dev->fwnode))
 		goto bypass_clk_reset_gpio;
 
-	eqos->clk_master = devm_clk_get(&pdev->dev, "master_bus");
-	if (IS_ERR(eqos->clk_master)) {
-		err = PTR_ERR(eqos->clk_master);
-		goto error;
-	}
+	eqos->clk_master = devm_clk_get_enabled(&pdev->dev, "master_bus");
+	if (IS_ERR(eqos->clk_master))
+		return PTR_ERR(eqos->clk_master);
 
-	err = clk_prepare_enable(eqos->clk_master);
-	if (err < 0)
-		goto error;
-
-	eqos->clk_slave = devm_clk_get(&pdev->dev, "slave_bus");
-	if (IS_ERR(eqos->clk_slave)) {
-		err = PTR_ERR(eqos->clk_slave);
-		goto disable_master;
-	}
+	eqos->clk_slave = devm_clk_get_enabled(&pdev->dev, "slave_bus");
+	if (IS_ERR(eqos->clk_slave))
+		return PTR_ERR(eqos->clk_slave);
 
 	data->stmmac_clk = eqos->clk_slave;
 
-	err = clk_prepare_enable(eqos->clk_slave);
-	if (err < 0)
-		goto disable_master;
-
-	eqos->clk_rx = devm_clk_get(&pdev->dev, "rx");
-	if (IS_ERR(eqos->clk_rx)) {
-		err = PTR_ERR(eqos->clk_rx);
-		goto disable_slave;
-	}
-
-	err = clk_prepare_enable(eqos->clk_rx);
-	if (err < 0)
-		goto disable_slave;
+	eqos->clk_rx = devm_clk_get_enabled(&pdev->dev, "rx");
+	if (IS_ERR(eqos->clk_rx))
+		return PTR_ERR(eqos->clk_rx);
 
-	eqos->clk_tx = devm_clk_get(&pdev->dev, "tx");
-	if (IS_ERR(eqos->clk_tx)) {
-		err = PTR_ERR(eqos->clk_tx);
-		goto disable_rx;
-	}
-
-	err = clk_prepare_enable(eqos->clk_tx);
-	if (err < 0)
-		goto disable_rx;
+	eqos->clk_tx = devm_clk_get_enabled(&pdev->dev, "tx");
+	if (IS_ERR(eqos->clk_tx))
+		return PTR_ERR(eqos->clk_tx);
 
 	eqos->reset = devm_gpiod_get(&pdev->dev, "phy-reset", GPIOD_OUT_HIGH);
-	if (IS_ERR(eqos->reset)) {
-		err = PTR_ERR(eqos->reset);
-		goto disable_tx;
-	}
+	if (IS_ERR(eqos->reset))
+		return PTR_ERR(eqos->reset);
 
 	usleep_range(2000, 4000);
 	gpiod_set_value(eqos->reset, 0);
@@ -370,15 +319,6 @@ static int tegra_eqos_probe(struct platform_device *pdev,
 	reset_control_assert(eqos->rst);
 reset_phy:
 	gpiod_set_value(eqos->reset, 1);
-disable_tx:
-	clk_disable_unprepare(eqos->clk_tx);
-disable_rx:
-	clk_disable_unprepare(eqos->clk_rx);
-disable_slave:
-	clk_disable_unprepare(eqos->clk_slave);
-disable_master:
-	clk_disable_unprepare(eqos->clk_master);
-error:
 	return err;
 }
 
@@ -388,10 +328,6 @@ static void tegra_eqos_remove(struct platform_device *pdev)
 
 	reset_control_assert(eqos->rst);
 	gpiod_set_value(eqos->reset, 1);
-	clk_disable_unprepare(eqos->clk_tx);
-	clk_disable_unprepare(eqos->clk_rx);
-	clk_disable_unprepare(eqos->clk_slave);
-	clk_disable_unprepare(eqos->clk_master);
 }
 
 struct dwc_eth_dwmac_data {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
