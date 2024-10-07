Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63170CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hhzfu1oiGZKlWbsuDwNQ4c26aeBjjGfeDEcJeyyTano=; b=GEOSKZ0NY7VbjX
	Lu1xiEs9Qdd03+UhHfCqWQEKfjWcTPyEB5VwGsHECq5c9pQ2ngPXjo6hQMyJYF50lAWGp6gaApWuX
	yKooUUs/b14mjFltsj7IlSmqt36xAndjqhk7jnhyP/3Hp+T0wz54iAcgsjVuKvLlfmvNhmN/MfAl4
	wmugFG6l9lFODiyYSveXTdGRV9kUBlmWGDSYYTnmWzA1cETRiLcw4Mpwdq916LOqv+iuG9V1tb/y6
	GosuFyuM2XmNgpcEVVS62P3JRWMcUC8Bc/khvFmZ3L3fMeFZlIgjDhNgXure+0Mb0zNCyKlT2d6y6
	iE21llYWFpFm2+yoHfsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6m-00000001CzE-35U9;
	Mon, 07 Oct 2024 04:12:32 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxf6k-00000001Cwr-0T49
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 04:12:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9F9DCA414EC;
	Mon,  7 Oct 2024 04:12:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 071A8C4CECF;
	Mon,  7 Oct 2024 04:12:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728274348;
	bh=5w+3NShXDU/wbYOsiv93TvrG7kU2oPVW7277Gez3AR0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aGyv6GeaMtH/0srjMhy4Mx6yx8duOHHSMcfTtn/qwnmxj9s998T3LIdDSkxkV5+TF
	 t1EgNx3ei6UFALwjjIgwzQ3gyDKf3iYZNwmffbNsZmmXHamU+FvxRKCvzhsr+LFcUQ
	 HwtwJnzOJqLLKgLG3tHEAkdIdsGHi36VcFrp9Pg7xvXWvWznoGqRqskfsstJRFvSz5
	 AG57q7IfebNRTF1kyUl6xkP1ALD4XwZHxB+VhSp4IWOLF9xfE8o0LZLJY2b65MSr8t
	 bKOxD3k7+07mT3lFJEsIchHYVQa5VVR+uMjY6jNqBNtL/Uw632Aq51KL1bzF7ZhbVh
	 JnKNRvprB/MrQ==
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
Subject: [PATCH v3 03/12] PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
Date: Mon,  7 Oct 2024 13:12:09 +0900
Message-ID: <20241007041218.157516-4-dlemoal@kernel.org>
X-Mailer: git-send-email 2.46.2
In-Reply-To: <20241007041218.157516-1-dlemoal@kernel.org>
References: <20241007041218.157516-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_211230_238206_4CD1A9BE 
X-CRM114-Status: GOOD (  12.05  )
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
index 5a07084fb7c4..89ebdf3e4737 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -256,13 +256,9 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
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
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
