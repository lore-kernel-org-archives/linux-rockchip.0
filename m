Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5050ED0D788
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1l+BXR6gdTcmUNfefwtZPDEuFUiH9LxD9cFhonNw0Hc=; b=lwYNywzIXreroO
	iZ+v6Uv3Kl82G9EsW3/JEgelM6tUJoZUhuRuFeLMCsskr9TLj/fBGo8h+pl0Og1WPErGukSqg5fVW
	WPAJvqLHyI+CWP9KRPQOZKEbPnIxt3bCryU/98lGGjr9lbXN08/TOn+UoTjPXfcdtUTQmbfNsu9Ww
	OPkkHLwySV3hXLx27zUso5kUrnyvsKaIZQgJTETSJ4Gts5g8KxET/cRin12XQWXMp4/tSu+kdB+Qt
	2QGvJzIVDL2qs6svs3loYjsImZvHs9NhEQ6K1ZaQztcKt/lLTknxlTgBS3S64yjog/3E1vFYjE4go
	zEAXTfbBHoHjv+c4zOFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhj-0000000GHyn-36A2;
	Fri, 11 Oct 2024 12:25:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXY-0000000GFzy-0cxo
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E8575C53A4;
	Fri, 11 Oct 2024 12:14:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 525C2C4CED0;
	Fri, 11 Oct 2024 12:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648879;
	bh=3FpVbYWRhZys2Q1ZuVEZur1JYUJbUcy5kBWzAgbmX5U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RYTr8EoMsl2pZRtk6M29cmB/uEGvdxJ5b6IpMe5gxMf0wbgWDF5eA4xWyU3vYhvcw
	 5V9LOY3MJNJNygXuprQu2Z1mIr5YDBhFte/Qn+2dquJwM/ZAykT6kezK6p1klFt0Eq
	 H2/BTW4TVYfMzJ99gdjw3rlkqbfDOkunj1Gxv64r90tQCUDuNvCcAiSVW3fXfwVs4Q
	 +gPPEotTxoxCwLpi06uU3cQFrrB3SU0Cx6qU2tAi8pgHrfEBAeQ7XghBYSKHeT28yP
	 /yqGMqJh7RkF8n1MYt7yB+9cKhxWpeduBAwC7fh6AqLgaj8kaMsoDAqNJNfwDGV6oe
	 GB5PvX355fRgw==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v4 12/12] PCI: rockchip-ep: Handle PERST# signal in endpoint mode
Date: Fri, 11 Oct 2024 21:14:08 +0900
Message-ID: <20241011121408.89890-13-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_051440_306651_3D5216E1 
X-CRM114-Status: GOOD (  26.64  )
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

Currently, the Rockchip PCIe endpoint controller driver does not handle
the PERST# signal, which prevents detecting when link training should
actually be started or if the host resets the device. This however can
be supported using the controller reset_gpios property set as an input
GPIO for endpoint mode.

Modify the rockchip PCI endpoint controller driver to get the reset_gpio
and its associated interrupt which is serviced using a threaded IRQ with
the function rockchip_pcie_ep_perst_irq_thread() as handler.

This handler function notifies a link down event corresponding to the RC
side asserting the PERST# signal using pci_epc_linkdown() when the gpio
is high. Once the gpio value goes down, corresponding to the RC
de-asserting the PERST# signal, link training is started. The polarity
of the gpio interrupt trigger is changed from high to low after the RC
asserted PERST#, and conversely changed from low to high after the RC
de-asserts PERST#.

Also, given that the host mode controller and the endpoint mode
controller use two different property names for the same PERST# signal
(ep_gpios property and reset_gpios property respectively), for clarity,
rename the ep_gpio field of struct rockchip_pcie to perst_gpio.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c   | 126 +++++++++++++++++++-
 drivers/pci/controller/pcie-rockchip-host.c |   4 +-
 drivers/pci/controller/pcie-rockchip.c      |  16 +--
 drivers/pci/controller/pcie-rockchip.h      |   2 +-
 4 files changed, 135 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 07dcda1d1d09..3d7e58629801 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -10,6 +10,7 @@
 
 #include <linux/configfs.h>
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
 #include <linux/of.h>
