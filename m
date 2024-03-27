Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50CE0C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNbDjv4OiE9YnG9DjSV8XgAvX9d4dYdKib7PJ8KfxhY=; b=eyGJa28nkKSNtv
	HiCeGiF/gwWSwftApwChqcqhaKw5Aoo8dX2o6oGYxg1HJrD0aioKABe/XnAEOYlFIiecKbmcIMYRr
	qSNfa4XJa5Il3jpoAnyhTHSDHJZG1p4TlqOQimyLQWj/d/ecM9QUock0Z4jsLtoU4Ia4PFoZ6a9L9
	j2vZE4drKQ8aeIcPjJkoYvuAEzGl98jWQE4DkuwvtG2A1lIsvYC++6lE6U3BN+KYqEbiShm7JFlCS
	TS63x0j9kYEuK81uERosqh6UdU63ah+vkvNdtws8GUd4Z4FeKPNx27JpFAAJcVUNYwxF/B6tHmzkY
	sjytdRYlskgcXJ5AT5Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPO3-00000008BoA-0bgh;
	Wed, 27 Mar 2024 09:15:59 +0000
Received: from mail-il1-x12f.google.com ([2607:f8b0:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPNs-00000008Bh7-0Aiw
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 09:15:51 +0000
Received: by mail-il1-x12f.google.com with SMTP id e9e14a558f8ab-3662feb90a8so46003735ab.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 02:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711530946; x=1712135746; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oDRwBHiRbqQEPbqIMMuwLPfNBgzS7ecnVO7qDgoOiM4=;
        b=S8+9/ej052pSlYIUwSdql0TDVFwJ8JY32F9LG/wvlwu5EhlQ3z1qfczCoUpTfFGjcF
         0qv7FyfNZUjf1eilWeILOsCjM/2FkRnayP1lrpPd6pO/1OHcT/amv7q/KIvhoUv9+fYq
         yl5Uij8LCgVGFciDRUkgln4xdF6H+WKJZRyDgdAq6JtY8ubxDyIbck1aGrFFbn5R5wdr
         CqHsC84QHmXgt6V1v4qh5JQAlXOUswQoJGEmdpmuEvtyHwXVPscszRFpHHEHcGnRcrU4
         So792xN0qV5anOMN3rDv9i/MDnMKqTZfXQJ5PSJ19HGCZCDQBgbM5n7MggndtZApAGkG
         d1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711530946; x=1712135746;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oDRwBHiRbqQEPbqIMMuwLPfNBgzS7ecnVO7qDgoOiM4=;
        b=esOQwz7WVYnZqjfxJvkws7FrRyiktNK/UKZ4RqVbulPTd43MU7N5rd7JfZYQLNUt6d
         K/qfnWRy7C8rW9sYsF9r/UisDKThNiud15LfH3ugh7TrXKrwZiyaQlMibZyU/VSMKnbe
         aivxCfnGd0rK7dORdlL23d33agvFY5Egg+sDc8bEvrIJyrnnsateDLdsAJT39Tvtne+n
         sL1KjahyBv4NVqv3Gms1kVbeY4xLsxK2FyGIuckRCJ87Ip9DnVEGgYey/x64gkz0Kt7P
         Er4p9Xo1wBw3fZ9LyWmMbV53rrziEaFU+ybyUdtolh+jMoPbb3bhXcZmhQzIT8GJ32nC
         jx5w==
X-Forwarded-Encrypted: i=1; AJvYcCVrH7OUUv/J7RrNB0rdHwejklpu+95jJX8qeetFgPJHE4YWy5dLR36bPMCd3GFffjFzLFOZByTZlVIRU6PwJsNxfHCF1pOjc4zz+6oyLxQ8oGll
X-Gm-Message-State: AOJu0YzcQ0JPRlEACNN9OL6rUBCktiSVPbpzZfIglZNsBaofXNEaNDVP
	o+lSNwt62pdjoYW9BSw/ZSNZ3xpkGPaoJ7muw00Opyfu0q+C4eHmua0M2bZcRw==
X-Google-Smtp-Source: AGHT+IEufUNP1l3Yj4uUlYleyaGx50CKkBEG8OSB8cxTtNznEki2vTEQUdAKopuRntEIfoYHhGsePw==
X-Received: by 2002:a92:c8d0:0:b0:368:959d:e19b with SMTP id c16-20020a92c8d0000000b00368959de19bmr3243682ilq.18.1711530945705;
        Wed, 27 Mar 2024 02:15:45 -0700 (PDT)
Received: from [127.0.1.1] ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b005dc4fc80b21sm8673871pge.70.2024.03.27.02.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:15:44 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 27 Mar 2024 14:43:36 +0530
Subject: [PATCH v12 7/8] PCI: dwc: ep: Call dw_pcie_ep_init_registers() API
 directly from all glue drivers
MIME-Version: 1.0
Message-Id: <20240327-pci-dbi-rework-v12-7-082625472414@linaro.org>
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=10284;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=IONhCw0ebndFj0D0FHcgfPfYalCU00+jRBsWXR5KqGc=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA+NKRIxoOZAmhOTG3obk72yNOH9WGwAGM6Eoo
 1dkTQ7/BT6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgPjSgAKCRBVnxHm/pHO
 9RbMB/48Y8jv1OxN1gIaWLcu/uaKFJBY4CHxlIh9i3mebEFZsvWoNV8G1PORQcVluBv5mQah3I/
 fU4JJxS59jAOW+fFQLAomBCJ+mx1GUePHTUtV0dTYufmGDLC7SCarj2XiNAV4ZeVaN+qS2Vjhoy
 ugrzVz7Amwa/BOvwg+o72nOizguiOf46jvBL0Fo4iNxijFnASV2ZhuE5o4vgCQdut2F8VM9g1nB
 lA8Nh3fSXhkYwIs5cJQga2Sh2t9bTMDs9whZJv5WB7sEwm5mUgrtIY4McS0ljTBdo+nXkSzHj8d
 97B1h11bPrN9Ws7Ha5tb/eEeg+B8L5EQYvnYSMdoGyBKNaTo
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_021548_263799_FDCC1B70 
X-CRM114-Status: GOOD (  20.80  )
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

Currently, dw_pcie_ep_init_registers() API is directly called by the glue
drivers requiring active refclk from host. But for the other drivers, it is
getting called implicitly by dw_pcie_ep_init(). This is due to the fact
that this API initializes DWC EP specific registers and that requires an
active refclk (either from host or generated locally by endpoint itsef).

But, this causes a discrepancy among the glue drivers. So to avoid this
confusion, let's call this API directly from all glue drivers irrespective
of refclk dependency. Only difference here is that the drivers requiring
refclk from host will call this API only after the refclk is received and
other drivers without refclk dependency will call this API right after
dw_pcie_ep_init().

With this change, the check for 'core_init_notifier' flag can now be
dropped from dw_pcie_ep_init() API. This will also allow us to remove the
'core_init_notifier' flag completely in the later commits.

Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pci-dra7xx.c           |  7 +++++++
 drivers/pci/controller/dwc/pci-imx6.c             |  8 ++++++++
 drivers/pci/controller/dwc/pci-keystone.c         |  9 +++++++++
 drivers/pci/controller/dwc/pci-layerscape-ep.c    |  7 +++++++
 drivers/pci/controller/dwc/pcie-artpec6.c         | 13 ++++++++++++-
 drivers/pci/controller/dwc/pcie-designware-ep.c   | 22 ----------------------
 drivers/pci/controller/dwc/pcie-designware-plat.c |  9 +++++++++
 drivers/pci/controller/dwc/pcie-keembay.c         | 16 +++++++++++++++-
 drivers/pci/controller/dwc/pcie-rcar-gen4.c       | 12 +++++++++++-
 drivers/pci/controller/dwc/pcie-uniphier-ep.c     | 13 ++++++++++++-
 10 files changed, 90 insertions(+), 26 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-dra7xx.c b/drivers/pci/controller/dwc/pci-dra7xx.c
index 0e406677060d..395042b29ffc 100644
--- a/drivers/pci/controller/dwc/pci-dra7xx.c
+++ b/drivers/pci/controller/dwc/pci-dra7xx.c
@@ -467,6 +467,13 @@ static int dra7xx_add_pcie_ep(struct dra7xx_pcie *dra7xx,
 		return ret;
 	}
 
+	ret = dw_pcie_ep_init_registers(ep);
+	if (ret) {
+		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(ep);
+		return ret;
+	}
+
 	return 0;
 }
 
diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
index 99a60270b26c..8d28ecc381bc 100644
--- a/drivers/pci/controller/dwc/pci-imx6.c
+++ b/drivers/pci/controller/dwc/pci-imx6.c
@@ -1123,6 +1123,14 @@ static int imx6_add_pcie_ep(struct imx6_pcie *imx6_pcie,
 		dev_err(dev, "failed to initialize endpoint\n");
 		return ret;
 	}
+
+	ret = dw_pcie_ep_init_registers(ep);
+	if (ret) {
+		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(ep);
+		return ret;
+	}
+
 	/* Start LTSSM. */
 	imx6_pcie_ltssm_enable(dev);
 
diff --git a/drivers/pci/controller/dwc/pci-keystone.c b/drivers/pci/controller/dwc/pci-keystone.c
index 844de4418724..81ebac520650 100644
--- a/drivers/pci/controller/dwc/pci-keystone.c
+++ b/drivers/pci/controller/dwc/pci-keystone.c
@@ -1286,6 +1286,13 @@ static int ks_pcie_probe(struct platform_device *pdev)
 		ret = dw_pcie_ep_init(&pci->ep);
 		if (ret < 0)
 			goto err_get_sync;
+
+		ret = dw_pcie_ep_init_registers(&pci->ep);
+		if (ret) {
+			dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+			goto err_ep_init;
+		}
+
 		break;
 	default:
 		dev_err(dev, "INVALID device type %d\n", mode);
@@ -1295,6 +1302,8 @@ static int ks_pcie_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_ep_init:
+	dw_pcie_ep_deinit(&pci->ep);
 err_get_sync:
 	pm_runtime_put(dev);
 	pm_runtime_disable(dev);
diff --git a/drivers/pci/controller/dwc/pci-layerscape-ep.c b/drivers/pci/controller/dwc/pci-layerscape-ep.c
index 1f6ee1460ec2..9eb2233e3d7f 100644
--- a/drivers/pci/controller/dwc/pci-layerscape-ep.c
+++ b/drivers/pci/controller/dwc/pci-layerscape-ep.c
@@ -279,6 +279,13 @@ static int __init ls_pcie_ep_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	ret = dw_pcie_ep_init_registers(&pci->ep);
+	if (ret) {
+		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(&pci->ep);
+		return ret;
+	}
+
 	return ls_pcie_ep_interrupt_init(pcie, pdev);
 }
 
