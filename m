Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD1C5CFB424
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Oct 2024 18:28:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSbERuFVGSZpu3UzuKILaTi9loNBA7fWQgqaMITAb08=; b=cNS02xVsz4eo41
	CxClpRbjrTV/XSIEq7rfWC3kFWFZ0EepErO86tR9NS7TYHgK5JoAQFvSM2BQk8ITqWvyincojGffo
	pCrYP0JztbAOu/B4ovwp4Bbg2LVL9o45Ejk/S/MMP5FD+DIUb7/9CMPXXzKoTUyl0V0WdlDioltAU
	+nvQVTrLOF8UFzEVp4Af1oNDqo8dU/Gl5M9iuCyz3WZ4IKVR9UnNw1xNkmMQGjZWlzejCFBqhm6YK
	gn9RjT1Iedg4HQ2DJosiJ9VqqW73d/J8Cme61hZ4inWM3FzqAWk1vTvvYW4v8ytyc/JNbGrxH5pQv
	KU//S8NpmRXJwNDs75Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVzo-00000000QJH-1izX;
	Sun, 06 Oct 2024 18:28:44 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxVwO-00000000PrU-1wKf;
	Sun, 06 Oct 2024 18:25:13 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2e1bfa9ddb3so2786761a91.0;
        Sun, 06 Oct 2024 11:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728239112; x=1728843912; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQRL+4jvUJ2X96lE02r1r/21Z5HTm+wYNZIRn3wtob0=;
        b=PSaYq6zbZveBbtsBCBY0dYIKjKHICrJ/uRmF34HYF2CBlSJuli6SOX75J2zjHQoo9f
         u3h7bLWRXGY/pc3IXnCwrDkYEFBdNeT2ZkSTa0AFiYnZ4ziebwG7qmn634KVVnV8kGVf
         j2H9sx28jPLRtQr7bLuyOEBEexVbb68JTHSLmfkZdKr79VSmgRBlej3QFGrB1OrTMPCH
         IsWRcBETvWddEWw8iXVIEmIAAPuC0G7O8YAE+7YM/kNudmVY51BNfysFtFLsx6/ARkmx
         7FpQ93XAxLNneotKf4KlnXmi5rS+VDHNEzG+phxEdmIOgORyM4dl0J1g56Fb8qHh/Mmm
         q1oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728239112; x=1728843912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gQRL+4jvUJ2X96lE02r1r/21Z5HTm+wYNZIRn3wtob0=;
        b=V1ZQAR+FY4AT9v+YQXjumjphiR5Xm+M/hFBpmG1vAKBWJY9GskKFtpsElwGl1LiL8x
         IFFaHreEk1rLoc1T73RDFY73+eAH6LbiFUwHiYG5q9aTHzM7L8X2QwhCm6DgOm6DTl84
         4pI/39iGjdceuPSXi5fGqR8AQIARwXznBnfgmn2FmqkC1uezvoA4CiMTlb2wyB64Ptd0
         6yofLVCzndhPUWLoVjcNC9BxbFpLkRlyir6CqbpGeFHZZoq7XbmdCrqP9h8D7AOC3nt/
         kytnDQ4KPVaN/rGDoc0NVDh+WsouCL1Nxg0BYuYI6B3JZF5Bz+LVRKamzrX6AM07Vqzf
         FbiA==
X-Forwarded-Encrypted: i=1; AJvYcCUSHqW2AdMfgJnGK+FqkQH9snlDenDYdwYzJCGTWeMmpx1P1lnAgx44M0tnueZxMLO2A9xdMIELTBKLXQrwR4g=@lists.infradead.org, AJvYcCX62YtwJb3EusoITgd7veaBhzuxf/9nLdZu+2ln2gdBTIimEMMqwSXLsvJ8oLFtAP7aZFUBg8AcI/Wlk5+X/c7O@lists.infradead.org
X-Gm-Message-State: AOJu0YwoEmNf+GeZlaPjYPZHJnoNYFZ8az3v7JhqLhI4MTANJmYQyNfx
	8tg7ybXGFJO1INB7JrYASEJvSHYS23OdrtRU2HUYJvitAVmNJeDi
