Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F6EC2BA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHUFmztTI9qm4Piwy/s9eRbA8n6sW2WSmJm5HMabzYA=; b=WFGU+MkgwgKWUP
	/82/gGbfP5HgQpwq3sjUELBO0CenllJL2wL2HGOpP8iGbEMhF4tlh+dHtFWTE/ThNGDEm2NiSM7PZ
	c2ukjqG/vSokMGnNiH7QVbUAjNui97+9Bcw2gOSrQyoZJXDQr7uHGM3AnhZfm0ZmJAJM/sI3m+JbF
	+TQZabfl2Ir8bX5O/i99Foqs3NKQlYCy4xIp8zgp3gjcO2nIqJrcLs0JYrGjZmJtbydMAcAdxk3mz
	NDXe79BZ3YDNznvbO/13rzHydIShpGoNWK7BOTsje3LWj3Jsm3t3/x4DAe2R2FE8GkZPXpqOeABqM
	xFUPDOJqk4jEK9W5lW6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbu8-0000000FtTN-2Bhf;
	Tue, 18 Jun 2024 16:41:56 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbu5-0000000FtSm-3kBz;
	Tue, 18 Jun 2024 16:41:55 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1f47f07acd3so50279765ad.0;
        Tue, 18 Jun 2024 09:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718728913; x=1719333713; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lEKJAviaww/opy5uOYiRNCbAr4C1pq+2z0zEGSrd6PU=;
        b=S3aAyyD/HUXbzuE3siEit4LP+xXGLP1UVcvbyLYcVM63T8XeHb1BUUluXT/FQuluBE
         POA33atN9PiZR4AFAVPvUkEISds/VZLOHY725/vw+JlLD7lSF+Bz7+uAcdKMNDaSCl+m
         hFq7w7w8ypZsmorR6rhjX+cuIRouHuCkDAVZJ6UzFCp8+1edIN6ceGjSnHB//nzmj3RV
         K5Hc1bVFR4+g/7lkiyXrs+dMmAUrylZuMvfGVChTzcSzq4UsV1HCrhR5EkXqjuVKceiQ
         kTxm7Pjb8gYpRhDXznLtU9c6EkdrU2bMkFsnp6t5edQt0gTiOrZxDhxo1guSxYfzl+Iq
         jVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718728913; x=1719333713;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lEKJAviaww/opy5uOYiRNCbAr4C1pq+2z0zEGSrd6PU=;
        b=JukYX52l0ajAnbxxljnMyVnYW30F9x3kAt4dFWhhBpKWIrofS1PwgYVbbdUBAyL8rP
         3JcNbuojKZaMBSDumjYgeLNgfImHEH9HYn980mYPstaULoOr5coagP2qpOPbVQ3wBYjE
         sIV+hbcbYjFG9xA0DAut7CHkD7cGcWw+PWn8rpaeeYaVDu+rh7Z2BtYEvq7C6jiAEB6e
         2Jej84mp23U5L6fs/wKg0fz2otfU7Vv3+lQLaT7LLZQNvpeu9Rg0r4nnrRDnVq2YaMVb
         qhDnn9KzW2seyzAqxKb18js/KVNkpIaSr9eg0zz0exm6zpT/rQZ5QHCLb9V7y9SRwcgl
         M0ig==
X-Forwarded-Encrypted: i=1; AJvYcCUZZgGZLfXVmxu6GND6Eax6DSYYpnKBd0/pYSmIVd9InZKrS7cXvmEU1MD4JxQ7ujWTZcPzyZWHT3De/8Sn71UWMKSSLa3lWsZ2UzRHcD/WzrkxuxDWZtn/C5sg5+1quVvbGYJZXpRX/WiCP8+lfiFRH9ICLc2V5t8=
X-Gm-Message-State: AOJu0Yycq/hSV27H4WyRFpHpaQbKDf8UzH8qHHion/FkLYQuR+nETCxP
	1Tprbhohr6zBI1y+npu8oU9wg+WlIfJdcKfzHWGj/ZgqR+QZP+OA
X-Google-Smtp-Source: AGHT+IE6ycMy8brzP3yQKsR/MLnmyODjfStahN/qCbSdYEUO+jsOWW626LyTQvb+AEorPSXcDg0QYg==
X-Received: by 2002:a17:903:11c7:b0:1f6:7212:75f0 with SMTP id d9443c01a7336-1f9aa3ceb87mr1916655ad.17.1718728912991;
        Tue, 18 Jun 2024 09:41:52 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855f0175csm99081835ad.191.2024.06.18.09.41.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 09:41:52 -0700 (PDT)
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
Subject: [PATCH v1 1/3] PCI: rockchip: Simplify clock handling by using clk_bulk*() function
Date: Tue, 18 Jun 2024 22:11:26 +0530
Message-ID: <20240618164133.223194-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240618164133.223194-1-linux.amoon@gmail.com>
References: <20240618164133.223194-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_094153_961117_ED83FFF5 
X-CRM114-Status: GOOD (  18.62  )
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

Refactors the clock handling in the Rockchip PCIe driver,
introducing a more robust and efficient method for enabling and
disabling clocks using clk_bulk*() API. Using the clk_bulk APIs,
the clock handling for the core clocks becomes much simpler.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 64 ++++----------------------
 drivers/pci/controller/pcie-rockchip.h | 14 ++++--
 2 files changed, 20 insertions(+), 58 deletions(-)

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
index 6111de35f84c..f256cdf4fa49 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -287,6 +287,15 @@
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
@@ -299,10 +308,7 @@ struct rockchip_pcie {
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
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
