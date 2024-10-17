Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0DD6D2F7DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 01:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rEUYfiO0uN/qljlWXESYKA5PTiNa5IxCeWg0MBWt4II=; b=0yW9ajtxahKWIG
	sjo/F3e1OQBXr9NCqjDyDbj74HU8vGb9ahYUHQ3/+WsWpN4rJozNpHoUchN6aXhJ8vwCOY8tuy4R9
	19OLDZuFTNHz/9QNyG053xjZl2mCzl3fDCrwmf8qeOKwYTlmGYMZ9ZlveOtb15W1XQjC8NyCftjsa
	JemNHVmeOQKXgfHJ9n2/69TnFmpqeeL2pfFXF32dLBIv+lYQAgKD8hS+cM8mrCR47FR+y4lJNwOaE
	rPaRy1aMpIMiKlv4vjUmgBgO2KDK5WJHECsISp7mNVsUsej6bOyuYDkmqV2H1RPa44JxZITHF3swZ
	4DV3SFNKMg9T8RMjzUVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fn1-0000000DUhc-2dMN;
	Thu, 17 Oct 2024 01:58:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fmz-0000000DUgD-1d3V
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:58:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8BDBFA4331F;
	Thu, 17 Oct 2024 01:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D6B0C4CECF;
	Thu, 17 Oct 2024 01:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130336;
	bh=zQqRrc/dvgOEU1I54D/JpkTrW4JiU5wFmnUl/V52Wko=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hIMvmO3xsvyiCZx6PkUhTJPk6j51/4/b9Tl3axx/A84NhFbWRIqePt2QA4rQKB537
	 AZ0Nn/b5GbLNb4b+Ty3mD/YGM2unwWyX5xMrAVP/1+46poFyxoUWtwfDcsZH+21H4k
	 ugRqPGGSP+TtvSi9rzeGzQx9n9LLdSb/+dKo3yRqnK0S5ID1KomKr/OT2eX2xqAS8e
	 pucvPqWC+Nu2X8y8rdB4FaYcv1j7CJfsn3x8fAesKo4w2GtsTJndLyegaY448ufzsl
	 wMg9V4ZaBhrudm4R1IPgOCwhfT1o5qKPehT32FqlVhTWAWSF8VzpteYBbVO8nOjYeJ
	 rA86ETS6Ysgaw==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v5 02/14] PCI: rockchip-ep: Use a macro to define EP controller .align feature
Date: Thu, 17 Oct 2024 10:58:37 +0900
Message-ID: <20241017015849.190271-3-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185857_515534_CD65798D 
X-CRM114-Status: GOOD (  11.59  )
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

Introduce the macro ROCKCHIP_PCIE_AT_SIZE_ALIGN to initialize the .align
field of the controller epc_features structure to 256. This is defined
as a shift using the macro ROCKCHIP_PCIE_AT_MIN_NUM_BITS (to avoid
using the "magic" value 8 directly).

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
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
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
