Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4343CC54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 06:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2uDQPUn0tGEs/XMzQT6XZjEQbNPpxYus5GsC9T5VsV8=; b=iWmxWF2WOnnfu8
	UE1glM8aPZ7Fq24pBG6ozTXmZ4AD6zudIDGKjVGrkDnmo02ax9mo+mw6TWuI7nvL7pjGMsXlFbb6G
	Ak/Fq81KVcW3cQeYNOt8WQ7vh/YnPLRyoLnTfFfBKosvXcRLgf2jpRLEmyccwNf9bm2DfY6WIvPrK
	F4fAIN0RL1HSssff5DrRFTZvVmvCeX92UfNQMZbA7YnDfVLGRsJ+CAXfxUUIB3dxxRRKdGrB3XoV4
	hMMgG/O2YXb1esX2quJ1IzRlkaalAxHCfg+L86Gwe8NB3Fsv5trUMdK394q75nHwYOhTNhG84mpNX
	VGx8VdKLRFxZWar+Yf9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpMtl-00000007fvw-23KN;
	Wed, 27 Mar 2024 06:36:33 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpMth-00000007fv5-4Afe
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 06:36:32 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1e0189323b4so49681985ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Mar 2024 23:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711521387; x=1712126187; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sCWUmDmCH+GQ0xn+LUsgyEMH7SBuxLLCLIMaC6UU5kI=;
        b=MS5qL78eQybKxK/w0h9cdXF+WhI0dd0tWhlF6Opgs9YRsdv3USndUn0HArKYpiY3di
         ZUWlG2BIWYQL42rc/KiKXGpLjPRO4m4lDPHxzGcxWROhBOU1LJop1AuG5r8bVxRnMGzI
         H+u+RoHmAxuqmWbzkpNWB03PY9lQWpTljn0/Be5E0zso2IYHe9ZyJAdGqZvvd7sISIyE
         4z3atF1bzCeMXz6v/pT0dKYBv0neegNb0uhvhB4HqJEBSJFmhg1cHWFpuY0CRudFJdlJ
         qqXi/LmvGr9oYOKXP89+bHYw5MW1xGDYbrHzyiiTU+oF7eWLbHEx3opMNbvOYVXUIYux
         EU2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711521387; x=1712126187;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sCWUmDmCH+GQ0xn+LUsgyEMH7SBuxLLCLIMaC6UU5kI=;
        b=u9Tskp66zM0ZEUK4UYv4mexx1TiQHljMSi7uOxD5u3EGdxLz+Il6qpvLSiFlVfRGJv
         VpCLVzkKqPwN2FazJriafSQwGR/4B3osaCOP3ePB5P076m/04ZwqH1bAiSZscqnaVRSq
         oFaXDSXgXKgt+7CIr3a539TWc80KakJp8nE3cZfmRWu6aCrXdECCAaq861aGu+hTV+q1
         Vb+JP2JHIXPVet1yWW/YxU9Tmk5WkfAl0uNkpB3iA3R2371Q/GNkvzIzy7MLtSN/NoSD
         Ni8WiqUaPE+Y/PwyYI+ciY9INEMaSlnD5JRb6rY/kthbjsEzjw5G3RzV+K0HsmadWD9S
         psRw==
X-Forwarded-Encrypted: i=1; AJvYcCUrL/1qCv5NDpWRo5ww5thQJM+Sh23ZyQjchC1aWqqDMYdf1tEjWc3FYf6fwxrGyl6H0ptwExLXgOWla1xEulHfYqWfnwFq8+lJ7wM+HuuFQdiU
X-Gm-Message-State: AOJu0Yxac9uLmM8XldpN2mnWrfFCCcb7nmQ8xKcNxnqxTEgLxUfo6XfD
	Z8m4vFoEWT/Hn1SwuFSIqm2QFaZ11+Z8gdFsBWOhUedPSnOgNvVdUC5vsbKxIA==
X-Google-Smtp-Source: AGHT+IFU2aVu/o/a7HuGj5L45J8l/QbHm52NB4CMAbQfe5WPM/LgOp4Wt9TIFyG4jSoSkw7HvI19cQ==
X-Received: by 2002:a17:902:dacd:b0:1e0:a615:c2f with SMTP id q13-20020a170902dacd00b001e0a6150c2fmr2295467plx.27.1711521387186;
        Tue, 26 Mar 2024 23:36:27 -0700 (PDT)
Received: from [127.0.1.1] ([117.207.28.168])
        by smtp.gmail.com with ESMTPSA id r9-20020a170902be0900b001e14807c7dfsm602553pls.86.2024.03.26.23.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 23:36:26 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v11 0/8] PCI: dwc: ep: Fix DBI access failure for drivers
 requiring refclk from host
