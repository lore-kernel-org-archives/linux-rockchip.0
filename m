Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B52A7E77197
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jan 2025 18:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pRSlkydrLbL6STV8qW27zvNSwZ3Kf2X2up98UxmEBuc=; b=Q0PLbofC4UhP7C
	H2COMuVefRMpdGzolS3BhCM4QtNOxhogmlsuGFRtT0ee+F7CMo+zELrHMrOufeIhGl/r0fWO1TlHG
	vG63jIkwXudyxHWukE7SWR4PPZJPNQ5mEhKYprwXiNBYqqL5eDfypOYw6HqpmMwUrVYdLCoOP9yz6
	DXCEhCw+Rhm3kSas1HB4YRXad8d9Xp4je/TEmZNnZEO6O41uZ9hoL+avVe3Wx2txOlK3IojGLFqVv
	Xg8yYy61AF3x0rrVQWFvKVdhFstsrqH0WcIWnFePQLxhPrrYqS+9edvKN92wD6skWJG2zN6QSnghv
	nF9A726LKJrrZKWALb7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVE9M-000000060RK-2cOX;
	Tue, 07 Jan 2025 18:17:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVE7B-00000006093-35RM;
	Tue, 07 Jan 2025 18:15:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 043325C06DD;
	Tue,  7 Jan 2025 18:15:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84EC5C4CED6;
	Tue,  7 Jan 2025 18:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736273740;
	bh=YjPRYyKxFWfwBGyFIc8FXbd9BDk5/XxDt0/Kay6MfyM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=m9epLKEB4Ua0wOU1NBLxEUWtamnLKpupf0LIemEnjpkyMiMSs4md8jN2hzrdUEsbN
	 k7wT3PzAW00qFQEKXJBExWjwVdPc0ONgqoMhAmZPsduIr3eHh8Y7hULBQP0nb4b1z7
	 DJ+2SR0O6yybFeWckPVGq4J+gxkwwtNJaM4xH2tIUdIkw+gfcA46hKYlfWUGpSPRVB
	 ULNSB6pyx17N1rafrODipXv4cL8/Wu/jXDnxfiCt8+Un5HpOVBGbxX8kCfbXzAaGrb
	 mOzusBs/OHIwt15jDMr563IMjPFYQrbYxlPr8SNZRzvZRO9XTP/SKg2KWBMDP0N7K3
	 6mwVmt16xE4aA==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 6/6] PCI: dw-rockchip: Describe resizable BARs as resizable BARs
Date: Tue,  7 Jan 2025 19:14:56 +0100
Message-ID: <20250107181450.3182430-14-cassel@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250107181450.3182430-8-cassel@kernel.org>
References: <20250107181450.3182430-8-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2520; i=cassel@kernel.org; h=from:subject; bh=YjPRYyKxFWfwBGyFIc8FXbd9BDk5/XxDt0/Kay6MfyM=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNJr8xWP/59YxzOtaeNWwVce1/qe8drIX/Pk+DdJlOfuT /ebDR2LO0pZGMS4GGTFFFl8f7jsL+52n3Jc8Y4NzBxWJpAhDFycAjCRz2YM/yOVrx/Z1DTJ9Nd8 9VmOh55c8LWziInhl2mZVl3z4aCQazgjw9aC19+viiXdnalpl/cvY9uM3NVWYd/OLAmaVynj6vd FgBMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_101541_867646_820490B6 
X-CRM114-Status: GOOD (  11.76  )
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

Looking at "11.4.4.29 USP_PCIE_RESBAR Registers Summary" in the rk3588 TRM,
we can see that none of the BARs are Fixed BARs, but actually Resizable
BARs.

I couldn't find any reference in the rk3568 TRM, but looking at the
downstream PCIe endpoint driver, rk3568 and rk3588 are treated as the same,
so the BARs on rk3568 must also be Resizable BARs.

Now when we actually have support for Resizable BARs, let's configure
these BARs as such.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index ce4b511bff9b..6a307a961756 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -273,12 +273,12 @@ static const struct pci_epc_features rockchip_pcie_epc_features_rk3568 = {
 	.msi_capable = true,
 	.msix_capable = true,
 	.align = SZ_64K,
-	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_4] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_0] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_1] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_2] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_3] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_4] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_5] = { .type = BAR_RESIZABLE, },
 };
 
 /*
@@ -293,12 +293,12 @@ static const struct pci_epc_features rockchip_pcie_epc_features_rk3588 = {
 	.msi_capable = true,
 	.msix_capable = true,
 	.align = SZ_64K,
-	.bar[BAR_0] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_1] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_2] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
-	.bar[BAR_3] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_0] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_1] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_2] = { .type = BAR_RESIZABLE, },
+	.bar[BAR_3] = { .type = BAR_RESIZABLE, },
 	.bar[BAR_4] = { .type = BAR_RESERVED, },
-	.bar[BAR_5] = { .type = BAR_FIXED, .fixed_size = SZ_1M, },
+	.bar[BAR_5] = { .type = BAR_RESIZABLE, },
 };
 
 static const struct pci_epc_features *
-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
