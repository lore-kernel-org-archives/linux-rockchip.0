Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D86606D82C
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 23:49:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4D6JBD4W;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=eldOZFXv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Rpk4j8L6uMUwX00hJJ9FzSagU+IRccimjNOgSxzPteY=; b=4D6JBD4WkOctEs1YX7V+7vNplx
	GGwbh1qEPorQvzFl4B5CYpjAkb6Wk6xcq2c0jefDT0qc5ixrAD7WNuU/YYXJn4KTQxvl3D6SMH0l6
	B1boAf10i+zg0LegLTJU9AwkvPAgwF4Z+gOoqYNqIydkYDZ/1oxktIdBOTgG1da2TreYWlSxFPpuE
	TaYOFqL/tsJ4u81AIp/ZB3ugeL6CStu1DBna9vh6L5hF6VuqcR9St2ddHQoVeMSeDrxeALcmpUBV1
	onhu6fZXhKj/lHzaXUF4bI43XlsmtJUjkds96WDfggFoF1YxQo77RRhCZZsj+iorlyScTGCLbZ2Qy
	p9ZCmJyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkjD-00000007HGH-2LtY;
	Wed, 04 Nov 2026 23:49:15 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOkiz-00000007H6B-2mDc;
	Wed, 04 Nov 2026 23:49:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1793836139;
	bh=SUw4+10Lg2ZDAwZtr18eSAbgDCoszLb8eKffkbMHfiU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=eldOZFXv1apWhJJwcoF+adYw0s5Mv2BKxuhCehUgVwxmIAsykbj9VLWC/OydyQC1s
	 SnZuRPLycUwGyIaLfuM3q1NWmqvVdkNm+a0sYUN21HRpW2LL5w+0zyP0QPRdwc9YCZ
	 T3MdzyRvcGjgrMsiVj7KyJvND4y6QNJJ0mAwK+D4hRQZ9opODR7nWTVB7gQRJF2+5Z
	 42MvA2+kbtTn+F3qgFp/mClRMnNK02olsyyxNY9OkZZVwI/GQGb2btM58R2vbX4/1j
	 YDEOzQ5jt66CToA7TjkOfRxO5i2fc0swvzv3fSDpNInXTfDqn+Zj+URo74QzIH09GC
	 8sDkVLSTqq4BQ==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2F0EC17E0D4A;
	Thu, 05 Nov 2026 00:48:59 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E3324480031; Thu, 05 Nov 2026 00:48:58 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 05 Nov 2026 00:47:05 +0100
Subject: [PATCH v8 4/9] PCI: dw-rockchip: Add helper function for enhanced
 LTSSM control mode
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261105-rockchip-pcie-system-suspend-v8-4-0434b4f373bc@collabora.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2814;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=SUw4+10Lg2ZDAwZtr18eSAbgDCoszLb8eKffkbMHfiU=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGrrxGqZ19v6PluqD5KznaKXZiTu48c6DDVsZ
 GfK+2FhLXScTokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq68RqAAoJENju1/PI
 O/qa/JIP+wS+XtTRxUwnCaSVZ0Lv8F88+3TnxNUdHVazMfrltRk0qTyPP9KugnU9jMqld+7LV9V
 F1fQr55aylb3JDyZ72hr9+0uehxdZ6GbCX50/q7N0vE31E1epzs1RsXSlYSCAHetgD7/TepzCGM
 PkHoI6vb7Bi4zQBvO7rqZNIMSiEDcmmfDv95Efr/ohQJFrV/2X7BMlSjcU+I4kApEdAbsZ8gP/H
 zWII3u9FBlJ3xWGK2FEExudVAQK0i3BtG/d+PK75msox2YmsdAspdvN1NpEjpJFvED67iNMV393
 ms+5Invsg3q96SzJZI2snZ/MHIhizmacmzDMhYCrcI6jNGO4xxorVFjezWxXpjSXLhQ+RkF+vTb
 juxCPyyHg4mS0LaiuEhSKlyWg00UMWzqfulkfkRYeUf3cSTkwLq1GspcpNdIJVWWqNMbCCrf3yk
 YuIaLlnSgJQ8IyACegQl6Xxzps8INz7m/UULetp/M6e9ytxAR4ESv9PHg0XmoFItOu3VCtdWuDc
 GNP9kyvXBzwbJlzszn1KO/ik5rAjZL/cI9fgkxQQXB1csOVgbZ24rQDRqhGWxIIl0DkTvccoZBt
 gDi/WHhLOoAd77If1Fy5vOIBtL9psDsLb3RJNfPcE6j+fwuDDbwrZGeC6+ssByGSa/VdFonirMd
 IFGonGmEUD2zMCJPC+fwuFA==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_154901_869625_239418C2 
X-CRM114-Status: GOOD (  13.93  )
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

Remove code duplication and improve readability by introducing a new
function to setup the enhanced LTSSM mode.

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 28 ++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index a3b0fb918479..92154a790ac0 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -683,6 +683,18 @@ static irqreturn_t rockchip_pcie_ep_sys_irq_thread(int irq, void *arg)
 	return IRQ_HANDLED;
 }
 
+static void rockchip_pcie_enable_enhanced_ltssm_control_mode(struct rockchip_pcie *rockchip,
+							     bool delay_link_training_after_reset)
+{
+	u32 val;
+
+	/* Enable the enhanced control mode of signal app_ltssm_enable */
+	val = FIELD_PREP_WM16(PCIE_LTSSM_ENABLE_ENHANCE, 1);
+	if (delay_link_training_after_reset)
+		val |= FIELD_PREP_WM16(PCIE_LTSSM_APP_DLY2_EN, 1);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+}
+
 static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 				      struct rockchip_pcie *rockchip)
 {
@@ -706,9 +718,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* LTSSM enable control mode */
-	val = FIELD_PREP_WM16(PCIE_LTSSM_ENABLE_ENHANCE, 1);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+	rockchip_pcie_enable_enhanced_ltssm_control_mode(rockchip, false);
 
 	rockchip_pcie_writel_apb(rockchip,
 				 PCIE_CLIENT_SET_MODE(PCIE_CLIENT_MODE_RC),
@@ -765,13 +775,7 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
 		return ret;
 	}
 
-	/*
-	 * LTSSM enable control mode, and automatically delay link training on
-	 * hot reset/link-down reset.
-	 */
-	val = FIELD_PREP_WM16(PCIE_LTSSM_ENABLE_ENHANCE, 1) |
-	      FIELD_PREP_WM16(PCIE_LTSSM_APP_DLY2_EN, 1);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+	rockchip_pcie_enable_enhanced_ltssm_control_mode(rockchip, true);
 
 	rockchip_pcie_writel_apb(rockchip,
 				 PCIE_CLIENT_SET_MODE(PCIE_CLIENT_MODE_EP),
@@ -940,9 +944,7 @@ static int rockchip_pcie_rc_reset_root_port(struct pci_host_bridge *bridge,
 		goto deinit_clk;
 	}
 
-	/* LTSSM enable control mode */
-	val = FIELD_PREP_WM16(PCIE_LTSSM_ENABLE_ENHANCE, 1);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_HOT_RESET_CTRL);
+	rockchip_pcie_enable_enhanced_ltssm_control_mode(rockchip, false);
 
 	rockchip_pcie_writel_apb(rockchip,
 				 PCIE_CLIENT_SET_MODE(PCIE_CLIENT_MODE_RC),

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
