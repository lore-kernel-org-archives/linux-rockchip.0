Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E219FC5B55B
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXthTieskolYfomhllMLmQQZSWJEgH8rwa0NxM7c3LY=; b=udI4Uo0coCMUhN
	ZsxCvoGVd9E/cgE2cLMmrLPPHjgmXzw2J8LCiO0Muxv94g1wn9qpZsJoqhTfavRzJGE5Cv/yiCB+H
	+5wfXXkP65H0WCtSzITloSrdjDgpIRx4vJErOw0rG4Kgql9YZYgHKouiKf8qx6CZyK+2dp7E+3orB
	W+e/sP1U3cCEeLBo2LL59U10F/HTVN87Ap/hiLoBi/rkvQf1Er7GCIQ8aUw3C+Agli56L+/YsIO9J
	RZy3bU6XkXQlAQGc9j9R6LDGe9T8geWo9yth6WiGPbnnQERCX+/ewiOmNN9KCF9A9/W8575IS2bz2
	l5W5WDUmiuWUPFt+zTCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKpv-0000000G2SW-3qUo;
	Wed, 28 Aug 2024 15:43:55 +0000
Received: from a7-49.smtp-out.eu-west-1.amazonses.com ([54.240.7.49])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKXc-0000000FxQn-36It;
	Wed, 28 Aug 2024 15:25:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724858696;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=shJ6n+tc71cHDfqon4Rkez8fNIGRyWksu873PNeIOIg=;
	b=aT4sBRCXlmGjT4vnN0FrZ7lvvVKEpJDu4W6nF49Nx+zBn1lr9rZRa3mVRzDYukY5
	hWX3BbnXi0DcoDoKy+/rh8qGqdwgJGNcDk/ooNcHnT4Kbm3JxV6DF1lLJkmVtpKBkGr
	Ju9NpLInFJaSHMx7aym6AFU2bZDuYczLgY5vv83rGyQ0WTZpFjMjqQBjoBXf3a6o1hN
	bsquS1+HZRSfiTmf6dt58EFCm/OOUdlHTYhKnknFJ68f+DJXAj0k61b0MWO4b18lQXk
	P1Qyj8YpHZWZbz5q8bEw4Q2C/wlESZzqnIE/p1lDcAdvVGyQ+uusyXnOvBFJu7HXcTS
	USUyX9cjlA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724858696;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=shJ6n+tc71cHDfqon4Rkez8fNIGRyWksu873PNeIOIg=;
	b=gHek42amabUCXFWSvRgweSVyL5n5zMr8/wEDSE+vY42IJDbm9fl6DKaigOpENgeI
	JKo36eYhRKBnDbal5WqIkSLmW/LdwJw4J2+6JNE4afXXujpoWl6hVIhaq15caWuPaTB
	KeBkr2lUyZCdX68kiFHXEx+MEMu4j+34YXyqekog=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jaehoon Chung <jh80.chung@samsung.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, kernel@collabora.com, 
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH v5 3/3] mmc: dw_mmc-rockchip: Add support for rk3576 SoCs
Date: Wed, 28 Aug 2024 15:24:56 +0000
Message-ID: <010201919997044d-c3a008d1-afbc-462f-a928-fc1ece785bdb-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828152446.42896-1-detlev.casanova@collabora.com>
References: <20240828152446.42896-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_082500_946278_4B734D29 
X-CRM114-Status: GOOD (  14.05  )
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
index 75e9ac4bcd08..f96260fd143b 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -407,7 +407,7 @@ static int dw_mci_rk3288_execute_tuning(struct dw_mci_slot *slot, u32 opcode)
 	return ret;
 }
 
-static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
+static int dw_mci_common_parse_dt(struct dw_mci *host)
 {
 	struct device_node *np = host->dev->of_node;
 	struct dw_mci_rockchip_priv_data *priv;
@@ -417,13 +417,29 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
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
@@ -432,13 +448,25 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
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
@@ -480,11 +508,21 @@ static const struct dw_mci_drv_data rk3288_drv_data = {
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
