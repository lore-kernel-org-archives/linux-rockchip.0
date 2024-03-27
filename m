Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03850C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 09:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o6ZfwUDBLRhSljI81DwY/KVMqEkSz/HHECDwcEhA+1M=; b=hduWXyWJlWyOgM
	ayeli7DsQUd8XH39ikS0hfgTYojRRACrDhhlkcYj2Li/qIELsY/eyQk/xA9h9lowiJ0A0BALRuNrF
	rRZTQAfFl6fEnQK4gcPAvQaW3q+U82BAW4EY8Hsf8Eg6c+DPO4FiUbIn6Y+W6IDbeAnYrJaWtH6PQ
	YzXrjnHOyyee92PZjXXLYWYgMZPR2mrABBXCEm494jADENDywrXlBQKaSwdZJ8wVtKyQzhdC2iPMO
	N0RoM2HPQuMk1zdnmSeN9Q3Q46EuvId7N/kiwxEdl69/CuIRhtRp1CmE0I86zpLojxx0Z+IgYFp3X
	MiZoeQHVA/yM6m+3JzXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPMw-00000008BAM-3goU;
	Wed, 27 Mar 2024 09:14:50 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpPMq-00000008B5m-1c2s
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 09:14:46 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6e6bee809b8so5487964b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Mar 2024 02:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711530883; x=1712135683; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oZiY/N9QWjiUSrWkYkKKgVbAI8JcvjPgGcqjy1l+QIE=;
        b=rn93uomJ8xVpDqO1pHoDMn89AAIynSHFQ+I0qLOqVlLTvBVkRtIib+DniyfkFWBMPl
         rJZ7pLDkvkciEpIHWsgrQNVDi3qzRPdmhZ2R2ejlAmiJco28f8YsC/oM6ocoJxmmFANo
         X7kCLSgZbRS2RVKQtKMdE8gBYiEesyrj4O3ipq7NBNhkz386hYWfAPVPX6e5PkCre2BM
         3qa9yI8ngNv1TEJhFINDrYaaC8/FmbWBMFkd/spp6egCgvkBCCKJS9M6yodV7elWFnjw
         25YmksJOlyOnJ+sGGpgAL6pV1NpbY3PbaJUcX3S9BZ+fCHsrtglmxIBvm75whBPFvY68
         up5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711530883; x=1712135683;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZiY/N9QWjiUSrWkYkKKgVbAI8JcvjPgGcqjy1l+QIE=;
        b=AR61MydaL2OLDlt8aNYtbcrJFB1FUbHD1zmRPfh2j0wUiQMqrK8ua+keVnpTFJhQJr
         Ov9/9shMKc2E6tYdIUptHLeVcTxkUDdlqQa0LvJn255ZHJlAsCB4+bChaitxfjp6dAbR
         fT9yJVDLFAWJf0jKeyCwq9UJD1tXPYO9ru9bPQwSABAB9FBM+5R31bKfLq5oU9On4qqj
         0uOO6E2hvdW8YFV2jTwrGX1jtTfgkxGYQajUoK5iIFHG7j0fxN+H7wlRZryE/z5Pip26
         7jVi0e21tU9HhPuOC7VDKbhw5UaY+cICR7nlHK1TVJZjFB1uZOCzyNDOdxy4C5WOPM8j
         N83g==
X-Forwarded-Encrypted: i=1; AJvYcCW6dxbzUl0hLB0SAfuv0443t/T8ZBw49rUPNOiJxljklunTfQNj+y/Qv4zbio8LQv90eN4TpBFRnQiM8tM3GP8CA8MEpIwSWqwERvd371IpZ1PZ
X-Gm-Message-State: AOJu0Yx8JjhnMsWausOleFPozgBydoo2xDyN+Q7tdqQPDaOO2P2iBtF5
	g5mFQLiYp0t/CLTqMBH/5bshI5I0Ernb9dc2NR51kc2rZM2lEkodTf+PiPCcBA==
X-Google-Smtp-Source: AGHT+IEhjrzAmhdc31Ckj+SKUIw8a5+ySLGll4S+n7ONvtok2U56QZlSSqe5kaYrOAdathooGe1xBg==
X-Received: by 2002:a05:6a00:2d25:b0:6ea:bf1c:9dfd with SMTP id fa37-20020a056a002d2500b006eabf1c9dfdmr2337979pfb.27.1711530882957;
        Wed, 27 Mar 2024 02:14:42 -0700 (PDT)
Received: from [127.0.1.1] ([120.60.52.77])
        by smtp.gmail.com with ESMTPSA id h190-20020a6383c7000000b005dc4fc80b21sm8673871pge.70.2024.03.27.02.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Mar 2024 02:14:42 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 27 Mar 2024 14:43:33 +0530
