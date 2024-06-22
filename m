Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB591C27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jun 2024 06:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ft5VGCSSYiKAsQnBL8AmtpqDgbLdJJYvjbZBxsyd8M=; b=XVY8aJjFkdwsfr
	vYgmTw1NBFazMdzItR2yAVeGUK5ki26pMq4lShH8LxswU+eptQRyp67B1Fp4sgeWWmfxprSWb2BHb
	e1E79mLvtLDN6vT/BQRHntxlbSM9ELMF2SuMQEg6+HixBU8xcxYxyUI9jzMLHKoiXF+6kJGrW3db7
	LC8NtRtu2neJZ4CFJuXPtagbMT6X181iKiu6qqAydqPa8DXWzN3dOzvc/f2fTY1Cf2AJ9Z7S7BNgD
	f2WT4B5BJmkd6bV3SxV7Ewh1IkSmv1wL07x6CRKbucwpEOAq2DPDm1bxAJM08/tkyMgs7heBEKxqg
	AqKGfH5rYBhipERJlz2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKu5d-0000000BVvX-3GCh;
	Sat, 22 Jun 2024 06:19:09 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKu5b-0000000BVuu-1aFl;
	Sat, 22 Jun 2024 06:19:08 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-706264e1692so2186793b3a.1;
        Fri, 21 Jun 2024 23:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719037147; x=1719641947; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s+ykFI/fLlnufjJhkBdQ2mN3BsQ1fw3+dLBPgrHj63w=;
        b=M6IGl5srfko5LJrxgdW4KJ/l28H24GVqWOCgMdLPfUIngsjX6ubAHJ52CUuTq/d4G8
         qzfdrros8L94sqbl0TnKhJesyZiQSCNQXnxvSizukilK7BSw2dZFOzF+PwLokCqus7b3
         Oh7P3KI5zgml4OWnvgU2sAnIFSf+XvkVc5/OVEf3DGBOFdFpgcVzDCG/FZlgB/gglF/M
         Demea2Tr4ZYHWGDRQq+7aeO/WhAXTIVsOPZwT8JBGKhculvXp8xg4UzjN9PRR00P4PTQ
         AVb8og/zQpmCmZteUXyxBt/JYkZowXq53M/M6kODU2u3Aqry2bNVQv1CKyWsXIBf0fdq
         mOiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719037147; x=1719641947;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+ykFI/fLlnufjJhkBdQ2mN3BsQ1fw3+dLBPgrHj63w=;
        b=hANJZF/5T0JhPZ23fTvJIAMNY3M1tHzU2KENda9x7Too/smS9l0470i8RdDO1o9pOy
         zZ37PuwZswLrXLoRqTm+1pqpUhOYPOSSgPqM6hSs7oc3gR79O5f1O1IoJ2pMkNhXzzsU
         ZktRaV06ucatE1YPDvTMZ/c6SNw9JuK3yB/T59jRin1+AiBQuN5bT9blcnonu+90k/LA
         U3whcrRmfc/OF4qYlq+mIBcnyAtINFiB1a/+hxVOZlbS/ZWFQFXHZWO1sPDY3z+S4vqc
         f6IcZX7tinV5bwr9/ajHUlqiOMwZ0kExrGInERH+EpVST+3bnet9zr1+yqIZQSWMf9Vc
         1amg==
X-Forwarded-Encrypted: i=1; AJvYcCUAEeacES35DN+SIPxueKR0jH4O+0B/vPVD4VvriZ3pzuItJB3yjYNKRDgDSOtLGOJeHaZmnoKyJ2f/fCSPTso06WXmt57ol5zPZyFptKexzf0yFhWNoNPhomPHBaJuGLbSlyhV7S+z6wcIwLCcyk1QouK/h42BRbc=
X-Gm-Message-State: AOJu0Yw4M8xAhNwT8/C0DBa3nKUfOmThcY/qva9SzZ3VOBjPnb5fZ8i1
	0FfhlzzYvsPu3qbRGi4CNgR+JlRJ2MSznOWKH4qTM3++m0YyOKZQ
X-Google-Smtp-Source: AGHT+IG/CZQYEMJ4vvJWGJop7Yw3UjB0tj9j6iH8hLNyfyGHEMyHVogoppqTqb4Yl/gCDGpTPB2FEA==
X-Received: by 2002:a05:6a20:6382:b0:1b7:f59d:fd1e with SMTP id adf61e73a8af0-1bcbb5f06a3mr10744793637.50.1719037146472;
        Fri, 21 Jun 2024 23:19:06 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c7e53e7bf0sm4692240a91.19.2024.06.21.23.19.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jun 2024 23:19:06 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Sat, 22 Jun 2024 11:48:38 +0530
Message-ID: <20240622061845.3678-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_231907_495639_8D099760 
X-CRM114-Status: GOOD (  18.24  )
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

Refactor the clock handling in the Rockchip PCIe driver,
introducing a more robust and efficient method for enabling and
disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
the clock handling for the core clocks becomes much simpler.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: Fix typo in commit message, dropped reported by.
v2: Fix compilation error reported by Intel test robot.
---
 drivers/pci/controller/pcie-rockchip.c | 64 ++++----------------------
 drivers/pci/controller/pcie-rockchip.h | 15 ++++--
 2 files changed, 21 insertions(+), 58 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 0ef2e622d36e..166dad666a35 100644
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
@@ -127,28 +127,13 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
 					     "failed to get ep GPIO\n");
 	}
 