X-Google-Smtp-Source: AGHT+IHw+i7zpIxo+CiZnR50Iq3xrLuxAzukfqMvhnnJWZoaBLZi8+XZrGU1JLjE84NQMYd46Fp3wA==
X-Received: by 2002:a17:90a:4bc6:b0:2d3:ca3f:7f2a with SMTP id 98e67ed59e1d1-2e1e62674damr10044487a91.22.1728239111839;
        Sun, 06 Oct 2024 11:25:11 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e1e85c905esm5458471a91.17.2024.10.06.11.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 11:25:11 -0700 (PDT)
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
Subject: [PATCH v6 RESET 2/3] PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function
Date: Sun,  6 Oct 2024 23:54:37 +0530
Message-ID: <20241006182445.3713-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241006182445.3713-1-linux.amoon@gmail.com>
References: <20241006182445.3713-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_112512_526109_8AB2431D 
X-CRM114-Status: GOOD (  20.90  )
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

Refactor the reset control handling in the Rockchip PCIe driver,
introducing a more robust and efficient method for assert and
deassert reset controller using reset_control_bulk*() API. Using the
reset_control_bulk APIs, the reset handling for the core clocks reset
unit becomes much simpler.

Spilt the reset controller in two groups as pre the RK3399 TRM.
After power up, the software driver should de-assert the reset of PCIe PHY,
then wait the PLL locked by polling the status, if PLL
has locked, then can de-assert the rest reset simultaneously
driver need to De-assert the reset pins simultionaly.

  PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V6: Add reason for the split of the RESET pins.
v5: Fix the De-assert reset core as per the TRM
    De-assert the PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N
    simultaneously.
v4: use dev_err_probe in error path.
v3: Fix typo in commit message, dropped reported by.
v2: Fix compilation error reported by Intel test robot
    fixed checkpatch warning
---
 drivers/pci/controller/pcie-rockchip.c | 151 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  26 +++--
 2 files changed, 49 insertions(+), 128 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 2777ef0cb599..87daa3288a01 100644
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
+	err = devm_reset_control_bulk_get_optional_exclusive(dev,
+							     ROCKCHIP_NUM_PM_RSTS,
+							     rockchip->pm_rsts);
+	if (err)
+		return dev_err_probe(dev, err, "cannot get the reset control\n");
 
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
+	err = devm_reset_control_bulk_get_optional_exclusive(dev,
+							     ROCKCHIP_NUM_CORE_RSTS,
+							     rockchip->core_rsts);
+	if (err)
+		return dev_err_probe(dev, err, "cannot get the reset control\n");
 
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
+		return dev_err_probe(dev, err, "reset bulk assert pm reset\n");
 
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
+		return dev_err_probe(dev, err, "reset bulk assert core reset\n");
 
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
+		dev_err(dev, "reset bulk deassert pm err %d\n", err);
 		goto err_exit_phy;
 	}
 
@@ -256,31 +181,15 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	 * Please don't reorder the deassert sequence of the following
 	 * four reset pins.
 	 */
-	err = reset_control_deassert(rockchip->mgmt_sticky_rst);
-	if (err) {
-		dev_err(dev, "deassert mgmt_sticky_rst err %d\n", err);
-		goto err_power_off_phy;
-	}
-
-	err = reset_control_deassert(rockchip->core_rst);
+	err = reset_control_bulk_deassert(ROCKCHIP_NUM_CORE_RSTS,
+					  rockchip->core_rsts);
 	if (err) {
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
-	if (err) {
-		dev_err(dev, "deassert pipe_rst err %d\n", err);
+		dev_err(dev, "reset bulk deassert core err %d\n", err);
 		goto err_power_off_phy;
 	}
 
 	return 0;
+
 err_power_off_phy:
 	while (i--)
 		phy_power_off(rockchip->phys[i]);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index bebab80c9553..2761699f670b 100644
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
+	"mgmt",
+	"core",
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
