Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CB08C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A8eXr3co/LngBdHxVhv13AMwcePW8kxu9tp9AeIZxGU=; b=oiXoGIvX96CVIB
	mGUhJLksS2+hC9PjtHqOD8vJgpLqJljeulYVhhaXguChVOI2T9BU02CiGwG1rgrJ7reIawe6yGfHi
	qLRJzmEWV8fjVt3b7bd5jwxSIskoLwioQeNKaQnFK+ws0BlFiwjxFKRFpAQFvvUEFANxPWjE/OUPN
	byokDmTm46DyK2SH8I2Vg6FxYzx6o2QvwV73JXrweRXoHuGFLFIpxmQ5qnVEhbXc+2+m/ouArUrTP
	bF1Knsnd1MRRDp8aOOlLUImgveaE1hTFa+gsuAVB3p+2yfORj7WwSXSTbFeUtQkcz9gyv5YMgHh/P
	bbXT/Ibm73zIFDLTUs+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPNk-00000008BdL-07N2;
	Wed, 27 Mar 2024 09:15:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPNO-00000008BSj-1dkk
	for linux-rockchip@bombadil.infradead.org;
	Wed, 27 Mar 2024 09:15:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+w8+XZFFVZD9serrdKw4v46iT3fU34iMoHh0wJblC08=; b=IRn3FYtKiUQEsmnNsBLi+GIwpX
	xXNkvxHMHXyQ9hW39kIGjywcGYyJXWDLMfc2bR9EhYSjmIW/kntp872AfjuANLlJvs7gEb3jx0S5B
	9aPdzrSiEM1woC+SqZDBEgUPXcxrjc9fQkZkMgcF/HkKxTZf9lDE2fw9sb57WYk4ZPZaenKzOpMuJ
	b6D9qKpjc6Yu5Kp5DJFcA18zZlYXJ5TQuhjs+Kggoc3QMNYQk7Q0BCOvcu871kcv8+4EW18KGlYhA
	hQTIvU6eRrap3vfLBRNIHqX91pkKhm+idtxsFlKtRkvkrgxiB0YULxIPy2+SaHqfCtEIs7N6P9YRE
	TUa+B6Uw==;
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPNF-000000008m9-1fIv
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 09:15:16 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-5a4789684abso3664130eaf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 02:15:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711530901; x=1712135701; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+w8+XZFFVZD9serrdKw4v46iT3fU34iMoHh0wJblC08=;
        b=CQwCNG0BAvQXMiN86Ga3+bM4BpvF/XeQOqPIb6iDxDXswI8jbP1f0dRSr3srYsHmcA
         +FObM1LOU7rIikMu0LbpQXHBI7+aS6IUMIz0gSgzVzMXnOee+FVK5PFvW52L8ehbEEyL
         Ww4ouLY0/TdgYrk2cjG1AwuhnnwA1LthKG1aS5sNDH+3hyfc7wdGY8IXRkU/fLLHMcxA
         yEvpDjfDD73k1tWwew5coqNG+0YC+CL09VTU+s7yxGJebQLr0HBaM7FRi2AGHX5CI9n8
         Wc7Qgo05MqGTUXScrv4O84Rhp7IBWncXfsY1oAFjioMML1JkD0ftmvPrr8jOzZh8pkKM
         vmAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711530901; x=1712135701;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+w8+XZFFVZD9serrdKw4v46iT3fU34iMoHh0wJblC08=;
        b=js0bNOUgwLdLOf8DJiqvssaHMOR7vwyyUpIib4suK/jrT7sLVO0BCDQ38zOXkU7WLs
         T6IimKZXcfaQB8DMlbQ14VUIvri4jRnvb0T/vjEq7e5A5deSaRUp2PxACUyVOOhFyaCE
         pPyve7329Yxx0I7rZ2RUwHr3c5g4jFF+yjuiQB40epMMqnA0ewFceOYLQpfSWLBpcqf9
         Fy9oCQwov2h85KBtof7eKwQbB0Mw4JGLngn6YqftRi2wsHWBt7R+X4t/gP1nCZqxpXdk
         mnO8LCSZJ2SpZw6GaHb75egaN5on9mXGXtx/vevCAWFiVsxNhIBr8UC5rGTHsHrq2bnU
         cT6g==
X-Forwarded-Encrypted: i=1; AJvYcCVzmjDXcPBbp7iTriElkwioF9f2WWMdNFqqTCVOT34CtybZX3Sx0eAvfv5T6yJ3IGM82lEKM/cNKHcncD2f7TGLibzhte/jwvRF/RXNAagFN7LE
X-Gm-Message-State: AOJu0YxEQ26YA5OAUWd4WBSIO8cP3XUbE3+L4QCDhUCbHO2E6gnF61Np
	OLlib/GZBe4FbqdF7XwWx+rog6ANzlhxApOeBBorVRZCaa8HAbQGhDBAg0Se6Q==
X-Google-Smtp-Source: AGHT+IG0gU1p3u2cZSNbNacouPypPMZacdlL/OD6GpxQGu1TYUYdgA72yNE40cxd7c52iaQO+ragyw==
X-Received: by 2002:a05:6358:7584:b0:17b:b559:2ba3 with SMTP id x4-20020a056358758400b0017bb5592ba3mr819971rwf.11.1711530900939;
        Wed, 27 Mar 2024 02:15:00 -0700 (PDT)
