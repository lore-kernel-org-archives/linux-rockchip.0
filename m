Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F585C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 14:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q6C6zFDxetaPZV/5tlOw4eagKLcjyFODMZkQvTiH89s=; b=azgzGtk2xONvEN
	IMqCayuxgQoa1LmWqwwLZL3+iQHb6pSPRGQ2QkNt0tTi9gs0ZrhO9sKmRZCdgqZOv29Xb/0rFH2Ko
	Pu5aJsbEhsnkzzbMEllh823LnXfoRJSErA+Y4NhbBuoxD1EwwbznUCBKg6dikb79KWrdKqQFFazOO
	ThmMOjX27wFM+lwwtfN4Ny+A+8xC+YzuJeRaOG6PQ6AjNtQNZEOGNrkQdacYzUG1hbkGwwxBPYlqc
	B3MGalHzBMZRIik5ep4E7AA2LEf9nCdWncXdGYmVnQRjQl63eAn0GdmZtBmkDeBZrKheBIthZjRfa
	zMwGAgew8fNC2r/J5JyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryuk7-0000000DwFh-2sVk;
	Mon, 22 Apr 2024 14:34:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryuk4-0000000DwDi-2Lb7;
	Mon, 22 Apr 2024 14:34:02 +0000
Received: from i5e861d85.versanet.de ([94.134.29.133] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ryuk2-0003mD-S0; Mon, 22 Apr 2024 16:33:58 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2] arm64: dts: rockchip: move uart2 pinmux to dtsi on rk3588-tiger
Date: Mon, 22 Apr 2024 16:33:56 +0200
Message-Id: <20240422143356.2596414-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_073400_802096_1A1475CF 
X-CRM114-Status: GOOD (  13.40  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The association of uart2 to the q7-uart pins is part of the module
itself and not the baseboard used. Therefore move the pinctrl over
to the tiger dtsi.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
changes in v2:
- add comment specifying where the signals go to on the Q7 connector
- add Quentin's review

 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi       | 5 +++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index d672198c6b64..9bdd14799eff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -231,7 +231,6 @@ &u2phy3_host {
 };
 
 &uart2 {
-	pinctrl-0 = <&uart2m2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 72fe696b0034..4984e36a8c2d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -688,6 +688,11 @@ &tsadc {
 	status = "okay";
 };
 
+/* Routed to UART0 on the Q7 connector */
+&uart2 {
+	pinctrl-0 = <&uart2m2_xfer>;
+};
+
 /* Mule-ATtiny UPDI */
 &uart4 {
 	pinctrl-0 = <&uart4m2_xfer>;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
