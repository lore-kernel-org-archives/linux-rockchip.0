Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D77CA101E
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 02:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oXTEWlnVDT7JQ/VjyuPlpj7uE+zSaG/D4HWweSKi7l0=; b=wakK7ndQ6Y2fvI
	gcQvLCTNEhcy88qe+Wmt0eDcRlGHOiTEBYHRaoYzUpQvFxf7FSWG4UiKws0Yxp5fkB4mSQD2xjIWx
	MAysTk3FiUCiJUxvsGxUj99UuSnOggB2JF8zYQp0qk8FO8uDsNkUDvyyMboSF8cxzOq72xFpdd6cH
	rHJEhS7N0ayA/ZfVg9UUITIlYNkIjSIO84fTcv7/j8TOUyNGfnwGOzkcGFpIfB9oK5RH1Tn/+3Ktl
	M6UHuEY4+omsmb5nQ2PYqEtmMjQ4QRr30s+/HO/hMOD6wj7H0Xf3YmrfbQ2JXZeU3VNQspAPoqr8v
	hPx9feJStZI7WNdrrqgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skDaT-00000008Iks-0bgD;
	Sat, 31 Aug 2024 02:11:37 +0000
Received: from szxga02-in.huawei.com ([45.249.212.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skDUa-00000008HhB-1qof;
	Sat, 31 Aug 2024 02:05:34 +0000
Received: from mail.maildlp.com (unknown [172.19.162.254])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4Wwdbh1Dd5zpVB5;
	Sat, 31 Aug 2024 10:03:44 +0800 (CST)
Received: from kwepemd500012.china.huawei.com (unknown [7.221.188.25])
	by mail.maildlp.com (Postfix) with ESMTPS id 2D0CD18010A;
	Sat, 31 Aug 2024 10:05:30 +0800 (CST)
Received: from huawei.com (10.90.53.73) by kwepemd500012.china.huawei.com
 (7.221.188.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.34; Sat, 31 Aug
 2024 10:05:28 +0800
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
Subject: [PATCH net-next 12/12] wifi: wilc1000: Convert using devm_clk_get_optional_enabled() in wilc_bus_probe()
Date: Sat, 31 Aug 2024 10:13:34 +0800
Message-ID: <20240831021334.1907921-13-lizetao1@huawei.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240831021334.1907921-1-lizetao1@huawei.com>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.90.53.73]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemd500012.china.huawei.com (7.221.188.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_190532_764096_3A06CAAF 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
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
 drivers/net/wireless/microchip/wilc1000/spi.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/net/wireless/microchip/wilc1000/spi.c b/drivers/net/wireless/microchip/wilc1000/spi.c
index 5ff940c53ad9..05b577b1068e 100644
--- a/drivers/net/wireless/microchip/wilc1000/spi.c
+++ b/drivers/net/wireless/microchip/wilc1000/spi.c
@@ -228,12 +228,11 @@ static int wilc_bus_probe(struct spi_device *spi)
 	if (ret < 0)
 		goto netdev_cleanup;
 
-	wilc->rtc_clk = devm_clk_get_optional(&spi->dev, "rtc");
+	wilc->rtc_clk = devm_clk_get_optional_enabled(&spi->dev, "rtc");
 	if (IS_ERR(wilc->rtc_clk)) {
 		ret = PTR_ERR(wilc->rtc_clk);
 		goto netdev_cleanup;
 	}
-	clk_prepare_enable(wilc->rtc_clk);
 
 	dev_info(&spi->dev, "Selected CRC config: crc7=%s, crc16=%s\n",
 		 enable_crc7 ? "on" : "off", enable_crc16 ? "on" : "off");
@@ -266,7 +265,6 @@ static int wilc_bus_probe(struct spi_device *spi)
 	return 0;
 
 power_down:
-	clk_disable_unprepare(wilc->rtc_clk);
 	wilc_wlan_power(wilc, false);
 netdev_cleanup:
 	wilc_netdev_cleanup(wilc);
@@ -280,7 +278,6 @@ static void wilc_bus_remove(struct spi_device *spi)
 	struct wilc *wilc = spi_get_drvdata(spi);
 	struct wilc_spi *spi_priv = wilc->bus_data;
 
-	clk_disable_unprepare(wilc->rtc_clk);
 	wilc_netdev_cleanup(wilc);
 	kfree(spi_priv);
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
