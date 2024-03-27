Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EA75C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJGYLRQ4aaEwzPl6qF5fX6b6EdhS4hKPx02IoPLhpFI=; b=Wi3KZfeOp3Ck8A
	liAc2aPsy0flsYKBPoQk4GFEfcCNy/UMmLLDgtN8F+/FQdwmegoYMX62P9YRaAdTH4S/hIdVJCuJl
	fV55qZw0NJYa8jqOovb0a8qImXhKifv6jxSvjtysB8Hvm92NXWlf7wk5qSyAOOzgPa9Bq7rOUrmoC
	52kBaKkwN7etMWUv8cRmzRPUWd8mwTfebEadNSPuwrjRAu8e2s51pu+c4QZyobdnfjJiJ+vqVHqA1
	78FufgctH+bnGLfoZq1ClOe7VwWIJ8UrxWamKMOwWaG1wm4IHR/ZLWfHL1VoQUV/u5zU9W7bVANgk
	KfVwQBdRy8w/O2DTvKZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPNl-00000008Be8-2uKW;
	Wed, 27 Mar 2024 09:15:41 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPNQ-00000008BTz-1Si2
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 09:15:22 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6ea8a0d1a05so439890b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 02:15:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711530920; x=1712135720; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4+s99ic6a4xby36ko4cSNl1g4BMNR39F6N7WDhYUFLA=;
        b=ZU4UGx4PH3pMTYL/ExW4gXeSclNBCSIhb6JcY36G3M+c9YY17lOwUyJm1Qqtq0YxV5
         w4LHonBHpvoQVz72v4OS8rWgwn5g6OL1IQrdagQwp/Og4I4i9tVsxGtWAGMr6Qo1iD1r
         0nD0f+XYEjZBjLSLnOB27E80BfgROX07khZw/aECdYjzLCWpdmaQjNxixQncOU0H+/kS
         1TU1iAqhrRpWrkbZo5I58MTsCsG9FvLENRdhvnBiNDzUwUq6Ocye2sgTZCLYCl/IWQUK
         DA7b7Cawz+QrJqnwsnuP+mQodPTRdh/aBHsBXwofdXgorjfMx+bPeUDW5B+0qW1d5otZ
         X6ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711530920; x=1712135720;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4+s99ic6a4xby36ko4cSNl1g4BMNR39F6N7WDhYUFLA=;
        b=RcSKwjkFmd9dPgAtPPKK14FnqeVBeavou4MShrBQUaYp6JJIFQNcbNzHgTHwzXEYHw
         Z1+z3Zwo3qV20CJg0Xdw2ev0dwKOwHemTqpGs3GKzAgu2mcq/wZ+47iX+UFJySF9xJtH
         kJRUqYe8nFRg6r2BliTLdwhyYrWVOoQSokAZSVGUyR2hcot4wD6ym3StGT3hUd/XIRS0
         ts4eVMs/5h4upz2UmH/uXhqY3dtzkkuCSpv5JiwMULiMzWQw1Rx4rkgTPfhKbgF0IeLD
         ufXr1djbkQCV5dD1+CaI3XPXppKbv524aTbduB9eDf259mEsgiCQLAVYx6/y6pDqwcwU
         kB8g==
X-Forwarded-Encrypted: i=1; AJvYcCVgnHVCHURcaxuUrvKqEsLBMyBMQ0PGawSwcAnBIh9tiItubI3OtY/Kjzqq39EyHqgoHB64XraYK5zJugLBKNvFK6NJ2LLJjafwwGNLIRchIgTX
X-Gm-Message-State: AOJu0Yz1F9wnonTYIGxB7BJ3gwXz7GGskcHbyOPKs1/c5alOVOlTUgn2
	Mckj0tOQvjsvV6dPkiEJTrFqGcT7KHx0Syq3tT0N5+wiYG4FzfdgaqOtZ7h7xw==
X-Google-Smtp-Source: AGHT+IGGlNwqqhJyPDs53FUp8HnF8MxmatY5hAsgpFI+AE8YxYjYhWVdUxUP+eXF583iNe5GoKe6mw==
X-Received: by 2002:a05:6a21:32a4:b0:1a3:63cd:5262 with SMTP id yt36-20020a056a2132a400b001a363cd5262mr5531403pzb.26.1711530919209;
        Wed, 27 Mar 2024 02:15:19 -0700 (PDT)
Received: from [127.0.1.1] ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b005dc4fc80b21sm8673871pge.70.2024.03.27.02.15.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:15:18 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 27 Mar 2024 14:43:35 +0530
Subject: [PATCH v12 6/8] PCI: dwc: ep: Rename dw_pcie_ep_init_complete() to
 dw_pcie_ep_init_registers()
