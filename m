Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD0F3FD0049
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 01:23:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8pKR9zJfZ72zocDJ7g3CTSKlOaN1XZFJkJRMrP2kaLY=; b=l2ABF8l/kcUrSv
	8hoW2W2iTEU/OckqCy8SBtxJ8xmVdGqMN3zxCQ/bVvocjWCAGkIgO1ikuUrU1EDYoZg8pCZfEN8Yc
	1AggLj1rnWNSlquOwWlM2OOubJjv9ftsazhw48w/bhp1sdfKBCaFwHlyYOZa8K961Vsfo3lnawhpV
	3uBsPEK5JtH1nSjAE/OxHYSbJnPyCRGmRVVZs1Zr+EQykbIhI7GSHkaJahBlRC8Sg1jpbLIY3tYgY
	ZvDQr8hRiQy6vFgY9SrO6CJuXel+0OLlKyBc0E0Th5p/8mORqPEI7RYd3wtLcoIvsJUdxHUoqevYj
	z886brAcoXRhV/J32uew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVWW-0000000AVQv-2Y0G;
	Sun, 01 Mar 2026 01:23:08 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwVWT-0000000AVPX-1T8A;
	Sun, 01 Mar 2026 01:23:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 10569418B0;
	Sun,  1 Mar 2026 01:23:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AEC8C19421;
	Sun,  1 Mar 2026 01:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772328184;
	bh=/LTe1+l48RFM1e2HNCEBDl0sKZ+EgZ8EXC3JPpMxWEc=;
	h=From:To:Cc:Subject:Date:From;
	b=X7MDFNpf5PFOO8DnXeLetow607jnmVv+6YIBgcthnkQqUy1A0SsksCaD+Pz6qSG97
	 YdJQRUDqZbXqWCkWaSY4OV96WM/U8xnqs0sj3PgVPWNRHx/c9QwgSx3E6ejl2CIvl7
	 skt3X0t3/uk0fIbkLld3JZ8yd78XKjljHgnB7u20eBkW0Z7wyNv+bDOJOylTyigpU0
	 krhJn3H7XMX4u4reUnodJOgrA4fLMGC/86E3DsGoSBaEbmSFEvkzp2Yw/2uEahS+YL
	 3Nb9PfwOWEyb4NMQ6+Z9/WH4C7Iy7h1n209vg0CkBRSQKyvhpR664E+aO+Q7L/7pO0
	 H8koYG+vs52Hg==
From: Sasha Levin <sashal@kernel.org>
To: stable@vger.kernel.org,
	shawn.lin@rock-chips.com
Cc: Andrew Powers-Holmes <aholmes@omnom.net>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: FAILED: Patch "arm64: dts: rockchip: Fix rk356x PCIe range mappings" failed to apply to 6.12-stable tree
Date: Sat, 28 Feb 2026 20:23:02 -0500
Message-ID: <20260301012303.1679675-1-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Patchwork-Hint: ignore
X-stable: review
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_172305_422911_5351329E 
X-CRM114-Status: GOOD (  14.73  )
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

The patch below does not apply to the 6.12-stable tree.
If someone wants it applied there, or to any other stable or longterm
tree, then please email the backport, including the original git commit
id to <stable@vger.kernel.org>.

Thanks,
Sasha

------------------ original commit in Linus's tree ------------------

From f63ea193a404481f080ca2958f73e9f364682db9 Mon Sep 17 00:00:00 2001
From: Shawn Lin <shawn.lin@rock-chips.com>
Date: Mon, 5 Jan 2026 16:15:28 +0800
Subject: [PATCH] arm64: dts: rockchip: Fix rk356x PCIe range mappings

The pcie bus address should be mapped 1:1 to the cpu side MMIO address, so
that there is no same address allocated from normal system memory. Otherwise
it's broken if the same address assigned to the EP for DMA purpose.Fix it to
sync with the vendor BSP.

Fixes: 568a67e742df ("arm64: dts: rockchip: Fix rk356x PCIe register and range mappings")
Fixes: 66b51ea7d70f ("arm64: dts: rockchip: Add rk3568 PCIe2x1 controller")
Cc: stable@vger.kernel.org
Cc: Andrew Powers-Holmes <aholmes@omnom.net>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Link: https://patch.msgid.link/1767600929-195341-1-git-send-email-shawn.lin@rock-chips.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 4 ++--
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index e719a3df126c5..658097ed69714 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -185,7 +185,7 @@ pcie3x1: pcie@fe270000 {
 		      <0x0 0xf2000000 0x0 0x00100000>;
 		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x01e00000>,
-			 <0x03000000 0x0 0x40000000 0x3 0x40000000 0x0 0x40000000>;
+			 <0x03000000 0x3 0x40000000 0x3 0x40000000 0x0 0x40000000>;
 		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X1_POWERUP>;
 		reset-names = "pipe";
@@ -238,7 +238,7 @@ pcie3x2: pcie@fe280000 {
 		      <0x0 0xf0000000 0x0 0x00100000>;
 		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x01e00000>,
-			 <0x03000000 0x0 0x40000000 0x3 0x80000000 0x0 0x40000000>;
+			 <0x03000000 0x3 0x80000000 0x3 0x80000000 0x0 0x40000000>;
 		reg-names = "dbi", "apb", "config";
 		resets = <&cru SRST_PCIE30X2_POWERUP>;
 		reset-names = "pipe";
diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 8893b7b6cc9ff..a2c4957a58992 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1022,7 +1022,7 @@ pcie2x1: pcie@fe260000 {
 		power-domains = <&power RK3568_PD_PIPE>;
 		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
 			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x01e00000>,
-			 <0x03000000 0x0 0x40000000 0x3 0x00000000 0x0 0x40000000>;
+			 <0x03000000 0x3 0x00000000 0x3 0x00000000 0x0 0x40000000>;
 		resets = <&cru SRST_PCIE20_POWERUP>;
 		reset-names = "pipe";
 		#address-cells = <3>;
-- 
2.51.0





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
