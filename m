Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22479D0D789
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 12:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBiJKYhYG/yUfpxdwcq930bo6Kp8K4r2uneniPCvNXA=; b=ER3mx9JV4a9nKY
	CZXiPJHp0G4EM3AlCsUfFqmQr4nBzQbNQQNXSYSo/sfS11EnQ4iHcmXfhd5gNq50J28l7Db9DLh35
	sDEL+6u6KFO4KvEsGDyvdJQ0DP5LS99L1SoGSVXee6Pqf3wb2oA9wMdX3Ivk6lnzSCyUJsQOK+oVq
	keUYFkAl2miK5eNdqvcVl0u2wPnFwL8OP8/5GLhMo+QIQRXz0C9qgW3TAYFBeVCGMA/PXizBCH9ZW
	5pqB+g/bGEuP8ETLGdL7ZcxkWqDvvgsjL8M32pCiFFa4eozaB9Zkw/OvZnYs86QFH2kK70+B0FyaK
	HIXTid+eR0nc3IqL63SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szEhe-0000000GHsz-1WtK;
	Fri, 11 Oct 2024 12:25:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szEXK-0000000GFsS-11Tt
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 12:14:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5D5265C58CB;
	Fri, 11 Oct 2024 12:14:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6651FC4CECD;
	Fri, 11 Oct 2024 12:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728648865;
	bh=AtL3wqZlgNHrOyE2iIK25JTRKHMyE6T82EANDhLV1k4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=s36W3gorBP7MwuE5WElXCLsAr4VH32ZIegMavgI0OayahQfteFzaTzPMsOIQzZ+XL
	 bwsdUazDdU6b6EqjMnJlbIeGsonfpVMUuRhyH4896qT8zm2E92h0amWCk/Yrrz2WyI
	 Di70eysnf3bR0rrinuP+H0qaSWzGBEkZyWQCL3Zcnudeys7mtzW4+mx7MUc3HPRMm1
	 Xm/5LEgb9nGNyx1qdkj+a07EVpQQNKc8YP1y3uWVB7F7XCctjUJs1yFWV/HuYH7JBD
	 8ZAszfX72PGWwcIqf99poPITjiGkudQVoPxbYYPPk5PdtiptqXixJtPsM1y22taKkp
	 8R+zlJf9XAcdw==
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
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v4 06/12] PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
Date: Fri, 11 Oct 2024 21:14:02 +0900
Message-ID: <20241011121408.89890-7-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241011121408.89890-1-dlemoal@kernel.org>
References: <20241011121408.89890-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_051426_360342_561F5915 
X-CRM114-Status: GOOD (  11.24  )
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

To be consistent with the usual "get_resources" naming of driver
functions that acquire controller resources like clocks, PHY etc, rename
the function rockchip_pcie_parse_ep_dt() to
rockchip_pcie_ep_get_resources().

No functional changes.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index c9c2bb72771f..e8409106bfb2 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -489,8 +489,8 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
 	.get_features	= rockchip_pcie_ep_get_features,
 };
 
-static int rockchip_pcie_parse_ep_dt(struct rockchip_pcie *rockchip,
-				     struct rockchip_pcie_ep *ep)
+static int rockchip_pcie_ep_get_resources(struct rockchip_pcie *rockchip,
+					  struct rockchip_pcie_ep *ep)
 {
 	struct device *dev = rockchip->dev;
 	int err;
@@ -552,7 +552,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 	ep->epc = epc;
 	epc_set_drvdata(epc, ep);
 
-	err = rockchip_pcie_parse_ep_dt(rockchip, ep);
+	err = rockchip_pcie_ep_get_resources(rockchip, ep);
 	if (err)
 		return err;
 
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
