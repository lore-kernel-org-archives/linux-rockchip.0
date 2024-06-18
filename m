Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48671C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4Daj+CvHnHRfi7HmR08wLqEiuz3MHgX5LPNlmg0Ufk=; b=ypQ6fMufKY8w9Q
	YczrvwC5uQwHNU+/OuNfKIf8i8dVZQD96V02YkE/y1V06xNWLWVP43AGrfRlPRLfUSYFBr2hFVedq
	cQw/VidmwAxCjZMlFfZ5D0NARV4LoGEg8WFuVgVYlsD7zN876bAAlRc9TnwKgTxHXXQ2HXTPrfBYu
	XTC017AlPfEndQGlFo56FxAfwLRtMtCSp2530RmzaPxBhFC6KMDGRQ9IyTqnKf76oltEUdJC2C+rE
	La9urdEtZrBJ3P7hD25bYfr5EoR2VyjSC0hJ9QLG66+EgG6adB/v9WZBr3Y/pIZRtB33Grkz9hT2V
	rZu0Spguj0qBVOJmEkxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbuD-0000000FtVF-3hmu;
	Tue, 18 Jun 2024 16:42:01 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbuB-0000000FtUB-2Web;
	Tue, 18 Jun 2024 16:42:01 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1f717608231so43199515ad.2;
        Tue, 18 Jun 2024 09:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718728919; x=1719333719; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ESixGGC9u5ovZQ6bWKTTIZp88BSFjHh98tzqZjNcDpA=;
        b=S9Wyzet5opH5YDTVZyQoUIpagY/VHPqXD+W7bhwEJsM91VVXmk6ovtuj4AzUNxaHzx
         57543OjgpgMO5A7vEuwHEIost6cqnZyWvPXVirJSTBqA1ZIjwcUMbWKfy0vBsMH2ENWh
         i+3rdAirwUKMd/x3SLw5qL5SjQD3t+MPZX6s6QfzuAtb1MKboVdmHowoz6VcZUn6dPX0
         nPFqkQ9K2tx6FG5vpYFRJ/iC+c316dyJlp5PsSP0f6jY5Glm2Ez7INquyGkJUgAHBdR8
         y1kHBF6INm5mhKA6BjOa/cu+DcqvUkwIc6Hj5CnvkQydB1+2yU3wovv9OhJ/jLx7EHhH
         Uk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718728919; x=1719333719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ESixGGC9u5ovZQ6bWKTTIZp88BSFjHh98tzqZjNcDpA=;
        b=JfhTWO6Hf+r/FnZ5Zr2iFxu5wdp1Z6u7QqArj8DHRiZk6V1cEqgZtU4apyhlXxavsz
         mRNiw6YeTP8CSb1tilD4f1KeFTbejs8PjCPgjXL+ENfdLu0HMk9iuG2DGfdIcVvWei8/
         Mvfsjan7WLpp8AZz/4wDlrY7hXtcspS5gloAFI4y6g5o4EuWXiidhsvPnYVe2I5KgCI0
         D+gUk/8NFQk5G0ddMOOCGqca+OecyZvWGTTKfS7W8wZvARB7JukL2sKFn42HubEEPEJG
         IqsVgq4/YjiZ6UnVZxzwT2tq0w/AZ4i1ogZrGY/5OBma4T+mz3WtHa5PBX1I0faAnBqC
         pj5A==
X-Forwarded-Encrypted: i=1; AJvYcCVPjTY8+4cZ9DXcmx2gi6sjgCoKNYNKl8SflPpIgZPAdbT/0lpogg1TZgf99BetUqae+qNL0EEUzGCKaOL2R3rmjX0ajEz6xyefEw14Yiz4ST9QgIqWY72bGPhPyBRfNjfQmXlSoedIzByMTh5W9+FUVqYMhuJAwKM=
X-Gm-Message-State: AOJu0YzTukCJVJwYvlx5JDRjYtre2GtzLdn3JcbEfIr2whjZsHG80tqS
	oBAblKpUW0o+hlOELrNegS/KDOl3b+06hUdTiljpkGqZX4dM3iGl
X-Google-Smtp-Source: AGHT+IFg4ssYvnK3V3MlBPc+TJw7hIS0CzI9EisxKeWciJMuK5xzpw7EkR0LYYrUHnpvSR2nd0UgwQ==
X-Received: by 2002:a17:902:6b4a:b0:1f6:e4ab:a1f2 with SMTP id d9443c01a7336-1f9aa3d3cddmr1315805ad.25.1718728918640;
        Tue, 18 Jun 2024 09:41:58 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f0175csm99081835ad.191.2024.06.18.09.41.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 09:41:58 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/3] PCI: rockchip: Simplify reset control handling by using reset_control_bulk*() function
Date: Tue, 18 Jun 2024 22:11:27 +0530
Message-ID: <20240618164133.223194-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240618164133.223194-1-linux.amoon@gmail.com>
References: <20240618164133.223194-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_094159_709668_2E40FAC5 
X-CRM114-Status: GOOD (  18.42  )
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

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 139 +++++--------------------
 drivers/pci/controller/pcie-rockchip.h |  24 +++--
 2 files changed, 44 insertions(+), 119 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 166dad666a35..5154dfb1311b 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -69,54 +69,24 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
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
+			ROCKCHIP_NUM_PM_RSTS, rockchip->pm_rsts);
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
+			ROCKCHIP_NUM_CORE_RSTS, rockchip->core_rsts);
+	if (err) {
+		dev_err(dev, "cannot get the devm_reset_control err %d\n", err);
+		return err;
 	}
 
 	if (rockchip->is_rc) {
@@ -152,21 +122,10 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	int err, i;
 	u32 regs;
 
-	err = reset_control_assert(rockchip->aclk_rst);
+	err = reset_control_bulk_assert(ROCKCHIP_NUM_PM_RSTS,
+			rockchip->pm_rsts);
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
 
@@ -178,47 +137,19 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 		}
 	}
 
-	err = reset_control_assert(rockchip->core_rst);
+	err = reset_control_bulk_assert(ROCKCHIP_NUM_CORE_RSTS,
+			rockchip->core_rsts);
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
+			rockchip->pm_rsts);
 	if (err) {
-		dev_err(dev, "deassert pclk_rst err %d\n", err);
+		dev_err(dev, "reset bulk deassert pm_rsts err %d\n", err);
 		goto err_exit_phy;
 	}
 
@@ -261,31 +192,15 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip)
 	 * Please don't reorder the deassert sequence of the following
 	 * four reset pins.
 	 */
-	err = reset_control_deassert(rockchip->mgmt_sticky_rst);
+	err = reset_control_bulk_deassert(ROCKCHIP_NUM_CORE_RSTS,
+			rockchip->core_rsts);
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
index f256cdf4fa49..fceb6f526b72 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -288,6 +288,8 @@
 		 ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b))
 
 #define ROCKCHIP_NUM_CLKS	ARRAY_SIZE(rockchip_pci_clks)
+#define ROCKCHIP_NUM_PM_RSTS	ARRAY_SIZE(rockchip_pci_pm_rsts)
+#define ROCKCHIP_NUM_CORE_RSTS	ARRAY_SIZE(rockchip_pci_core_rsts)
 
 static const char * const rockchip_pci_clks[] = {
 	"aclk",
@@ -296,18 +298,26 @@ static const char * const rockchip_pci_clks[] = {
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
