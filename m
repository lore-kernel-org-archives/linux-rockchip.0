Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1CFAC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5Ku1MkARGbx7MetmUFVHRgageXiqjgRXcEvwjQQX+Y=; b=M8j/tkf8/qvaoY
	DV3ojCZNbHRnFVDxF5dbTQ1kQP5sAgrO8p++LH5rxAELhzXGAtYYZ/d2IQihvTAOqWJy40IA/HWBk
	i5vVWanwanwQ50MhHY8atye2CfPR5CQl7qSg9M86EU/i+CO2KmUsWofNp0ilk0lucR1+RtTA4IZVF
	M01KM4u+E8esTdOCzm8Fel34MI5sF57cz3kXeHzeT43w/aSQZQtGIWg76eAd3i8PbPfvHJ4uqeDWv
	uWwO8WLV2rglaVkZ1W1+cDGQxjLRvY/rJUNa7uEoziGodNJEiJwV0iun63ddx9/KmxeJMF+smcJ5l
	4EqWxJi5HwQwiU/3R4ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQDQ-00000002kYK-318s;
	Sat, 30 Mar 2024 04:21:12 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCJ-00000002jtq-3oQY;
	Sat, 30 Mar 2024 04:20:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5C24C6023A;
	Sat, 30 Mar 2024 04:20:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C803C433B2;
	Sat, 30 Mar 2024 04:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772403;
	bh=YVMNoSiitz/dvs9qFfJ1kX3I4aXTOvXdrC9wLQgAmDM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=r++DN4JKgFjDxY1iFwmqxRwzgZuTk4mNOJi+LYaCgWKyGIfs2D8XntjdRsaLyzAQH
	 TnQUZ1Cu50wjLhisu7iA1wemMxEUyPCXW5BZvCD7k5TsMAdaVlFZI3kFMAPOOHKM8R
	 X9jzFXQVA3N8U1g1F4Bg6WQ+7eeAQvbJBKSrskcIMG6OHO/uO8JiLpuLoQtu4c+1I8
	 hmaS1pBhmCcJ4c3n/1DLZPIeT6vLT5IaKs+hqs/UUT+KxtsMwUYm5ntmlOGgQP61IU
	 NlTCZhambH5YyHO/56Suv/kNVq44nvCJ5GwvquuCfwFpIdqkpJZN1s0cYL6sdkNQ8T
	 9V5pnLcZcQ34A==
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
Subject: [PATCH v2 10/18] PCI: rockchip-ep: Improve rockchip_pcie_ep_map_addr()
Date: Sat, 30 Mar 2024 13:19:20 +0900
Message-ID: <20240330041928.1555578-11-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_212004_092037_4F0F47CF 
X-CRM114-Status: UNSURE (   9.63  )
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
index 93c2466d6fef..36692e34ca31 100644
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
