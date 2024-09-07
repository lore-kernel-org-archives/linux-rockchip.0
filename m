Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4183AE6FE47
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXjUmZ1nFPtV0TCvkaEU5dGH0HhaOKp1slXum4M2CQ0=; b=qaD5NC7MYvfwpA
	MdK1gFuyeJXBy7QL5yfUmRliFf7Y7jNygHIt+YgY4CJME/hHFJkbgo6RXyOa6T0mV4BnUy+a8TNI/
	qJUDh2Juxy5o7NdvfeCM7sfSnFATq+8bt7DPJpIJJQgjVfELv/g2M60kTbnzydWd+mh7MciLVxov6
	+YK4KURqv7CQIRsYBBBJ85BnjoC8X8iTRNljB0E/8XQ+rAYDTbFmGoAwsbD6NouOFpHE2Ggv24Y/k
	YvZgfZIEsSbtHSswuDgYWnpi3YsSZJ6FyEFx2PhpfAvSn3rcWiIkq1dhKwxHsygTfbvdEMdTQ2eZe
	gPUKFrU7YMb3sADa+ziA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smm0J-0000000EDcG-0vNn;
	Sat, 07 Sep 2024 03:20:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqW-0000000EBFM-0Xdb;
	Sat, 07 Sep 2024 03:10:47 +0000
Received: from mail.maildlp.com (unknown [172.19.88.234])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4X0ylF1951z1S72W;
	Sat,  7 Sep 2024 11:10:17 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 83B8E1400CF;
	Sat,  7 Sep 2024 11:10:41 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:40 +0800
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
Subject: [PATCH net-next v2 04/10] net: ethernet: ethoc: Convert using devm_clk_get_enabled() in ethoc_probe()
Date: Sat, 7 Sep 2024 11:19:20 +0800
Message-ID: <20240907031926.3591353-5-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201044_865076_8AB51729 
X-CRM114-Status: GOOD (  11.63  )
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
the free2 label, and the meaning of the free3 label is not clear, Changing
it to free_mdiobus will make it more understandable.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/ethernet/ethoc.c | 18 ++++++------------
 1 file changed, 6 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/ethoc.c b/drivers/net/ethernet/ethoc.c
index ad41c9019018..1a56e20cb679 100644
--- a/drivers/net/ethernet/ethoc.c
+++ b/drivers/net/ethernet/ethoc.c
@@ -1172,13 +1172,10 @@ static int ethoc_probe(struct platform_device *pdev)
 
 	/* Allow the platform setup code to adjust MII management bus clock. */
 	if (!eth_clkfreq) {
-		struct clk *clk = devm_clk_get(&pdev->dev, NULL);
+		priv->clk = devm_clk_get_enabled(&pdev->dev, NULL);
 
-		if (!IS_ERR(clk)) {
-			priv->clk = clk;
-			clk_prepare_enable(clk);
-			eth_clkfreq = clk_get_rate(clk);
-		}
+		if (!IS_ERR(priv->clk))
+			eth_clkfreq = clk_get_rate(priv->clk);
 	}
 	if (eth_clkfreq) {
 		u32 clkdiv = MIIMODER_CLKDIV(eth_clkfreq / 2500000 + 1);
@@ -1195,7 +1192,7 @@ static int ethoc_probe(struct platform_device *pdev)
 	priv->mdio = mdiobus_alloc();
 	if (!priv->mdio) {
 		ret = -ENOMEM;
-		goto free2;
+		goto free;
 	}
 
 	priv->mdio->name = "ethoc-mdio";
@@ -1208,7 +1205,7 @@ static int ethoc_probe(struct platform_device *pdev)
 	ret = mdiobus_register(priv->mdio);
 	if (ret) {
 		dev_err(&netdev->dev, "failed to register MDIO bus\n");
-		goto free3;
+		goto free_mdiobus;
 	}
 
 	ret = ethoc_mdio_probe(netdev);
@@ -1240,10 +1237,8 @@ static int ethoc_probe(struct platform_device *pdev)
 	netif_napi_del(&priv->napi);
 error:
 	mdiobus_unregister(priv->mdio);
-free3:
+free_mdiobus:
 	mdiobus_free(priv->mdio);
-free2:
-	clk_disable_unprepare(priv->clk);
 free:
 	free_netdev(netdev);
 out:
@@ -1267,7 +1262,6 @@ static void ethoc_remove(struct platform_device *pdev)
 			mdiobus_unregister(priv->mdio);
 			mdiobus_free(priv->mdio);
 		}
-		clk_disable_unprepare(priv->clk);
 		unregister_netdev(netdev);
 		free_netdev(netdev);
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
