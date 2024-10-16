Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 713EAD1AD4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 11:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkS9b8yagghDtsau0LUfiZdBBJG4pRQtShLrtdhzveU=; b=h5MQOQxdXO9UFD
	HGVJ9eiA5YYm2R6LKHdSbY6X1MkR3emK8bv+8FEGgJPCRNA1D8/UqOpw3AcAcJz68Vv5biUlU+NNn
	0c7tDmMs0+Mxn3Y6mrR6YY85wT/LdKilyLkrc2REe+1scbE/S07QYd2TyIkkmCI601sTAOz9KcIka
	6zWuNFedAeEaV3sHOwq9iBvI02RJlMzajMDXN/cjS4zpa+As6D1R5AM+zeY5Wp+YAREFBTH8vcQWL
	o3g+jdZSIEtU8W2vylv3MGmZQRn5CwM15k7IZwIMivhPv0kauvGLPJ+o3mrQnh18np/AmuCaeNxTx
	j/gZ40+YuE726dIUXuIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t12Zs-0000000Be3N-3RHC;
	Wed, 16 Oct 2024 11:52:32 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t12XE-0000000BdI7-1sCE;
	Wed, 16 Oct 2024 11:49:50 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-71e592d7f6eso2543476b3a.3;
        Wed, 16 Oct 2024 04:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729079387; x=1729684187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aA892Yn7d8PlcCX1eFmdXOLmVaAfF2Bm0kNiPbl3pTE=;
        b=npzMh9lwjjpdai05wCsqUXBN9dwr8AmffzJyqpQWiYmr+Qz3IR0gKkn6+ObjywiAU4
         vX7I7icJEn4NW5dMn0X+7Vt190QUPfE/SVYbl10L/WeYJVWnHzigSwGmHIPq/t5CB6FI
         meNUNP/2/T/NKb5t7Rote6amCC8rBoEtd9cArf3ieRvXUbf5zXFfBhYskkVOreil+Cep
         HCwodUOtEXdScKh+/UyaUpqgZeiTUh3llxta6Lvtz3m02Pn9+iuSQh9qpb/WTTw9wM4Z
         p3ebhwa2M9h3ZYm7hy8e3hngcQhWPAGv3T7cm+eaxcZyOcitJY1zSG4Mp1DYEAYToN3+
         D+AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729079387; x=1729684187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aA892Yn7d8PlcCX1eFmdXOLmVaAfF2Bm0kNiPbl3pTE=;
        b=iW+wmcIFtJHyekc1rUWO59fjVhHz0O5F9bQ3rD224oIUckFAQmaIiYxxPyVIx+dxYq
         p0ElMcFFPEn1KBck26ZXUBCBFIDzUm/a1z8wlEZn7QxJO1clUKSzqqES1e+Dqh2kYog2
         XtZQuq7RQVPehvMwCBkJgIWhCAhP9ZVqaC/Iff04E2Cj1IY1+7h1PqCI2WMBnq5XuxoS
         VJ9hvBcTwsYSM7YuZVErOKTWO1oMXf/wNbGjuq4ne3QZ6+OL14NX4sbJlOFkKiOsroG2
         1Ls0o+06voydlqX194e3p0ByJ8aLfPAqqlmzoFNbTtW4yvIFS/Ud4s4PqeLRIDhqvMw4
         2Ikg==
X-Forwarded-Encrypted: i=1; AJvYcCVCasSy/GKNyWYgcZsb9KW/X4MtGZJO+i8JY2v+eVvPGf4g1S3vnL9vHpLs1ezwbG0zaZU+AMajysroZEYpa4w=@lists.infradead.org, AJvYcCVdPfh8/vY7yuIJeHWjX6ObbEzcPyEM23KSCWJnXZdIQKGKA1YrxUYgLx0gt8p3Cc00QvHVv+H0qgOF+PYCohup@lists.infradead.org
X-Gm-Message-State: AOJu0YwJfC+0UMsokVc4yoHKqvoQCVzCKJvSQ3MDISp6S5v0444Q6WhC
	54zGgSK2qzpHuAdJuNP7zKfi1IA0C2RHgzmDNeWAvgBNCvqsfEy+
