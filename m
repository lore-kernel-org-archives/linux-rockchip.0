Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A103ED2F7DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 01:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8+U/qphQca8YkG1NuSDbgcWK1JDaD+fzsw+0j4eupXM=; b=YSYySTsKr4HW7R
	D5e9bQIL/ZR8ljpQbZeHyNvomYEYvvb3nbolHV+Y6G1+dTUf7M/mQTfw2yPVjCHY0snXNoLMrg+Xp
	s7CKS+rmNPTlAF1t0YWhobSnjGYrbZlo3KpYiI8ONcY0dMu0S2yT0e464v3iYv3pBKj8diI9vIsN4
	+q8qoZlf5rwJgAgoFO4gQF0HfbA++nYk6iZltUNmljkJkLVXuWqy5babKAS8q5WbsW7bMDSm2fmP1
	lwiYYZxTWkBrGSULBuy16moBJ0OxP5udlQAXnfb/swjEb40AFig1+8Vw20StbzTiaG3vENP1UsdHl
	v/sh5dIHddmiTm5wkhgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fn7-0000000DUmt-2L3H;
	Thu, 17 Oct 2024 01:59:05 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Fn3-0000000DUj6-1C3h
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Oct 2024 01:59:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6443BA40178;
	Thu, 17 Oct 2024 01:58:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83B99C4CECF;
	Thu, 17 Oct 2024 01:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729130340;
	bh=fQ5LGyIBaK46oPYJY75HQ+s1l6zSxG5jS7LECMmdORg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Cz+6vzb/fZFpRvwRxJb4Fuz2E6UrnbUk5iAcFm5KDqJ7PEkZzH0l0M4INTCFSi6C9
	 T10ao7kqbl9/eRuIJ514GRuX0kbq+nZTZrIaS7M0Gh4Vf+S98sMoBklE4176ywTKEY
	 g/McpYHTqlnmotG400WETMq6YltrcFXlfckErJbvF4v+PABw14hTKsCi76/NRmF+2v
	 oHiPhLH4nC7nh73PbDeEJkXYC7xfvlTD3AiYXAi0SXhcGuMLTY9GeN+zMJSpzb+Jae
	 57apqdsAgA40JgiU4ICzRxQFXkIcKvGyxnci3bno/YfnP81f84EDe1UshJbrcLOePB
	 3Gr66HdU5u3rw==
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
Subject: [PATCH v5 04/14] PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
Date: Thu, 17 Oct 2024 10:58:39 +0900
Message-ID: <20241017015849.190271-5-dlemoal@kernel.org>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241017015849.190271-1-dlemoal@kernel.org>
References: <20241017015849.190271-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_185901_438241_CD760DF9 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
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

Add a check to verify that the outbound region to be used for mapping an
address is not already in use.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 89ebdf3e4737..edb84fb1ba39 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -243,6 +243,9 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 	struct rockchip_pcie *pcie = &ep->rockchip;
 	u32 r = rockchip_ob_region(addr);
 
+	if (test_bit(r, &ep->ob_region_map))
+		return -EBUSY;
+
 	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, addr, pci_addr, size);
 
 	set_bit(r, &ep->ob_region_map);
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