diff --git a/drivers/pci/controller/dwc/pcie-artpec6.c b/drivers/pci/controller/dwc/pcie-artpec6.c
index 9ed0a9ba7619..a6095561db4a 100644
--- a/drivers/pci/controller/dwc/pcie-artpec6.c
+++ b/drivers/pci/controller/dwc/pcie-artpec6.c
@@ -441,7 +441,18 @@ static int artpec6_pcie_probe(struct platform_device *pdev)
 
 		pci->ep.ops = &pcie_ep_ops;
 
-		return dw_pcie_ep_init(&pci->ep);
+		ret = dw_pcie_ep_init(&pci->ep);
+		if (ret)
+			return ret;
+
+		ret = dw_pcie_ep_init_registers(&pci->ep);
+		if (ret) {
+			dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+			dw_pcie_ep_deinit(&pci->ep);
+			return ret;
+		}
+
+		break;
 	default:
 		dev_err(dev, "INVALID device type %d\n", artpec6_pcie->mode);
 	}
diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index 761d3012a073..2063cf2049e5 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -821,7 +821,6 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 	struct device *dev = pci->dev;
 	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *np = dev->of_node;
-	const struct pci_epc_features *epc_features;
 
 	INIT_LIST_HEAD(&ep->func_list);
 
@@ -867,29 +866,8 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 		goto err_exit_epc_mem;
 	}
 
