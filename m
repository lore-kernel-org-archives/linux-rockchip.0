Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3469C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 682ED60C3E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:28:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 682ED60C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iR0VZf5g+N16aQgghVQogmd3WyN9mX1EqpraMep1TAc=; b=gFbXfd2G2URxN8
	Qp6LOg69aBKx17+wcgv9IIe5dIYdBB+WzdWvIPYCVqRMHWjpFgGWmB6B3j88C5f+qWGUKvVzLq4ap
	DNZiGvbX2QXyPikqLYiCFBpRjWaHzWW5eTNp8caXZirCm7utN27XlDAUYe/XkpAQGc0z88//lkZLX
	PkVOK11hzFUfK/Ntw53Jn8mssk5Q7vL+ZYIJXzoBdLC2g/40HScCUdpdFFMciqT15bEkrTQMf/0Jb
	2BJ9Qe1SvvRrmuHy0Cc5Ct56Xm38C3yiQhq2VQyrhTENHP/2VxNWLSnP6uCSl4lkSXNTx7UAi0MkM
	21+JsWCHHRWUaAHTlwog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ig5-000dii-6h; Wed, 28 Jul 2021 12:28:49 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idj-000cg7-0F; Wed, 28 Jul 2021 12:26:25 +0000
Received: by mail-qk1-x733.google.com with SMTP id t66so2010306qkb.0;
 Wed, 28 Jul 2021 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sLsXOi/Vd6SWXJJX1GfqgWGuuId516J+Mh4hAEOUuFE=;
 b=a1N/dN4xR1XWNZDY/J2oCSI8VOFv6WyuuZc6bd9tByJFeMuPk0nLuph02ZsMRNmMJC
 As6MIuOfMHuoG0kLAqb6PTZlB2YOvprxnCe+oDd+q+XQjpsG3hIDiWuD9FfheeSzFq3L
 Y8+G/fpEK8FoWd2xyuRF9MqPMEP4Nc3L6MqOnHfLDvpi32dktXWmMZYG/QoP4GWtIiae
 F8x+hDSyPNgVx+xyg6VofwIXouKi9v8bqj6koUXSQTfTl/PyA0TtoHa/huwPqJsGw+CK
 5afMnDrgcQxrFbqa6hew93JQHPmUVx1C+YVBeBeTpqtMH453Gq0tZm5BAYk12HEb1sXl
 3YVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sLsXOi/Vd6SWXJJX1GfqgWGuuId516J+Mh4hAEOUuFE=;
 b=uW7Ogktf6uCALsieN8TcbJCVKFUQcMpo4QjH6qsAWJavSS5GC0+ujly2y0Lvd4sB1/
 Q5SEllcCOmxkADmulca19hNO8QoLx50jIYp6B44THlvJsJj+M/u1GbgOTPrI0aqB3RG0
 5Dxj+oxWAM69qfV7nPIxODUesG0CTH1EeRmzp+FgO8r7O+WrvNHDNv2ZB3gbtVtmkd1e
 T/QC2JhKCrX+mHzBHJbcwXq4xcCIXcbB15ohiMLG55nc9hvYq5EYVhf8Z5BYIysh/Ck8
 yUjKcRdJ8PX31BSx2BziRUT1qjbkO2LU++Y594NPyvgIwIbhUnzi2NDaXeb83epLWgEq
 mrHA==
X-Gm-Message-State: AOAM530w4Izf63wfcd/ZAzsF1oS9njZOuMb/AaAzC7t0362ha3doU7T5
 KRpkNxgMrr07qwlZaRwPPVY=
X-Google-Smtp-Source: ABdhPJzguoTTyVVCd2JnPZcYbW8796g1C5ngdVomfVwumL+wn6oZIGKb9Nkd0LNxQXyhLUJvIjQQEw==
X-Received: by 2002:a37:40c2:: with SMTP id n185mr9799919qka.50.1627475182223; 
 Wed, 28 Jul 2021 05:26:22 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:21 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 6/9] phy: phy-rockchip-inno-usb2: support muxed interrupts
Date: Wed, 28 Jul 2021 08:26:03 -0400
Message-Id: <20210728122606.697619-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052623_120522_168A7C17 
X-CRM114-Status: GOOD (  22.23  )
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

This currently only supports the host configuration for the new phy.

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