-	rockchip->aclk_pcie = devm_clk_get(dev, "aclk");
-	if (IS_ERR(rockchip->aclk_pcie)) {
-		dev_err(dev, "aclk clock not found\n");
-		return PTR_ERR(rockchip->aclk_pcie);
-	}
-
-	rockchip->aclk_perf_pcie = devm_clk_get(dev, "aclk-perf");
-	if (IS_ERR(rockchip->aclk_perf_pcie)) {
-		dev_err(dev, "aclk_perf clock not found\n");
-		return PTR_ERR(rockchip->aclk_perf_pcie);
-	}
-
-	rockchip->hclk_pcie = devm_clk_get(dev, "hclk");
-	if (IS_ERR(rockchip->hclk_pcie)) {
-		dev_err(dev, "hclk clock not found\n");
-		return PTR_ERR(rockchip->hclk_pcie);
-	}
+	for (i = 0; i < ROCKCHIP_NUM_CLKS; i++)
+		rockchip->clks[i].id = rockchip_pci_clks[i];
 
-	rockchip->clk_pcie_pm = devm_clk_get(dev, "pm");
-	if (IS_ERR(rockchip->clk_pcie_pm)) {
-		dev_err(dev, "pm clock not found\n");
-		return PTR_ERR(rockchip->clk_pcie_pm);
+	err = devm_clk_bulk_get(dev, ROCKCHIP_NUM_CLKS, rockchip->clks);
+	if (err) {
+		dev_err(dev, "rockchip clk bulk get failed\n");
+		return err;
 	}
 
 	return 0;
@@ -372,39 +357,13 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 	struct device *dev = rockchip->dev;
 	int err;
 
-	err = clk_prepare_enable(rockchip->aclk_pcie);
+	err = clk_bulk_prepare_enable(ROCKCHIP_NUM_CLKS, rockchip->clks);
 	if (err) {
-		dev_err(dev, "unable to enable aclk_pcie clock\n");
+		dev_err(dev, "rockchip clk bulk prepare enable failed\n");
 		return err;
 	}
 
-	err = clk_prepare_enable(rockchip->aclk_perf_pcie);
-	if (err) {
-		dev_err(dev, "unable to enable aclk_perf_pcie clock\n");
-		goto err_aclk_perf_pcie;
-	}
-
-	err = clk_prepare_enable(rockchip->hclk_pcie);
-	if (err) {
-		dev_err(dev, "unable to enable hclk_pcie clock\n");
-		goto err_hclk_pcie;
-	}
-
-	err = clk_prepare_enable(rockchip->clk_pcie_pm);
-	if (err) {
-		dev_err(dev, "unable to enable clk_pcie_pm clock\n");
-		goto err_clk_pcie_pm;
-	}
-
 	return 0;
-
-err_clk_pcie_pm:
-	clk_disable_unprepare(rockchip->hclk_pcie);
-err_hclk_pcie:
-	clk_disable_unprepare(rockchip->aclk_perf_pcie);
-err_aclk_perf_pcie:
-	clk_disable_unprepare(rockchip->aclk_pcie);
-	return err;
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
@@ -412,10 +371,7 @@ void rockchip_pcie_disable_clocks(void *data)
 {
 	struct rockchip_pcie *rockchip = data;
 
-	clk_disable_unprepare(rockchip->clk_pcie_pm);
-	clk_disable_unprepare(rockchip->hclk_pcie);
-	clk_disable_unprepare(rockchip->aclk_perf_pcie);
-	clk_disable_unprepare(rockchip->aclk_pcie);
+	clk_bulk_disable_unprepare(ROCKCHIP_NUM_CLKS, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 6111de35f84c..72346e17e45e 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -11,6 +11,7 @@
 #ifndef _PCIE_ROCKCHIP_H
 #define _PCIE_ROCKCHIP_H
 
+#include <linux/clk.h>
 #include <linux/kernel.h>
 #include <linux/pci.h>
 #include <linux/pci-ecam.h>
@@ -287,6 +288,15 @@
 		(((c) << ((b) * 8 + 5)) & \
 		 ROCKCHIP_PCIE_CORE_EP_FUNC_BAR_CFG_BAR_CTRL_MASK(b))
 
+#define ROCKCHIP_NUM_CLKS	ARRAY_SIZE(rockchip_pci_clks)
+
+static const char * const rockchip_pci_clks[] = {
+	"aclk",
+	"aclk-perf",
+	"hclk",
+	"pm",
+};
+
 struct rockchip_pcie {
 	void	__iomem *reg_base;		/* DT axi-base */
 	void	__iomem *apb_base;		/* DT apb-base */
@@ -299,10 +309,7 @@ struct rockchip_pcie {
 	struct	reset_control *pm_rst;
 	struct	reset_control *aclk_rst;
 	struct	reset_control *pclk_rst;
-	struct	clk *aclk_pcie;
-	struct	clk *aclk_perf_pcie;
-	struct	clk *hclk_pcie;
-	struct	clk *clk_pcie_pm;
+	struct  clk_bulk_data clks[ROCKCHIP_NUM_CLKS];
 	struct	regulator *vpcie12v; /* 12V power supply */
 	struct	regulator *vpcie3v3; /* 3.3V power supply */
 	struct	regulator *vpcie1v8; /* 1.8V power supply */

base-commit: 35bb670d65fc0f80c62383ab4f2544cec85ac57a
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
