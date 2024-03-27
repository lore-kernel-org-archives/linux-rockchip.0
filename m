Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CF1BC54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 06:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1OgQb1fJH3hNt1FyDttPbx81HudBWIQNcCc1tuVi42s=; b=DxUZGUNHltzDQl
	2oGFBRB4D2kin1ffLdklqLrnbKd4FeOMaMDEgTzfz/BMBZW066ndsTcGqgU8wqyW8M/BsJW6bcu/G
	5uNJ3KCMJDiNyzM+bE5It8/a6tduZG8MyLVRKtTzzZtEtB+79PjuWpRDYBMOIGN8NFc5f7Le7jXmK
	zny8CL3bo2Txk6JZCXYDwaHBR8OnTvUBx7V0lNuS4o+YQWgz9ZKMo7A/r32s8ywoLayW/z5Rr+hnJ
	PljbTyhlN/H+DUIzG+AZPW5U8EPC7VSG9oKC/IpzwTK32Xs6kqLL79JmcVYflIxKw3hmJUeKSB4zS
	giGbqgVnnLfEJLynnHAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpMv0-00000007gXM-1qUX;
	Wed, 27 Mar 2024 06:37:50 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpMuv-00000007gUX-3o7Y
	for linux-rockchip@lists.infradead.org;
	Wed, 27 Mar 2024 06:37:48 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-1e0f2798b47so3883615ad.1
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Mar 2024 23:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711521465; x=1712126265; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4fbftbLuAcGOCvJ547ndsEKPrfAbJI6lg5QkNn87c6A=;
        b=pqH9ScPnCd+OfWwNQJn8529hbmpZljzoe2eLw4UvlSa0y5P/DdkELKezhsr42qCvqx
         cbeoNJdkeHUaIGdim1R7Kvhnfqi426Pt5e62UL7vmjQjG+BotVIYUy2InZFPRqxxOOIz
         gIIWHslUjRJ7sBWqvzPvYsOsA2ceJ7KhUJTXt8f7Ocl83I9p7X4YpC7kbu9fHpotu57a
         ydPzRu5hG5BnAgMqOlp/ie54Nh8cW/18OuKIfWgXwmngbsq51Yk0RklL31MjM2AiZy9r
         yJ1kBSa1nYQj/p5GirYr+aJwHoxtrE/Uzvs7rL17fjql3adRlfDt7xwZR4HFkoJeQB26
         Hl9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711521465; x=1712126265;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4fbftbLuAcGOCvJ547ndsEKPrfAbJI6lg5QkNn87c6A=;
        b=MtDfX/XjkdTNGMNrvg+FQw3cMtseEg8bfN0woOh1ytDi6ZSCPJJtfXrFTGB0XMRbis
         bZfHK7B6x4TBIxoCE6yiyDx+S9lNX8WqfCd8aGfV6kWS9TFZ+82LOtL94BVitAVUHchR
         5LFcI1bd69cwSG38wTkvg5wAxOv1J5DLA31bMAKVctfyRTCm+cpHpV2tgaafO8ZDscwU
         XHANl/Y9sZPLlIADSkrqNZS1jroG9TzmV6J8Oy7C7zJVKhMtgcAeO3dWrunfqTg9UMu4
         BiPzcfF+F145zlRRTLMvCeY2ABnxFgrdtWKDliz4MIgHIwcOyBGFFG4wlIOii1hyKpYM
         dpfg==
X-Forwarded-Encrypted: i=1; AJvYcCWxwyAFfYMOwr3aNCKn9Au3z0R0ewhDWbzvp36UMi7w5R0phKoU3et9l/NJubuC5XXXozrXOMrmQYXqNzEPLODfaJhvy4w394VidKjkS4v7cBNX
X-Gm-Message-State: AOJu0YyyfXN+E9gkyYU3rKjIV9KHeWmQmYrfN3gnX6y53u2Eei5ocsFC
	6eeayx83Iy/7JukX+IpYOnSq+djMJf7PG/pOHIX65cLUgLcu7Stg69HpRrkmhQ==
X-Google-Smtp-Source: AGHT+IEL2kQ/E2w8VNPZzPOZ/AXjQBKSfaIRVHPHsHH5DUZufhi/FZ0THiRCOOjOJPVwkmxhtjEwaA==
X-Received: by 2002:a17:902:ec92:b0:1dd:8ed0:59d0 with SMTP id x18-20020a170902ec9200b001dd8ed059d0mr5552393plg.17.1711521464905;
        Tue, 26 Mar 2024 23:37:44 -0700 (PDT)
Received: from [127.0.1.1] ([117.207.28.168])
        by smtp.gmail.com with ESMTPSA id r9-20020a170902be0900b001e14807c7dfsm602553pls.86.2024.03.26.23.37.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 23:37:44 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Date: Wed, 27 Mar 2024 12:05:50 +0530
Subject: [PATCH v11 4/8] PCI: dwc: ep: Rename dw_pcie_ep_exit() to
 dw_pcie_ep_deinit()
MIME-Version: 1.0
Message-Id: <20240327-pci-dbi-rework-v11-4-6f5259f90673@linaro.org>
References: <20240327-pci-dbi-rework-v11-0-6f5259f90673@linaro.org>
In-Reply-To: <20240327-pci-dbi-rework-v11-0-6f5259f90673@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3334;
 i=manivannan.sadhasivam@linaro.org; h=from:subject:message-id;
 bh=4pckZjBmxNpusZkqA+M22ldG4knwHCaY60uejIejplk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBmA75VlvEI0iis4/mkrgePkLoXBVTtHKaqjt41b
 U9Tp0UU8diJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCZgO+VQAKCRBVnxHm/pHO
 9WCIB/49HeYYYzpNo0IRZF4N+qJBcgCa5NyT0Fg2bMN5zwctdcsIeJc0KjBFpj+1feSCAHJ0xDZ
 6BH3+IYqHU6ZvNG46DCzRLBbjtCAfQE7NM+viqwGUhY/HqnMXhH86Eld5xbYMvPUN2zgWJUkGA3
 wRZEWcLlR6eeWiL23cmECPesRsWTAsY/k432+j0ekBkhHdb1Ni7M2ZiR+KT4LnLlII7xSEhWLlq
 q0JjZv/RjCw2M7C4OTi4w7OkM8PMBhmcekNLARohzzIQqn3Kef5UOMpUdWDEkbsT/TucQb9CiNC
 I7PqNzDxoRcw06lKPoHn2kk4tg4slh6L68ZO57XG1aETSGRe
X-Developer-Key: i=manivannan.sadhasivam@linaro.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_233746_045779_709EC7C6 
X-CRM114-Status: GOOD (  14.21  )
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
index 7d60abe4fef7..7ff2015736ef 100644
--- a/drivers/pci/controller/dwc/pcie-designware-ep.c
+++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
@@ -618,13 +618,13 @@ int dw_pcie_ep_raise_msix_irq(struct dw_pcie_ep *ep, u8 func_no,
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
@@ -636,7 +636,7 @@ void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
 
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
index ac97d594ea47..9d9d22e367bb 100644
--- a/drivers/pci/controller/dwc/pcie-rcar-gen4.c
+++ b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
@@ -430,7 +430,7 @@ static int rcar_gen4_add_dw_pcie_ep(struct rcar_gen4_pcie *rcar)
 
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
