Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 404F5C54FC6
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Sep 2024 18:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjvJX10vBwR5s6sjWLIsFIfw+YhIXEiGzr2Yph2ES1E=; b=X8GEb/vZMB2jR/
	d/JRER0Sf7SZIEPN4VirDLWpB8Akoo0GglzhMsVJneoZaqfybeILeRN71/kqJuqp+06rXI5HyY8fS
	seKIZQKaYf4Nn0bA8DHMQ7ta+UafAaBF39s09yywaBc7I9+K5zcxDoPrDRBk7DfLjzs3CXo/Pm/bX
	LBqRLhZWyCLRN2pr2zjsivcZddgqckNvKVBt14QvQkuY9Df7hZhZ1iVF/r/uYmywZCfGS0MPMXl6n
	bf1U46kvlMNXrDf8Mm699bABv7MJuMI11m66/uFzmhj4eyX0TZw9LzFCV3i2XL2cpMCVJJYYHTFbL
	e4fFZ0Y3BSdequ8FgiBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpPT-0000000C8WY-1w7i;
	Sun, 01 Sep 2024 18:34:47 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skpOd-0000000C8FO-1M4o;
	Sun, 01 Sep 2024 18:33:57 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2055136b612so9134375ad.0;
        Sun, 01 Sep 2024 11:33:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725215634; x=1725820434; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NWOPgKqlHSqcFrp6UWKz27HYtPeHeMkMuKO2PRhgl/E=;
        b=CUbVeQH/8cdcLsWQCU0i4A7Vq8NShyxgr8sW6Hfs0WXbJ8GT7TFAm8/1ZztjBQqByc
         k7m44DcIG407qZwDyZukdmCzMNv3I3AU3vTghlc32gfjeneA+UB89zZTmSp16bjZe0sn
         fOPpTEzx0jU5TVsTKOMZJmE5KvSmzUtsnZVqd9rMbW/1RumifFsm3mWdnlfJ0jbqvk90
         ba13NQ/z+fZ4Ts2Lqilk8IU9YVo7mD7mAcd5+3Ea50F4BqBcl+amc4m9APfU1XE7PSpg
         /utbclu3rpSE7APXuOFNsfL+66gPxlZ+UtmI1YAHk55urvfyAkfk6BCyk/EtdHdmpDxb
         KK3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725215634; x=1725820434;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NWOPgKqlHSqcFrp6UWKz27HYtPeHeMkMuKO2PRhgl/E=;
        b=HDUl3Z/ik3+QuM7MJ2PC00xY+srrAbqMunLGOjSz9r+IMBygKpd5v0Lx6tzOanT34r
         bddR0v8HAlgNRBttnYMIGOrCARH0ElZs+HCAlpDoTsM8FQz8HkwqKVdfKeI9oiyA5JBl
         LzBYR5TR6JQ5I4qOhW2BzH3HY/1zZxcSOhNczVIrpa/15VsgWYNldxWgPe3pN72QfLzF
         Ky5Xj9VYDO4kHS9dF8tR3SYatOc3cSAqEj8siwoXR/ERM37LYqMACivNu5Frw8zJYT2F
         V12aXvNZI9+mRudtoK+xmidPv4ks/3MoWv8yjHMGm7iv9tj5zsrA4DYe+Yw5FH50yr4o
         KRUg==
X-Forwarded-Encrypted: i=1; AJvYcCX3cqOmzvu8u1Qpp9LL5AFUXxGDNdF35D7v+Tq0k/d5M5mB7NXh1ejwSBm9SXs1BpCncVyIKO0CPkfXDjuWyjk=@lists.infradead.org, AJvYcCXIXVrE4x12RpjermOHC66u1v0aeRpLeN1OlSko/5N1pDUhbRTJQDQhi4AN09GkTUuyuwj5aENrJ0zbsR58Ox73@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2Cyc2qtuG4/pu4+1tHleCK8cIYcqVBKS+5AXZjKeEwJVJTaps
	0cpyYReGpMsn0xaRj6Xdy6I4XbH0OZmvq4nZOBTLSLi44LSygLh1
X-Google-Smtp-Source: AGHT+IHkQQvhvEoYGABCdxlZdgvIb8B2P/lnuk+/edMy91b04EP9HU2VwaxivHUvlB7iBNh+q0ow6A==
X-Received: by 2002:a17:902:f546:b0:1fd:8c25:4145 with SMTP id d9443c01a7336-2054612c3bemr61557045ad.17.1725215634134;
        Sun, 01 Sep 2024 11:33:54 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20559b793f8sm16262405ad.15.2024.09.01.11.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 11:33:53 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/6] PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function
Date: Mon,  2 Sep 2024 00:02:09 +0530
Message-ID: <20240901183221.240361-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240901183221.240361-1-linux.amoon@gmail.com>
References: <20240901183221.240361-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240901_113355_412591_FDC16E99 
X-CRM114-Status: GOOD (  20.31  )
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

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v5: Fix the De-assert reset core as per the TRM
    De-assert the PIPE_RESET_N/MGMT_STICKY_RESET_N/MGMT_RESET_N/RESET_N
    simultaneously.
v4: use dev_err_probe in error path.
v3: Fix typo in commit message, dropped reported by.
v2: Fix compilation error reported by Intel test robot
    fixed checkpatch warning
---
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
