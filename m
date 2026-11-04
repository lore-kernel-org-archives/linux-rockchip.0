Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04EB4606D835
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 23:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U/Lria0S;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=pPt/hVPr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+LF5NccDu8gFf58Tn9V9AQV3eZDhndN0QLbpcNgOYtw=; b=U/Lria0S0JbBKptZ/Ul3IoFBCX
	cVCtb0wCbR6nlkq+xG/Rqa4Vuyu8jxmGZN5GEwsGgYJQrolZuNg1jHbbzbVJrBF9A4+zuAEEUZFdv
	uZCSu2kTTNfGR1TChLpkn0QJ3lJ3ZDW1MKlnvGWsppCg7U+B/aHqFC59bCSNOC+90m5FC34Tsh+Uf
	pMeV3887IOJoD0+5En/Wwei5JqN9A8tTJRF7AJAXcmjf0TF6/FEpsaxBdSPAAfC8SKrNeKs+v7Q3K
	jYfT5GKMMIq1P5ZJ9CJfw9AD/as4s47V4KU/eWr7Iiti3UX/uo01D7ctujlhTT2jBN1BNoQ3oFs32
	oA5MRUpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkjK-00000007HVj-0WA7;
	Wed, 04 Nov 2026 23:49:22 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkj4-00000007H8R-2VJv;
	Wed, 04 Nov 2026 23:49:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1793836139;
	bh=ji9wnBG7CyP1UkiJ+ncXGIQ0aWxHO0PKvYRsy14xv/Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pPt/hVPrexbV6BSJsFBq8XRuqL+bz4Q/iKJ1unr4Aiupy3lCWPOpGWHao8HQhEU5l
	 JrfiBcqLo1JL80/vn9RT0JPraZC8hUCy1TaiJg+Wr/CAMSHGJtdk4a/CaPEKso0qTf
	 NYD4vPjW5Gvpmj+6qgIH+n8csqEgGMO3/O/suQuqe46FM3YZpK0WuXUtWMhoh0tCDl
	 lG9g3d1re4WjIQW9uY2rLGJIa2aBg6zMPOocX9QF7gplQjbCkoUpSutX7Wf9wS7KcI
	 Nv+eHBP9xkf31vMGiYWzeSeCmVgb+O41fFPyKb3FYYAQdFJBwnybZfmbhKpTr2Sbz6
	 1ZU6A+qHeu2BA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 89CBD17E0D81;
	Thu, 05 Nov 2026 00:48:59 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id EC2F7480047; Thu, 05 Nov 2026 00:48:58 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 05 Nov 2026 00:47:10 +0100
Subject: [PATCH v8 9/9] PCI: dw-rockchip: Add system PM support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261105-rockchip-pcie-system-suspend-v8-9-0434b4f373bc@collabora.com>
References: <20261105-rockchip-pcie-system-suspend-v8-0-0434b4f373bc@collabora.com>
In-Reply-To: <20261105-rockchip-pcie-system-suspend-v8-0-0434b4f373bc@collabora.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, 
 "Yury Norov (NVIDIA)" <yury.norov@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Alexey Charkov <alchark@flipper.net>, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5022;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=ji9wnBG7CyP1UkiJ+ncXGIQ0aWxHO0PKvYRsy14xv/Q=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGrrxGrMjRLHELIEO1dVe/MrAmX0gpMKLgLNF
 LENleDV6n4VmYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq68RqAAoJENju1/PI
 O/qaSd4QAJrqJbrk6g2FUaT/PqZpDr82e8Towi/SW6TIdjUDboEPu5WsA5WVt6y6UUcLBXZc3ky
 umD382bWn2y14Ui/x6uRH/llDWCi1wq6JTsOrJ2yt3QrmqK+wJ7t7UNcJs3oUG94ipV+yBeAHL1
 aYDodPd7jQ+dM52AnO13CQq8S9UwDXY2W7jfMaVkZO8igirqFlXywbkhUNRBRrrI4MX7gktzceR
 a3HNe1i9xtnT4RLQeffZnb+sc4AuQ1mFFtdIhvnLvNB/rkq6X5xMEtni9DvnlXVLOZHD7Qc1uEi
 69RPSr0eaJfJ9NW1qlyOHGYfjkVICgjplw7OkWy5++xAO16mYMkmElRJdxFld61+DBbRwOezpBZ
 aWtJmqVEybqSuiRpYl0YxH6lufb99H09rI959+8DVkIkm1j3+MEO9BNX2DSM34UlcMWSVQLJaEv
 xMEX8wN+cE4Nax/ZqaEuqiv3pzcQ4nQCqK3cgdAx0d4nzeeydsMcAUE/OwBwPaJzwBO2DKoWDTj
 G+IgjW9EpPQXBr8sDsxySzPPemeuy/uk5Dq32sMhZ5FxhpbpHvXTL/+6Ep3+obooRm7RQewY6dl
 TgbpemPV46YcdRAYegpB4BbDyXgJF2Ubj1mgBxkJaRcO5LFzQOXsmolAozu7IyauTrfMKap95AH
 GqlNXAN1rBJesdFuSZjYjTA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_154908_281296_B7564B76 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add system PM support for Rockchip PCIe Designware Controllers.

