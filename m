Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C00CD4846
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zInPn/Gfgn4m4+01Zz2HWLYHr5v72DMxIXu1hHw436Y=; b=mj6uCjyI5RQBui
	HPdKniwfCAcqG2c1cx9ZKTtJzoYw3WwpbdGd27gjraf+nO9sri1hB+8zRaNk/GAgpfSFNRAo99cgW
	YFpCY89wrIe7AsdvTQ1h2RWMhmwvmpxVCtUWTDXb7OcNxcJEtH09xPZxazD4B7tbPFJmkt1hEXAsS
	QHxO/Y9zIT+yxwWR2kV82laDpEfOETI3FOrdqA/5wU48v8UdcHNqMRdRMWF/RIzYUpTkwmSDSr2kt
	OE75txe8+mb6RfrGP6l72StIVcwvZjnblOGy5CRvdMC/XmJsijxsLzEnwmu8vNQGUJ7zbROOCNauc
	w19yfFmY8057VbUaYfJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smm0I-0000000EDbY-1KpM;
	Sat, 07 Sep 2024 03:20:50 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqT-0000000EBDy-43uG;
	Sat, 07 Sep 2024 03:10:47 +0000
Received: from mail.maildlp.com (unknown [172.19.163.44])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4X0ydv3m2Wz20nYJ;
	Sat,  7 Sep 2024 11:05:39 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 8531A14011F;
	Sat,  7 Sep 2024 11:10:39 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:38 +0800
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
Subject: [PATCH net-next v2 02/10] net: ethernet: Convert using devm_clk_get_enabled() in emac_probe()
Date: Sat, 7 Sep 2024 11:19:18 +0800
Message-ID: <20240907031926.3591353-3-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201043_536604_4D68C3F6 
X-CRM114-Status: GOOD (  11.14  )
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
 drivers/net/ethernet/allwinner/sun4i-emac.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/allwinner/sun4i-emac.c b/drivers/net/ethernet/allwinner/sun4i-emac.c
index d761c08fe5c1..8f42501729b7 100644
--- a/drivers/net/ethernet/allwinner/sun4i-emac.c
+++ b/drivers/net/ethernet/allwinner/sun4i-emac.c
@@ -1005,22 +1005,16 @@ static int emac_probe(struct platform_device *pdev)
 	if (emac_configure_dma(db))
 		netdev_info(ndev, "configure dma failed. disable dma.\n");
 
-	db->clk = devm_clk_get(&pdev->dev, NULL);
+	db->clk = devm_clk_get_enabled(&pdev->dev, NULL);
 	if (IS_ERR(db->clk)) {
 		ret = PTR_ERR(db->clk);
 		goto out_dispose_mapping;
 	}
 
-	ret = clk_prepare_enable(db->clk);
-	if (ret) {
-		dev_err(&pdev->dev, "Error couldn't enable clock (%d)\n", ret);
-		goto out_dispose_mapping;
-	}
-
 	ret = sunxi_sram_claim(&pdev->dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Error couldn't map SRAM to device\n");
-		goto out_clk_disable_unprepare;
+		goto out_dispose_mapping;
 	}
 
 	db->phy_node = of_parse_phandle(np, "phy-handle", 0);
@@ -1068,8 +1062,6 @@ static int emac_probe(struct platform_device *pdev)
 
 out_release_sram:
 	sunxi_sram_release(&pdev->dev);
-out_clk_disable_unprepare:
-	clk_disable_unprepare(db->clk);
 out_dispose_mapping:
 	irq_dispose_mapping(ndev->irq);
 	dma_release_channel(db->rx_chan);
@@ -1095,7 +1087,6 @@ static void emac_remove(struct platform_device *pdev)
 
 	unregister_netdev(ndev);
 	sunxi_sram_release(&pdev->dev);
-	clk_disable_unprepare(db->clk);
 	irq_dispose_mapping(ndev->irq);
 	iounmap(db->membase);
 	free_netdev(ndev);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
