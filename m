Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75DEDE6FE47
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Sep 2024 03:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DMzX1kJHD75N0aJvUPNVf13oJLAM1/Kw9lBipcrN8M=; b=cIsEpVf9bRG6Wp
	NFbpfiF4yzRYGvyNtpQ+2VfIe0OLU/AwyvZsx14U5za6OAXco1l4K1HLTRmGkSbTKKQBA4JYCFqmB
	vn2KShZjhx6QSZNDTc5FO19TWmf6tjtE5XVSvAyGqRHr2uUnZiSP4jFz7a+CkgT8KWOEV7BOm9J/i
	xNFFxcbOJ9Nw7Pc4WBQO94TKXC9pLkdbaDxGEIDJ3t7UpKuN/Gmg8thkFX6Cs4BO3sCQgIoc902k7
	FOj953KPAkUvj1jlnt+2+z2AOIOhMJ4ll9KRlyMoM5W2rKdBNUMDFVM98KBGsoxGnl/e+9aeJaPX5
	H2ER47chcmrK/foBqqcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlyM-0000000EDIZ-141K;
	Sat, 07 Sep 2024 03:18:50 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smlqT-0000000EBD3-3Qzd;
	Sat, 07 Sep 2024 03:10:46 +0000
Received: from mail.maildlp.com (unknown [172.19.88.234])
	by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4X0ydt3hkwz20nY9;
	Sat,  7 Sep 2024 11:05:38 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 8298B1400CF;
	Sat,  7 Sep 2024 11:10:38 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 7 Sep
 2024 11:10:37 +0800
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
Subject: [PATCH net-next v2 01/10] net: dsa: bcm_sf2: Convert using devm_clk_get_optional_enabled() in bcm_sf2_sw_probe()
Date: Sat, 7 Sep 2024 11:19:17 +0800
Message-ID: <20240907031926.3591353-2-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240907031926.3591353-1-lizetao1@huawei.com>
References: <20240907031926.3591353-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_201042_440227_6FAC139D 
X-CRM114-Status: GOOD (  10.98  )
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
no need to execute clk_disable_unprepare(clk) on the error path, drop
the out_clk_mdiv and out_clk labels, and the original error process can
be returned directly.

Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
Signed-off-by: Li Zetao <lizetao1@huawei.com>
---
 drivers/net/dsa/bcm_sf2.c | 28 ++++++----------------------
 1 file changed, 6 insertions(+), 22 deletions(-)

diff --git a/drivers/net/dsa/bcm_sf2.c b/drivers/net/dsa/bcm_sf2.c
index 0e663ec0c12a..96c0fdb56601 100644
--- a/drivers/net/dsa/bcm_sf2.c
+++ b/drivers/net/dsa/bcm_sf2.c
@@ -1453,28 +1453,18 @@ static int bcm_sf2_sw_probe(struct platform_device *pdev)
 		base++;
 	}
 
-	priv->clk = devm_clk_get_optional(&pdev->dev, "sw_switch");
+	priv->clk = devm_clk_get_optional_enabled(&pdev->dev, "sw_switch");
 	if (IS_ERR(priv->clk))
 		return PTR_ERR(priv->clk);
 
-	ret = clk_prepare_enable(priv->clk);
-	if (ret)
-		return ret;
-
-	priv->clk_mdiv = devm_clk_get_optional(&pdev->dev, "sw_switch_mdiv");
-	if (IS_ERR(priv->clk_mdiv)) {
-		ret = PTR_ERR(priv->clk_mdiv);
-		goto out_clk;
-	}
-
-	ret = clk_prepare_enable(priv->clk_mdiv);
-	if (ret)
-		goto out_clk;
+	priv->clk_mdiv = devm_clk_get_optional_enabled(&pdev->dev, "sw_switch_mdiv");
+	if (IS_ERR(priv->clk_mdiv))
+		return PTR_ERR(priv->clk_mdiv);
 
 	ret = bcm_sf2_sw_rst(priv);
 	if (ret) {
 		pr_err("unable to software reset switch: %d\n", ret);
-		goto out_clk_mdiv;
+		return ret;
 	}
 
 	bcm_sf2_crossbar_setup(priv);
@@ -1484,7 +1474,7 @@ static int bcm_sf2_sw_probe(struct platform_device *pdev)
 	ret = bcm_sf2_mdio_register(ds);
 	if (ret) {
 		pr_err("failed to register MDIO bus\n");
-		goto out_clk_mdiv;
+		return ret;
 	}
 
 	bcm_sf2_gphy_enable_set(priv->dev->ds, false);
@@ -1551,10 +1541,6 @@ static int bcm_sf2_sw_probe(struct platform_device *pdev)
 
 out_mdio:
 	bcm_sf2_mdio_unregister(priv);
-out_clk_mdiv:
-	clk_disable_unprepare(priv->clk_mdiv);
-out_clk:
-	clk_disable_unprepare(priv->clk);
 	return ret;
 }
 
@@ -1571,8 +1557,6 @@ static void bcm_sf2_sw_remove(struct platform_device *pdev)
 	dsa_unregister_switch(priv->dev->ds);
 	bcm_sf2_cfp_exit(priv->dev->ds);
 	bcm_sf2_mdio_unregister(priv);
-	clk_disable_unprepare(priv->clk_mdiv);
-	clk_disable_unprepare(priv->clk);
 	if (priv->type == BCM7278_DEVICE_ID)
 		reset_control_assert(priv->rcdev);
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
