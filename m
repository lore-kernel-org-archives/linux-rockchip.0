Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDCD3C27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 06:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=psTlyzXsuOAEwXKT1pzgEhxfxTL14Go9IQCjgGG5CD4=; b=oixHcxZLRKjTik
	vX4ykL+FcYjPr2LleyRy5PmA6U7plFSlXqV9pTvr8tJJT/oMcHc5l1oJexHq4kP5LAsx/IDiIe2+J
	znvORDP0zGlLR/0qU/S0i1dbg4hLvP9KMxBqo+P63wsv3Vu/BDHJr47hF4jEQxxWKj5v5Yaye7a2R
	TqUCybnGA0Mlbk/XxAAv/FM4uiCQs4ykuHIBkS9XRn9sOUfWlvRNUv+L+T4EV76gbUiIRNnj8hhxw
	nNZoN213XerNuiua85zFLi1L+6BANwY+k9/VYwE5IBQlDGuElF+il6EXIW5vbyUH5TZHIe3hm0k32
	R6Pgg3AGWTvc8Loz/arw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKY1H-000000081yM-2GUl;
	Fri, 21 Jun 2024 06:45:11 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKY1E-000000081wg-20sR;
	Fri, 21 Jun 2024 06:45:10 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-3d21b3da741so866973b6e.2;
        Thu, 20 Jun 2024 23:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718952307; x=1719557107; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8PrIT5Q9WC4oGQTxhuFaUJlU4RF0xUQVdnv5lYxEgNY=;
        b=lzzA6X921aLvdrinGbBg0sM9IeUo+xPCCtgCyJAxnk95fQxiwRB9cd8XLMYrL6wf6k
         FMXIF8E6H6PKXOROibH5DlZoJpZySikwcUxhFoT1cLsMILLzTNlsAvrQsPacIa4DBJcq
         QO9CWtpYLn5DMktjG4K5tFTMXTOjvY2NWF6LSR0+LKVm2poTe1r4VnwxTb2s52z1cKbG
         VdSeUmedKm7Xx/a19UN6a38MHO0Ab1CPPOre2LAmEyQMC9HIvulVoezPtniITvr1N0pB
         lrf+Mw5r1K9ag9OlsFBY+OTjmrFiZfLxgK3AZi5rqYW+mUR3g53N60e6y9joBxt2qUya
         ku1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718952307; x=1719557107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8PrIT5Q9WC4oGQTxhuFaUJlU4RF0xUQVdnv5lYxEgNY=;
        b=QIMfDTnwLKzVTSHknaJqxnONU4c0hXY+qojQG28VsXq3EghvlFGmQOb+TGa1L6bouw
         ztO9mE+mp5NlWhN2MtHYmj6GuK+GcosA/jjRMzVoHOzW07pyGzi541GQmnS9GUksLJ3e
         bykfnZl+wV1h3TGzSEY4pDN2NlGS6t/WqQb2ZCKtBaWZzjQ0jndQaL1f3JtIR7Or5CYb
         T1IAceTxjVRc9fMUnLRH1C0AEh5R5C11eY4BAQ5abTfTw5Iy5Yacpb0y9LuB2zuAss0l
         Zb28xZJgv/53fru76Ww9lQEfNOeGnJ3AeK/QLrQgf1q5KjLEjaxbj+IamLSb6WMPOVro
         P8Ig==
X-Forwarded-Encrypted: i=1; AJvYcCVgqM834bW4gz37OiumrHA57KzZrRa3ZF21e/u6jacwm7xIwHOh0cn8AJ/uGgAhrxqnh0Y7S2etJ283t6GFxpSus4vvMQHH26jIgYa8w/77V1gPxAb/Xafz7U3tUrvbTvufNP8WQ/NlwJtsLot9QB8g5JxBotIfnOk=
X-Gm-Message-State: AOJu0Yw2Cn9v6FFvEUxyvGJ1S8PnmfeyuC/lVGlxvtGRId92bmlz7xJF
	tzkqZqJaYn1c/MsFaVPEY/x8MpmIoAP582jeCwp4powS0brEBa6t
X-Google-Smtp-Source: AGHT+IGlvLB3wdg4xXTHMAxO23kqlDv9jKpNXXmzSfPXRfE4YJNI0kGIHJE8QrW9mlmfW8M2idvYgg==
X-Received: by 2002:a05:6808:17a6:b0:3d2:345:f64e with SMTP id 5614622812f47-3d51b9822b3mr8805494b6e.13.1718952307262;
        Thu, 20 Jun 2024 23:45:07 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70651194776sm683117b3a.67.2024.06.20.23.45.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:45:07 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	kernel test robot <lkp@intel.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function
Date: Fri, 21 Jun 2024 12:14:21 +0530
Message-ID: <20240621064426.282048-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240621064426.282048-1-linux.amoon@gmail.com>
References: <20240621064426.282048-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_234508_595561_B2521985 
X-CRM114-Status: GOOD (  19.84  )
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

Refactors the reset control clock handling in the Rockchip PCIe driver,
introducing a more robust and efficient method for assert and
deassert reset controller using reset_control_bulk*() API. Using the
reset_control_bulk APIs, the reset handling for the core clocks reset
unit becomes much simpler.

