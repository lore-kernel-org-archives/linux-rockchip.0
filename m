Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB1C0C61DD6
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 02:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bG8adXyAQNstZ6mtiVjR96MZpb1wmcRIsbu3fGkRcSk=; b=xD9rxQzTxKe2cQ
	V25ImygtE9stgMNtsX7H2JJvL4hf8OrDzDNdhTntX+3UJMhpkG3mZyd9yywfwFvMPk1Ka4q9TSeb1
	p0DAqBB0GwZAGCsDtUCp6gglTseRYoYru4y1vfIpTTFvyyEq9FIEqq7V/xR51GPvUVum53ZFwISsH
	wmk9idZjPaV1/hSFoPcDp/jukDZARtyUo5wa2wpTcQtDGt2G+LT22dSpGUMVrNmzDa4pfEYEAxC/k
	uRWwlGGAEL2cbSAVHJoYyQEoIpix04rdx3eq4cHkRGhcpr9l25h2DypJFM5IBIn2wcsACk+bxyk8s
	/nXA2ZiT86YR5iqFENew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1xRp-0000000GEx9-3Gz4;
	Thu, 03 Sep 2026 02:45:05 +0000
Received: from mail-m17240.xmail.ntesmail.com ([45.195.17.240])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1xRo-0000000GEvb-0xDt
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 02:45:05 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c5849819;
	Thu, 3 Sep 2026 10:44:51 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] PCI: dw-rockchip: Bail out if the INTx irq domain creation fails
Date: Thu,  3 Sep 2026 10:44:36 +0800
Message-Id: <1788403477-71491-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
References: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa06527a43003a4kunm355d5a8763ed0
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGhhIQ1ZIGR5KQ01LHh
	9NGE5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UgJ4kgFTHwGbDxyquArR5Bmt3wum1Z2WsBLHGy6kq+f4DVkqFSX1oG9td6XSGM8VLcsCrmqpgDjv9G3TLrCmK4OOHyPJMLarJn8qqGuRKwMoejH4zQR/VxCm9e9pcBQpF3UoAw4aqvbKqgY9gcle0GD5HKyk2tFfTkWX7R9TMek=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=+buA18ALK+RC3oCEXsr81pLBNdzYPp29OxYXJu09Ugs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_194504_482203_806C157D 
X-CRM114-Status: GOOD (  12.40  )
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

rockchip_pcie_init_irq_domain() can fail, e.g. when the DT node is
missing its "legacy-interrupt-controller" child node. In that case,
rockchip_pcie_host_init() only prints an error and continues, arming the
chained INTx handler with a NULL irq_domain. The first INTx interrupt
then dereferences the NULL irq_domain in rockchip_pcie_intx_handler(),
which panics the machine.

Propagate the error to abort probing, keeping the error message for
easier debugging.

Fixes: e8aae154df61 ("PCI: rockchip-dwc: Add legacy interrupt support")
Cc: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index af26a07..50824c8 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -432,8 +432,10 @@ static int rockchip_pcie_host_init(struct dw_pcie_rp *pp)
 	pci->dbi_base2 = pci->dbi_base + PCIE_TYPE0_HDR_DBI2_OFFSET;
 
 	ret = rockchip_pcie_init_irq_domain(rockchip);
-	if (ret < 0)
+	if (ret < 0) {
 		dev_err(dev, "failed to init irq domain\n");
+		return ret;
+	}
 
 	irq_set_chained_handler_and_data(irq, rockchip_pcie_intx_handler,
 					 rockchip);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
