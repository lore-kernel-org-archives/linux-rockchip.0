Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BEBE6FE47
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=le8HlbDqus96LbVs1H8Weqg7ERCtCK7dLI6xq7W95mg=; b=nVdkGIULbm9nWb
	hzobytiavJGrqdOK7qBoD05eWyVEAfDfKGmtlUJp2+SvaomG3VnYhOug287Pvu2UauSsUet+fZ8Li
	eGJLU4aoIsJLmrLZ1Fm+ClJbnbb/NhtYGcFirvIT0PwO/sH6uizEEogvbmB9nVpE18AsaaG2uYBn1
	AWOv4Oi7GYcBDMTl7ybyAmrustOptv7uwnr5AQ9gkWzPhyizefjDErKHYxed/krJ7+iiO1QEz/+Pi
	L1kHhe773yO1dF4ZhiFbwdQxCAA6zOSmVpbgUa2vCupBZzUzHSs8ivPbsjbqqQYWdpOAUvRvGohd4
	LXtoKiZI0jOGjunhQoaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smm3B-0000000EE5F-1hiJ;
	Sat, 07 Sep 2024 03:23:49 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqa-0000000EBIj-3dT3;
	Sat, 07 Sep 2024 03:10:53 +0000
Received: from mail.maildlp.com (unknown [172.19.163.44])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4X0ylK04f0z1j80G;
	Sat,  7 Sep 2024 11:10:21 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 96AEE14011F;
	Sat,  7 Sep 2024 11:10:44 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:43 +0800
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
Subject: [PATCH net-next v2 07/10] net: lantiq_xrx200: Convert using devm_clk_get_enabled() in xrx200_probe()
Date: Sat, 7 Sep 2024 11:19:23 +0800
Message-ID: <20240907031926.3591353-8-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201049_598999_FE249FA2 
X-CRM114-Status: GOOD (  12.76  )
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
the err_unprepare_clk label, and the original error process can change to
the err_uninit_dma error path. Some comments have also been adjusted.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/ethernet/lantiq_xrx200.c | 17 +++--------------
 1 file changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/net/ethernet/lantiq_xrx200.c b/drivers/net/ethernet/lantiq_xrx200.c
index 07904a528f21..976748551643 100644
--- a/drivers/net/ethernet/lantiq_xrx200.c
+++ b/drivers/net/ethernet/lantiq_xrx200.c
@@ -589,8 +589,8 @@ static int xrx200_probe(struct platform_device *pdev)
 	if (priv->chan_tx.dma.irq < 0)
 		return -ENOENT;
 
-	/* get the clock */
-	priv->clk = devm_clk_get(dev, NULL);
+	/* get the clock and enable clock gate */
+	priv->clk = devm_clk_get_enabled(dev, NULL);
 	if (IS_ERR(priv->clk)) {
 		dev_err(dev, "failed to get clock\n");
 		return PTR_ERR(priv->clk);
@@ -605,11 +605,6 @@ static int xrx200_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
-	/* enable clock gate */
-	err = clk_prepare_enable(priv->clk);
-	if (err)
-		goto err_uninit_dma;
-
 	/* set IPG to 12 */
 	xrx200_pmac_mask(priv, PMAC_RX_IPG_MASK, 0xb, PMAC_RX_IPG);
 
@@ -628,13 +623,10 @@ static int xrx200_probe(struct platform_device *pdev)
 
 	err = register_netdev(net_dev);
 	if (err)
-		goto err_unprepare_clk;
+		goto err_uninit_dma;
 
 	return 0;
 
-err_unprepare_clk:
-	clk_disable_unprepare(priv->clk);
-
 err_uninit_dma:
 	xrx200_hw_cleanup(priv);
 
@@ -654,9 +646,6 @@ static void xrx200_remove(struct platform_device *pdev)
 	/* remove the actual device */
 	unregister_netdev(net_dev);
 
-	/* release the clock */
-	clk_disable_unprepare(priv->clk);
-
 	/* shut down hardware */
 	xrx200_hw_cleanup(priv);
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
