Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9FB1C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1E74VfYoDigybRGwIhmXnuEi++7E9Q2ho+pJd6vzPw=; b=4naNUuRrEYV3n2
	oQZOb2geH+3Xv1Gag86LHbSwIGpzcoSxzUL36UlrVoe8DR7q4GMTKCZLk6EecN/HD7O+FiumXzhln
	xA37U7/yF19euWeIyW3otriuyIuL1nSSCemRhiEFTvMjeXTtHtTeBYcWD8RhgrJc+8OoY3ZBR30T3
	4a8zQjkIHQLBdP7tJVyeVLRwmFXmZFnZkid4VWav0QkLYhxtLt1Ar34aZiC5C+tifFJV3WznAeGzy
	2OJxBCEZQnfcDMTgCpZxvwnNgZeyqPiABC6GflSKSuTl+rmGsdnZxLsPBv6QErFcVYnbq4tL9wwlN
	NtlG+i/BsePQGmMgC1Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPMh-00000008B1m-4Acs;
	Wed, 27 Mar 2024 09:14:36 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPMT-00000008ArK-2X4Y
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 09:14:28 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-5a56710cdccso833338eaf.3
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 02:14:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711530860; x=1712135660; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YqASZM91XPcXELguAroAsfznz8SI/TV8wGGgEbcPSCg=;
        b=AbjGtxZCAtqhCPYTzlG6woTZLyRdQbiN29sGJlU+z1Ja34Vo79RxnrAo3HN4Rkqp1B
         XMl5K3m7nuwTNM1R4KMcWu7oQfjfiEvyqZjrEGvTL88FbXwhwnbt+3l13MOHoXS/97d1
         +eJ5j9ZXi2RaAkOFk6AEldkkjZCdUFJMmwIMSbQlz9vLdBzthoHJXOqVDmIHEtbseFcc
         5N7JS/H5tGEECbgSFnrc7ixj0NFnOqZ5sZKvIBE8UrMf/63/Xr0qphuBO3tddzSa3kJz
         vNA9JgF1GD2U+unq1vGsyhzDnjpC1/oxM8ucX18441rh8jUbznJZe5DdX1ZCdHRMw3uw
         GBeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711530860; x=1712135660;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YqASZM91XPcXELguAroAsfznz8SI/TV8wGGgEbcPSCg=;
        b=Bowe+8ajtsr9vvWBUYSN2KfF+xBkAexQUtGcQ7PUWbgR3LoL7++EAjKfZXT9DquumE
         o/w7VV1cQISkErTWXyrPWo+nZ4Jrv2URx4LEhZJ/+w4YIGyiCSCZThtpK2rzMG3JzyaG
         9JdGqm7oTNWb5fLu8Y0ZG9cQjwyPlxqCvoLXRExn8cWucyrerWzIKU5VEVFlNJnnLiRK
         uxGk63sIWPjL7R/Ngng80KE7sD5zbqrNwB27sd1+46vMfnF5i6BPK6SNE9Sr5fqE3YZA
         mjsS+p5SqIl93KdIO3NYv8ZFCI7hIpVDCPSfFckDi6Ka52lPQ3pyZWuOeQnVtBnwUxfH
         6usw==
X-Forwarded-Encrypted: i=1; AJvYcCXlM+t4TkyzcN+JntVLumgGB2c6fcupgB5vMilY1BpCD/fXw4lj9+K/lJGg1EemSJEbdf386urUzXzFboajQWroCnNVQ9z4ifIkY+sPP9I0lNw/
X-Gm-Message-State: AOJu0YyCrg4k29cLm/QaDQcSr64Pxt8vlRS3y2farxXwoLN5yh47RL1q
	CEE7IuLMgACAUh9vPSc/t6gOML1QksjMuuzC5l5OCANC5o+w+/hVzps8CN4p8Q==
