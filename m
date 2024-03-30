Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9960AC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxFWBJJipjDFiJowH51xOEfwMm3Ucz+abp7qBfF4vMA=; b=4IXeVCkntCyTmp
	jy378PAeV3s1PQm1LhLl4lGAKv7vOFkE98B4k45tCkzEIqaskx7zOppqmz+Ir+hva+Ho2lzS/mmEZ
	STg/Z+iRP2uRc25pj0/vtDXVs9KCULSHU3vOY1lkxU/e5YYFxCSAdPSlijRnGb60ceAm7AXdJKjJB
	veEMyFrFIVDwYljkbeucJr5aXOg8nLnzvVcQOBeaEeq4BXwAGTjYf//vAfBqGBaScICbPy1DAyIqf
	YFRmhZFV7X1y8Frjbb1TeoX3PUfFdLrSm84kbu5Q+JMfcVTDJGF835JvIMHY7tE3PJTnrBMZ5eAZV
	1mVQP0VxtFGYuExNwMtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQDc-00000002kca-0fiY;
	Sat, 30 Mar 2024 04:21:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCO-00000002jxS-4396;
	Sat, 30 Mar 2024 04:20:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=C67xmMOrUMr+j5MIIpQaI7v5/RG3HDg6J9mtss26M/s=; b=nnRBPd8cxBtK2kF6B/mwzLSA2J
	Gcl8gWxlY6XCG9ynyU7+Wb1nFaqu5hXLTDZZ/0Y1u11b3RE3Q0nEFCuCMRwEyeHYQZTDHoF3D7Ym/
	yvWXXfElu9EAG8dKWQ+rfVhn4zW7ZHEhcpgcK+HPRY1FZ+g2mGeken0slVGRHuOgfGPpXWbElxf8X
	C61WWK9Nl7pjJu7Qsh/rQxGhHy1UTbSNRkT/p6meJS5bR1JQMukyzc0/zeMLwdl2pRPXU8J+n1qiu
	9hWjqNKtEytK8TYBW7rJHs+Q/xzLXD2m8vcbJNwQHbfFAKfwIoimYyTJYmsRX0t2P6VHwR6DdIX+9
	+Ws8KBFg==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCJ-00000001uOf-3W1m;
	Sat, 30 Mar 2024 04:20:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A3C7CCE2422;
	Sat, 30 Mar 2024 04:20:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39FDBC433B1;
	Sat, 30 Mar 2024 04:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772399;
	bh=AHRU08AWGRxB+Fqv67+pnAMmWjQzCx9M3EQLTVFxKzs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TVEu0ICZCrtGtzWWJQeh1L986jHby9gZuEZAIvxIuirGuEr71Mg264ooyW0v1csCp
	 jznCpUGx49tsFZYuH/KTuh6qW17H9owW0raLHCuJNXDimddqNxXkw/YSTPx+C4x5Tt
	 8XlMzhU8pQ2JvkMD+5N+rdalubirMeqH+3t3IegNTPMqgITanPyZCa/R1XinbN+7zV
	 Sn4byoq3zZL6wQO6zsFKQM22umb1qmkWAJO+hODMIxv0+n5i+0PxRz0U1ieQJfjq6G
	 7/pTbu3Dr5pbS3JCQMsLvlFocPgpbPO+CINZE8ObhpNtfQ816mtXs7qSh3mTqzxran
	 ZBNY1+ia/ZeXw==
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
	linux-arm-kernel@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v2 09/18] PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
Date: Sat, 30 Mar 2024 13:19:19 +0900
Message-ID: <20240330041928.1555578-10-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_042004_243129_FDD03477 
X-CRM114-Status: GOOD (  12.37  )
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

From: Damien Le Moal <damien.lemoal@opensource.wdc.com>

There is no need to loop over all regions to find the memory window used
to map an address. We can use rockchip_ob_region() to determine the
region index, together with a check that the address passed as argument
is the address used to create the mapping. Furthermore, the
ob_region_map bitmap should also be checked to ensure that we are not
attempting to unmap an address that is not mapped.

Signed-off-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index f8c26606df58..93c2466d6fef 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -258,13 +258,9 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 {
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
-	u32 r;
-
-	for (r = 0; r < ep->max_regions; r++)
-		if (ep->ob_addr[r] == addr)
-			break;
+	u32 r = rockchip_ob_region(addr);
 
-	if (r == ep->max_regions)
+	if (addr != ep->ob_addr[r] || !test_bit(r, &ep->ob_region_map))
 		return;
 
 	rockchip_pcie_clear_ep_ob_atu(rockchip, r);
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
