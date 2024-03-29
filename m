Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E7FECD128E
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 09:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOY2d9LPKTQ5CauqpullksR1jO8AMaFIujdA7D6RxPQ=; b=K0pmRl+bPqsls3
	5QsAJageCiMDt8tNQg3LKIZRbg5qvaxX9O2CVaYJ6yTPHKMIiI/nEmwmWIj2Xviy0FRsZ+xYQorht
	fh+d6rKyjTGyiz5jIJB102iarNLvr5Vl+t1P2HyUVg0OM83RMWGpofFZBONW21biyGNDmStisEXcu
	MhdDmXsmY/UIFYnK33gDpDVIlhFe4uHomti0TvmqVDAQrwwHd9eLcveQGFQlgfHX2dVo8j0ju1MO4
	OeLJ4lG9Ql8TUKhHRvZkYWAY3o5reCx7URB5bcvB0NXIlMysG9qxziyf8pLtpEd/uS3nlMa4zMPHk
	Lwdg8fhv6ZPw7TzbAtjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8Fc-0000000HQOZ-0wt3;
	Fri, 29 Mar 2024 09:10:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq8FO-0000000HQBr-3FwP
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 09:10:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E2AF8618D1;
	Fri, 29 Mar 2024 09:10:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FA82C433F1;
	Fri, 29 Mar 2024 09:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711703401;
	bh=TtEADjsIY+AJrW5BwZotEsQEf9GAL1QtAJ4zDREYbqs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BIE7fTuKedWyvQK2FwnsTcjVJ1MMjL3vsvbjnj30S6RgBPJqoqCK6r4R0C6KEJuMw
	 h9a954yfAWJni+TB7SzNy6WhjrPYuZu9Wptix8U+DbcfzJXMl7vUc1r0c1zL+FdpGS
	 a1uGmz6jlo77nl4TQGYWYgzlZVzqM7d9bP0eO3qhhvuMPjKdR4z30a76nxsApXZlj8
	 SueYjW+MSqO9P0UiFrLVUYDTuxm89/o1pw192wlyTKsALDmUWDmpMgyuRVsUsLMTbD
	 PGnTCs27vm31xhrYhXhCqKZYI8axAY9/2gXivKLxJfFR2yvASrqjZF69HUdZEYUcwq
	 hijHSs1t63AHw==
From: Damien Le Moal <dlemoal@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH 09/19] PCI: rockchip-ep: use macro to define EP controller .align feature
Date: Fri, 29 Mar 2024 18:09:35 +0900
Message-ID: <20240329090945.1097609-10-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240329090945.1097609-1-dlemoal@kernel.org>
References: <20240329090945.1097609-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_021003_204765_2A7B24A6 
X-CRM114-Status: GOOD (  11.07  )
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

Introduce the macro ROCKCHIP_PCIE_AT_SIZE_ALIGN using
ROCKCHIP_PCIE_AT_MIN_NUM_BITS to define the .align field of the
controller epc_features structure, avoiding using the "magic" value 8
directly.

Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 +-
 drivers/pci/controller/pcie-rockchip.h    | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 786efd918b3f..f8c26606df58 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -448,7 +448,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
-	.align = 256,
+	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
 };
 
 static const struct pci_epc_features*
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 15ee949f2485..02368ce9bd54 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -248,6 +248,7 @@
 
 #define ROCKCHIP_PCIE_AT_MIN_NUM_BITS  8
 #define ROCKCHIP_PCIE_AT_MAX_NUM_BITS  20
+#define ROCKCHIP_PCIE_AT_SIZE_ALIGN    (1UL << ROCKCHIP_PCIE_AT_MIN_NUM_BITS)
 
 #define ROCKCHIP_PCIE_AT_IB_EP_FUNC_BAR_ADDR0(fn, bar) \
 	(PCIE_CORE_AXI_CONF_BASE + 0x0828 + (fn) * 0x0040 + (bar) * 0x0008)
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
