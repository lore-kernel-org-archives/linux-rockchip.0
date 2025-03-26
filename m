Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8833CC36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 20:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uKNq4X0MJDVuD4Z3klo1xspAWQPfF9kmxYs2ptavrPg=; b=pJEveEtNr0jJqw
	/dnVki91fWUhEkK6g8ZGWBhGyOVm2lJUAZsvpcyWy4rryGTrjd5ClPbrBJgK4igadnh3h5nN+038i
	utzFKeWcTOicU2RxHFq98ZyNe1HIsHqyasifTCHFjKSf+vdw6iQIWaRFlxh+DSmPPTQxt8hAUPfUu
	nW181Drwxt3dhb0YEykp5cJZxVLJd6dRTA4aDO/1tsWj7cjUuAucowsRVREXH1mihv+D83buLGhUW
	H0kiurVsTPZWuGr+8+PU/M9XH5C7pSgmNHR/saCidDlQbifiKM/87cxKkZ0IQ72vXsvnTy/cto7Re
	PQsuVIBsz0SeIXM3rvJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txWxz-00000009W8N-1zWo;
	Wed, 26 Mar 2025 20:03:11 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txWwE-00000009VxW-3uYc;
	Wed, 26 Mar 2025 20:01:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C039EA41733;
	Wed, 26 Mar 2025 19:55:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2658FC4CEE2;
	Wed, 26 Mar 2025 20:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743019281;
	bh=i8re7YWTitL9f6q0yBgZpLjWpQ/yfsSdCER2Kwhwp3Q=;
	h=From:To:Cc:Subject:Date:From;
	b=aqKmWNpLmO16WQsdMwJSY2lJZHc9hgCr5lmOJC7VF6ghV2dZq/slLku6u9l9Pctz4
	 HhYbD1DDomjdBAnGz162DxaA7dELeGdu8tMRSOiKYRgD3A4VIrMZoQBswxvsjjGgM5
	 wE9Syl+PFcyK7/6nTBB/lr1a8ZDgYnE9qwnuFPgDAa9SGSjkaniRP/OLLNi1HDVn7E
	 o+ySK2drIsqXg9ahtBp7Dm+nglbE0GYn8WxZljbCamJlzS9TjP04ukIubOfEC3LIu8
	 +8s8BdjGFYN5oi9kGWLanyLBvWrBvORPQefgr48Z5m3SxJgvaJ6gcdWYxFt2SR7dEx
	 saImDQiMKtWZQ==
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Niklas Cassel <cassel@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] PCI: rockchip-ep: Mark RK3399 as intx_capable
Date: Wed, 26 Mar 2025 21:01:16 +0100
Message-ID: <20250326200115.3804380-2-cassel@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=927; i=cassel@kernel.org; h=from:subject; bh=i8re7YWTitL9f6q0yBgZpLjWpQ/yfsSdCER2Kwhwp3Q=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKfxHIrp4pYKfNN70t76aU+Y/rjkqmODU5FKW+23is/3 XkodPL6jlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAEzEv5vhN3tF7mqpO/PnvO1x 9p6ffWmKp8r994qKp2fv6BDgv638/gQjw55MqyUBBRM7laOK9u+Z5HFWKGJO/tINlnyL7km+VNV 6zQoA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_130123_034166_A71BBE8B 
X-CRM114-Status: UNSURE (   8.04  )
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

RK3399 can raise INTx interrupts, as can be seen by
rockchip_pcie_ep_send_intx_irq().

This is also in line with the register description of
PCIE_CLIENT_LEGACY_INT_CTRL, section "17.6.3 PCIe Client Detail Register
Description" of the RK3399 TRM.

Thus, mark RK3399 as intx_capable.

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 85ea36df2f59a..626f6b31b0f66 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -694,6 +694,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = true,
 	.msi_capable = true,
 	.msix_capable = false,
+	.intx_capable = true,
 	.align = ROCKCHIP_PCIE_AT_SIZE_ALIGN,
 };
 
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