MIME-Version: 1.0
Message-Id: <20240327-pci-dbi-rework-v12-6-082625472414@linaro.org>
References: <20240327-pci-dbi-rework-v12-0-082625472414@linaro.org>
In-Reply-To: <20240327-pci-dbi-rework-v12-0-082625472414@linaro.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Marek Vasut <marek.vasut+renesas@gmail.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vidya Sagar <vidyas@nvidia.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Richard Zhu <hongxing.zhu@nxp.com>, 
 Lucas Stach <l.stach@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Minghuan Lian <minghuan.Lian@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>, 
 Roy Zang <roy.zang@nxp.com>, 
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jesper Nilsson <jesper.nilsson@axis.com>, 
 Srikanth Thokala <srikanth.thokala@intel.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org, 
 Niklas Cassel <cassel@kernel.org>, linux-arm-kernel@axis.com, 
 linux-rockchip@lists.infradead.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=4791;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=V0Mzth2vl1K0DFypRpWN9TY0MnmoC5wp8l5W1GdqahU=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA+NJlxhtcI5x9HWzPDSMHMbS7UUf3ccej2MOr
 Gzs0KQ0lNqJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgPjSQAKCRBVnxHm/pHO
 9RqICACXtyJ4U4bh9LLyWGD3MnW+UaIlaEoKFtd4l7YOpLPXe+ZOCiCG2SqP2VwPGBQB0AYX3Xi
 0wPUXq/TdoUXUgXkKzNjY2AdItwj+kDbJPVrMu6Wf4VyxDfNwM/X53E7QMmUBynilnn6s4wTATg
 o/NhZDNTBFFSDkRrLYdPeZdAG+TryXFOBkadhD1Phx/6iy4GOTCQajvuGi9yvDHWu0YTtffO47l
 ixzD8lGfiQBguL3irb2Oi4TIbZSdC2YOVYto+eG7SU/TTU8cH6O7xzgNj1EmVpx0lwqRohk01PL
 oc0BF2SEjA/fL1yk3YTlMDuWlzBOmS0ZGJTw6wchBfxS/Wxy
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_021520_560240_5E3F395E 
X-CRM114-Status: GOOD (  15.33  )
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

The goal of the dw_pcie_ep_init_complete() API is to initialize the DWC
specific registers post registering the controller with the EP framework.

But the naming doesn't reflect its functionality and causes confusion. So,
let's rename it to dw_pcie_ep_init_registers() to make it clear that it
initializes the DWC specific registers.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-ep.c | 14 +++++++-------
 drivers/pci/controller/dwc/pcie-designware.h    |  4 ++--
 drivers/pci/controller/dwc/pcie-qcom-ep.c       |  2 +-
 drivers/pci/controller/dwc/pcie-tegra194.c      |  2 +-
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index eeff7f1ff8f1..761d3012a073 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -674,14 +674,14 @@ static unsigned int dw_pcie_ep_find_ext_capability(struct dw_pcie *pci, int cap)
 }
 
 /**
- * dw_pcie_ep_init_complete - Complete DWC EP initialization
+ * dw_pcie_ep_init_registers - Initialize DWC EP specific registers
  * @ep: DWC EP device
  *
- * Complete the initialization of the registers (CSRs) specific to DWC EP. This
- * API should be called only when the endpoint receives an active refclk (either
- * from host or generated locally).
+ * Initialize the registers (CSRs) specific to DWC EP. This API should be called
+ * only when the endpoint receives an active refclk (either from host or
+ * generated locally).
  */
-int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep)
+int dw_pcie_ep_init_registers(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	struct dw_pcie_ep_func *ep_func;
@@ -801,7 +801,7 @@ int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep)
 
 	return ret;
 }
-EXPORT_SYMBOL_GPL(dw_pcie_ep_init_complete);
+EXPORT_SYMBOL_GPL(dw_pcie_ep_init_registers);
 
 /**
  * dw_pcie_ep_init - Initialize the endpoint device
@@ -880,7 +880,7 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	 * (Ex: tegra194). Any hardware access on such platforms result
 	 * in system hang.
 	 */
-	ret = dw_pcie_ep_init_complete(ep);
+	ret = dw_pcie_ep_init_registers(ep);
 	if (ret)
 		goto err_free_epc_mem;
 
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 351d2fe3ea4d..f8e5431a207b 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -669,7 +669,7 @@ static inline void __iomem *dw_pcie_own_conf_map_bus(struct pci_bus *bus,
 #ifdef CONFIG_PCIE_DW_EP
 void dw_pcie_ep_linkup(struct dw_pcie_ep *ep);
 int dw_pcie_ep_init(struct dw_pcie_ep *ep);
-int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep);
+int dw_pcie_ep_init_registers(struct dw_pcie_ep *ep);
 void dw_pcie_ep_init_notify(struct dw_pcie_ep *ep);
 void dw_pcie_ep_deinit(struct dw_pcie_ep *ep);
 void dw_pcie_ep_cleanup(struct dw_pcie_ep *ep);
@@ -693,7 +693,7 @@ static inline int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	return 0;
 }
 
-static inline int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep)
+static inline int dw_pcie_ep_init_registers(struct dw_pcie_ep *ep)
 {
 	return 0;
 }
diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 59b1c0110288..3697b4a944cc 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -463,7 +463,7 @@ static int qcom_pcie_perst_deassert(struct dw_pcie *pci)
 	      PARF_INT_ALL_LINK_UP | PARF_INT_ALL_EDMA;
 	writel_relaxed(val, pcie_ep->parf + PARF_INT_ALL_MASK);
 
-	ret = dw_pcie_ep_init_complete(&pcie_ep->pci.ep);
+	ret = dw_pcie_ep_init_registers(&pcie_ep->pci.ep);
 	if (ret) {
 		dev_err(dev, "Failed to complete initialization: %d\n", ret);
 		goto err_disable_resources;
diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 26ea2f8313eb..db043f579fbe 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1897,7 +1897,7 @@ static void pex_ep_event_pex_rst_deassert(struct tegra_pcie_dw *pcie)
 	val = (upper_32_bits(ep->msi_mem_phys) & MSIX_ADDR_MATCH_HIGH_OFF_MASK);
 	dw_pcie_writel_dbi(pci, MSIX_ADDR_MATCH_HIGH_OFF, val);
 
-	ret = dw_pcie_ep_init_complete(ep);
+	ret = dw_pcie_ep_init_registers(ep);
 	if (ret) {
 		dev_err(dev, "Failed to complete initialization: %d\n", ret);
 		goto fail_init_complete;

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
