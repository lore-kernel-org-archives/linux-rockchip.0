Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D7D3CD1288
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e7FjaqxpBZreK7f1JmDZubOqbdxRvam3DaumpaMH6KU=; b=eOnzJ8dO4KrOAI
	IMmL2UU8eYyKXaY0f6lSxIp2r0CksxlvAnNhauJwEU+tsvG+NX0h1zGj2OUSPI5RNkxsRUgL62Bn2
	dChpjbxfARSLb8zA5Pekm7g4ART3hqsA1q+SLKM0pRovpVlje6V879RhsCt3ACzUutRRw3HjkKOWY
	UuRBywuqAJ4x/zj48jFMeJYJCBqqhIm/2RJSbA8okzKzT6rXz9lfwJOxbZStzZEdyELAq3V8wkTro
	7mYk/umPFxYKo6LsPZCjLnF6rBdCy3gYcwW8WOX+F5ypQqJQMLXL9I58csZcGhePCEaMmDqbPGwXN
	sQfsts5ves/T/+k8ij6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8Fp-0000000HQYb-0MM6;
	Fri, 29 Mar 2024 09:10:29 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FZ-0000000HQLW-0wDt
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7EF02618F2;
	Fri, 29 Mar 2024 09:10:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27FD2C43390;
	Fri, 29 Mar 2024 09:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703412;
	bh=RXLldZKLpPMu+MutiLKOGWj1dxASTXunfudattYEHEs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=lKI6quCuJe1QmenF8fJF1NLI7QagbAaAlQPF1h3JDyt2nFUJByBEdlZa+/AhsnzFL
	 b1Tk9TZzWeO5D9jAHDJT9wlo9YD5vtGGCsrTUUjz0wSZV09oCQLO7VyWvrepubRvcK
	 mqk14eWHVHDiN6JrUQPI7n5wbFFCX2b/fkuWisgh/9yvATffAD78sHcj3pBjTZuOnU
	 YlcIB3XRPKGcAbhaVY40YcYQwlioOAyb985mf74Oz4gDL+LY1k1AxxQOsGktm0DfN4
	 gaa+mQguBnU/jyoM3s2QCr8GMyq/dESFUw9GdH84ob9QWWfSdktvDNutG1y5WVsq7o
	 y8vgMF8uJi7dA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 16/19] PCI: rockship-ep: Introduce rockchip_pcie_ep_stop()
Date: Fri, 29 Mar 2024 18:09:42 +0900
Message-ID: <20240329090945.1097609-17-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_021013_586191_8E661D1F 
X-CRM114-Status: GOOD (  11.67  )
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

Define the EPC operation ->stop for the rockchip endpoint driver with
the function rockchip_pcie_ep_stop(). This function disables link
training and the controller configuration, as the reverse to what
the start operation defined with rockchip_pcie_ep_start() does.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 13 +++++++++++++
 drivers/pci/controller/pcie-rockchip.h    |  1 +
 2 files changed, 14 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 7df036098ecd..c126da07bf0c 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -470,6 +470,18 @@ static int rockchip_pcie_ep_start(struct pci_epc *epc)
 	return 0;
 }
 
+static void rockchip_pcie_ep_stop(struct pci_epc *epc)
+{
+	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
+	struct rockchip_pcie *rockchip = &ep->rockchip;
+
+	/* Stop link training and disable configuration */
+	rockchip_pcie_write(rockchip,
+			    PCIE_CLIENT_CONF_DISABLE |
+			    PCIE_CLIENT_LINK_TRAIN_DISABLE,
+			    PCIE_CLIENT_CONFIG);
+}
+
 static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
@@ -494,6 +506,7 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
 	.get_msi	= rockchip_pcie_ep_get_msi,
 	.raise_irq	= rockchip_pcie_ep_raise_irq,
 	.start		= rockchip_pcie_ep_start,
+	.stop		= rockchip_pcie_ep_stop,
 	.get_features	= rockchip_pcie_ep_get_features,
 };
 
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 30398156095f..0263f158ee8d 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -32,6 +32,7 @@
 #define   PCIE_CLIENT_CONF_ENABLE	  HIWORD_UPDATE_BIT(0x0001)
 #define   PCIE_CLIENT_CONF_DISABLE       HIWORD_UPDATE(0x0001, 0)
 #define   PCIE_CLIENT_LINK_TRAIN_ENABLE	  HIWORD_UPDATE_BIT(0x0002)
+#define   PCIE_CLIENT_LINK_TRAIN_DISABLE  HIWORD_UPDATE(0x0002, 0)
 #define   PCIE_CLIENT_ARI_ENABLE	  HIWORD_UPDATE_BIT(0x0008)
 #define   PCIE_CLIENT_CONF_LANE_NUM(x)	  HIWORD_UPDATE(0x0030, ENCODE_LANES(x))
 #define   PCIE_CLIENT_MODE_RC		  HIWORD_UPDATE_BIT(0x0040)
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