Date: Wed, 27 Mar 2024 12:05:46 +0530
Message-Id: <20240327-pci-dbi-rework-v11-0-6f5259f90673@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEK+A2YC/3XNTQ6CMBCG4auQrq3pH8i48h7GRWkHmGgoKQY1h
 Ltb2KghLr9J3mcmNmAkHNgxm1jEkQYKXRpS7jLmWts1yMmnA1NCGaGU4b0j7iviER8hXnmlEMA
 WCrRwLEV9xJqeq3i+pN3ScA/xtT4Yy+X6lxpLLnhh3KH2wtVYmNONOhvDPsSGLdYIn16LbQ+pV
 +CN1h7AebvppfgC5BaQIgnSWJO73IIu8UeY5/kNGub/wzABAAA=
To: Jingoo Han <jingoohan1@gmail.com>, 
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
 Marek Vasut <marek.vasut+renesas@gmail.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Kishon Vijay Abraham I <kishon@ti.com>, Vidya Sagar <vidyas@nvidia.com>, 
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
 Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org, 
 Niklas Cassel <cassel@kernel.org>, linux-arm-kernel@axis.com, 
 linux-rockchip@lists.infradead.org, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=6062;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=yMM+3zwLZxZ/ZMbIohXyczKS5iSP3NxVqCs+OJ3J4VE=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA75PRAvut4GbfcNsOr4y/V32q37nFAF+YZu53
 +o8TlaUvPKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgO+TwAKCRBVnxHm/pHO
 9SJxB/9V/tinXUTW2Xk1kfas89qjE+hGIr9jXEdxVzlKGfYRBaAm1j8tDXPX3CuzreCu1mB3ZFc
 DtR64Qp+7iM/z1nCyBKukHTcSBx7eYzJZTVyfsn06A+5W9xU0pLgAydgXls8c3jn/q3yXZd8QKW
 yOfvvjsyrPCMzEcBJ6rbN2fOIEEM/XvqCh/2fd5JxL+GelMpxbGI6tzcwJ3+vPvc90MaCon6mbm
 tKCV4EA7kj35oQwUUpVG1l7Q2Arm50d0IplQYGgiYeu+NKoKkKiR8P6RKqZ01gHTsJmEB7RwteU
 +s5uhU6QAkrc80JovyU/H6eoSKldzEA+nJmHnIxIPPAE5JzK
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_233630_272552_08184E75 
X-CRM114-Status: GOOD (  19.18  )
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

Hello,

This series is the continuation of previous work by Vidya Sagar [1] to fix the
issues related to accessing DBI register space before completing the core
initialization in some EP platforms like Tegra194/234 and Qcom EP.

Since Vidya is busy, I took over the series based on his consent (off-list
discussion).

NOTE
====

Based on the comments received in v7 [2], I've heavily modified the series
to fix several other issues reported by Bjorn and Niklas. One noticeable
change is getting rid of the 'core_init_notifer' flag added to differentiate
between glue drivers requiring refclk from host and drivers getting refclk
locally.

By getting rid of this flag, now both the DWC EP driver and the EPF drivers
can use a single flow and need not distinguish between the glue drivers.

We can also get rid of the 'link_up_notifier' flag in the future by following
the same convention.

Testing
=======

I've tested the series on Qcom SM8450 based dev board that depends on refclk
from host with EPF_MHI driver. It'd be good to test this series on platforms
that generate refclk locally and also with EPF_TEST driver.

- Mani

[1] https://lore.kernel.org/linux-pci/20221013175712.7539-1-vidyas@nvidia.com/
[2] https://lore.kernel.org/linux-pci/20231120084014.108274-1-manivannan.sadhasivam@linaro.org/

Changes in v11:
- Minor cleanups reported by Niklas
- 'epc->init_complete = false' is set in dw_pcie_ep_cleanup() to avoid
  triggering init complete notification before refclk. This will be moved to EPC
  core in the following series adding deinit notifier.
- Collected review tags.
- Link to v10: https://lore.kernel.org/r/20240314-pci-dbi-rework-v10-0-14a45c5a938e@linaro.org

Changes in v10:
- Reordered the commits by moving the independent fixes/cleanups first (Niklas)
- Addressed several comments from Niklas
- Moved PTM register setting out of dw_pcie_ep_init_non_sticky_registers() (Niklas)
- Addressed the issue that EPF drivers were missing init notification after the
  removal of core_init_notifier (Niklas)
