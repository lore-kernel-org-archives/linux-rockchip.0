Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36DBCC432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:44:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E120A610A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:44:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E120A610A3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8z03N2O2Z9Htfu10dgwLb6fWm/q7vUgcaZHZShP8buY=; b=F4391C6xdIzcmA
	F0MSaNv5L2ljlxlz4ZvIUpS/XcdbTxwd7kJmRt65/D3FrqiYEHzmuybpNW87rKdnvhALy5q69f+iA
	vqJmDnXfHfJrUyVUIITVxknh6YoVp6rAF+MleRgS9iUq3yjGSEpPRRBDMHEfdDsKm5plXmLMw8BrB
	FScGsMJfhKR/QezHmKw/IsX3omG9pMrvkCvO/hkYXMZDCHnuLGsEs2TzbDyQO1nV3gwc5PRnAsSnc
	S4PmxcrHRzoAZwPlVFHHSvSs+/yaXQEqDhcae7DselIdzsf3m4ysjkyj61DPQToSeBDyzX9Wexgpc
	0Ugox6QAjKBr9TR+/mRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHYu-00BCfK-B0; Thu, 12 Aug 2021 20:44:24 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWc-00BBQS-VJ; Thu, 12 Aug 2021 20:42:04 +0000
Received: by mail-qk1-x734.google.com with SMTP id t3so8235447qkg.11;
 Thu, 12 Aug 2021 13:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jV3+d13+BlvVKdHvamJ73f10IOo4fLZB7GTSxjSftek=;
 b=Zuzv/I+FVw2M1t/wdbOUlEGYA5wI6WSjciqkWH6PkNENhgzU7aEEOSpytnvm6JeFx2
 4yfRx0/OqCAaXHSirS/WBw8P3LYKXW73J3xBwgI4bZkRcPMLQJwZ9jpmlMAm0lQW++II
 9t7Q/GGv2IqZpo3msgGdg8gQ0vQSxckuX2fY4Alo+u4JiWe+OWkD161oAC9q9L0m4Wdn
 r4cXp1qL9SFiEg80fluK6LUxXsfpHX635NZSep6qMh9mBf1YdnsZx00VuOk0w0ojM6RE
 7WZQXXLie1tVGh5AAk6FYKjo62SGBTwgVqDANoDVRgLgnqHaF/Ys04FYF1hqj4wj7Kp/
 tp6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jV3+d13+BlvVKdHvamJ73f10IOo4fLZB7GTSxjSftek=;
 b=YyeuW0RIxo1P3uR4eTwOOeg2JD7muI7W+Hn8/XXzVub9f5+lXuEIv68/OUAAye1fS4
 EaFg4AE3QIQ3nIHEw9qNOGvwwgfXJgn4PZfxgJK0aDESswZt6hwaCPJsrnP7ZKUl6JBe
 Dx4W7x0Yc8VDNagswGuGJHImyrQOFQEkM8MbnUblGFkmSDDQNJZ1UUcCUQl31qY9KlHr
 fHde1otztfd3qgXtbS36Qsr8NBmwnjWsfmlD4Mr+dQAhOvvCCJGDFYMMgRsW1uHXD6+C
 pueqNze2q7aX6EwJnVrRaX/E/RFPTpz/XVVOYsuq8A4V8e/JOki+6EaQLhRNsVV4iUxN
 Yj1Q==
X-Gm-Message-State: AOAM533oDGEBsz+Qu4T1tb1aqI2Qx1hB+YRr2KSm3kxNOad6XSDBKPQ9
 oosaSHJ24CmXh2pmAToebuw=
X-Google-Smtp-Source: ABdhPJyrnT6PORGjrTDgySqbzkzSUbFYzqIA1bWHZIgwb7kGDQIv/+5gNYYb0UkJSgl3ItgM3Weaiw==
X-Received: by 2002:a05:620a:22b0:: with SMTP id
 p16mr6668847qkh.346.1628800922084; 
 Thu, 12 Aug 2021 13:42:02 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.42.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:42:01 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/8] phy: phy-rockchip-inno-usb2: support muxed interrupts
Date: Thu, 12 Aug 2021 16:41:13 -0400
Message-Id: <20210812204116.2303617-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134203_084074_0C2032B9 
X-CRM114-Status: GOOD (  21.34  )
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

