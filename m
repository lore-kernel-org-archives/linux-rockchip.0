Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0147CFB43C
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzsHUriRShv3UUnFf+SLItGKCnjoKBGRqLlH7j7Sc40=; b=lyCn46tJM5bRF4
	kCfxQwAZceUfnk0xXkgqDK77fxV3AETVz9JZRK8lD48zFW7p0uJHkc+9gGgjtCHv7QEIOp/maypgQ
	3YQbjgIR6IiluW9+U60OH4kLtmDaJb+Eu0g1GIaqU5db6y3zR5APtocqRuNS0V6OBNUraIpG9dxtg
	ekQ3AswAxlPKSBFfygXslI58/8hbM2xhXE4tWhZMT638Q4sUFH3JkEKCsnePcTc0vl/HpeXixahbQ
	R3S9/djlrdkywCBaDMwCBHE4q82plMXCmfOajOMJVpDZDEcG5IwpOcKIOMu01rQM64S4kRi9m2+SM
	PsV701GDfJZ9II6agbAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6l-00000001Cxt-0Qcd;
	Mon, 07 Oct 2024 04:12:31 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6h-00000001Cvr-36Th
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 79DEDA40E9E;
	Mon,  7 Oct 2024 04:12:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA2F7C4CED0;
	Mon,  7 Oct 2024 04:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274346;
	bh=lYwTrY0jS1tCfZGBdpC5Zd5QRFOVHWsbeSniB+7qLxs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BGQ5JKe2YQwtiSg+YyGQ6bWx5D6dv+0ynxFVl49qydjwcwMDeABObBiwr4a/7Ufdr
	 o2tOTZGAXjZNgXVWMravJJeteBBX77c0SgWoqA0deBFBanWQxSMjZ1Pf6YzZmOvGhm
	 HTdw+V3F+vZm+0RfCdq8X8mG5e08ucGGDuITQ2NGetMsV+YTwuf8/a1lCke1pq/pGe
	 YiPQW8amJJUw3yKU4hif6Pw2Sd5SyhQiJXALc9GY5DRZoPXojmTztaWy8fijza/ppS
	 oq4qYMRsFDsmNLxC7hH+o3q+2naD70Tty+0c2zz0YdKYvOXfCAYqp4kEzv3P6So2Tk
	 8BoYSAkOZbqwg==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v3 02/12] PCI: rockchip-ep: Use a macro to define EP controller .align feature
Date: Mon,  7 Oct 2024 13:12:08 +0900
Message-ID: <20241007041218.157516-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211227_866077_EF91DE97 
X-CRM114-Status: GOOD (  11.82  )
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

Introduce the macro ROCKCHIP_PCIE_AT_SIZE_ALIGN defined using
ROCKCHIP_PCIE_AT_MIN_NUM_BITS to initialize the .align field of the
controller epc_features structure, avoiding using the "magic" value 8
directly.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
 drivers/pci/controller/pcie-rockchip.h    | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 27a7febb74e0..5a07084fb7c4 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -446,7 +446,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
-	.align = 256,
+	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
 };
 
 static const struct pci_epc_features*
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 15ee949f2485..02368ce9bd54 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -248,6 +248,7 @@
 
 #define ROCKCHIP_PCIE_AT_MIN_NUM_BITS  8
 #define ROCKCHIP_PCIE_AT_MAX_NUM_BITS  20
+#define ROCKCHIP_PCIE_AT_SIZE_ALIGN    (1UL << ROCKCHIP_PCIE_AT_MIN_NUM_BITS)
 
 #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar) \
 	(PCIE_CORE_AXI_CONF_BASE + 0x0828 + (fn) * 0x0040 + (bar) * 0x0008)
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
