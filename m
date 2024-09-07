Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 404FDCD4846
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fuo/gGJKimE7Kuha060Sr4IXLDTtc4faPtc0zFb19m4=; b=ciSz8S2Wqn/vrp
	wpgJh0ZTWrA3H+xyXIyhclpIWJZrcdZ3pBkz4ASYfd7T9+NP1rKxb6jLueY+fe4wpeyF1Uv0FdVAy
	UTlJdD2prMzXknspdDq16oyxC337eaynEMqVm54XDuHkUUsNnaW4EgaKQms+jx2J9vOvph6lhycdg
	Nm0zk1QQvHnvcq8ppzUXWPi9VxmQ6rsZqYy8gO9xC/cQiDo1NGH3lJZT1HBGFQaMWCr7CSXK9ZOO+
	CftXBBRrLLq3gsfgWnXsN1Slnjd/ArGfvjdFXE6qRq6gK+YfYrXqiTm35Yi0NoZgDop0HzPaq9KYG
	s8TGZEacdndvOPU/K9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smm1H-0000000EDmu-09SU;
	Sat, 07 Sep 2024 03:21:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqX-0000000EBH3-43IU;
	Sat, 07 Sep 2024 03:10:50 +0000
Received: from mail.maildlp.com (unknown [172.19.163.44])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4X0ylH1Ly1z1S9jX;
	Sat,  7 Sep 2024 11:10:19 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 896C414011F;
	Sat,  7 Sep 2024 11:10:43 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:42 +0800
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
Subject: [PATCH net-next v2 06/10] net: ethernet: hisilicon: Convert using devm_clk_get_enabled() in hisi_femac_drv_probe()
Date: Sat, 7 Sep 2024 11:19:22 +0800
Message-ID: <20240907031926.3591353-7-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201046_631657_03E50248 
X-CRM114-Status: GOOD (  10.49  )
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
the out_disable_clk label, and the original error process can change to
the out_free_netdev error path.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/ethernet/hisilicon/hisi_femac.c | 17 ++++-------------
 1 file changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/hisilicon/hisi_femac.c b/drivers/net/ethernet/hisilicon/hisi_femac.c
index 2406263c9dd3..ffb6f4751d8b 100644
--- a/drivers/net/ethernet/hisilicon/hisi_femac.c
+++ b/drivers/net/ethernet/hisilicon/hisi_femac.c
@@ -797,23 +797,17 @@ static int hisi_femac_drv_probe(struct platform_device *pdev)
 		goto out_free_netdev;
 	}
 
-	priv->clk = devm_clk_get(&pdev->dev, NULL);
+	priv->clk = devm_clk_get_enabled(&pdev->dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		dev_err(dev, "failed to get clk\n");
 		ret = -ENODEV;
 		goto out_free_netdev;
 	}
 
-	ret = clk_prepare_enable(priv->clk);
-	if (ret) {
-		dev_err(dev, "failed to enable clk %d\n", ret);
-		goto out_free_netdev;
-	}
-
 	priv->mac_rst = devm_reset_control_get(dev, "mac");
 	if (IS_ERR(priv->mac_rst)) {
 		ret = PTR_ERR(priv->mac_rst);
-		goto out_disable_clk;
+		goto out_free_netdev;
 	}
 	hisi_femac_core_reset(priv);
 
@@ -826,7 +820,7 @@ static int hisi_femac_drv_probe(struct platform_device *pdev)
 						 priv->phy_reset_delays,
 						 DELAYS_NUM);
 		if (ret)
-			goto out_disable_clk;
+			goto out_free_netdev;
 		hisi_femac_phy_reset(priv);
 	}
 
@@ -834,7 +828,7 @@ static int hisi_femac_drv_probe(struct platform_device *pdev)
 	if (!phy) {
 		dev_err(dev, "connect to PHY failed!\n");
 		ret = -ENODEV;
-		goto out_disable_clk;
+		goto out_free_netdev;
 	}
 
 	phy_attached_print(phy, "phy_id=0x%.8lx, phy_mode=%s\n",
@@ -885,8 +879,6 @@ static int hisi_femac_drv_probe(struct platform_device *pdev)
 out_disconnect_phy:
 	netif_napi_del(&priv->napi);
 	phy_disconnect(phy);
-out_disable_clk:
-	clk_disable_unprepare(priv->clk);
 out_free_netdev:
 	free_netdev(ndev);
 
@@ -902,7 +894,6 @@ static void hisi_femac_drv_remove(struct platform_device *pdev)
 	unregister_netdev(ndev);
 
 	phy_disconnect(ndev->phydev);
-	clk_disable_unprepare(priv->clk);
 	free_netdev(ndev);
 }
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
