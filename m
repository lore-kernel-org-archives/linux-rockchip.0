Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC279C369C2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 01:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYWT1i8Zaoi6TCSi+ELw6pq2ue/zP+zYDGIde/cwgYk=; b=ybCEWsGyOF07ee
	o8TD9XWtT2L0T/ptvayvpoZ5ueL/f9ksXazJC9MHTDaa6HepSC5vi3AjGjbFVEshOV2Gi5rR8/cfM
	Aog7yUQeBES9GkdxAIJblDl03wWJhqSLR23yRHHJGnnen2SdEdSSKBw+chTaz/1x+iMkcYeE4hnNI
	BRPhan3ZMqsSVt4337Sq7YS+FzG97hpRfE7+yfMwVQxz9mIU2UIt1T6mFZyjkQksl0P71AnegR05M
	ZH7yhXBIoojN9ZAlomZ3/uvYqZi/bP4GT28UUydB+ZjMg0QaraOk89ySMldGPeKQfhVEtjJzxFZdW
	vLCgUgUX3/hemQTczJog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Dwx-0000000BQCm-3sp6;
	Thu, 17 Apr 2025 01:21:55 +0000
Received: from mail-m93237.xmail.ntesmail.com ([103.126.93.237])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5DE6-0000000BJtF-0BkI
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Apr 2025 00:35:36 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1224c9fd2;
	Thu, 17 Apr 2025 08:35:24 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc: Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4 3/3] PCI: dw-rockchip: Move rockchip_pcie_ep_hide_broken_ats_cap_rk3588() to .init()
Date: Thu, 17 Apr 2025 08:35:11 +0800
Message-Id: <1744850111-236269-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
References: <1744850111-236269-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh5OQlZCTRpKSE9NSUkfSRhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96412bfef009cckunm1224c9fd2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nio6MBw6NzJNEhILCUoNSRI6
	Gg8aCQ5VSlVKTE9PQ05LSklOT0tIVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLS003Bg++
DKIM-Signature: a=rsa-sha256;
	b=OXDAedLjWKEbZeQ+UyBkCJ8RP4tRq83/0lDfSrt756kpoj+DYKaaLzY9hYWyjFz8YhbG+Uz+I5tvVCqUPB7Yt4YQie8vvX9PcjHG3ePj+Avo+FmL7QI8U+37H9OkxBibyzEZI3bE0pVRNWlZQkQnE9syOMQCSd+K/hrBkWIuTGA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5zSHlWHLiEmdxc+sCW6tUdXwMlspj2a4pKO9Z8NdMAk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_173534_319018_86D005BD 
X-CRM114-Status: GOOD (  12.83  )
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

There is no reason to call rockchip_pcie_ep_hide_broken_ats_cap_rk3588()
from the pre_init() callback, instead of the normal init() callback.

Thus, move the rockchip_pcie_ep_hide_broken_ats_cap_rk3588() call from
the pre_init() callback to the init() callback, as:
1) init() will still be called before link training is enabled, so the
   quirk will still be applied before the host has can see our device.
2) This allows us to remove the pre_init() callback, as it is now unused.
3) It is a more robust design, as the init() callback is called by
   dw_pcie_ep_init_registers(), which will always be called after a core
   reset. The pre_init() callback is only called once, at probe time.

No functional changes.

Suggested-by: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v4:
- rewrite commit message

Changes in v3: None
Changes in v2: None

 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index e4519c0..7790a9f 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -278,17 +278,13 @@ static void rockchip_pcie_ep_hide_broken_ats_cap_rk3588(struct dw_pcie_ep *ep)
 		dev_err(dev, "failed to hide ATS capability\n");
 }
 
-static void rockchip_pcie_ep_pre_init(struct dw_pcie_ep *ep)
-{
-	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
-}
-
 static void rockchip_pcie_ep_init(struct dw_pcie_ep *ep)
 {
 	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
 	enum pci_barno bar;
 
 	rockchip_pcie_enable_l0s(pci);
+	rockchip_pcie_ep_hide_broken_ats_cap_rk3588(ep);
 
 	for (bar = 0; bar < PCI_STD_NUM_BARS; bar++)
 		dw_pcie_ep_reset_bar(pci, bar);
@@ -359,7 +355,6 @@ rockchip_pcie_get_features(struct dw_pcie_ep *ep)
 
 static const struct dw_pcie_ep_ops rockchip_pcie_ep_ops = {
 	.init = rockchip_pcie_ep_init,
-	.pre_init = rockchip_pcie_ep_pre_init,
 	.raise_irq = rockchip_pcie_raise_irq,
 	.get_features = rockchip_pcie_get_features,
 };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