-	if (ep->ops->get_features) {
-		epc_features = ep->ops->get_features(ep);
-		if (epc_features->core_init_notifier)
-			return 0;
-	}
-
-	/*
-	 * NOTE:- Avoid accessing the hardware (Ex:- DBI space) before this
-	 * step as platforms that implement 'core_init_notifier' feature may
-	 * not have the hardware ready (i.e. core initialized) for access
-	 * (Ex: tegra194). Any hardware access on such platforms result
-	 * in system hang.
-	 */
-	ret = dw_pcie_ep_init_registers(ep);
-	if (ret)
-		goto err_free_epc_mem;
-
 	return 0;
 
-err_free_epc_mem:
-	pci_epc_mem_free_addr(epc, ep->msi_mem_phys, ep->msi_mem,
-			      epc->mem->window.page_size);
-
 err_exit_epc_mem:
 	pci_epc_mem_exit(epc);
 
diff --git a/drivers/pci/controller/dwc/pcie-designware-plat.c b/drivers/pci/controller/dwc/pcie-designware-plat.c
index 778588b4be70..ca9b22e654cd 100644
--- a/drivers/pci/controller/dwc/pcie-designware-plat.c
+++ b/drivers/pci/controller/dwc/pcie-designware-plat.c
@@ -145,6 +145,15 @@ static int dw_plat_pcie_probe(struct platform_device *pdev)
 
 		pci->ep.ops = &pcie_ep_ops;
 		ret = dw_pcie_ep_init(&pci->ep);
