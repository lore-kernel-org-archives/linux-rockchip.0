Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67FCBC982FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 02:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yBEzxuCsV8kQfflO2tpStid3glfg7gzPzQuhVVfbwtA=; b=qidUE3I7oYUgOS
	RowkI5REHDGM1pOx28vAtCl6c5xbDoOm5vqlIfl4ukI/fUdWHIs4Sve0hlkCu3kwwyGkrGzEKSgFh
	9kaeyxdRefcH2t9NmFJjoguM+wzppmUFN2fgfIki2rpAvnJtuZ9Dnw+iuUvhwyKW9s/OySHgTpqZh
	mDE0PkempQMQXVR7psJxOLT1il3TIkGRUC3f/eeHG5heJbNWRLttB8+Ab6Yv6ADDtGRedHqvOOJXb
	7vluwpJq6ZKdH0W0nnQCOoOO8+X1D4qxaTJfHLNX0dfKFUS3ryPjSMdPA/2ScLyXh7tqofbirfjI9
	3GJNtSH9DXUUuJb0iRig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qO0-000000040VA-357p;
	Tue, 22 Sep 2026 02:37:36 +0000
Received: from mail-m10209.netease.com ([154.81.10.209])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8qNk-000000040RN-1vBg
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 02:37:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ea70fe9f;
	Tue, 22 Sep 2026 10:37:15 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 0/3] Small INTx fixes for Rockchip's dwc based PCIe controller driver
Date: Tue, 22 Sep 2026 10:36:59 +0800
Message-Id: <1790044622-164744-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0c6f97de003a4kunm27853d20398d1f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUkeT1YeTUsZGB9KSk
	NJQx5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=HuYlQqGZMGFos8uZejxq6IsbIXukqJmduMS1lF4/wK50bbFHO3ZrEAOTMhytKNm6RDoyehKlH7tDefhJX/ifQxqnvAZkAXjZ1aO+lgGEzkIbemmBDxZy8JEu8r20I/b5uS7rzqpbkM2HlakbRSF5VaqzyIEjjAHsCY+p1YaiKGY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=CoxwEvL89KhX1oKRDROsG9Ei4gYOQ+5iKIK5zHVnQww=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_193721_080232_F1945C26 
X-CRM114-Status: GOOD (  10.80  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


This short series fixes the INTx handling around the newly introduced
.reset_root_port() (b376b3ff9cb0), and is split in three patches per
Niklas' suggestion:

Patch 1 stops .reset_root_port() from recreating the INTx irq domain
on every root port reset, which leaked the old domain and silently
broke INTx delivery afterwards, the downstream devices' virqs were
allocated in the previous domain and were never re-mapped. By moving
the of_irq_get_byname() lookup, the INTx irq domain creation and the
chained handler installation into rockchip_pcie_configure_rc(), right
after dw_pcie_host_init(). This leaves .init() with nothing but
idempotent register programming, so it can safely be re-run by
.reset_root_port() and dw_pcie_resume_noirq().

Patch 2 makes the irq domain and the chained handler devm-managed, so
that they are released with the device instead of leaking, which also
addresses the probe failure leak/use-after-free flagged by the Sashiko
review.

Patch 3 keeps the INTx IRQ masked while .reset_root_port() gates the
controller clocks, so the chained handler cannot read the unclocked
APB bus and raise a synchronous external abort.


Changes in v3:
- split devm-managed part into a seperate patch

Changes in v2:
- Moved the of_irq_get_byname() lookup, the INTx irq domain creation
  and the chained handler installation out of the host ops .init()
  callback into rockchip_pcie_configure_rc(), right after
  dw_pcie_host_init(), as suggested by Niklas Cassel. This supersedes
  v1 patch 1/2, as .init() no longer creates the irq domain, and
  removes the rockchip_pcie_host_hw_init() helper from v1.
- Made the INTx irq domain devm-managed with
  devm_irq_domain_instantiate() and uninstall the chained handler
  through a devres action, addressing the probe failure leak and
  use-after-free flagged by the Sashiko review.
- keep the INTx IRQ masked while .reset_root_port()
  gates the controller clocks, responding to the Sashiko review
  finding about accessing the unclocked APB bus.

Shawn Lin (3):
  PCI: dw-rockchip: Move the INTx irq setup to probe
  PCI: dw-rockchip: Make the INTx irq setup devm-managed
  PCI: dw-rockchip: Mask the INTx IRQ while the controller clocks are
    gated

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 77 ++++++++++++++++++++-------
 1 file changed, 57 insertions(+), 20 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
