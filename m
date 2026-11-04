Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CB0606D82B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 23:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=VRnSW9no;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=H05iJEBm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=eBfNyryQo9HIMAgi8xXhkXwZhmzQKFkzDD6Fcc4+ccI=; b=VRnSW9no+EAX484+G2tDTVXAKv
	af0QnYZnp9/GQvwgJUj6ZMofGoEt0uHizWiTjnzzid6g6ScW4JfY8wyETRRPIbQMg3PP5iPq4ZaEs
	ltK+VD9Uhux9UWxQQNjPuyrVEV5957FAWZ95KuDONJY7a1qg71jt6c+Wjmqd+o1FzsdlH/7xoOV44
	6Gmv218LN5Ro67/+cSXxU2CNoWsxM7X1eRImgwQEyP0+qYzZji/k9fw3F+OEGDdzzYwtpEyXTi6Us
	DvK4/rOfvvsHmJSEmh1laJ49G8infJGtxCuPgDgfh0hut94hgjiyNkLKs43LYcn0MHAo3NCqgo5qj
	UUAMRHaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkjD-00000007HF5-0qWJ;
	Wed, 04 Nov 2026 23:49:15 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkiz-00000007H69-2jIi;
	Wed, 04 Nov 2026 23:49:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1793836139;
	bh=8gAjDeFID8mO/dDQRifUwMLmNaFsmqSGIncrUFAKD1o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=H05iJEBmm4w0N+qWohUvD9qLC5ZiLBwFkj3pjhpqaoUQJsFWdC0VBiTbSaFvfIokf
	 C6j+86IZXuIqJ9iFtaOLvo+sZwtg7XNxgcZ8i2OLX3HAChMwHU50+uxmUKskIIAFxH
	 o+0+2jGhOFO6m807kBm0qtj7zEviat5KY/9CK2k4QX9f6/djvFmXddxLQXpsEN108d
	 AmKWqFZhbKQapg7Zlh5CwFdb7Rq38IWQnsWEF/6NEThhCphiGcizXnl1ep4Bk0skg/
	 qPzWKMs5fPMTDnRxM0AYx7NtNFx5HvAlnajaE6vMoXUjddClYhnuU05xtC6pFq4/JA
	 JNIZ+U8qQyXQA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2A6BC17E0D13;
	Thu, 05 Nov 2026 00:48:59 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DF7FF48002F; Thu, 05 Nov 2026 00:48:58 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 05 Nov 2026 00:47:03 +0100
Subject: [PATCH v8 2/9] PCI: dw-rockchip: Restore vpcie3v3 regulator handle
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261105-rockchip-pcie-system-suspend-v8-2-0434b4f373bc@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2506;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=8gAjDeFID8mO/dDQRifUwMLmNaFsmqSGIncrUFAKD1o=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGrrxGqE/ygEaJc7+K2VKzytovOnVGngijeyi
 /U6DsGXfN0VXYkCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq68RqAAoJENju1/PI
 O/qaBJgP/0yw059LdoyZnCeEbMhg7g9S2gIaYpvKGOUmaA6slcoO8GxPneYy8j8dZglPiZO1yNg
 Bggpi2sB2s6wGvJ7RReQH+aclrb6tY3XelWrVAiK2affDYrEHL8DdGe8xUkuRrUJgQQDM496cpL
 C84EigEQI+tGuwPHnF3Y3vJyc4p72362CRW2c8RvaUHhYLGxOYjBu8W1kfBl3jEb4gg50vAGC8y
 tm5vhgXVKz1SRvJuUeB9m5Oh3Hh8CiteVwDyL+q8XR/J+oDhch4eF/E0sJ1V7vSBl4jzYahBMyk
 lFVuu9doYjgxTICQ3hUYOVAB49dxMFH1UyTyNhICD1P4vApo4bc0ryEx9eUTIkCR4dqsgOmQdvO
 YIGZ88Cl422/C1ikrcEdCJMzuiI/J6k7jk2FfQA8k9TvnQbHukyvvDAT31wEWdnE1dM+nGZZFQ0
 xg3vQPMN0tw3e/7vZQN2p2+xTk7YmG6LVxmEP+Ha9X4Z7SblmTCuDSeS018w7Bx/4eloyTlE//D
 vnrtVXYs/W2pL7nzY/5yUcdUu/hN6wmXNhUceunQuWr89sNIydbjB/RHsfEzb5Dsi4a+kErsv2R
 fZKYHsQ+KJeCq7XafLmHYA8mBt2k48LR0SvypBHKX+voX5KO+CykXmtttjyyya1vJGiAyV8YM09
 N7bbHQbT3dJCpalHt2EM2xg==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_154901_849672_4250EB33 
X-CRM114-Status: GOOD (  16.64  )
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

This reverts commit c930b10f17c0 ("PCI: dw-rockchip: Simplify regulator
setup with devm_regulator_get_enable_optional()"), which nicely cleaned
up the code.

The vpcie3v3 regulator handle is needed to disable the regulator during
system suspend (to be added in its own patch).

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c35c5583c797..574d3dcfcf8b 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -113,6 +113,7 @@ struct rockchip_pcie {
 	unsigned int clk_cnt;
 	struct reset_control *rst;
 	struct gpio_desc *rst_gpio;
+	struct regulator *vpcie3v3;
 	struct irq_domain *irq_domain;
 	const struct rockchip_pcie_of_data *data;
 	bool supports_clkreq;
@@ -844,15 +845,24 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 		return ret;
 
 	/* DON'T MOVE ME: must be enable before PHY init */
-	ret = devm_regulator_get_enable_optional(dev, "vpcie3v3");
-	if (ret < 0 && ret != -ENODEV)
-		return dev_err_probe(dev, ret,
-				     "failed to enable vpcie3v3 regulator\n");
+	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
+	if (IS_ERR(rockchip->vpcie3v3)) {
+		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
+			return dev_err_probe(dev, PTR_ERR(rockchip->vpcie3v3),
+					"failed to get vpcie3v3 regulator\n");
+		rockchip->vpcie3v3 = NULL;
+	} else {
+		ret = regulator_enable(rockchip->vpcie3v3);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to enable vpcie3v3 regulator\n");
+	}
 
 	ret = rockchip_pcie_phy_init(rockchip);
-	if (ret)
-		return dev_err_probe(dev, ret,
-				     "failed to initialize the phy\n");
+	if (ret) {
+		dev_err_probe(dev, ret, "failed to initialize the phy\n");
+		goto disable_regulator;
+	}
 
 	ret = reset_control_deassert(rockchip->rst);
 	if (ret)
@@ -885,6 +895,9 @@ static int rockchip_pcie_probe(struct platform_device *pdev)
 	clk_bulk_disable_unprepare(rockchip->clk_cnt, rockchip->clks);
 deinit_phy:
 	rockchip_pcie_phy_deinit(rockchip);
+disable_regulator:
+	if (rockchip->vpcie3v3)
+		regulator_disable(rockchip->vpcie3v3);
 
 	return ret;
 }

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