As per rockchip rk3399 TRM SOFTRST_CON8 soft reset controller
have clock reset unit value set to 0x1 for example "pcie_pipe",
"pcie_mgmt_sticky", "pcie_mgmt" and "pci_core", hence group then under
one reset bulk controller.

Where as "pcie_pm", "presetn_pcie", "aresetn_pcie" have reset value
set to 0x0 ,hence group them under reset control bulk controller.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202406201156.PPCyjK8r-lkp@intel.com/
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Fix compilation error reported by Intel test robot
Fix : checkpatch warning
---
 drivers/pci/controller/pcie-rockchip.c | 141 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  25 +++--
 2 files changed, 47 insertions(+), 119 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 166dad666a35..f79e2b0a965b 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -69,54 +69,26 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
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
+	err = devm_reset_control_bulk_get_optional_exclusive(dev,
+							     ROCKCHIP_NUM_PM_RSTS,
+							     rockchip->pm_rsts);
+	if (err) {
+		dev_err(dev, "cannot get the devm_reset_control err %d\n", err);
+		return err;
 	}
 
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
+	err = devm_reset_control_bulk_get_optional_exclusive(dev,
+							     ROCKCHIP_NUM_CORE_RSTS,
+							     rockchip->core_rsts);
+	if (err) {
+		dev_err(dev, "cannot get the devm_reset_control err %d\n", err);
+		return err;
 	}
 
 	if (rockchip->is_rc) {
@@ -152,21 +124,10 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	int err, i;
 	u32 regs;
 
-	err = reset_control_assert(rockchip->aclk_rst);
+	err = reset_control_bulk_assert(ROCKCHIP_NUM_PM_RSTS,
+					rockchip->pm_rsts);
 	if (err) {
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
+		dev_err(dev, "reset bulk assert pm_rsts err %d\n", err);
 		return err;
 	}
 
@@ -178,47 +139,19 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		}
 	}
 
-	err = reset_control_assert(rockchip->core_rst);
+	err = reset_control_bulk_assert(ROCKCHIP_NUM_CORE_RSTS,
+					rockchip->core_rsts);
 	if (err) {
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
+		dev_err(dev, "reset bulk assert core_rsts err %d\n", err);
 		goto err_exit_phy;
 	}
 
 	udelay(10);
 
-	err = reset_control_deassert(rockchip->pm_rst);
-	if (err) {
-		dev_err(dev, "deassert pm_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_deassert(rockchip->aclk_rst);
-	if (err) {
-		dev_err(dev, "deassert aclk_rst err %d\n", err);
-		goto err_exit_phy;
-	}
-
-	err = reset_control_deassert(rockchip->pclk_rst);
+	err = reset_control_bulk_deassert(ROCKCHIP_NUM_PM_RSTS,
+					  rockchip->pm_rsts);
 	if (err) {
-		dev_err(dev, "deassert pclk_rst err %d\n", err);
+		dev_err(dev, "reset bulk deassert pm_rsts err %d\n", err);
 		goto err_exit_phy;
 	}
 
@@ -261,31 +194,15 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	 * Please don't reorder the deassert sequence of the following
 	 * four reset pins.
 	 */
-	err = reset_control_deassert(rockchip->mgmt_sticky_rst);
+	err = reset_control_bulk_deassert(ROCKCHIP_NUM_CORE_RSTS,
+					  rockchip->core_rsts);
 	if (err) {
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
-	if (err) {
-		dev_err(dev, "deassert pipe_rst err %d\n", err);
+		dev_err(dev, "reset bulk deassert core_rsts err %d\n", err);
 		goto err_power_off_phy;
 	}
 
 	return 0;
+
 err_power_off_phy:
 	while (i--)
 		phy_power_off(rockchip->phys[i]);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 72346e17e45e..27e951b41b80 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -15,6 +15,7 @@
 #include <linux/kernel.h>
 #include <linux/pci.h>
 #include <linux/pci-ecam.h>
+#include <linux/reset.h>
 
 /*
  * The upper 16 bits of PCIE_CLIENT_CONFIG are a write mask for the lower 16
@@ -289,6 +290,8 @@
 		 ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b))
 
 #define ROCKCHIP_NUM_CLKS	ARRAY_SIZE(rockchip_pci_clks)
+#define ROCKCHIP_NUM_PM_RSTS	ARRAY_SIZE(rockchip_pci_pm_rsts)
+#define ROCKCHIP_NUM_CORE_RSTS	ARRAY_SIZE(rockchip_pci_core_rsts)
 
 static const char * const rockchip_pci_clks[] = {
 	"aclk",
@@ -297,18 +300,26 @@ static const char * const rockchip_pci_clks[] = {
 	"pm",
 };
 
+static const char * const rockchip_pci_pm_rsts[] = {
+	"pm",
+	"pclk",
+	"aclk",
+};
+
+static const char * const rockchip_pci_core_rsts[] = {
+	"core",
+	"mgmt",
+	"mgmt-sticky",
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
 	struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
 	struct	regulator *vpcie12v; /* 12V power supply */
 	struct	regulator *vpcie3v3; /* 3.3V power supply */
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
