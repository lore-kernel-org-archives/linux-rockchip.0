Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF82FC433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:35:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7ECEC613CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:35:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7ECEC613CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nv/W97go1lPxYa2DYe2mDclnZmqnFARxk4FJLMuXbT4=; b=Ug7mJ4FmHr4l/6N1+EBcK9bWf
	6uX3n3XODriaXoNJ+XCXpp9x2TIKbDTkz5fOuAdQS+Y0No7xX0areEGInciOJyCeC+I0CnIWa5p6l
	LZe8o1J5IYhzZfpLSOv8qVGvvdvMb2vgMTQ7/vLKjIEGNlqccEYIvD7s2enNZC86yBjpVZyKL7r+Y
	hoWIYKMwf0CtAtO4sz+QCoDG+szy8ZmnTv5t0EhxA77FwlbJd8ZL+bh53NHzLDBp4zB8DKSfZVSvw
	S20HBFHKwZBM7lvS89IX9xb22EO9GJsMPq08FrHMbQCZq2eXYXYPbSW1ihIemekryLHOjW86oOcRL
	h/CuYFYKg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZJYr-00F9ce-Hz; Wed, 21 Apr 2021 20:35:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJYO-00F9Mj-9V
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 20:34:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ujCSsEPub6/CO0jKvurM8YWi+c8RqT+b3rLLc8gqxBU=; b=hSoKfpMhLOjAZlQbA0Rn5o8B3C
 PfVcq8/dbj49m9ZKzzvGrJkiMlqLX59ljVOD6+8k1k3XznVsW/dAmueofm4MsAWPV2j37kaZOyR5o
 S47rOMw0iM/qAeWljSX5+e50IyNTuTbFMH89jv5fu33KN/v1RPgtJc3nJ1mQr6VBjwbH2bW31B4Sj
 JL6G0dciqqjnAyzqWR/NnZJRlGw+FPOl6VqdU6h0ETSzhTT5C+n/DHR4qCCVeXAAAF07yYeCodZey
 OGI/qWCmQrhYsU7F+xpuObJR/DZ9YaLMBrAOMpYFqrspOgGNyvZ8tguhF/IJMgqgxQyyxFX+IKwGp
 rm4kafWg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJYL-00DApD-NE
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 20:34:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 416231F42694
From: Ezequiel Garcia <ezequiel@collabora.com>
To: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 David Wu <david.wu@rock-chips.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v2 2/3] net: stmmac: dwmac-rk: Check platform-specific ops
Date: Wed, 21 Apr 2021 17:34:08 -0300
Message-Id: <20210421203409.40717-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210421203409.40717-1-ezequiel@collabora.com>
References: <20210421203409.40717-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_133429_909422_492F1A7D 
X-CRM114-Status: GOOD (  10.89  )
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
index c432a9592489..d2637d83899e 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -1294,11 +1294,36 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
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
@@ -1369,10 +1394,12 @@ static void rk_fix_speed(void *priv, unsigned int speed)
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
