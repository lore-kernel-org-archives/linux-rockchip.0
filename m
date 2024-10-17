Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91205D2F7E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 03:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ScxQnf9fRgOOQkVGu3D046i7typMfUQ9SktNk86a9qI=; b=ti/+cO/z0oeuIM
	a0Vpmpcsp2pBGqhMGJ4PkCPqX4iDiSRX9ZiqMQlj/PmJ9gYkwlXp1FVCmzZmwgq1lZ18hygBZiDHj
	icS+E5dLdPo4SopZKgpWeSESRc/qX5ca+TGBNEu33AnOAYf6pCcYw2Ld5ZlsLP0FeAyjJ87REHCOZ
	7gK6nusdr40Snb/yprSL74RYRMoynqf5zmbkmiDQAt1HJqJtwhYySp/N4AOaK49SUhEOZxsUddg5E
	LMedhy5p4th3A/AU0BboWU42tlN36DNLh2l12OXl4syeIsKNle2qm1HGCLsxvIaE50lANK+Wcih8i
	kZiyQpzr9FjJci1U4j7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Gky-0000000DbwC-0VaC;
	Thu, 17 Oct 2024 03:00:56 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1FnA-0000000DUoP-0HwY
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 8EFAAA40DED;
	Thu, 17 Oct 2024 01:58:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88DB4C4CED0;
	Thu, 17 Oct 2024 01:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130346;
	bh=cGogfKDAaP5QdN9tIREGdoJWnNKUGTNQsxIwLw1Hkwo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ENbypHjkiFN71XKpXMX/O2XF5TmHRJ8GkuUQEz10j6ffehYmn9Gdvt2r0+pxmGyh2
	 uWJdJcry0O8u4NF+8YJ28UId1T2l97blSKp5iKcOvYCA+xijbpRjkxKxipWo6t0f4i
	 5xKACM1kKwi/T8ki/hYW+MdaAqsDAfySOyvhUnaHqHlW8Xjy/YTZkERSwrkdb4ARdV
	 tFxr3ETOSP21WIMCH3vuJv+XlurkWpB6QGV54WXMw6ZsYDokowh87etCm5SZflUCp0
	 3k5dx4x9Q9kd/jiRKuRj+2mNsZwhVxWMavcS2i2hb/czP984UeD1z+oJbIuWpzG3oO
	 e03Q4Ua05n3/g==
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
Subject: [PATCH v5 07/14] PCI: rockchip-ep: Rename rockchip_pcie_parse_ep_dt()
Date: Thu, 17 Oct 2024 10:58:42 +0900
Message-ID: <20241017015849.190271-8-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185908_376568_2C09638F 
X-CRM114-Status: GOOD (  10.98  )
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
index dcd1b5415602..705f6741fa53 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -494,8 +494,8 @@ static const struct pci_epc_ops rockchip_pcie_epc_ops = {
 	.get_features	= rockchip_pcie_ep_get_features,
 };
 
-static int rockchip_pcie_parse_ep_dt(struct rockchip_pcie *rockchip,
-				     struct rockchip_pcie_ep *ep)
+static int rockchip_pcie_ep_get_resources(struct rockchip_pcie *rockchip,
+					  struct rockchip_pcie_ep *ep)
 {
 	struct device *dev = rockchip->dev;
 	int err;
@@ -557,7 +557,7 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
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