- Dropped a few cleanup patches to be clubbed with the follow up series
- Collected review tags
- Dropped the review tags for patch 8/8 as it got changed 
- Link to v9: https://lore.kernel.org/r/20240304-pci-dbi-rework-v9-0-29d433d99cda@linaro.org

Changes in v9:
- Incorporated changes for missing drivers (Niklas)
- Reworded the dw_pcie_ep_cleanup() API kdoc (Niklas)
- Reworded the description of patch 6/10 (Frank)
- Collected reviews
- Link to v8: https://lore.kernel.org/r/20240224-pci-dbi-rework-v8-0-64c7fd0cfe64@linaro.org

Changes in v8:

- Rebased on top of v6.8-rc1
- Removed the deinit callback from struct dw_pcie_ep_ops
- Renamed dw_pcie_ep_exit() to dw_pcie_ep_deinit()
- Introduced dw_pcie_ep_cleanup() API for drivers supporting PERST#
- Renamed dw_pcie_ep_init_complete() to dw_pcie_ep_init_registers()
- Called dw_pcie_ep_init_registers() API directly from all glue drivers
- Removed "core_init_notifier" flag
- Added a generic dw_pcie_ep_linkdown() API to handle LINK_DOWN event and used
  it in qcom driver
- Added Kernel-doc comments for DWC EP APIs

Changes in v7:

- Rebased on top of v6.7-rc1
- Kept the current dw_pcie_ep_init_complete() API instead of renaming it to
  dw_pcie_ep_init_late(), since changing the name causes a slight ambiguity.
- Splitted the change that moves pci_epc_init_notify() inside
  dw_pcie_ep_init_notify() to help bisecting and also to avoid build issue.
- Added a new patch that moves pci_epc_init_notify() inside
  dw_pcie_ep_init_notify().
- Took over the authorship and dropped the previous Ack as the patches are
  heavily modified.

Changes in v6:

- Rebased on top of pci/next (6e2fca71e187)
- removed ep_init_late() callback as it is no longer necessary

For previous changelog, please refer [1].

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
Manivannan Sadhasivam (8):
      PCI: dwc: ep: Fix DBI access failure for drivers requiring refclk from host
      PCI: dwc: ep: Add Kernel-doc comments for APIs
      PCI: dwc: ep: Remove deinit() callback from struct dw_pcie_ep_ops
      PCI: dwc: ep: Rename dw_pcie_ep_exit() to dw_pcie_ep_deinit()
      PCI: dwc: ep: Introduce dw_pcie_ep_cleanup() API for drivers supporting PERST#
      PCI: dwc: ep: Rename dw_pcie_ep_init_complete() to dw_pcie_ep_init_registers()
      PCI: dwc: ep: Call dw_pcie_ep_init_registers() API directly from all glue drivers
      PCI: endpoint: Remove "core_init_notifier" flag

 drivers/pci/controller/cadence/pcie-cadence-ep.c  |   2 +
 drivers/pci/controller/dwc/pci-dra7xx.c           |   9 +
 drivers/pci/controller/dwc/pci-imx6.c             |  10 +
 drivers/pci/controller/dwc/pci-keystone.c         |  11 +
 drivers/pci/controller/dwc/pci-layerscape-ep.c    |   9 +
 drivers/pci/controller/dwc/pcie-artpec6.c         |  15 +-
 drivers/pci/controller/dwc/pcie-designware-ep.c   | 238 +++++++++++++++-------
 drivers/pci/controller/dwc/pcie-designware-plat.c |  11 +
 drivers/pci/controller/dwc/pcie-designware.h      |  14 +-
 drivers/pci/controller/dwc/pcie-keembay.c         |  18 +-
 drivers/pci/controller/dwc/pcie-qcom-ep.c         |   4 +-
 drivers/pci/controller/dwc/pcie-rcar-gen4.c       |  28 ++-
 drivers/pci/controller/dwc/pcie-tegra194.c        |   5 +-
 drivers/pci/controller/dwc/pcie-uniphier-ep.c     |  15 +-
 drivers/pci/controller/pcie-rcar-ep.c             |   2 +
 drivers/pci/controller/pcie-rockchip-ep.c         |   2 +
 drivers/pci/endpoint/functions/pci-epf-test.c     |  18 +-
 drivers/pci/endpoint/pci-ep-cfs.c                 |   9 +
 drivers/pci/endpoint/pci-epc-core.c               |  22 ++
 include/linux/pci-epc.h                           |   7 +-
 20 files changed, 338 insertions(+), 111 deletions(-)
---
base-commit: 6613476e225e090cc9aad49be7fa504e290dd33d
change-id: 20240224-pci-dbi-rework-b2e99a62930c

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