X-Google-Smtp-Source: AGHT+IGkxnrnXnBY3c/aP7t7drqoD/wVEvlWzS8FQLVs973449FDjsXS7XP6PnjZ8yU1SgAX6Fby7A==
X-Received: by 2002:a05:6358:42aa:b0:17e:de1f:290 with SMTP id s42-20020a05635842aa00b0017ede1f0290mr5630348rwc.25.1711530859729;
        Wed, 27 Mar 2024 02:14:19 -0700 (PDT)
Received: from [127.0.1.1] ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b005dc4fc80b21sm8673871pge.70.2024.03.27.02.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:14:19 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 27 Mar 2024 14:43:31 +0530
Subject: [PATCH v12 2/8] PCI: dwc: ep: Add Kernel-doc comments for APIs
MIME-Version: 1.0
Message-Id: <20240327-pci-dbi-rework-v12-2-082625472414@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5382;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=pNo18qkD8Pxin1ExwVA6sv//n2b0xE66vsBA+jskrBo=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA+NImhvprmFrGELVQDHV0ZI/sZ+kM69J4CaE+
 HElRFx/IL2JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgPjSAAKCRBVnxHm/pHO
 9W5jB/9zQRHznlVynvYmBiqzCvcB02QT8dW3UjzdximNDPDPbCzqXkccGjVDilD+Mi4X1Xzl8Nm
 NDfCNc54wBkV62wzDAGL8J5gH6TVAtcorCq3lpbKhJHKEd5i64jvO2wLpnBd6cqJfeO2nD3slks
 2PvDyP9rltiK+KfM2e3DPOIwMJ8s/WmG9A6WBSVWj46hgkKlH9qvUQ+1Sn1DJGBzLQKR/lbkJlH
 YqeH3CV6lK+tXv8kJKdi43CqqrA5ScQr+fU/+8yryhga/HqaM3LUZ1yJFB/NgP28cmXilmbgXD1
 Agj1GUZAeXAgAMMUashx7s7FQUNOHLAy2qVG+Q6GQhVhCnma
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_021422_757753_749F866A 
X-CRM114-Status: GOOD (  14.37  )
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

All of the APIs are missing the Kernel-doc comments. Hence, add them.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-ep.c | 77 +++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index c43a1479de2c..dc63478f6910 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -15,6 +15,10 @@
 #include <linux/pci-epc.h>
 #include <linux/pci-epf.h>
 
+/**
+ * dw_pcie_ep_linkup - Notify EPF drivers about Link Up event
+ * @ep: DWC EP device
+ */
 void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
 {
 	struct pci_epc *epc = ep->epc;
@@ -23,6 +27,10 @@ void dw_pcie_ep_linkup(struct dw_pcie_ep *ep)
 }
 EXPORT_SYMBOL_GPL(dw_pcie_ep_linkup);
 
+/**
+ * dw_pcie_ep_init_notify - Notify EPF drivers about EPC initialization complete
+ * @ep: DWC EP device
+ */
 void dw_pcie_ep_init_notify(struct dw_pcie_ep *ep)
 {
 	struct pci_epc *epc = ep->epc;
@@ -31,6 +39,14 @@ void dw_pcie_ep_init_notify(struct dw_pcie_ep *ep)
 }
 EXPORT_SYMBOL_GPL(dw_pcie_ep_init_notify);
 