X-Google-Smtp-Source: AGHT+IHahilmgUr3PcbNltYhmfUh5N1CyrgSyJvErVrKBY91f6Shp6hezogrUETLM0v00xg/OjuDWw==
X-Received: by 2002:a05:6a00:14c8:b0:71e:108e:9c16 with SMTP id d2e1a72fcca58-71e4c152562mr22572956b3a.12.1729079387306;
        Wed, 16 Oct 2024 04:49:47 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e773ea9f2sm2968702b3a.95.2024.10.16.04.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 04:49:47 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v9 2/3] PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function
Date: Wed, 16 Oct 2024 17:19:07 +0530
Message-ID: <20241016114915.2823-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241016114915.2823-1-linux.amoon@gmail.com>
References: <20241016114915.2823-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_044948_546791_80BED82E 
X-CRM114-Status: GOOD (  24.48  )
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

Currently, the driver acquires and asserts/deasserts the resets
individually thereby making the driver complex to read. But this
can be simplified by using the reset_control_bulk APIs.
Use devm_reset_control_bulk_get_exclusive() API to acquire all
the resets and use reset_control_bulk_{assert/deassert}() APIs to
assert/deassert them in bulk.

Following the recommendations in 'Rockchip RK3399 TRM v1.3 Part2':

1. Split the reset controls into two groups as per section '17.5.8.1.1 PCIe
as Root Complex'.

2. Deassert the 'Pipe, MGMT Sticky, MGMT, Core' resets in groups as per
section '17.5.8.1.1 PCIe as Root Complex'. This is accomplished using the
reset_control_bulk APIs.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v9: Improved the commit message and try to fix few review comments.
v8: I tried to address reviews and comments from Mani.
    Follow the sequence of De-assert as per the driver code.
    Drop the comment in the driver.
    Improve the commit message with the description of the TMP section.
    Improve the reason for the core functional changes in the commit
    description.
    Improve the error handling messages of the code.
v7: replace devm_reset_control_bulk_get_optional_exclusive()
        with devm_reset_control_bulk_get_exclusive()
    update the functional changes.
V6: Add reason for the split of the RESET pins.
v5: Fix the De-assert reset core as per the TRM
    De-assert the PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N
    simultaneously.
v4: use dev_err_probe in error path.
v3: Fix typo in commit message, dropped reported by.
v2: Fix compilation error reported by Intel test robot
    fixed checkpatch warning.
---
 drivers/pci/controller/pcie-rockchip.c | 154 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  26 +++--
 2 files changed, 48 insertions(+), 132 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 2777ef0cb599..adf11208cc82 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -30,7 +30,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *node = dev->of_node;
 	struct resource *regs;
