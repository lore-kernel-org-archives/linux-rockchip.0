Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11E8FC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 13:35:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qULKS8LTytpq/AMZNzUIH8AUpWDMbTk6qAfdQr4rg+w=; b=HgYcInBH4JRY59
	7wSn8lSb2SO612nq5+0/V4VpxZ6r/U/Jp8ALIwGuIs8s3jsQJwbnkzrd1WTbnvjpb0T5sSXfBsAnV
	sSOIeUpqKB0O8HKH/BI94AFW0N57SnftCyuWx/QD68C5Vg+KhZ9wQIJ476VK9V5csoCwZpSEz1Ypi
	hjoKtdg+7fr+d+gAtySA563necexrbLr//GmrD2iwdmuoRYMC44cjZ7DU1JObPsJdEi3TrxVDgN0o
	NoQsnzIfBDj3a+Eld+MOiVo41NUDPsSpx7rTVvLd4DBaBvrliZ1uFzrBjnPgUMXHFOBiCjEnVRNE6
	V0f4vwaYuIXbXabRWqtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBd22-000s1H-BN; Sun, 23 Jan 2022 13:35:46 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBd1q-000s02-Ns; Sun, 23 Jan 2022 13:35:36 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout2.routing.net (Postfix) with ESMTP id 75F2C5FD36;
 Sun, 23 Jan 2022 13:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642944924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=kyAI46PXFZta1W1LeVBMj4Z45GAo6fYKangEavewQgg=;
 b=AgK/n/8ym395X77+aJoMETITWME7G0FhMd2RmvbRvOAxSxI/lPKExo4HQIrSDSZGiLfOjA
 X8SCBvNUn0ObIrMRMVqeKaEdIKpdhubp1F5e111mLBrJfEz+/+sq4cEGAJ2k7GzkDgPa0e
 PSpHg9y8Pltqo8JfFXaoN339IJgBYAA=
Received: from localhost.localdomain (fttx-pool-80.245.79.232.bambit.de
 [80.245.79.232])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id AC2CC36019F;
 Sun, 23 Jan 2022 13:35:23 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2] arm64: dts: rk3568: drop pclk_xpcs from gmac0
Date: Sun, 23 Jan 2022 14:35:10 +0100
Message-Id: <20220123133510.135651-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 0bbcd62c-25de-453c-b067-23a97143c961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_053534_998832_41DF7A0C 
X-CRM114-Status: GOOD (  11.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

pclk_xpcs is not supported by mainline driver and breaks dtbs_check

following warnings occour, and many more

rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clocks:
    [[15, 386], [15, 389], [15, 389], [15, 184], [15, 180], [15, 181],
    [15, 389], [15, 185], [15, 172]] is too long
	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml
rk3568-evb1-v10.dt.yaml: ethernet@fe2a0000: clock-names:
    ['stmmaceth', 'mac_clk_rx', 'mac_clk_tx', 'clk_mac_refout', 'aclk_mac',
    'pclk_mac', 'clk_mac_speed', 'ptp_ref', 'pclk_xpcs'] is too long
	From schema: Documentation/devicetree/bindings/net/snps,dwmac.yaml

after removing it, the clock and other warnings are gone.

pclk_xpcs on gmac is used to support QSGMII, but this requires a driver
supporting it.
Once xpcs support is introduced, the clock can be added to the
documentation and both controllers.

Fixes: b8d41e5053cd ("arm64: dts: rockchip: add gmac0 node to rk3568")
Co-developed-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-by: Michael Riesch <michael.riesch@wolfvision.net>
---
changes in v2:
  - rebase on 5.17-rc1
  - separate from bpi-r2pro series
  - changed commit-message

---
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index 2fd313a295f8..d91df1cde736 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -32,13 +32,11 @@ gmac0: ethernet@fe2a0000 {
 		clocks = <&cru SCLK_GMAC0>, <&cru SCLK_GMAC0_RX_TX>,
 			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_MAC0_REFOUT>,
 			 <&cru ACLK_GMAC0>, <&cru PCLK_GMAC0>,
-			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>,
-			 <&cru PCLK_XPCS>;
+			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>;
 		clock-names = "stmmaceth", "mac_clk_rx",
 			      "mac_clk_tx", "clk_mac_refout",
 			      "aclk_mac", "pclk_mac",
-			      "clk_mac_speed", "ptp_ref",
-			      "pclk_xpcs";
+			      "clk_mac_speed", "ptp_ref";
 		resets = <&cru SRST_A_GMAC0>;
 		reset-names = "stmmaceth";
 		rockchip,grf = <&grf>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