The rk3568 usb2phy has a single muxed interrupt that handles all
interrupts.
Allow the driver to plug in only a single interrupt as necessary.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 168 +++++++++++++-----
 1 file changed, 119 insertions(+), 49 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 84a0c1d697da..fdeb2e7c937a 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -204,6 +204,7 @@ struct rockchip_usb2phy_port {
  * @dcd_retries: The retry count used to track Data contact
  *		 detection process.
  * @edev: extcon device for notification registration
+ * @irq: muxed interrupt for single irq configuration
  * @phy_cfg: phy register configuration, assigned by driver data.
  * @ports: phy port instance.
  */
@@ -218,6 +219,7 @@ struct rockchip_usb2phy {
 	enum power_supply_type	chg_type;
 	u8			dcd_retries;
 	struct extcon_dev	*edev;
+	int			irq;
 	const struct rockchip_usb2phy_cfg	*phy_cfg;
 	struct rockchip_usb2phy_port	ports[USB2PHY_NUM_PORTS];
 };
@@ -934,6 +936,102 @@ static irqreturn_t rockchip_usb2phy_otg_mux_irq(int irq, void *data)
 		return IRQ_NONE;
 }
 
+static irqreturn_t rockchip_usb2phy_irq(int irq, void *data)
+{
+	struct rockchip_usb2phy *rphy = data;
+	struct rockchip_usb2phy_port *rport;
+	irqreturn_t ret = IRQ_NONE;
+	unsigned int index;
+
+	for (index = 0; index < rphy->phy_cfg->num_ports; index++) {
+		rport = &rphy->ports[index];
+		if (!rport->phy)
+			continue;
+
+		/* Handle linestate irq for both otg port and host port */
+		ret = rockchip_usb2phy_linestate_irq(irq, rport);
+	}
+
+	return ret;
+}
+
+static int rockchip_usb2phy_port_irq_init(struct rockchip_usb2phy *rphy,
+					  struct rockchip_usb2phy_port *rport,
+					  struct device_node *child_np)
+{
+	int ret;
+
+	/*
+	 * If the usb2 phy used combined irq for otg and host port,
+	 * don't need to init otg and host port irq separately.
+	 */
+	if (rphy->irq > 0)
+		return 0;
+
+	switch (rport->port_id) {
+	case USB2PHY_PORT_HOST:
+		rport->ls_irq = of_irq_get_byname(child_np, "linestate");
+		if (rport->ls_irq < 0) {
+			dev_err(rphy->dev, "no linestate irq provided\n");
+			return rport->ls_irq;
+		}
+
+		ret = devm_request_threaded_irq(rphy->dev, rport->ls_irq, NULL,
+						rockchip_usb2phy_linestate_irq,
+						IRQF_ONESHOT,
+						"rockchip_usb2phy", rport);
+		if (ret) {
+			dev_err(rphy->dev, "failed to request linestate irq handle\n");
+			return ret;
+		}
+		break;
+	case USB2PHY_PORT_OTG:
+		/*
+		 * Some SoCs use one interrupt with otg-id/otg-bvalid/linestate
+		 * interrupts muxed together, so probe the otg-mux interrupt first,
+		 * if not found, then look for the regular interrupts one by one.
+		 */
+		rport->otg_mux_irq = of_irq_get_byname(child_np, "otg-mux");
+		if (rport->otg_mux_irq > 0) {
+			ret = devm_request_threaded_irq(rphy->dev, rport->otg_mux_irq,
+							NULL,
+							rockchip_usb2phy_otg_mux_irq,
+							IRQF_ONESHOT,
+							"rockchip_usb2phy_otg",
+							rport);
+			if (ret) {
+				dev_err(rphy->dev,
+					"failed to request otg-mux irq handle\n");
+				return ret;
+			}
+		} else {
+			rport->bvalid_irq = of_irq_get_byname(child_np, "otg-bvalid");
+			if (rport->bvalid_irq < 0) {
+				dev_err(rphy->dev, "no vbus valid irq provided\n");
+				ret = rport->bvalid_irq;
+				return ret;
+			}
+
+			ret = devm_request_threaded_irq(rphy->dev, rport->bvalid_irq,
+							NULL,
+							rockchip_usb2phy_bvalid_irq,
+							IRQF_ONESHOT,
+							"rockchip_usb2phy_bvalid",
+							rport);
+			if (ret) {
+				dev_err(rphy->dev,
+					"failed to request otg-bvalid irq handle\n");
+				return ret;
+			}
+		}
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 static int rockchip_usb2phy_host_port_init(struct rockchip_usb2phy *rphy,
 					   struct rockchip_usb2phy_port *rport,
 					   struct device_node *child_np)
@@ -947,18 +1045,9 @@ static int rockchip_usb2phy_host_port_init(struct rockchip_usb2phy *rphy,
 	mutex_init(&rport->mutex);
 	INIT_DELAYED_WORK(&rport->sm_work, rockchip_usb2phy_sm_work);
 
-	rport->ls_irq = of_irq_get_byname(child_np, "linestate");
-	if (rport->ls_irq < 0) {
-		dev_err(rphy->dev, "no linestate irq provided\n");
-		return rport->ls_irq;
-	}
-
-	ret = devm_request_threaded_irq(rphy->dev, rport->ls_irq, NULL,
-					rockchip_usb2phy_linestate_irq,
-					IRQF_ONESHOT,
-					"rockchip_usb2phy", rport);
+	ret = rockchip_usb2phy_port_irq_init(rphy, rport, child_np);
 	if (ret) {
-		dev_err(rphy->dev, "failed to request linestate irq handle\n");
+		dev_err(rphy->dev, "failed to setup host irq\n");
 		return ret;
 	}
 
@@ -1007,44 +1096,10 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 	INIT_DELAYED_WORK(&rport->chg_work, rockchip_chg_detect_work);
 	INIT_DELAYED_WORK(&rport->otg_sm_work, rockchip_usb2phy_otg_sm_work);
 
-	/*
-	 * Some SoCs use one interrupt with otg-id/otg-bvalid/linestate
-	 * interrupts muxed together, so probe the otg-mux interrupt first,
-	 * if not found, then look for the regular interrupts one by one.
-	 */
-	rport->otg_mux_irq = of_irq_get_byname(child_np, "otg-mux");
-	if (rport->otg_mux_irq > 0) {
-		ret = devm_request_threaded_irq(rphy->dev, rport->otg_mux_irq,
-						NULL,
-						rockchip_usb2phy_otg_mux_irq,
-						IRQF_ONESHOT,
-						"rockchip_usb2phy_otg",
-						rport);
-		if (ret) {
-			dev_err(rphy->dev,
-				"failed to request otg-mux irq handle\n");
-			goto out;
-		}
-	} else {
-		rport->bvalid_irq = of_irq_get_byname(child_np, "otg-bvalid");
-		if (rport->bvalid_irq < 0) {
-			dev_err(rphy->dev, "no vbus valid irq provided\n");
-			ret = rport->bvalid_irq;
-			goto out;
-		}
-
-		ret = devm_request_threaded_irq(rphy->dev, rport->bvalid_irq,
-						NULL,
-						rockchip_usb2phy_bvalid_irq,
-						IRQF_ONESHOT,
-						"rockchip_usb2phy_bvalid",
-						rport);
-		if (ret) {
-			dev_err(rphy->dev,
-				"failed to request otg-bvalid irq handle\n");
-			goto out;
-		}
-	}
+	ret = rockchip_usb2phy_port_irq_init(rphy, rport, child_np);
+	if (ret) {
+		dev_err(rphy->dev, "failed to init irq for host port\n");
+		goto out;
 
 	if (!IS_ERR(rphy->edev)) {
 		rport->event_nb.notifier_call = rockchip_otg_event;
@@ -1124,6 +1179,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	phy_cfgs = match->data;
 	rphy->chg_state = USB_CHG_STATE_UNDEFINED;
 	rphy->chg_type = POWER_SUPPLY_TYPE_UNKNOWN;
+	rphy->irq = platform_get_irq(pdev, 0);
 	platform_set_drvdata(pdev, rphy);
 
 	ret = rockchip_usb2phy_extcon_register(rphy);
@@ -1201,6 +1257,20 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
 	}
 
 	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+
+	if (rphy->irq > 0) {
+		ret = devm_request_threaded_irq(rphy->dev, rphy->irq, NULL,
+						rockchip_usb2phy_irq,
+						IRQF_ONESHOT,
+						"rockchip_usb2phy",
+						rphy);
+		if (ret) {
+			dev_err(rphy->dev,
+				"failed to request usb2phy irq handle\n");
+			goto put_child;
+		}
+	}
+
 	return PTR_ERR_OR_ZERO(provider);
 
 put_child:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