@@ -50,6 +51,9 @@ struct rockchip_pcie_ep {
 	u64			irq_pci_addr;
 	u8			irq_pci_fn;
 	u8			irq_pending;
+	int			perst_irq;
+	bool			perst_asserted;
+	bool			link_up;
 	struct delayed_work	link_training;
 };
 
@@ -462,13 +466,17 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
 
 	rockchip_pcie_write(rockchip, cfg, PCIE_CORE_PHY_FUNC_CFG);
 
+	if (rockchip->perst_gpio)
+		enable_irq(ep->perst_irq);
+
 	/* Enable configuration and start link training */
 	rockchip_pcie_write(rockchip,
 			    PCIE_CLIENT_LINK_TRAIN_ENABLE |
 			    PCIE_CLIENT_CONF_ENABLE,
 			    PCIE_CLIENT_CONFIG);
 
-	schedule_delayed_work(&ep->link_training, 0);
+	if (!rockchip->perst_gpio)
+		schedule_delayed_work(&ep->link_training, 0);
 
 	return 0;
 }
@@ -478,6 +486,11 @@ static void rockchip_pcie_ep_stop(struct pci_epc *epc)
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 
+	if (rockchip->perst_gpio) {
+		ep->perst_asserted = true;
+		disable_irq(ep->perst_irq);
+	}
+
 	cancel_delayed_work_sync(&ep->link_training);
 
 	/* Stop link training and disable configuration */
@@ -540,6 +553,13 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
 	if (!rockchip_pcie_ep_link_up(rockchip))
 		goto again;
 
+	/*
+	 * If PERST was asserted while polling the link, do not notify
+	 * the function.
+	 */
+	if (ep->perst_asserted)
+		return;
+
 	val = rockchip_pcie_read(rockchip, PCIE_CLIENT_BASIC_STATUS0);
 	dev_info(dev,
 		 "Link UP (Negotiated speed: %sGT/s, width: x%lu)\n",
@@ -549,6 +569,7 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
 
 	/* Notify the function */
 	pci_epc_linkup(ep->epc);
+	ep->link_up = true;
 
 	return;
 
@@ -556,6 +577,99 @@ static void rockchip_pcie_ep_link_training(struct work_struct *work)
 	schedule_delayed_work(&ep->link_training, msecs_to_jiffies(5));
 }
 
