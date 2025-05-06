Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F97EC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 07:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3i5IYw9brBK1VRtVWHJnxqX/3C8NFAdewufXKZM3xhM=; b=OAbUiZNLEQWueD
	62v8AbyvPtdBb/d2JdDShwdhXBC1MfiHFhrpsyNEzlp1iGBIOi5JDQj4QE9DdMgt0ChhFj9ebphT6
	FBnsaf14LeZ1x/md6J1woCbWV4Kb8eCTA+L0qC/YlgpWkV5NQ34nyKek2M04Ts4J540n5uB36edRW
	zlgOBoO9MrPpPgYwD/J5oVUxRYxtEgxKt/4XXzB/he2K70IuJIjsLEX5z/q5NozcpVlV98gmdgwGM
	xPEMVUctRKQBt4Hshyd5vktcEiM3zmnj2Taz3CAgzwiE0HWbbTKhA08aL8Asn5kqU9Yck6dhc7Rgg
	mi4PeR27JT897nQDuYLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCyk-0000000Azjl-0aaH;
	Tue, 06 May 2025 07:44:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCu7-0000000AyQ5-41Fl;
	Tue, 06 May 2025 07:39:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1BC0BA4AEEA;
	Tue,  6 May 2025 07:39:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB02EC4CEE4;
	Tue,  6 May 2025 07:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746517190;
	bh=fIF5C2JpTNsGgN9qtpaqxTEfCI6ag3WFonjPNfysbhk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BY5oyyjYz3joPCmh2f6M4fyMhgk3oPt98s4yZ0DDFYZ73l8rP9psk2J14VCixd2qI
	 XKMz+rJ9NvRvgTdst/gAwzy5GypBn8JQF65TngFAjCBKbPwUCfDxcuMKSFNMETNEDa
	 X7Y/eG7zJS5qOoAjSLdDMnTyYS7GT+MYW9h6X3cv/UZPVag8rzITBiXQCmKcR3q2pl
	 O572i0AbsnGRi4m0888S+aMoZia5zRb543AJtf8QGu6IhM+48jwokbxVH5Fc7tPUCR
	 iuAnV1F5BeMgK//cw/TzK7JXn46XRNFzWCkAa2VsBm6cAtx4tXTYUfV9bXWXDji1n7
	 8B5aDpGJmCNqA==
From: Niklas Cassel <cassel@kernel.org>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Hans Zhang <18255117159@163.com>,
	Laszlo Fiat <laszlo.fiat@proton.me>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/4] PCI: dw-rockchip: Do not enumerate bus before endpoint devices are ready
Date: Tue,  6 May 2025 09:39:36 +0200
Message-ID: <20250506073934.433176-7-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250506073934.433176-6-cassel@kernel.org>
References: <20250506073934.433176-6-cassel@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2766; i=cassel@kernel.org; h=from:subject; bh=fIF5C2JpTNsGgN9qtpaqxTEfCI6ag3WFonjPNfysbhk=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDIk9+z+d2SSYt28t6I99eu378g+Ea1q+dXycaVGnnP6n OUZurv2dpSyMIhxMciKKbL4/nDZX9ztPuW44h0bmDmsTCBDGLg4BWAiVrcZ/pdaJAhNrtypfsrI Y43vcoldXw1TSnMWVvItUzJ8fbmpLIKR4Y+SCVfgsyDWGsNHgjXKjFu/ih2qsJBsEz7Amnjw9IG JLAA=
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_003952_127606_071BC811 
X-CRM114-Status: GOOD (  14.75  )
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

Commit ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since we can
detect Link Up") changed so that we no longer call dw_pcie_wait_for_link(),
and instead enumerate the bus when receiving a Link Up IRQ.

Laszlo Fiat reported (off-list) that his PLEXTOR PX-256M8PeGN NVMe SSD is
no longer functional, and simply reverting commit ec9fd499b9c6 ("PCI:
dw-rockchip: Don't wait for link since we can detect Link Up") makes his
SSD functional again.

It seems that we are enumerating the bus before the endpoint is ready.
Adding a msleep(PCIE_T_RRS_READY_MS) before enumerating the bus in the
threaded IRQ handler makes the SSD functional once again.

What appears to happen is that before ec9fd499b9c6, we called
dw_pcie_wait_for_link(), and in the first iteration of the loop, the link
will never be up (because the link was just started),
dw_pcie_wait_for_link() will then sleep for LINK_WAIT_SLEEP_MS (90 ms),
before trying again.

This means that even if a driver was missing a msleep(PCIE_T_RRS_READY_MS)
(100 ms), because of the call to dw_pcie_wait_for_link(), enumerating the
bus would essentially be delayed by that time anyway (because of the sleep
LINK_WAIT_SLEEP_MS (90 ms)).

While we could add the msleep(PCIE_T_RRS_READY_MS) after deasserting PERST,
that would essentially bring back an unconditional delay during synchronous
probe (the whole reason to use a Link Up IRQ was to avoid an unconditional
delay during probe).

Thus, add the msleep(PCIE_T_RRS_READY_MS) before enumerating the bus in the
IRQ handler. This way, we will not have an unconditional delay during boot
for unpopulated PCIe slots.

Cc: Laszlo Fiat <laszlo.fiat@proton.me>
Fixes: ec9fd499b9c6 ("PCI: dw-rockchip: Don't wait for link since we can detect Link Up")
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 3c6ab71c996e..6a7ec3545a7f 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -23,6 +23,7 @@
 #include <linux/reset.h>
 
 #include "pcie-designware.h"
+#include "../../pci.h"
 
 /*
  * The upper 16 bits of PCIE_CLIENT_CONFIG are a write
@@ -458,6 +459,7 @@ static irqreturn_t rockchip_pcie_rc_sys_irq_thread(int irq, void *arg)
 	if (reg & PCIE_RDLH_LINK_UP_CHGED) {
 		if (rockchip_pcie_link_up(pci)) {
 			dev_dbg(dev, "Received Link up event. Starting enumeration!\n");
+			msleep(PCIE_T_RRS_READY_MS);
 			/* Rescan the bus to enumerate endpoint devices */
 			pci_lock_rescan_remove();
 			pci_rescan_bus(pp->bridge->bus);
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
