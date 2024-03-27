Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4FFEC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CLjtL5qx0UKOF6vfHbm6h86ArOhimAlwJYG7/AAbVgU=; b=1ZQ1vbyuJmXcNb
	pc1avcd0SOXvZAGe1S/z9HfIKsYYU6Ne5Po+tR3hqLjve1MF7H4FlYDPSv0cjWIatepwPK5+Rn88W
	TAvDFXFnejSINogVIL/Or7KEEllPjhzj9W8h9YRYP3R2ZJjFI8PB0UGrMXMPWeCkBawsEqYShpxPj
	cLqoAf9wax9EFtl2WIpQNz95FPkENNlR75v8Zj+TYuoHDQRuakAISzd0Cd21NmMcHuSALoLkIDoq2
	vpUBc/E1mNJ1fO+frO5tF4s2c4gRo1xouCj2nxNsj0SC2nNE4ETg5QuppuDIOHBl+N4TqN88SYAKm
	UavoWhF7LQ8teSUEiLKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPMI-00000008Akf-0ESB;
	Wed, 27 Mar 2024 09:14:10 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPM8-00000008Aej-3irD
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 09:14:03 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6e6888358dfso2898774a34.2
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 02:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711530839; x=1712135639; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m7YoevRtWoIrX5inKpmhV/jNINZnpRhSbmQj7YxoH3s=;
        b=sSnNR+EGkvkF8w8O/73Sdjgxk6lHy5HugC1muhPgHPVoF93IYbYbOohw+fV8Hv1hYF
         vrsr1BBxva6BxDIjwIfMVuzwGo9vZ0E9ctBsoojF6uT0V6a7cnM3wD9KkaM7LBYexiEy
         L9gOtznsbGsBqaVfhJ0CYUunXlUWn4Iw5fznZp56KyC+42aYD0L6PrSBh7AGqLKTncpY
         h9cfhv2CZfwnuQnasLGRCmUgmDLJRikh5hFKOCf2FToGniE6p8NWpqQjRxEIAqovU8GA
         pWrtkTntGUU7oy6DRTIPn5iCcsGjhUY+UkGiKcbGwA5foe6/tKJ9+3SgSKArsZkBWxv/
         T/DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711530839; x=1712135639;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m7YoevRtWoIrX5inKpmhV/jNINZnpRhSbmQj7YxoH3s=;
        b=r3Zx41JxJeCC49Y4Wl4FLB6LqqkA8ba6lAGPqX+//Dgto1l5xLbsTjoox8wEPkga1h
         O29yM44OhmAYU43XccFWEZgedbWaRu+BbXh3rWoPDoifhOir3spNJgYCU/ptE42gCtZd
         K0a7RCqQfzle2CcSZh1R2xtMyebgpl9qq89RLdwq8Mow3J8WWarlRMLW12/LtqcisjWg
         TasEcNa+KFF37e6Xhcet4+Wowk0dfzs/wDXUcXOGkgDBKTLYZWYE7qHYL5Q4gKzAopJv
         unpHNqyRuK73tNrkWXx3Iw46PaV9621exLdcOyt+w3W/RQgiM4jQ50fyzRlCH9lnD057
         Wuxg==
X-Forwarded-Encrypted: i=1; AJvYcCUhiJGDfYa+MHpnmjxg+kNe61r2r0HRnE4SH5CBHNh66kVCFRMJey/YYfCd4Rt2HxZuv+ozZYh1B1FIRxSiMM0VNr39CeGd6AKNIbC/huKO3DMV
X-Gm-Message-State: AOJu0YyR8xVAZtNrwJQirPjd9XQflHsaqfGXiNjYl/+Lk4w1i4fJWN1f
	7hhcSoBIlmfJhlUDfqEtwh4i8WlJ4WteSGlDld+RAWewLm4pIz2Y5eJE8y0j/g==
X-Google-Smtp-Source: AGHT+IHLrC+cElHqEJHgQI6bNudg5V3T5UyMpSvlDNp0VTqd68nwYnF3OIdtHfvbZn/Wx5NtZMwQqQ==
X-Received: by 2002:a9d:4f07:0:b0:6e6:ded0:8a69 with SMTP id d7-20020a9d4f07000000b006e6ded08a69mr5193012otl.31.1711530839288;
        Wed, 27 Mar 2024 02:13:59 -0700 (PDT)
Received: from [127.0.1.1] ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b005dc4fc80b21sm8673871pge.70.2024.03.27.02.13.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:13:58 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v12 0/8] PCI: dwc: ep: Fix DBI access failure for drivers
 requiring refclk from host
Date: Wed, 27 Mar 2024 14:43:29 +0530
Message-Id: <20240327-pci-dbi-rework-v12-0-082625472414@linaro.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADnjA2YC/3XPS2oDMQyA4asEr+Mgy56Huuo9SheOLSeiYRw8Z
 doS5u71ZNME06UE/yd0UzMX4Vm97G6q8CKz5KkOBvc7Fc5+OrGWWBcKAR0gOn0NouNRdOGvXD7
 0EZnI90gWgqrRtXCS77v49l7ns8yfufzcDyzjtv2XWkYNundhSBFC4t69XmTyJR9yOanNWuivt
 9D2VHuk6KyNRCH6pjfwAJgWMFAF47zrQufJjtwK5kHAoRXM9kPqsKNE0A/2SVjX9ReJR8rQcgE
 AAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=6302;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=iO9oNvG+QPX6EBHlzWrbZgkGzqEkhIYMPjFQURkQp1E=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA+NIo/FDU1Qzm8K9RhxHEI8Jtmbq4KExhILxr
 h8EcXGlx0SJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgPjSAAKCRBVnxHm/pHO
 9XMZB/9ZVvwo9sSG/E7aVel5CSG/nMG/jLxOi0rHJgyMN7yji8HK5ajSrTKUXs0jT4mdCTclZ8j
 yGj4IxADoOnlwcHIjiz7NfE8eueVtUlnoWSzqXxWV9FrLNUtwYp98RXIOc3UvpMlvG/0QgbH3uv
 K7YTyqGd4NsP7zM3fHjaWXkw0pB60QsEos4YQLk9lBpRKQxz40KLuAET6DwRV5ZNfua1ew+4L65
 zr+NXa5ghbAqbrbm05gK3xe5iivUEFGH7lu9dMy5+yyytQgKM7Qf1VrUGShOtJKMAPZ0TB5p/5R
 pFm/tz8l8TQYBVCiCxd0wAYH21S9gVFyCpuDBh/w4ikx2xHy
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_021401_312170_1EDD327F 
X-CRM114-Status: GOOD (  19.64  )
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

Changes in v12:
- Fixed the init_notify() API used in non-dwc drivers (thanks Niklas)
- Dropped Gustavo from CC since his email is bouncing
- Link to v11: https://lore.kernel.org/r/20240327-pci-dbi-rework-v11-0-6f5259f90673@linaro.org

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
base-commit: 4cece764965020c22cff7665b18a012006359095
change-id: 20240224-pci-dbi-rework-b2e99a62930c

Best regards,
-- 
Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