I've tested this on the Rockchip RK3576 EVB1, the Radxa ROCK 4D
and the ArmSom Sige5 boards.

While I haven't experienced any issues, most of my tests have been done
without any devices attached (i.e. default board without any extras), so
there _might_ still be some problems. As system suspend does not work at
all right now, I think it makes sense to get at least the basic
configurations working as soon as possible as it will allow us to catch
regressions by enabling system suspend in CI systems like KernelCI.

Co-developed-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 105 ++++++++++++++++++++++++++
 1 file changed, 105 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 9a2606748281..cf88c87d342d 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -124,6 +124,7 @@ struct rockchip_pcie {
 	struct gpio_desc *rst_gpio;
 	struct regulator *vpcie3v3;
 	struct irq_domain *irq_domain;
+	u32 intx;
 	const struct rockchip_pcie_of_data *data;
 	bool supports_clkreq;
 	struct delayed_work trace_work;
@@ -804,6 +805,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 
 	pp = &rockchip->pci.pp;
 	pp->ops = &rockchip_pcie_host_ops;
+	pp->suspend_poweroff = true;
 
 	ret = dw_pcie_host_init(pp);
 	if (ret) {
@@ -1035,6 +1037,103 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 	return ret;
 }
 
+static int rockchip_pcie_suspend(struct device *dev)
+{
+	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
+	struct dw_pcie *pci = &rockchip->pci;
+	int ret;
+
+	if (rockchip->data->mode == DW_PCIE_EP_TYPE)
+		return 0;
+
+	if (pci->suspended)
+		return 0;
+
+	rockchip->intx = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_MASK_LEGACY);
+	rockchip->intx &= PCIE_INTR_MASK;
+
+	ret = dw_pcie_suspend_noirq(pci);
+	if (ret)
+		return ret;
+
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+	rockchip_pcie_phy_deinit(rockchip);
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+	reset_control_assert(rockchip->rst);
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+
+	return 0;
+}
+
+static int rockchip_pcie_resume(struct device *dev)
+{
+	struct rockchip_pcie *rockchip = dev_get_drvdata(dev);
+	struct dw_pcie *pci = &rockchip->pci;
+	int ret;
+	u32 val;
+
+	if (rockchip->data->mode == DW_PCIE_EP_TYPE)
+		return 0;
+
+	if (rockchip->vpcie3v3) {
+		ret = regulator_enable(rockchip->vpcie3v3);
+		if (ret) {
+			dev_err(dev, "regulator enable failed: %d\n", ret);
+			return ret;
+		}
+	}
+
+	ret = rockchip_pcie_phy_init(rockchip);
+	if (ret) {
+		dev_err(dev, "phy init failed: %d\n", ret);
+		goto err_disable_regulator;
+	}
+
+	ret = reset_control_deassert(rockchip->rst);
+	if (ret) {
+		dev_err(dev, "reset deassert failed: %d\n", ret);
+		goto err_deinit_phy;
+	}
+
+	ret = clk_bulk_prepare_enable(rockchip->clk_cnt, rockchip->clks);
+	if (ret) {
+		dev_err(dev, "clock init failed: %d\n", ret);
+		goto err_assert_reset;
+	}
+
+	rockchip_pcie_writel_apb(rockchip, FIELD_PREP_WM16(PCIE_INTR_MASK, rockchip->intx),
+				 PCIE_CLIENT_INTR_MASK_LEGACY);
+
+	rockchip_pcie_enable_enhanced_ltssm_control_mode(rockchip, 0);
+	rockchip_pcie_set_controller_mode(rockchip, PCIE_CLIENT_MODE_RC);
+
+	ret = dw_pcie_resume_noirq(pci);
+	if (ret) {
+		dev_err(dev, "failed to resume: %d\n", ret);
+		goto err_reassert_rst;
+	}
+
+	/* unmask hot reset/link-down reset */
+	val = FIELD_PREP_WM16(PCIE_LINK_REQ_RST_NOT_INT, 0);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
+
+	return 0;
+
+err_reassert_rst:
+	gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
+err_assert_reset:
+	reset_control_assert(rockchip->rst);
+err_deinit_phy:
+	rockchip_pcie_phy_deinit(rockchip);
+err_disable_regulator:
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
+
+	return ret;
+}
+
 static const struct rockchip_pcie_of_data rockchip_pcie_rc_of_data_rk3568 = {
 	.mode = DW_PCIE_RC_TYPE,
 };
@@ -1065,11 +1164,17 @@ static const struct of_device_id rockchip_pcie_of_match[] = {
 	{},
 };
 
+static const struct dev_pm_ops rockchip_pcie_pm_ops = {
+	NOIRQ_SYSTEM_SLEEP_PM_OPS(rockchip_pcie_suspend,
+				  rockchip_pcie_resume)
+};
+
 static struct platform_driver rockchip_pcie_driver = {
 	.driver = {
 		.name	= "rockchip-dw-pcie",
 		.of_match_table = rockchip_pcie_of_match,
 		.suppress_bind_attrs = true,
+		.pm = &rockchip_pcie_pm_ops,
 	},
 	.probe = rockchip_pcie_probe,
 };

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
