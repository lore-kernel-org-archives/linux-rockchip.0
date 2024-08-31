Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A231DCD1288
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 02:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpGW2TBnSf4gtnfsH04LzWrPIEvS7cMa7SBlsBOXdQo=; b=DnKlWzlVcYbQHC
	8ZDrLHlRtHTT/89DL7Yzhco+UUfuffNQwXiv0lUeWusW58TBW5MB8lBCldjRXM8Yh5/D3LSH08oE3
	y8cqnNSiKkHKFp0KmPWaHrf6E2XBlt2DuRlJPTAkxlgrEHp4RdGJnzPJd9q9r+NsbQkBnZBxhpqjD
	LLFH2C9ekm7PIl4gjupqdcJF6nhobLNo6zgeHBzOmA5x0bKNm2LqNhkWERsK2bdeVTaPWYBZIbrJW
	DrdjS+KNuvD7JVVHz6foSaVq+KrA3CbaAJv4C8VkgV8zf9LNL1XKfqRyUTXSsxQ+LD1iJVh8mNAr6
	HxyVMbVMQs6YXU+LDyeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skDdp-00000008JGY-38lD;
	Sat, 31 Aug 2024 02:15:05 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skDVE-00000008Hq3-38hr;
	Sat, 31 Aug 2024 02:06:14 +0000
Received: from mail.maildlp.com (unknown [172.19.88.214])
	by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4WwdYm3KZ4z1HHk0;
	Sat, 31 Aug 2024 10:02:04 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 20F8A1A016C;
	Sat, 31 Aug 2024 10:05:27 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 31 Aug
 2024 10:05:25 +0800
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
Subject: [PATCH net-next 09/12] net: ethernet: sunplus: Convert using devm_clk_get_enabled() in spl2sw_probe()
Date: Sat, 31 Aug 2024 10:13:31 +0800
Message-ID: <20240831021334.1907921-10-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240831021334.1907921-1-lizetao1@huawei.com>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_190613_295495_727D282C 
X-CRM114-Status: GOOD (  11.78  )
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
the out_clk_disable label, and the original error process can return
directly. Some comments have also been adjusted.

Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/ethernet/sunplus/spl2sw_driver.c | 18 +++++-------------
 1 file changed, 5 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/sunplus/spl2sw_driver.c b/drivers/net/ethernet/sunplus/spl2sw_driver.c
index 391a1bc7f446..5944b96900b2 100644
--- a/drivers/net/ethernet/sunplus/spl2sw_driver.c
+++ b/drivers/net/ethernet/sunplus/spl2sw_driver.c
@@ -355,8 +355,8 @@ static int spl2sw_probe(struct platform_device *pdev)
 		return ret;
 	irq = ret;
 
-	/* Get clock controller. */
-	comm->clk = devm_clk_get(&pdev->dev, NULL);
+	/* Get and enable clock controller. */
+	comm->clk = devm_clk_get_enabled(&pdev->dev, NULL);
 	if (IS_ERR(comm->clk)) {
 		dev_err_probe(&pdev->dev, PTR_ERR(comm->clk),
 			      "Failed to retrieve clock controller!\n");
@@ -371,10 +371,6 @@ static int spl2sw_probe(struct platform_device *pdev)
 		return PTR_ERR(comm->rstc);
 	}
 
-	/* Enable clock. */
-	ret = clk_prepare_enable(comm->clk);
-	if (ret)
-		return ret;
 	udelay(1);
 
 	/* Reset MAC */
@@ -388,7 +384,7 @@ static int spl2sw_probe(struct platform_device *pdev)
 			       dev_name(&pdev->dev), comm);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to request irq #%d!\n", irq);
-		goto out_clk_disable;
+		return ret;
 	}
 
 	/* Initialize TX and RX descriptors. */
@@ -396,7 +392,7 @@ static int spl2sw_probe(struct platform_device *pdev)
 	if (ret) {
 		dev_err(&pdev->dev, "Fail to initialize mac descriptors!\n");
 		spl2sw_descs_free(comm);
-		goto out_clk_disable;
+		return ret;
 	}
 
 	/* Initialize MAC. */
@@ -406,7 +402,7 @@ static int spl2sw_probe(struct platform_device *pdev)
 	ret = spl2sw_mdio_init(comm);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to initialize mdio bus!\n");
-		goto out_clk_disable;
+		return ret;
 	}
 
 	/* Get child node ethernet-ports. */
@@ -506,8 +502,6 @@ static int spl2sw_probe(struct platform_device *pdev)
 out_free_mdio:
 	spl2sw_mdio_remove(comm);
 
-out_clk_disable:
-	clk_disable_unprepare(comm->clk);
 	return ret;
 }
 
@@ -536,8 +530,6 @@ static void spl2sw_remove(struct platform_device *pdev)
 	netif_napi_del(&comm->tx_napi);
 
 	spl2sw_mdio_remove(comm);
-
-	clk_disable_unprepare(comm->clk);
 }
 
 static const struct of_device_id spl2sw_of_match[] = {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
