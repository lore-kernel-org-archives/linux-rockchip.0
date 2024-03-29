Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3141CCD128E
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 10:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4b5/VFdCth6b83k6h5PPaG80eaAUphz8NLJM1m6rDoI=; b=Jw7tYKZj9+BZZr
	is6Wwki1I+9qQfJDfI9R2TNWuKd577ZWrRdUQuysbMvtcECDXTmtZBK6a+Fe2PCwvm0QvlVc4Xu4P
	QOrJSJvAEfwDE8eakHyBYcBOPN/VVMpKNA1iDKMBQd0l0yYb96cqMHozZptJZYGmwaVZWOBoKyK0P
	QTiOBGNkv1EyHi/bH/Ce2Rm05SLQg99ohdow8Pis7Zb27lUgvpURwWp/8YzdYYUH5ak3X/t+qsD1y
	OuhbCW1BQcJrd5GlKjuVeBEeSm4J0gpzjVMpe5VvRN85y5cD6X6ZtiXhrIaUEu6VBPTRyGHxd+aQv
	7x/mQEtfMOWsjRVfpgxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq9KF-000000000yc-0KAc;
	Fri, 29 Mar 2024 10:19:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FR-0000000HQ9p-0SRb
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E7ED1618CC;
	Fri, 29 Mar 2024 09:10:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90708C43390;
	Fri, 29 Mar 2024 09:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703404;
	bh=xJl20dD/sfAgaEM4rbGBuGwJ0fENngDOuq2Kb9XiBoI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YAh3YGV40g4BCrUXtyYt20wRiTXN1/OQGNo3ZwZVUpR4ybt/IDow9+EDtMWYdGM7G
	 MMeEu+3i+Ipaa+otSjP2rRf42ea2nOeYP7fhSOcn+OBSnRtveN6dqGta2NXmBfDX1s
	 ABoVFQdzc6RZ2NDF9JRrTu2UMBQBWhRoU8nS/XO9uNUryvslBt7TLsBrX6zHIqYG2i
	 UTpvdBMkzmJlNrfQyAoP54xs0/ByeRXF8Il66eaAmFB0QjYwNF4OoZOa7Gk868GKQC
	 ypVmQjC+tJ4OCeMtvVOnQiJ1B78xy4xwbBIhOEoBgxfZrSOkFRa3lgFtJUP2cYmy+/
	 21OFctA6yIICQ==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 11/19] PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
Date: Fri, 29 Mar 2024 18:09:37 +0900
Message-ID: <20240329090945.1097609-12-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_021005_453118_581FF084 
X-CRM114-Status: UNSURE (   8.86  )
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
---
 drivers/pci/controller/pcie-rockchip-ep.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 296916d4a6e4..c2ca7878cee3 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -245,6 +245,9 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
 	struct rockchip_pcie *pcie = &ep->rockchip;
 	u32 r = rockchip_ob_region(addr);
 
+	if (test_bit(r, &ep->ob_region_map))
+		return -EBUSY;
+
 	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, addr, pci_addr, size);
 
 	set_bit(r, &ep->ob_region_map);
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