-	int err;
+	int err, i;
 
 	if (rockchip->is_rc) {
 		regs = platform_get_resource_byname(pdev,
@@ -69,55 +69,23 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 	if (rockchip->link_gen < 0 || rockchip->link_gen > 2)
 		rockchip->link_gen = 2;
 
-	rockchip->core_rst = devm_reset_control_get_exclusive(dev, "core");
-	if (IS_ERR(rockchip->core_rst)) {
-		if (PTR_ERR(rockchip->core_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing core reset property in node\n");
-		return PTR_ERR(rockchip->core_rst);
-	}
-
-	rockchip->mgmt_rst = devm_reset_control_get_exclusive(dev, "mgmt");
-	if (IS_ERR(rockchip->mgmt_rst)) {
-		if (PTR_ERR(rockchip->mgmt_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing mgmt reset property in node\n");
-		return PTR_ERR(rockchip->mgmt_rst);
-	}
-
-	rockchip->mgmt_sticky_rst = devm_reset_control_get_exclusive(dev,
-								"mgmt-sticky");
-	if (IS_ERR(rockchip->mgmt_sticky_rst)) {
-		if (PTR_ERR(rockchip->mgmt_sticky_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing mgmt-sticky reset property in node\n");
-		return PTR_ERR(rockchip->mgmt_sticky_rst);
-	}
-
-	rockchip->pipe_rst = devm_reset_control_get_exclusive(dev, "pipe");
-	if (IS_ERR(rockchip->pipe_rst)) {
-		if (PTR_ERR(rockchip->pipe_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing pipe reset property in node\n");
-		return PTR_ERR(rockchip->pipe_rst);
-	}
+	for (i = 0; i < ROCKCHIP_NUM_PM_RSTS; i++)
+		rockchip->pm_rsts[i].id = rockchip_pci_pm_rsts[i];
 
-	rockchip->pm_rst = devm_reset_control_get_exclusive(dev, "pm");
-	if (IS_ERR(rockchip->pm_rst)) {
-		if (PTR_ERR(rockchip->pm_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing pm reset property in node\n");
-		return PTR_ERR(rockchip->pm_rst);
-	}
+	err = devm_reset_control_bulk_get_exclusive(dev,
+						    ROCKCHIP_NUM_PM_RSTS,
+						    rockchip->pm_rsts);
+	if (err)
+		return dev_err_probe(dev, err, "Cannot get the PM reset\n");
 
-	rockchip->pclk_rst = devm_reset_control_get_exclusive(dev, "pclk");
-	if (IS_ERR(rockchip->pclk_rst)) {
-		if (PTR_ERR(rockchip->pclk_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing pclk reset property in node\n");
-		return PTR_ERR(rockchip->pclk_rst);
-	}
+	for (i = 0; i < ROCKCHIP_NUM_CORE_RSTS; i++)
+		rockchip->core_rsts[i].id = rockchip_pci_core_rsts[i];
 
-	rockchip->aclk_rst = devm_reset_control_get_exclusive(dev, "aclk");
-	if (IS_ERR(rockchip->aclk_rst)) {
-		if (PTR_ERR(rockchip->aclk_rst) != -EPROBE_DEFER)
-			dev_err(dev, "missing aclk reset property in node\n");
-		return PTR_ERR(rockchip->aclk_rst);
-	}
+	err = devm_reset_control_bulk_get_exclusive(dev,
+						    ROCKCHIP_NUM_CORE_RSTS,
+						    rockchip->core_rsts);
+	if (err)
+		return dev_err_probe(dev, err, "Cannot get the CORE resets\n");
 
 	if (rockchip->is_rc) {
 		rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep",
@@ -147,23 +115,10 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	int err, i;
 	u32 regs;
 
-	err = reset_control_assert(rockchip->aclk_rst);
-	if (err) {
-		dev_err(dev, "assert aclk_rst err %d\n", err);
-		return err;
-	}
-
-	err = reset_control_assert(rockchip->pclk_rst);
-	if (err) {
-		dev_err(dev, "assert pclk_rst err %d\n", err);
-		return err;
-	}
-
-	err = reset_control_assert(rockchip->pm_rst);
-	if (err) {
-		dev_err(dev, "assert pm_rst err %d\n", err);
-		return err;
-	}
+	err = reset_control_bulk_assert(ROCKCHIP_NUM_PM_RSTS,
+					rockchip->pm_rsts);
+	if (err)
+		return dev_err_probe(dev, err, "Couldn't assert PM resets\n");
 
 	for (i = 0; i < MAX_LANE_NUM; i++) {
 		err = phy_init(rockchip->phys[i]);
@@ -173,47 +128,17 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		}
 	}
 
-	err = reset_control_assert(rockchip->core_rst);
-	if (err) {
-		dev_err(dev, "assert core_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_assert(rockchip->mgmt_rst);
-	if (err) {
-		dev_err(dev, "assert mgmt_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_assert(rockchip->mgmt_sticky_rst);
-	if (err) {
-		dev_err(dev, "assert mgmt_sticky_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_assert(rockchip->pipe_rst);
-	if (err) {
-		dev_err(dev, "assert pipe_rst err %d\n", err);
-		goto err_exit_phy;
-	}
+	err = reset_control_bulk_assert(ROCKCHIP_NUM_CORE_RSTS,
+					rockchip->core_rsts);
+	if (err)
+		return dev_err_probe(dev, err, "Couldn't assert Core resets\n");
 
 	udelay(10);
 
-	err = reset_control_deassert(rockchip->pm_rst);
-	if (err) {
-		dev_err(dev, "deassert pm_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_deassert(rockchip->aclk_rst);
+	err = reset_control_bulk_deassert(ROCKCHIP_NUM_PM_RSTS,
+					  rockchip->pm_rsts);
 	if (err) {
-		dev_err(dev, "deassert aclk_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_deassert(rockchip->pclk_rst);
-	if (err) {
-		dev_err(dev, "deassert pclk_rst err %d\n", err);
+		dev_err(dev, "Couldn't deassert PM resets %d\n", err);
 		goto err_exit_phy;
 	}
 
@@ -252,31 +177,10 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		goto err_power_off_phy;
 	}
 
-	/*
-	 * Please don't reorder the deassert sequence of the following
-	 * four reset pins.
-	 */
-	err = reset_control_deassert(rockchip->mgmt_sticky_rst);
-	if (err) {
-		dev_err(dev, "deassert mgmt_sticky_rst err %d\n", err);
-		goto err_power_off_phy;
-	}
-
-	err = reset_control_deassert(rockchip->core_rst);
-	if (err) {
-		dev_err(dev, "deassert core_rst err %d\n", err);
-		goto err_power_off_phy;
-	}
-
-	err = reset_control_deassert(rockchip->mgmt_rst);
-	if (err) {
-		dev_err(dev, "deassert mgmt_rst err %d\n", err);
-		goto err_power_off_phy;
-	}
-
-	err = reset_control_deassert(rockchip->pipe_rst);
+	err = reset_control_bulk_deassert(ROCKCHIP_NUM_CORE_RSTS,
+					  rockchip->core_rsts);
 	if (err) {
-		dev_err(dev, "deassert pipe_rst err %d\n", err);
+		dev_err(dev, "Couldn't deassert CORE %d\n", err);
 		goto err_power_off_phy;
 	}
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index bebab80c9553..cc667c73d42f 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -15,6 +15,7 @@
 #include <linux/kernel.h>
 #include <linux/pci.h>
 #include <linux/pci-ecam.h>
+#include <linux/reset.h>
 
 /*
  * The upper 16 bits of PCIE_CLIENT_CONFIG are a write mask for the lower 16
@@ -288,18 +289,29 @@
 		(((c) << ((b) * 8 + 5)) & \
 		 ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b))
 
+#define ROCKCHIP_NUM_PM_RSTS   ARRAY_SIZE(rockchip_pci_pm_rsts)
+#define ROCKCHIP_NUM_CORE_RSTS ARRAY_SIZE(rockchip_pci_core_rsts)
+
+static const char * const rockchip_pci_pm_rsts[] = {
+	"pm",
+	"pclk",
+	"aclk",
+};
+
+static const char * const rockchip_pci_core_rsts[] = {
+	"mgmt-sticky",
+	"core",
+	"mgmt",
+	"pipe",
+};
+
 struct rockchip_pcie {
 	void	__iomem *reg_base;		/* DT axi-base */
 	void	__iomem *apb_base;		/* DT apb-base */
 	bool    legacy_phy;
 	struct  phy *phys[MAX_LANE_NUM];
-	struct	reset_control *core_rst;
-	struct	reset_control *mgmt_rst;
-	struct	reset_control *mgmt_sticky_rst;
-	struct	reset_control *pipe_rst;
-	struct	reset_control *pm_rst;
-	struct	reset_control *aclk_rst;
-	struct	reset_control *pclk_rst;
+	struct  reset_control_bulk_data pm_rsts[ROCKCHIP_NUM_PM_RSTS];
+	struct  reset_control_bulk_data core_rsts[ROCKCHIP_NUM_CORE_RSTS];
 	struct  clk_bulk_data *clks;
 	int	num_clks;
 	struct	regulator *vpcie12v; /* 12V power supply */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