Subject: [PATCH v12 4/8] PCI: dwc: ep: Rename dw_pcie_ep_exit() to
 dw_pcie_ep_deinit()
MIME-Version: 1.0
Message-Id: <20240327-pci-dbi-rework-v12-4-082625472414@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3334;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=xGVEiZ7J2TIauI1NZJAP+R7IoNGzHRfiU2LIamYdE4E=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA+NJFpiteOu/bMaZydpCj3T9fJPQVQN/vgf+I
 pB4YUgDlCSJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgPjSQAKCRBVnxHm/pHO
 9dD4B/0TWr4d5WLYoGlJRNd23GLjZofrVBBEdotNf5AQj9lgW1AwbW1nJPy48qrR6OmFgqtMwJU
 AoJRwRrLJd44NPcLVDU7k1DLcM2L6J0jwgpyc83rrCjVdhTIpCqP17u/lg9Tr6o3FaJWRAcR3qd
 UZ29lpeYmZT6uFNuM/VvklfmrSDKH/OoNtDQLszOKd51l/lmKCjdCnM+OEW5UuXSGNNMi2AJGCU
 4jyHZy/eESG8OMB4JoGH+B4jhUN1g55aJd+iEVEAHtrh0s/RQs3/EjMpe/ktSaRupYnD/Sa2eTH
 FDYOiC3JgEjJ7H5spaG21OJihpC5FZLMmkOI3TsWwwBuyCMC
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_021444_574260_FFFEE128 
X-CRM114-Status: GOOD (  14.23  )
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

dw_pcie_ep_exit() API is undoing what the dw_pcie_ep_init() API has done
already (at least partly). But the API name dw_pcie_ep_exit() is not quite
reflecting that. So let's rename it to dw_pcie_ep_deinit() to make the
purpose of this API clear. This also aligns with the DWC host driver.

Reviewed-by: Frank Li <Frank.Li@nxp.com>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/dwc/pcie-designware-ep.c | 6 +++---
 drivers/pci/controller/dwc/pcie-designware.h    | 4 ++--
 drivers/pci/controller/dwc/pcie-rcar-gen4.c     | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
index f06598715412..d87f7642d7f6 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -620,13 +620,13 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
 }
 
 /**
- * dw_pcie_ep_exit - Deinitialize the endpoint device
+ * dw_pcie_ep_deinit - Deinitialize the endpoint device
  * @ep: DWC EP device
  *
  * Deinitialize the endpoint device. EPC device is not destroyed since that will
  * be taken care by Devres.
  */
-void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
+void dw_pcie_ep_deinit(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	struct pci_epc *epc = ep->epc;
@@ -638,7 +638,7 @@ void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
 
 	pci_epc_mem_exit(epc);
 }
-EXPORT_SYMBOL_GPL(dw_pcie_ep_exit);
+EXPORT_SYMBOL_GPL(dw_pcie_ep_deinit);
 
 static unsigned int dw_pcie_ep_find_ext_capability(struct dw_pcie *pci, int cap)
 {
diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index ab7431a37209..61465203bb60 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -671,7 +671,7 @@ void dw_pcie_ep_linkup(struct dw_pcie_ep *ep);
 int dw_pcie_ep_init(struct dw_pcie_ep *ep);
 int dw_pcie_ep_init_complete(struct dw_pcie_ep *ep);
 void dw_pcie_ep_init_notify(struct dw_pcie_ep *ep);
-void dw_pcie_ep_exit(struct dw_pcie_ep *ep);
+void dw_pcie_ep_deinit(struct dw_pcie_ep *ep);
 int dw_pcie_ep_raise_intx_irq(struct dw_pcie_ep *ep, u8 func_no);
 int dw_pcie_ep_raise_msi_irq(struct dw_pcie_ep *ep, u8 func_no,
 			     u8 interrupt_num);
@@ -701,7 +701,7 @@ static inline void dw_pcie_ep_init_notify(struct dw_pcie_ep *ep)
 {
 }
 
-static inline void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
+static inline void dw_pcie_ep_deinit(struct dw_pcie_ep *ep)
 {
 }
 
diff --git a/drivers/pci/controller/dwc/pcie-rcar-gen4.c b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
index 5d29c4cfe0a0..de4bdfaecab3 100644
--- a/drivers/pci/controller/dwc/pcie-rcar-gen4.c
+++ b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
@@ -432,7 +432,7 @@ static int rcar_gen4_add_dw_pcie_ep(struct rcar_gen4_pcie *rcar)
 
 static void rcar_gen4_remove_dw_pcie_ep(struct rcar_gen4_pcie *rcar)
 {
-	dw_pcie_ep_exit(&rcar->dw.ep);
+	dw_pcie_ep_deinit(&rcar->dw.ep);
 	rcar_gen4_pcie_ep_deinit(rcar);
 }
 

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
