Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C134C04FFE
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 May 2024 13:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KuNQLwQfoYIY6SwE0Dx+HqbIK9OOGtJ87MQEuAN+wjY=; b=ptpDz4bHvc3buV
	nKqVcO0NCYTR6OuqZC3jHIVzcACMqpTQ6HXA9qv/GbrzebF+g1WPRl/Ya95eE1WQqZ5LUiDXNyZlF
	2jTv8CnpJUwUYzS8XHSOrPap8JhHEJ3r0ulPPqnY6e5yEkqExYp1zFZbdV6uZlzoNXcQrbuXiaIUA
	Zg4nf1NiGpP8Mocbrq4xav9ec9R7prR9BzRkMcUnzW/1DxqN3ftohwVlk4lKJ0kw2ezF8CTdppsHB
	tWOw5FiBAy/3BztLA1EBKaRjTXiBFLUTqCvVKbpEdYPrsNlffxNkKohe99BAULfZmeol1bCnKyZAO
	NhF4UwMO0/7IIDCvTcDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7l-0000000FaXd-1CH3;
	Wed, 08 May 2024 13:14:22 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4h7h-0000000FaUf-0Jvk
	for linux-rockchip@lists.infradead.org;
	Wed, 08 May 2024 13:14:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EF831CE18E6;
	Wed,  8 May 2024 13:14:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A1E2C4AF18;
	Wed,  8 May 2024 13:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715174053;
	bh=KjWl1JIkPYpwTbCHiK+X6uD304vyVCxgjTUQh/FZ8VQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IHn57ocstpd54cLclBPMY39ZzBo8WFq6ybv73maNAwKmjY5aAKpT71jkYnqEKeQvK
	 iUwUJ0E/brCpqBpIDDE8znwSfQfbQwBmKorNhJ3SVdmp3RB7kmwOylJDDSTUKpNCp8
	 e16QK/vXLNWD96ChzJB9Pz6DKDxFRDB4yJJTNb9DltRPLXUfaEE81Va+ijUAdDjoU/
	 gNfgdZw5PXrJn8MHOiLkkI70t6M/A/U2X7+8K/iNJfQFke6TABfeI/KLLO3CcztO+r
	 JAK81eLq34aqETle8tv5K1Jg11X9EOJ8hBB5ZDZCI8q6MIr3ruCL3lmdtqnoqAig0t
	 6VlWYY6nayMiA==
From: Niklas Cassel <cassel@kernel.org>
Date: Wed, 08 May 2024 15:13:39 +0200
Subject: [PATCH v3 08/13] PCI: dw-rockchip: Add rockchip_pcie_get_ltssm()
 helper
MIME-Version: 1.0
Message-Id: <20240508-rockchip-pcie-ep-v1-v3-8-1748e202b084@kernel.org>
References: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
In-Reply-To: <20240508-rockchip-pcie-ep-v1-v3-0-1748e202b084@kernel.org>
To: Jingoo Han <jingoohan1@gmail.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Niklas Cassel <cassel@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1426; i=cassel@kernel.org;
 h=from:subject:message-id; bh=KjWl1JIkPYpwTbCHiK+X6uD304vyVCxgjTUQh/FZ8VQ=;
 b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKsq+pf3pnzwPfPLnl9845TN/a2dP5Rnyzr437mcFe7s
 5S7S9qijlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEyk8AHD/8B9+j5cp3oM4755
 +sVufHEn07xav1RSMCEg9S6DQq/HG0aGF6s3/LnzvGNG8NTyci9POwOJOY0Jh+d2nYjXTd/xpEC
 eFQA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp;
 fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240508_061417_372613_BDB45885 
X-CRM114-Status: GOOD (  10.16  )
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

Add a rockchip_pcie_ltssm() helper function that reads the LTSSM status.
This helper will be used in additional places in follow-up commits.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 1993c430b90c..2a70326cc0bc 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -143,6 +143,11 @@ static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
 	return 0;
 }
 
+static u32 rockchip_pcie_get_ltssm(struct rockchip_pcie *rockchip)
+{
+	return rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
+}
+
 static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 {
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_ENABLE_LTSSM,
@@ -152,7 +157,7 @@ static void rockchip_pcie_enable_ltssm(struct rockchip_pcie *rockchip)
 static int rockchip_pcie_link_up(struct dw_pcie *pci)
 {
 	struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);
-	u32 val = rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_LTSSM_STATUS);
+	u32 val = rockchip_pcie_get_ltssm(rockchip);
 
 	if ((val & PCIE_LINKUP) == PCIE_LINKUP &&
 	    (val & PCIE_LTSSM_STATUS_MASK) == PCIE_L0S_ENTRY)

-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
