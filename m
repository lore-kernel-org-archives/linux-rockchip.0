Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19751C369C2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 14:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=saAEjAVh3odpnfRcGU3OsF0LIzRnZWjLfu8Zat2r6EI=; b=0hqW4aWsE9f3zN
	7KlR/BPTSk5cmr49LUSZF3HXxwI2OnyIQV68fSs0Yzy2/hgX93EdnVKR8Czr2+7k6dwxB2Pfbo/er
	ChmPAHRCXmlWOp4UJF6vEz4iqomQF3QvXLwMNhB+mgZaucY3tLZgYknU6Ucm45c4MZ2aqw6gT0Lzw
	9Ev08SFAHmmajawocggprTXzHS3bswrnGLRXBuuPVTH1OpVpXW+aHbv7I6BcsgV/cf1Nads76NTHh
	7YwT33laA0RO7BmmQjGHr+PJq2bURqnlYi1hXcemQc3Nelet9QzGQD5TCrN9lmVCk2BDxw/ck/MyN
	6rXCxJ9QVjKrJB5oTU+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5QC8-0000000DIze-1saC;
	Thu, 17 Apr 2025 14:26:24 +0000
Received: from out-187.mta1.migadu.com ([2001:41d0:203:375::bb])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Q8n-0000000DIH6-0W8l
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 14:22:58 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1744899764;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=i674xOwrjdf/AAf3vaDDj/zXNM7PUpgpfGixq0BvJVM=;
	b=epf/QWi0fEMbAePO0z2eV4VX/swstqahqUqzcygHP0DUZtjjOHcjgeViy27Yytj7Be690M
	ySo035j0wLDy5r1/hXLft9L0MrK9XDkOFsUqji7vLGPO61zUiowfKaBPniuXs+3/0Zpmge
	/5NGI5R7h5IKsgJFebHve85QL3fvfN3cbdxlh4MwZZjNj2I0w74cWJlNksgOGqz6GoDZam
	KcBBqm3QSadwVwLWZnfrrJV14r45Vng8AottX3TkeiReqBt+kG/Mit/xfgHyEWPskklxNw
	v/fAQ33/TVTWCXevtP/iPE/iy9iMwZKKGJP8IwxryliX6s6W21Hl7qPPTUQQRw==
From: Diederik de Haas <didi.debian@cknow.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	stable@vger.kernel.org
Subject: [PATCH] PCI: dw-rockchip: Fix function call sequence in rockchip_pcie_phy_deinit
Date: Thu, 17 Apr 2025 16:21:18 +0200
Message-ID: <20250417142138.1377451-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_072257_297681_59BC3FA2 
X-CRM114-Status: UNSURE (   8.07  )
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

The documentation for the phy_power_off() function explicitly says

  Must be called before phy_exit().

So let's follow that instruction.

Fixes: 0e898eb8df4e ("PCI: rockchip-dwc: Add Rockchip RK356X host controller driver")
Cc: stable@vger.kernel.org	# v5.15+
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index c624b7ebd118..4f92639650e3 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -410,8 +410,8 @@ static int rockchip_pcie_phy_init(struct rockchip_pcie *rockchip)
 
 static void rockchip_pcie_phy_deinit(struct rockchip_pcie *rockchip)
 {
-	phy_exit(rockchip->phy);
 	phy_power_off(rockchip->phy);
+	phy_exit(rockchip->phy);
 }
 
 static const struct dw_pcie_ops dw_pcie_ops = {
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
