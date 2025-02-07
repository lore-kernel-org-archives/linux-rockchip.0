Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 818EDC02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 14:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=relsfhYadzmebUsxQMkAueSO1JiaygYaoI+z3cmPoBM=; b=lL5usSbwFDt2au
	AxJcTbQTm94RGG5lTfZ/gdEarepp9gvowj01c/n3uTKotjIH8iIb8fnaq19E+DaYw0d+v+d+U/cvg
	5GHgUnFTLy2EUlT7tobcvWRsQHGylsuYwQpGfn5A396TO50WThDqN+GLUferUKdzEcu22iSTK1gIE
	QK+J4n4FSGDZnNvVoa1kHUNlS4LRV/NMi+P3AcTxu82XruRmPyx3gFZOAwS7gNojqidKwKTFzYZiU
	0Z5fnLRMG2+NDwxkgGVHnWAH1x6UK3PGYMFpxI5laYQb1/7Y3YFbYf/6O4vWmbFyaWvWXL98Fd6op
	+2FIA1s3d8ma0T4fsgRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgPX1-00000009typ-3NbL;
	Fri, 07 Feb 2025 14:40:35 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgPVc-00000009tjJ-1cNx;
	Fri, 07 Feb 2025 14:39:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5FAC5A43565;
	Fri,  7 Feb 2025 14:37:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19682C4CED1;
	Fri,  7 Feb 2025 14:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738939146;
	bh=M+Hy65/SS+oURgcqCZr+Z443JfLpEZaU5/hVEXAJagI=;
	h=From:To:Cc:Subject:Date:From;
	b=h7sgOyVc6O+HddlDp7gD44CwMMMl1vCAgJ/RCeC1d7HyvCY4nvqvDaIMEtrJyF17p
	 aLgdqsohYS/OYxLwxJBjCEoasCq6Mi9l8L2TfyUrnKFO1RU0tjmw3CNlods3W+vvu9
	 A2ZlCZeN+HylWM8RUvUI5B07Bne/BdO+RUe3QM9b0vvgmC72rZMRQBxEolLbwRISLY
	 GPfWIAWgvpqXevZlMbqAfcwCKWMfQ4ahX0+lHaQ+AWkfkVGka/RjtejKLxc9LaL86E
	 SQKT3l8KFQkAGmOYO9iokvZf8756SCKMo7RPFtmBCYkFeHt9JQtnsOp6SvUsFLT/NP
	 8Z+nVrkv1eVUA==
From: Niklas Cassel <cassel@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: disable IOMMU when running rk3588 in PCIe endpoint mode
Date: Fri,  7 Feb 2025 15:39:01 +0100
Message-ID: <20250207143900.2047949-2-cassel@kernel.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3209; i=cassel@kernel.org; h=from:subject; bh=M+Hy65/SS+oURgcqCZr+Z443JfLpEZaU5/hVEXAJagI=; b=owGbwMvMwCV2MsVw8cxjvkWMp9WSGNKXSbMI/dg9RUe1+YdRhaHjg9BZ2w+556eU1M+oYJK5m vBsNpNCRykLgxgXg6yYIovvD5f9xd3uU44r3rGBmcPKBDKEgYtTACYizsDwV74qNP7RafYnK+Uz X5VYCfAfDfv257FWzqdbM81lPLJ3L2f4pz/t6s9VYS69nBVOxyZoB4QcPKISli77ccrG6dlfHxm J8wMA
X-Developer-Key: i=cassel@kernel.org; a=openpgp; fpr=5ADE635C0E631CBBD5BE065A352FE6582ED9B5DA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_063908_549997_1C30D572 
X-CRM114-Status: GOOD (  17.38  )
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

Commit da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU
on the rk3588 SoC") enabled the mmu600_pcie IOMMU, both in the normal case
(when all PCIe controllers are running in Root Complex mode) and in the
case when running the pcie3x4 PCIe controller in Endpoint mode.

There have been no issues detected when running the PCIe controllers in
Root Complex mode. During PCI probe time, we will add a SID to the IOMMU
for each PCI device enumerated on the bus, including the root port itself.

However, when running the pcie3x4 PCIe controller in Endpoint mode, we
will only add a single SID to the IOMMU (the SID specified in the iommus
DT property).

The enablement of IOMMU in endpoint mode was verified on setup with two
Rock 5b:s, where the BDF of the Root Complex has BDF (00:00.0).

A Root Complex sending a TLP to the Endpoint will have Requester ID set
to the BDF of the initiator. On the EP side, the Requester ID will then
be used as the SID. This works fine if the Root Complex has a BDF that
matches the iommus DT property, however, if the Root Complex has any other
BDF, we will see something like:
arm-smmu-v3 fc900000.iommu: event: C_BAD_STREAMID client: (unassigned sid) sid: 0x1600 ssid: 0x0
on the endpoint side.

For PCIe controllers running in endpoint mode that always uses the
incoming Requester ID as the SID, the iommus DT property simply isn't
a viable solution. (Neither is iommu-map a viable solution, as there is
no enumeration done on the endpoint side.)

Thus, partly revert commit da92d3dfc871 ("arm64: dts: rockchip: enable the
mmu600_pcie IOMMU on the rk3588 SoC") by disabling the PCI IOMMU when
running the pcie3x4 PCIe controller in Endpoint mode.

Since the PCI IOMMU is working as expected in the normal case, keep it
enabled when running all PCIe controllers in Root Complex mode.

Fixes: da92d3dfc871 ("arm64: dts: rockchip: enable the mmu600_pcie IOMMU on the rk3588 SoC")
Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi           | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 42b57e27ee4c..b5feefda9d2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -215,7 +215,6 @@ pcie3x4_ep: pcie-ep@fe150000 {
 		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
 				  "dma0", "dma1", "dma2", "dma3";
 		max-link-speed = <3>;
-		iommus = <&mmu600_pcie 0x0000>;
 		num-lanes = <4>;
 		phys = <&pcie30phy>;
 		phy-names = "pcie-phy";
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
index 672d748fcc67..f229cb49da68 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
@@ -23,3 +23,7 @@ &pcie3x4_ep {
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
 };
+
+&mmu600_pcie {
+	status = "disabled";
+};
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