Received: from [127.0.1.1] ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b005dc4fc80b21sm8673871pge.70.2024.03.27.02.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:15:00 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 27 Mar 2024 14:43:34 +0530
Subject: [PATCH v12 5/8] PCI: dwc: ep: Introduce dw_pcie_ep_cleanup() API
 for drivers supporting PERST#
MIME-Version: 1.0
Message-Id: <20240327-pci-dbi-rework-v12-5-082625472414@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4250;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=cYPmZhMWF9JrrdBXi4xoNK400WwuLP3vEJRvgS89ChI=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA+NJCy5UKQajgGLcJFCmTCocVuyMtWTlZ2Ejs
 QvYSXEZAl2JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgPjSQAKCRBVnxHm/pHO
 9T6mB/9pFQquf5LOGTNXV2yHivElmVpYY5aK42tRZFhvZZ0Tq1cMStZlxIL1CLcpD/qAJJPoQS+
 yVJ9edDCykI7R6KmW+PI1NL5g3gievubaOlD4LHYQpXWT3eRl4G1adOoeFRaOnbqHWAkiKFRgwM
 APGy4NWJvEX5fEswTOaqdUIxHOR1D8QSfTpyiQjtc6sbN4hICqqYVM/nNy9qVHB543u9n0PPMK5
 mwWvNRApMkR5oCw9X9KChFW25uEjtpqUSGFHWzRJqYacYvkodK+xQuRVRbCraKJY/IJgSJouwp4
 NYITRCwxRHIPKRVUpx5qz/2wRe4F6MoptuTdyT8F6F+m+R/s
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_091510_961843_7BE0B8E5 
X-CRM114-Status: GOOD (  13.05  )
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

For DWC glue drivers supporting PERST# (currently Qcom and Tegra194), some
of the DWC resources like eDMA should be cleaned up during the PERST#
assert time.

So let's introduce a dw_pcie_ep_cleanup() API that could be called by these
drivers to cleanup the DWC specific resources. Currently, it just removes
eDMA.

Reported-by: Niklas Cassel <cassel@kernel.org>
Closes: https://lore.kernel.org/linux-pci/ZWYmX8Y%2F7Q9WMxES@x1-carbon
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-ep.c | 19 +++++++++++++++++--
 drivers/pci/controller/dwc/pcie-designware.h    |  5 +++++
 drivers/pci/controller/dwc/pcie-qcom-ep.c       |  1 +
 drivers/pci/controller/dwc/pcie-tegra194.c      |  2 ++
 4 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index d87f7642d7f6..eeff7f1ff8f1 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -619,6 +619,22 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 	return 0;
 }
 
+/**
+ * dw_pcie_ep_cleanup - Cleanup DWC EP resources after fundamental reset
+ * @ep: DWC EP device
+ *
+ * Cleans up the DWC EP specific resources like eDMA etc... after fundamental
+ * reset like PERST#. Note that this API is only applicable for drivers
+ * supporting PERST# or any other methods of fundamental reset.
+ */
+void dw_pcie_ep_cleanup(struct dw_pcie_ep *ep)
+{
+	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
+
+	dw_pcie_edma_remove(pci);
+}
+EXPORT_SYMBOL_GPL(dw_pcie_ep_cleanup);
+
 /**
  * dw_pcie_ep_deinit - Deinitialize the endpoint device
  * @ep: DWC EP device
@@ -628,10 +644,9 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
  */
 void dw_pcie_ep_deinit(struct dw_pcie_ep *ep)
 {
-	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	struct pci_epc *epc = ep->epc;
 
-	dw_pcie_edma_remove(pci);
+	dw_pcie_ep_cleanup(ep);
 
 	pci_epc_mem_free_addr(epc, ep->msi_mem_phys, ep->msi_mem,
 			      epc->mem->window.page_size);
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 61465203bb60..351d2fe3ea4d 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -672,6 +672,7 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep);
 int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep);
 void dw_pcie_ep_init_notify(struct dw_pcie_ep *ep);
 void dw_pcie_ep_deinit(struct dw_pcie_ep *ep);
+void dw_pcie_ep_cleanup(struct dw_pcie_ep *ep);
 int dw_pcie_ep_raise_intx_irq(struct dw_pcie_ep *ep, u8 func_no);
 int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 			     u8 interrupt_num);
@@ -705,6 +706,10 @@ static inline void dw_pcie_ep_deinit(struct dw_pcie_ep *ep)
 {
 }
 
+static inline void dw_pcie_ep_cleanup(struct dw_pcie_ep *ep)
+{
+}
+
 static inline int dw_pcie_ep_raise_intx_irq(struct dw_pcie_ep *ep, u8 func_no)
 {
 	return 0;
diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index 36e5e80cd22f..59b1c0110288 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -507,6 +507,7 @@ static void qcom_pcie_perst_assert(struct dw_pcie *pci)
 		return;
 	}
 
+	dw_pcie_ep_cleanup(&pci->ep);
 	qcom_pcie_disable_resources(pcie_ep);
 	pcie_ep->link_status = QCOM_PCIE_EP_LINK_DISABLED;
 }
diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 1f7b662cb8e1..26ea2f8313eb 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -1715,6 +1715,8 @@ static void pex_ep_event_pex_rst_assert(struct tegra_pcie_dw *pcie)
 	if (ret)
 		dev_err(pcie->dev, "Failed to go Detect state: %d\n", ret);
 
+	dw_pcie_ep_cleanup(&pcie->pci.ep);
+
 	reset_control_assert(pcie->core_rst);
 
 	tegra_pcie_disable_phy(pcie);

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
