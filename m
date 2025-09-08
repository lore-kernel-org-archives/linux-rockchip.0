Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D10CCA1016
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Sep 2025 19:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b6AA6F5Z8HRr9YBULk50VGKIJMaoIb+TK4Ah26mmHc4=; b=00MDRZiYGNfdlH
	eR7nQFsr7bm24KUwtD8+nLCXE/pd+da2DwO1UsgQUQcgvLS2gBhrQVqhAUsCviTTUqphGJbyRPvba
	5/9lNvpHtQku58/+hsNLA/PuTHJc7lVa0cMHqbX0YrNNld4eQiNCIxE3YDy9M06l/uEbm7yTNnuYD
	OB2Oxsq0vBSq07hmir23ZcjQDxIbTks/a3rpQdLReAO5rOWThxgNfwNnHa3sXfN3nOD1zLxUEuxBC
	eeq8m/qZp/0Llv8R6qsuHxeoDjQd6AzCz0vENgQg8YHsyiWxRR4lcjjtMsS4lLs4J3m1CZt7bXmgy
	nFQe1f1V0iu1gGuX7cqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvhYv-00000001tVN-0hiV;
	Mon, 08 Sep 2025 19:30:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvef6-00000000jGs-0x2J
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 16:24:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6D41443893;
	Mon,  8 Sep 2025 16:24:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E829C4CEF1;
	Mon,  8 Sep 2025 16:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757348651;
	bh=blZMEeaiSL5AXGGTZofoGD2fELHc3g2+uixUbXRJ9bk=;
	h=From:To:Cc:Subject:Date:From;
	b=PSYaYHjwLNv4rQ3H9eHApPvFiajP0oyiEjARCbQkvrZGZ2nIgbY5+BvaDE1tKgZSZ
	 HcqVw3TdC6tPa2amkrar7p6N66z3oEJBqhmoJ/GReXNjmuchuW7u6Z7Qh0I35MrJp3
	 8kela1wISgTD9QGbPtI00DeLufp+T3dxhczXI1u1a4M3AJotsbSX/4Z+T3+4HI+0A4
	 /Uf81ey80+kyt0v+q1NkfN0wje+dDyVi+0Et94Xj5YEYmc3qjMixo+OtUMIQouSZSP
	 v8svHEqDW8B465XU2XgZHKsr6xkNlhurDQ0aayKx6nEt0y16nLIzB1Cx5yy0vOHEZe
	 s/du6ZvBt0Xdw==
From: Niklas Cassel <cassel@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>,
	Frank Li <Frank.Li@nxp.com>
Subject: [PATCH] arm64: dts: rockchip: rk3588: add msi-map for pcie3x4_ep
Date: Mon,  8 Sep 2025 18:24:01 +0200
Message-ID: <20250908162400.535441-2-cassel@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1719; i=cassel@kernel.org; h=from:subject; bh=blZMEeaiSL5AXGGTZofoGD2fELHc3g2+uixUbXRJ9bk=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGDL2Myv8vF2q66H76WzIj7eK4dqBunlbj988buZjWln+b dMfvTLTjlIWBjEuBlkxRRbfHy77i7vdpxxXvGMDM4eVCWQIAxenAExkzxeG//VP5yuWvMphCtBr f2SVO3fx2jsrVSICXSfZuZ68PG91Dg/D/9S0yVqem700XmjcNapvd+FtsAn72PwxJ0R39pFXc36 eYwcA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_092412_284109_64408742 
X-CRM114-Status: UNSURE (   9.31  )
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

Support for msi-map in the pci-ep device tree binding was added in
commit a6aed6b9c79e ("dt-bindings: PCI: pci-ep: Add support for iommu-map
and msi-map").

The PCI endpoint doorbell feature was added in commit 1c3b002c6bf6 ("PCI:
endpoint: Add RC-to-EP doorbell support using platform MSI controller").

The PCI endpoint doorbell feature requires:
-An interrupt controller that implements GIC interrupt translation
 services (ITS).
-msi-map being defined in the pcie endpoint device tree node.
-CONFIG_PCI_ENDPOINT_MSI_DOORBELL being enabled.

Add msi-map to the pcie3x4_ep device tree node.

With this, the pci endpoint kselftest doorbell test case passes:
 # pci_endpoint_test -r pcie_ep_doorbell.DOORBELL_TEST
 TAP version 13
 1..1
 # Starting 1 tests from 1 test cases.
 #  RUN           pcie_ep_doorbell.DOORBELL_TEST ...
 #            OK  pcie_ep_doorbell.DOORBELL_TEST
 ok 1 pcie_ep_doorbell.DOORBELL_TEST
 # PASSED: 1 / 1 tests passed.

Cc: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 90414486e466f..c0121aea791d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -389,6 +389,7 @@ pcie3x4_ep: pcie-ep@fe150000 {
 		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
 				  "dma0", "dma1", "dma2", "dma3";
 		max-link-speed = <3>;
+		msi-map = <0x0000 &its1 0x0000 0x1000>;
 		num-lanes = <4>;
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
