Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08DE9C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gnZkKb02ltGlVWU+j3aqo4VYRSddOrOmDbNfv2RTgJs=; b=T9oyLxmTfp79x1
	1YwgnWc5RxSJUBXdvM4MI9X+ibBEh3fFBQT6qbXicQQQOu8n/4hhmiudI0HxmNef/C/FyJhVokYCL
	pp99mOGVLqbpXxlIvxvLLjVqoepIbLj1ge/PdujMUftgvGnM7RcblbtRNvLizxILaXIi/GXsn3POq
	pi6ApDJpm5v0c6z6t/3lKLViXoLw+pBavswrlkKIl6yOVVYHtb0EbkHFurCA0FBWTKL6hSYstfkvX
	VisGq7QqNPcUkMKN1AY//oTXRzXtkn9C8PH/mN93khnvinHwKuK8FR4qYBx4r/An0ZumBzbLkOnwB
	WnJSllkSPRFtzc8rU1+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2A9T-002Cx5-4h; Mon, 05 Dec 2022 12:00:51 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2A9F-002CNu-Nu; Mon, 05 Dec 2022 12:00:39 +0000
Received: from kwepemi500016.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NQhtP5nVgzmWNx;
	Mon,  5 Dec 2022 19:59:41 +0800 (CST)
Received: from huawei.com (10.175.100.227) by kwepemi500016.china.huawei.com
 (7.221.188.220) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Mon, 5 Dec
 2022 20:00:28 +0800
From: Shang XiaoJing <shangxiaojing@huawei.com>
To: <kishon@ti.com>, <vkoul@kernel.org>, <heiko@sntech.de>,
	<frank.wang@rock-chips.com>, <linux@roeck-us.net>,
	<linux-phy@lists.infradead.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>
CC: <shangxiaojing@huawei.com>
Subject: [PATCH] phy: rockchip-inno-usb2: Fix missing clk_disable_unprepare() in rockchip_usb2phy_power_on()
Date: Mon, 5 Dec 2022 19:58:23 +0800
Message-ID: <20221205115823.16957-1-shangxiaojing@huawei.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.175.100.227]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemi500016.china.huawei.com (7.221.188.220)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_040037_991011_FA8E2EEE 
X-CRM114-Status: UNSURE (   9.46  )
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

The clk_disable_unprepare() should be called in the error handling of
rockchip_usb2phy_power_on().

Fixes: 0e08d2a727e6 ("phy: rockchip-inno-usb2: add a new driver for Rockchip usb2phy")
Signed-off-by: Shang XiaoJing <shangxiaojing@huawei.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index e6ededc51523..a0bc10aa7961 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -485,8 +485,10 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
 		return ret;
 
 	ret = property_enable(base, &rport->port_cfg->phy_sus, false);
-	if (ret)
+	if (ret) {
+		clk_disable_unprepare(rphy->clk480m);
 		return ret;
+	}
 
 	/* waiting for the utmi_clk to become stable */
 	usleep_range(1500, 2000);
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
