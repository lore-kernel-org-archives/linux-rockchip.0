Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B87FC5320E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 21:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFbW6vCn1OWHE0/EqpRw5t7GHMe/IyrYFmTByUBRS5Y=; b=uQbtuzYMPPMN+2
	djnrZRknCXrMW3JiJJXrmdQojW4BStUcBZotmurkUg1donlVeCcM8a1SQmICXdP5LHD3hkm9YFWEP
	2O1uCbg2BJsQ6aqnKUXeeJL3hgLBP1/vzyAJpG2L0WjrI55td/W1gvbXlZaRmA05WFfpoejmDgFZj
	pkXiN5Hk0U6Twq1QuJupamN3faggGcRI9nEJt42x8CB2gB8k+eJ+dc4N2183v5TRI6NwQ5qB+eMU5
	eOyrH+RWIQpQ5843Fm/S/iuKMt4hTCInSDsLcobmyKbwNsaQXyr55X063Zhb7OqPZOR3W8e9SwPcD
	LYOMAzlr2SLt6CvYajhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIe-0000000ELly-12Qm;
	Thu, 22 Aug 2024 21:24:56 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shFIX-0000000ELiD-0HUX;
	Thu, 22 Aug 2024 21:24:50 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724361880; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=IkA6hN8H3x2DF8V9mxRMupij6TobJMjfLmiPNg08ryAd5kADu5/UZ1Kq23geHJW2uvz4I90LrplXAx5OaIbzAf0iEpxGjwgaphkYAxTfi/khZyjL+UGqyJJoQODwEID4d+QbTp2rApd7MB9TMjZX71NUWtkfvZ2oNXxGLCyRv2M=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724361880; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NS4CxkTiArEGKDo4R2GEQhehc7xfiMhtmReWN/dqCBE=; 
	b=W7A44DjJT7euWf/KcWxrCSLeyNmpbGam22WBNLfcKAiIPveOukKa4l8rFL/BzT7IpgWYDNz1pNITqzrmFoqmAn+NHFQnP9Luz7R0Cy/Bb9KZ0Asi+Dt9200UJw1ZoHgOtrqLLL9Wvr0thlLCQ7+ZigYhc7K3P+qoH6OjVC1fmck=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724361880;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=NS4CxkTiArEGKDo4R2GEQhehc7xfiMhtmReWN/dqCBE=;
	b=HCFZMrZto0mO1j4cXzVGozhYhFRFwk5rbDtiJ75nef5dQ0jIS5oe4KxziD7LiyiT
	lDZ1F2EWXkHbShrhkcbjpBW7nPr4HIq664YeaZv+W7vrdiLIyfwGWRo/KdCjRmhCkC0
	nS/03nNlDYiMLXh7exM8abOs+8Oo7JoTblQ5eSfc=
Received: by mx.zohomail.com with SMTPS id 1724361878947371.4122073368609;
	Thu, 22 Aug 2024 14:24:38 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jaehoon Chung <jh80.chung@samsung.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v4 4/4] mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
Date: Thu, 22 Aug 2024 17:15:34 -0400
Message-ID: <20240822212418.982927-5-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822212418.982927-1-detlev.casanova@collabora.com>
References: <20240822212418.982927-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_142449_180201_0EC7620E 
X-CRM114-Status: GOOD (  15.06  )
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

On rk3576 the tunable clocks are inside the controller itself, removing
the need for the "ciu-drive" and "ciu-sample" clocks.

That makes it a new type of controller that has its own dt_parse function.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 48 ++++++++++++++++++++++++++----
 1 file changed, 43 insertions(+), 5 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 1458cb5fd5c7..7c8ccf5e71bc 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -410,7 +410,7 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	return ret;
 }
 
-static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
+static int dw_mci_common_parse_dt(struct dw_mci *host)
 {
 	struct device_node *np = host->dev->of_node;
 	struct dw_mci_rockchip_priv_data *priv;
@@ -420,13 +420,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
 		return -ENOMEM;
 
 	if (of_property_read_u32(np, "rockchip,desired-num-phases",
-					&priv->num_phases))
+				 &priv->num_phases))
 		priv->num_phases = 360;
 
 	if (of_property_read_u32(np, "rockchip,default-sample-phase",
-					&priv->default_sample_phase))
+				 &priv->default_sample_phase))
 		priv->default_sample_phase = 0;
 
+	host->priv = priv;
+
+	return 0;
+}
+
+static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
+{
+	struct dw_mci_rockchip_priv_data *priv;
+	int err;
+
+	err = dw_mci_common_parse_dt(host);
+	if (err)
+		return err;
+
+	priv = host->priv;
+
 	priv->drv_clk = devm_clk_get(host->dev, "ciu-drive");
 	if (IS_ERR(priv->drv_clk))
 		dev_dbg(host->dev, "ciu-drive not available\n");
@@ -435,13 +451,25 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
 	if (IS_ERR(priv->sample_clk))
 		dev_dbg(host->dev, "ciu-sample not available\n");
 
-	host->priv = priv;
-
 	priv->internal_phase = false;
 
 	return 0;
 }
 
+static int dw_mci_rk3576_parse_dt(struct dw_mci *host)
+{
+	struct dw_mci_rockchip_priv_data *priv;
+	int err = dw_mci_common_parse_dt(host);
+	if (err)
+		return err;
+
+	priv = host->priv;
+
+	priv->internal_phase = true;
+
+	return 0;
+}
+
 static int dw_mci_rockchip_init(struct dw_mci *host)
 {
 	int ret, i;
@@ -483,11 +511,21 @@ static const struct dw_mci_drv_data rk3288_drv_data = {
 	.init			= dw_mci_rockchip_init,
 };
 
+static const struct dw_mci_drv_data rk3576_drv_data = {
+	.common_caps		= MMC_CAP_CMD23,
+	.set_ios		= dw_mci_rk3288_set_ios,
+	.execute_tuning		= dw_mci_rk3288_execute_tuning,
+	.parse_dt		= dw_mci_rk3576_parse_dt,
+	.init			= dw_mci_rockchip_init,
+};
+
 static const struct of_device_id dw_mci_rockchip_match[] = {
 	{ .compatible = "rockchip,rk2928-dw-mshc",
 		.data = &rk2928_drv_data },
 	{ .compatible = "rockchip,rk3288-dw-mshc",
 		.data = &rk3288_drv_data },
+	{ .compatible = "rockchip,rk3576-dw-mshc",
+		.data = &rk3576_drv_data },
 	{},
 };
 MODULE_DEVICE_TABLE(of, dw_mci_rockchip_match);
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
