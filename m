Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F79ECCD184
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 07:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pzcE7tZNLhP3fzqIUhjX77NJC41ySanb7I/pkRidjUQ=; b=D74f2qRt86v3t4
	xGP4AbaVxMyhT1ibvVF1SbzucEWHkSErdcJ7X/lz/qJPBuxDA0JoF4Lflk2AQcSLgE0tw3JHbZYyc
	RsooetS31qp7ifAit2fZlY+MgSFFAQLWMOE8iUg4O5qNlRoq0N23qfSUvYdm9jOfT3JSR3NzPlBk5
	iM8wvRzuCl8tw7314CkAqFMF58SRpO2XpF9y0k7JzrsPDdHL9baO1OYwYnAmN3QRQ6sRPSEFIb9FV
	njvCCkwXPLatTU6rYwiqdl4UQKDgodsRJAOZYgdrwRHBwHFHKgLrr97Yj1we5QM/d899yxO3bRQ/o
	vlVFjJ76A4GXT5W7p/QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqpBE-00000007fNR-2kUP;
	Wed, 18 Sep 2024 07:32:52 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqpBB-00000007fMJ-46eB
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Sep 2024 07:32:51 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 48I7Wg2k001006;
	Wed, 18 Sep 2024 16:32:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: amadeus@jmu.edu.cn, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: change pinctrl-0 name in pcie3x1 for Radxa E25
Date: Wed, 18 Sep 2024 16:32:35 +0900
Message-ID: <20240918073236.648-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_003250_257335_C838BC76 
X-CRM114-Status: UNSURE (   7.32  )
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

to avoid conflict with sdmmc_det, change pci3x1 pinctrl-0 name.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- new
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 84a0789fad96a..bf8f2d8e9e2a1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -123,7 +123,7 @@ &pcie30phy {
 &pcie3x1 {
 	num-lanes = <1>;
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie30x1m0_pins>;
+	pinctrl-0 = <&pcie30x1_reset_h>;
 	reset-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_minipcie>;
 	status = "okay";
@@ -148,6 +148,10 @@ pcie30x1_enable_h: pcie30x1-enable-h {
 			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
+		pcie30x1_reset_h: pcie30x1-reset-h {
+			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
 		pcie30x2_reset_h: pcie30x2-reset-h {
 			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