+static void rockchip_pcie_ep_perst_assert(struct rockchip_pcie_ep *ep)
+{
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	struct device *dev = rockchip->dev;
+
+	dev_dbg(dev, "PERST asserted, link down\n");
+
+	if (ep->perst_asserted)
+		return;
+
+	ep->perst_asserted = true;
+
+	cancel_delayed_work_sync(&ep->link_training);
+
+	if (ep->link_up) {
+		pci_epc_linkdown(ep->epc);
+		ep->link_up = false;
+	}
+}
+
+static void rockchip_pcie_ep_perst_deassert(struct rockchip_pcie_ep *ep)
+{
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	struct device *dev = rockchip->dev;
+
+	dev_dbg(dev, "PERST de-asserted, starting link training\n");
+
+	if (!ep->perst_asserted)
+		return;
+
+	ep->perst_asserted = false;
+
+	/* Enable link re-training */
+	rockchip_pcie_ep_retrain_link(rockchip);
+
+	/* Start link training */
+	schedule_delayed_work(&ep->link_training, 0);
+}
+
+static irqreturn_t rockchip_pcie_ep_perst_irq_thread(int irq, void *data)
+{
+	struct pci_epc *epc = data;
+	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	u32 perst = gpiod_get_value(rockchip->perst_gpio);
+
+	if (perst)
+		rockchip_pcie_ep_perst_assert(ep);
+	else
+		rockchip_pcie_ep_perst_deassert(ep);
+
+	irq_set_irq_type(ep->perst_irq,
+			 (perst ? IRQF_TRIGGER_HIGH : IRQF_TRIGGER_LOW));
+
+	return IRQ_HANDLED;
+}
+
+static int rockchip_pcie_ep_setup_irq(struct pci_epc *epc)
+{
+	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+	struct device *dev = rockchip->dev;
+	int ret;
+
+	if (!rockchip->perst_gpio)
+		return 0;
+
+	/* PCIe reset interrupt */
+	ep->perst_irq = gpiod_to_irq(rockchip->perst_gpio);
+	if (ep->perst_irq < 0) {
+		dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
+		return ep->perst_irq;
+	}
+
+	/*
+	 * The perst_gpio is active low, so when it is inactive on start, it
+	 * is high and will trigger the perst_irq handler. So treat this initial
+	 * IRQ as a dummy one by faking the host asserting #PERST.
+	 */
+	ep->perst_asserted = true;
+	irq_set_status_flags(ep->perst_irq, IRQ_NOAUTOEN);
+	ret = devm_request_threaded_irq(dev, ep->perst_irq, NULL,
+					rockchip_pcie_ep_perst_irq_thread,
+					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
+					"pcie-ep-perst", epc);
+	if (ret) {
+		dev_err(dev, "Request PERST GPIO IRQ failed %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+
 static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = true,
 	.msi_capable = true,
@@ -749,11 +863,17 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	pci_epc_init_notify(epc);
 
+	err = rockchip_pcie_ep_setup_irq(epc);
+	if (err < 0)
+		goto err_uninit_port;
+
 	return 0;
-err_exit_ob_mem:
-	rockchip_pcie_ep_exit_ob_mem(ep);
+err_uninit_port:
+	rockchip_pcie_deinit_phys(rockchip);
 err_disable_clocks:
 	rockchip_pcie_disable_clocks(rockchip);
+err_exit_ob_mem:
+	rockchip_pcie_ep_exit_ob_mem(ep);
 	return err;
 }
 
diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index cbec71114825..7471d9fd18bc 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -294,7 +294,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	int err, i = MAX_LANE_NUM;
 	u32 status;
 
-	gpiod_set_value_cansleep(rockchip->ep_gpio, 0);
+	gpiod_set_value_cansleep(rockchip->perst_gpio, 0);
 
 	err = rockchip_pcie_init_port(rockchip);
 	if (err)
@@ -323,7 +323,7 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 			    PCIE_CLIENT_CONFIG);
 
 	msleep(PCIE_T_PVPERL_MS);
-	gpiod_set_value_cansleep(rockchip->ep_gpio, 1);
+	gpiod_set_value_cansleep(rockchip->perst_gpio, 1);
 
 	msleep(PCIE_T_RRS_READY_MS);
 
diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 154e78819e6e..51eb60fc72a2 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -119,13 +119,15 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 		return PTR_ERR(rockchip->aclk_rst);
 	}
 
-	if (rockchip->is_rc) {
-		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep",
-							    GPIOD_OUT_LOW);
-		if (IS_ERR(rockchip->ep_gpio))
-			return dev_err_probe(dev, PTR_ERR(rockchip->ep_gpio),
-					     "failed to get ep GPIO\n");
-	}
+	if (rockchip->is_rc)
+		rockchip->perst_gpio = devm_gpiod_get_optional(dev, "ep",
+							       GPIOD_OUT_LOW);
+	else
+		rockchip->perst_gpio = devm_gpiod_get_optional(dev, "reset",
+							       GPIOD_IN);
+	if (IS_ERR(rockchip->perst_gpio))
+		return dev_err_probe(dev, PTR_ERR(rockchip->perst_gpio),
+				     "failed to get #PERST GPIO\n");
 
 	rockchip->aclk_pcie = devm_clk_get(dev, "aclk");
 	if (IS_ERR(rockchip->aclk_pcie)) {
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 24796176f658..a51b087ce878 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -329,7 +329,7 @@ struct rockchip_pcie {
 	struct	regulator *vpcie3v3; /* 3.3V power supply */
 	struct	regulator *vpcie1v8; /* 1.8V power supply */
 	struct	regulator *vpcie0v9; /* 0.9V power supply */
-	struct	gpio_desc *ep_gpio;
+	struct	gpio_desc *perst_gpio;
 	u32	lanes;
 	u8      lanes_map;
 	int	link_gen;
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