+		if (ret)
+			return ret;
+
+		ret = dw_pcie_ep_init_registers(&pci->ep);
+		if (ret) {
+			dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+			dw_pcie_ep_deinit(&pci->ep);
+		}
+
 		break;
 	default:
 		dev_err(dev, "INVALID device type %d\n", dw_plat_pcie->mode);
diff --git a/drivers/pci/controller/dwc/pcie-keembay.c b/drivers/pci/controller/dwc/pcie-keembay.c
index 5e8e54f597dd..b2556dbcffb5 100644
--- a/drivers/pci/controller/dwc/pcie-keembay.c
+++ b/drivers/pci/controller/dwc/pcie-keembay.c
@@ -396,6 +396,7 @@ static int keembay_pcie_probe(struct platform_device *pdev)
 	struct keembay_pcie *pcie;
 	struct dw_pcie *pci;
 	enum dw_pcie_device_mode mode;
+	int ret;
 
 	data = device_get_match_data(dev);
 	if (!data)
@@ -430,11 +431,24 @@ static int keembay_pcie_probe(struct platform_device *pdev)
 			return -ENODEV;
 
 		pci->ep.ops = &keembay_pcie_ep_ops;
-		return dw_pcie_ep_init(&pci->ep);
+		ret = dw_pcie_ep_init(&pci->ep);
+		if (ret)
+			return ret;
+
+		ret = dw_pcie_ep_init_registers(&pci->ep);
+		if (ret) {
+			dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+			dw_pcie_ep_deinit(&pci->ep);
+			return ret;
+		}
+
+		break;
 	default:
 		dev_err(dev, "Invalid device type %d\n", pcie->mode);
 		return -ENODEV;
 	}
+
+	return 0;
 }
 
 static const struct keembay_pcie_of_data keembay_pcie_rc_of_data = {
diff --git a/drivers/pci/controller/dwc/pcie-rcar-gen4.c b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
index de4bdfaecab3..e155a905fb4f 100644
--- a/drivers/pci/controller/dwc/pcie-rcar-gen4.c
+++ b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
@@ -416,6 +416,7 @@ static const struct dw_pcie_ep_ops pcie_ep_ops = {
 static int rcar_gen4_add_dw_pcie_ep(struct rcar_gen4_pcie *rcar)
 {
 	struct dw_pcie_ep *ep = &rcar->dw.ep;
+	struct device *dev = rcar->dw.dev;
 	int ret;
 
 	if (!IS_ENABLED(CONFIG_PCIE_RCAR_GEN4_EP))
@@ -424,8 +425,17 @@ static int rcar_gen4_add_dw_pcie_ep(struct rcar_gen4_pcie *rcar)
 	ep->ops = &pcie_ep_ops;
 
 	ret = dw_pcie_ep_init(ep);
-	if (ret)
+	if (ret) {
 		rcar_gen4_pcie_ep_deinit(rcar);
+		return ret;
+	}
+
+	ret = dw_pcie_ep_init_registers(ep);
+	if (ret) {
+		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(ep);
+		rcar_gen4_pcie_ep_deinit(rcar);
+	}
 
 	return ret;
 }
diff --git a/drivers/pci/controller/dwc/pcie-uniphier-ep.c b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
index 639bc2e12476..0e5e7344de48 100644
--- a/drivers/pci/controller/dwc/pcie-uniphier-ep.c
+++ b/drivers/pci/controller/dwc/pcie-uniphier-ep.c
@@ -399,7 +399,18 @@ static int uniphier_pcie_ep_probe(struct platform_device *pdev)
 		return ret;
 
 	priv->pci.ep.ops = &uniphier_pcie_ep_ops;
-	return dw_pcie_ep_init(&priv->pci.ep);
+	ret = dw_pcie_ep_init(&priv->pci.ep);
+	if (ret)
+		return ret;
+
+	ret = dw_pcie_ep_init_registers(&priv->pci.ep);
+	if (ret) {
+		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
+		dw_pcie_ep_deinit(&priv->pci.ep);
+		return ret;
+	}
+
+	return 0;
 }
 
 static const struct uniphier_pcie_ep_soc_data uniphier_pro5_data = {

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
