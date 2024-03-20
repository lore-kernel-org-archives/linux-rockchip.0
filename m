Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C79C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Mar 2024 11:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZeXOXboNyTdAVWKwURCWcyII3LdHHp5/QAoWUJdBiU=; b=ARbS28+9iSFJF3
	RUItjDA+PH3zb+LfMX2X96NYDzBC+FIVupI573u/m1t4cRdOmNksswlie1AhrU/Od+VQY14K/kOSw
	8qzGSA4uibEW8+e7x7N8q9viM8tVZxWTiXtQxDx2xhnJRhcGZlxXRwTNrIK427FhtcqhS9QkNLsyj
	CI5M5kXg6MdLJXjiTbbq1OEJ7CiLcvb90M0TzqlYUzLhtfl+N+0NvH2Tzp479ycsSMB7zoDq1J0Vq
	20dl1cTEhVEZx5IQbgn9DWsdyQRgmq8QwRtx0PD0RLRSV2CODs6WTzocVnIPBbMh1MxJtKqpGizwE
	eNwcb4PZyKZSCwJbbpSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmuBT-0000000GygI-3leK;
	Wed, 20 Mar 2024 11:32:39 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmuBP-0000000Gycf-0mLw;
	Wed, 20 Mar 2024 11:32:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D90D3CE1033;
	Wed, 20 Mar 2024 11:32:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A65BC433B1;
	Wed, 20 Mar 2024 11:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710934352;
	bh=q66K0XDfqa4FH1mzvBlDGOW/HIb2nk503TpvzVrO3uw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=b0z853G/KCqIKbAzHMyET5yPiC7NK9lhx6S1JnpJ9Bn8BYyNrNZtk2RWP/rw2QKGZ
	 4/wlPBkWWEsHZ7UVFUbIYaOCWcJHakfF12kS1JMAMdzAHEXAguURm59a7Rkt5DHvzj
	 SbkbieyE2zIIXHVDLLvQR0uSCJ1ybo2901O1svpFTIiq6Wm2IMfzPEVdUq3F3dm6Ae
	 x8dYsbKKphtdT8cCnOb2jF0NRVezO5BlHl5zviXSG+n2hVOvQlwMorxgPxE8B1U9e1
	 B5lyaIClz7Ot/n1M1vf8TOY0IXZRtApjsRYNtfkAeMBkcRXts0NNLIbPUCQPTQsj7W
	 h0mQZgU+k+SxA==
From: Niklas Cassel <cassel@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Shradha Todi <shradha.t@samsung.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 7/7] PCI: rockchip-ep: Set a 64-bit BAR if requested
Date: Wed, 20 Mar 2024 12:31:54 +0100
Message-ID: <20240320113157.322695-8-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240320113157.322695-1-cassel@kernel.org>
References: <20240320113157.322695-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_043235_423537_16935EDF 
X-CRM114-Status: GOOD (  14.14  )
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

Ever since commit f25b5fae29d4 ("PCI: endpoint: Setting a BAR size > 4 GB
is invalid if 64-bit flag is not set") it has been impossible to get the
.set_bar() callback with a BAR size > 2 GB (yes, 2GB!), if the BAR was
also not requested to be configured as a 64-bit BAR.

It is however possible that an EPF driver configures a BAR as 64-bit,
even if the requested size is < 4 GB.

Respect the requested BAR configuration, just like how it is already
repected with regards to the prefetchable bit.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index c9046e97a1d2..57472cf48997 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -153,7 +153,7 @@ static int rockchip_pcie_ep_set_bar(struct pci_epc *epc, u8 fn, u8 vfn,
 		ctrl = ROCKCHIP_PCIE_CORE_BAR_CFG_CTRL_IO_32BITS;
 	} else {
 		bool is_prefetch = !!(flags & PCI_BASE_ADDRESS_MEM_PREFETCH);
-		bool is_64bits = sz > SZ_2G;
+		bool is_64bits = !!(flags & PCI_BASE_ADDRESS_MEM_TYPE_64);
 
 		if (is_64bits && (bar & 1))
 			return -EINVAL;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
