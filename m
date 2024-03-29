Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04809CD1290
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 10:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZG3PpSC4gXf/B3u/M8KUlEaI6XjOlxr9CEVYrfU1io4=; b=tba+xZmQrWqJ7a
	DTqUtyRxGCiXb5aaXqClci2MKTbzxxFPcT1etdnXPMZILrKPFg7S7HmV0ynxAka5L+KSMMNw2p3hE
	A5y1ktwDA1c8OWxWcH836vjzf8swHUoZzMjdYq5BawmP64vSNAE+mis5rybeAg+5hLUD/4/EeYbyA
	wMU+UdBCpBxQOaw6Lu0OPj3oYhAOv2gYSUfNPgqh+HNJI1YassrwrI7gFKuTgJT/umnI16uJ5N/cS
	O+Y2yn8hI/fDnr/5tf4oDDKQcpsoHXl3CD/UUcsXnXGxGAsWV6R31XedYcc2r2hEUf7XaBKcf08w/
	TQCA9Zh/Da5QwTjGnSkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq9KE-000000000yW-32h5;
	Fri, 29 Mar 2024 10:19:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FQ-0000000HQCx-03MO
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6B5EC618EF;
	Fri, 29 Mar 2024 09:10:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 131ABC433F1;
	Fri, 29 Mar 2024 09:10:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703403;
	bh=aUn36xuvuaMnSLvVIxSZrVLaOID09mKh7f0aChbzrms=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UcUYOsPlM8nRJw00dIoGmQlUfCRnj4GqVbFuC9uHNT6bzcPOinci/SY5TJgKJw77G
	 P+YB1KCbf/Ul1Y5xh0hc+P9u5YINvKy/sDaJKrqGQS8lBrju0LGr2jd14q6nt1hABV
	 uwz81Td74Ca+gZBjF9x+RYDUpTuuN+5tw2TOYFUi21Hwd3uVKcjk4s0kfAd71heayM
	 5wLq4+++YvKzY9klIjRSbVNb5N41f4xl8O70CW/M8AI/3d9DTPKGzMbS/qbo9Q0JNG
	 IrFlF714JmcG9NICvgwdVPDeOe7sQB99FEbJXJ/qTfnWySOfy60fvYG++ue8ty3qbM
	 13iFHn2Ooe1zA==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 10/19] PCI: rockchip-ep: Improve rockchip_pcie_ep_unmap_addr()
Date: Fri, 29 Mar 2024 18:09:36 +0900
Message-ID: <20240329090945.1097609-11-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_021004_313863_8C89D05A 
X-CRM114-Status: GOOD (  11.33  )
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
 drivers/pci/controller/pcie-rockchip-ep.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index f8c26606df58..296916d4a6e4 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -258,14 +258,10 @@ static void rockchip_pcie_ep_unmap_addr(struct pci_epc *epc, u8 fn, u8 vfn,
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
-		return;
+	if (addr != ep->ob_addr[r] || !test_bit(r, &ep->ob_region_map))
+                return;
 
 	rockchip_pcie_clear_ep_ob_atu(rockchip, r);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
