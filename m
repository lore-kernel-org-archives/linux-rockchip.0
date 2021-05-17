Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D14EEC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9911F61108
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 15:41:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9911F61108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Q5cb0F40m0ZlsQ7zcY/vhiDI5DkqC2Qn0UhRbjKa34=; b=bsw9UC3rbtj/1cejvtY+LvQuc
	wKgq31dlyMVA00mSExiHJZ290c/f+RNm8Xwom8E1AP6hp/+oSyL9n+Ze6mKGzPTKroKCc1lJeQlKF
	1cK9GoTPWYmvvEuufgLD3Ly0VMRTlwffcqFU5VGq0VR+RR9oM/Ukz4Qi1rNDKZkN21GYXXw0CIEsS
	k4o3935pZ1KyV/YslBmyNIDganwv9OH2tHMY3YjmPhxYhWdcmBr9pCw99G6Dg8WCFh5mkFkUwlvK0
	/gZqDm6GhYp7raC3DzKBHgy3RWoh9cSP6C+8NJF4MdTzetr30HF7nu1n0GoirXuPnIfsfsX4Mlben
	McCjCLrjA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lifMe-00FRN7-B0; Mon, 17 May 2021 15:41:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMc-00FRMT-Av
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 15:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=+WABODUOkGFIrZMOr06ZD0FvrHOxQ+T9otH4rfZo5jg=; b=ojSUjNtNMKlcYRVM1PNVD2n7w3
 /FnOcB23Q8Y+0TYun4+9cATjdALVe1xUnNEtyuWuuAde3DMmsSjQk7K6dX/VJtdj2phK7ljTB/HUT
 yrFWsS9GgpQ3Q1lBmadunkX27R3tRxNVKExvVJ+2IxZqAXXWTuP+CRpLF76gRysuNWO7Nw5ZpWRRK
 ulaGhmKAVVL6+WpiaEk4Xfbcj81dxnqE+osHNZzndR7yZj1hUfhm5W+Qlo9XWZrlpkk0RnUbOoK7R
 k4KVzjMR+OIwZjlgzJ6F4WP/A8f1TdJFfyGKHfRGhUWP8ikyBr1BP7oFtrhPewWQt/7wqy0QZwHwt
 xu3u/Z6A==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lifMZ-00Dw1f-OE
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 15:41:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8D5C71F40323
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, Rob Herring <robh+dt@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens213@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 net-next 2/4] net: stmmac: dwmac-rk: Check
 platform-specific ops
Date: Mon, 17 May 2021 12:40:35 -0300
Message-Id: <20210517154037.37946-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210517154037.37946-1-ezequiel@collabora.com>
References: <20210517154037.37946-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_084059_935854_A5015C37 
X-CRM114-Status: GOOD (  11.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: David Wu <david.wu@rock-chips.com>

Add a check for non-null struct rk_gmac_ops for the
configured PHY interface mode, failing if unsupported.

Signed-off-by: David Wu <david.wu@rock-chips.com>
[Ezequiel: Refactor so it fails if unsupported]
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 31 +++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 56034f21fcef..791c13d47a35 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1342,11 +1342,36 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
 	return bsp_priv;
 }
 
+static int rk_gmac_check_ops(struct rk_priv_data *bsp_priv)
+{
+	switch (bsp_priv->phy_iface) {
+	case PHY_INTERFACE_MODE_RGMII:
+	case PHY_INTERFACE_MODE_RGMII_ID:
+	case PHY_INTERFACE_MODE_RGMII_RXID:
+	case PHY_INTERFACE_MODE_RGMII_TXID:
+		if (!bsp_priv->ops->set_to_rgmii)
+			return -EINVAL;
+		break;
+	case PHY_INTERFACE_MODE_RMII:
+		if (!bsp_priv->ops->set_to_rmii)
+			return -EINVAL;
+		break;
+	default:
+		dev_err(&bsp_priv->pdev->dev,
+			"unsupported interface %d", bsp_priv->phy_iface);
+	}
+	return 0;
+}
+
 static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 {
 	int ret;
 	struct device *dev = &bsp_priv->pdev->dev;
 
+	ret = rk_gmac_check_ops(bsp_priv);
+	if (ret)
+		return ret;
+
 	ret = gmac_clk_enable(bsp_priv, true);
 	if (ret)
 		return ret;
@@ -1417,10 +1442,12 @@ static void rk_fix_speed(void *priv, unsigned int speed)
 	case PHY_INTERFACE_MODE_RGMII_ID:
 	case PHY_INTERFACE_MODE_RGMII_RXID:
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		bsp_priv->ops->set_rgmii_speed(bsp_priv, speed);
+		if (bsp_priv->ops->set_rgmii_speed)
+			bsp_priv->ops->set_rgmii_speed(bsp_priv, speed);
 		break;
 	case PHY_INTERFACE_MODE_RMII:
-		bsp_priv->ops->set_rmii_speed(bsp_priv, speed);
+		if (bsp_priv->ops->set_rmii_speed)
+			bsp_priv->ops->set_rmii_speed(bsp_priv, speed);
 		break;
 	default:
 		dev_err(dev, "unsupported interface %d", bsp_priv->phy_iface);
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