+/**
+ * dw_pcie_ep_get_func_from_ep - Get the struct dw_pcie_ep_func corresponding to
+ *				 the endpoint function
+ * @ep: DWC EP device
+ * @func_no: Function number of the endpoint device
+ *
+ * Return: struct dw_pcie_ep_func if success, NULL otherwise.
+ */
 struct dw_pcie_ep_func *
 dw_pcie_ep_get_func_from_ep(struct dw_pcie_ep *ep, u8 func_no)
 {
@@ -61,6 +77,11 @@ static void __dw_pcie_ep_reset_bar(struct dw_pcie *pci, u8 func_no,
 	dw_pcie_dbi_ro_wr_dis(pci);
 }
 
+/**
+ * dw_pcie_ep_reset_bar - Reset endpoint BAR
+ * @pci: DWC PCI device
+ * @bar: BAR number of the endpoint
+ */
 void dw_pcie_ep_reset_bar(struct dw_pcie *pci, enum pci_barno bar)
 {
 	u8 func_no, funcs;
@@ -440,6 +461,13 @@ static const struct pci_epc_ops epc_ops = {
 	.get_features		= dw_pcie_ep_get_features,
 };
 
+/**
+ * dw_pcie_ep_raise_intx_irq - Raise INTx IRQ to the host
+ * @ep: DWC EP device
+ * @func_no: Function number of the endpoint
+ *
+ * Return: 0 if success, errono otherwise.
+ */
 int dw_pcie_ep_raise_intx_irq(struct dw_pcie_ep *ep, u8 func_no)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
@@ -451,6 +479,14 @@ int dw_pcie_ep_raise_intx_irq(struct dw_pcie_ep *ep, u8 func_no)
 }
 EXPORT_SYMBOL_GPL(dw_pcie_ep_raise_intx_irq);
 
+/**
+ * dw_pcie_ep_raise_msi_irq - Raise MSI IRQ to the host
+ * @ep: DWC EP device
+ * @func_no: Function number of the endpoint
+ * @interrupt_num: Interrupt number to be raised
+ *
+ * Return: 0 if success, errono otherwise.
+ */
 int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 			     u8 interrupt_num)
 {
@@ -500,6 +536,15 @@ int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 }
 EXPORT_SYMBOL_GPL(dw_pcie_ep_raise_msi_irq);
 
+/**
+ * dw_pcie_ep_raise_msix_irq_doorbell - Raise MSI-X to the host using Doorbell
+ *					method
+ * @ep: DWC EP device
+ * @func_no: Function number of the endpoint device
+ * @interrupt_num: Interrupt number to be raised
+ *
+ * Return: 0 if success, errno otherwise.
+ */
 int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep, u8 func_no,
 				       u16 interrupt_num)
 {
@@ -519,6 +564,14 @@ int dw_pcie_ep_raise_msix_irq_doorbell(struct dw_pcie_ep *ep, u8 func_no,
 	return 0;
 }
 
+/**
+ * dw_pcie_ep_raise_msix_irq - Raise MSI-X to the host
+ * @ep: DWC EP device
+ * @func_no: Function number of the endpoint device
+ * @interrupt_num: Interrupt number to be raised
+ *
+ * Return: 0 if success, errno otherwise.
+ */
 int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 			      u16 interrupt_num)
 {
@@ -566,6 +619,13 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 	return 0;
 }
 
+/**
+ * dw_pcie_ep_exit - Deinitialize the endpoint device
+ * @ep: DWC EP device
+ *
+ * Deinitialize the endpoint device. EPC device is not destroyed since that will
+ * be taken care by Devres.
+ */
 void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
@@ -601,6 +661,14 @@ static unsigned int dw_pcie_ep_find_ext_capability(struct dw_pcie *pci, int cap)
 	return 0;
 }
 
+/**
+ * dw_pcie_ep_init_complete - Complete DWC EP initialization
+ * @ep: DWC EP device
+ *
+ * Complete the initialization of the registers (CSRs) specific to DWC EP. This
+ * API should be called only when the endpoint receives an active refclk (either
+ * from host or generated locally).
+ */
 int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
@@ -723,6 +791,15 @@ int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep)
 }
 EXPORT_SYMBOL_GPL(dw_pcie_ep_init_complete);
 
+/**
+ * dw_pcie_ep_init - Initialize the endpoint device
+ * @ep: DWC EP device
+ *
+ * Initialize the endpoint device. Allocate resources and create the EPC
+ * device with the endpoint framework.
+ *
+ * Return: 0 if success, errno otherwise.
+ */
 int dw_pcie_ep_init(struct dw_pcie_ep *ep)
 {
 	int ret;

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
