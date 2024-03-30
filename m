Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CBBC47DD9
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 04:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PdWw0u+qNjvE//jA/SwT0g4aTBx11TeoWz69TPeLpI=; b=Y0xdTuzeYPb6XI
	Rs8x9IFSarTxESdX+0F2OR0zoSlESHJmybiweIS2BUmdEU01U5b5cA6zsfUZT+FTPRErPeQpUXw+I
	Au8NK5Xa83TVKg8Ei3p1G1C8NjtMxTwoi+9LhmP7D/bvPQjmSM93ljRTKJsTGz1WPb7RPU5MNqD9X
	eLOu1oYPmbYuRPZU3+Rl5IZpMI6W8qTvmeMpOjohoxd80/wgSJEkm54a2Mfcc2qNjoL/eAZzrpM3s
	wGaSujtxTgitufWfAoj6VhkDCK64YBJFBbH8M1Z32bHeFuEK3QuHnmYkaZTEBOZDprxq2tEKwSx3y
	8BuYGGHIfY27iX0WKxNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQDC-00000002kRa-1dri;
	Sat, 30 Mar 2024 04:20:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCI-00000002jsB-16gS;
	Sat, 30 Mar 2024 04:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6DPu4dRhx3Ba2eYLg5ICK/sN7eJ2h179yvpPB0nyULQ=; b=Rz7uxXN6iEa2rqBcmzckcJPM/d
	nfADkVHnp1J+EO54z9VTT7Z9kOj60VAInhQEAiXAlsab8pIrWGUJqmFdi7B8mIrG4MVn6Rb1A5Hnz
	1rveYdWqKvWpST9RMlokDzV13xnHgaQZc3wVXPdEk9J27MSFofgQQsbVS4xx8KDv+SoWT/1DIZAka
	ER3H0pS4gCb9GRGEXHuExvZnyPBUj//PAdrbNGR1QBULfaRT2Pg7Ci0xOevTkZDG3yCoymvra29UW
	88N+75Kfn+xSLFu4u4KMJdOxEWyufQ8hlXSR/Yb5j0UqQtj+37HCihBgeabqPrIe4t7nBVVmKqmB6
	aD441oXQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqQCE-00000001uNo-3y9z;
	Sat, 30 Mar 2024 04:20:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 306476028C;
	Sat, 30 Mar 2024 04:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27860C43601;
	Sat, 30 Mar 2024 04:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711772396;
	bh=0vCO9UEww6LmblGgZZ5zmiHkjMZnubOns2C7wQhVNS8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ddhKCogdN5hRET7t2XDCJfuQJG3YyW01fPcToBf6GLu4B/ncikP9Xxmssjegmb1Cx
	 UCy+A7tcM8Tgs1coCN1MGiML4wlmag2sy/mNkLnec6ZpwjsdsDc6ibXOH5Fq8KoiMf
	 VPxJoPipUy+/VDepBi4BmnvH5rRVYsnBNLTTUWN4mrTR2YyS0fsBohnULd2Vo0pSSM
	 qzgPJ/P0EAOjXqoQ3xDU077OgHtCFm/qciry57J3pT9JH52Ht27Yr5S1OhZ3tSq0nr
	 wRCXY6TVgbqO8lwPRMSlUhFCoC1dzjhEkR29euv3UNl3aPvXTd9M9UjFAaOz6xr7lH
	 MJNNYKjjHlxRA==
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
Subject: [PATCH v2 08/18] PCI: rockchip-ep: Use a macro to define EP controller .align feature
Date: Sat, 30 Mar 2024 13:19:18 +0900
Message-ID: <20240330041928.1555578-9-dlemoal@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240330041928.1555578-1-dlemoal@kernel.org>
References: <20240330041928.1555578-1-dlemoal@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_041959_400637_81250309 
X-CRM114-Status: GOOD (  12.14  )
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

Introduce the macro ROCKCHIP_PCIE_AT_SIZE_ALIGN defined using
ROCKCHIP_PCIE_AT_MIN_NUM_BITS to initialize the .align field of the
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
