Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D84C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 08:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6RY2gZsx/6CHP2jH2JJopiIi/5qMGDJQyLcPDUqI4BM=; b=nU236RAw8VrtMK
	cLxMO0c40QKEeHr1jFtsWaMp3Pc6FMDWOLWyIdN+4QEyfbvcrlYuai/As/Kuq0zoir+Z9n23W9l4g
	1aW11yC+Ydh6Q3s4GfViLKaXiAF2jNsaJa2fIuhYQKu+Mb/qMuYFA9Y2OfWhZCDCDaWFgMdruJFDv
	p5zanQzViP3UtXhJAWg6L69kDkoSft8i0Liqds2AeK13TExHbEzF0+tG+vR27OlF/zqi8KIMFIiOR
	KRxC8+XNaZcVAJbd9IWsjPoom3ajePoYQXIh0PpTDrUHnwET9TkdWRTxYqPdoyGF8VsqE4ENbcsMJ
	G8+J7BQqB2gP/td98sVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxjDN-00000004sLD-2suq;
	Fri, 19 Apr 2024 08:03:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxjDG-00000004sI6-0pkq;
	Fri, 19 Apr 2024 08:03:19 +0000
Received: from i5e861917.versanet.de ([94.134.25.23] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rxjDC-0007e3-87; Fri, 19 Apr 2024 10:03:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@theobroma-systems.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH] arm64: dts: rockchip: move uart2 pinmux to dtsi on rk3588-tiger
Date: Fri, 19 Apr 2024 10:03:03 +0200
Message-Id: <20240419080303.2402184-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_010314_259475_D65C5B8A 
X-CRM114-Status: GOOD (  13.36  )
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
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts | 1 -
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi       | 4 ++++
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
index d6e30d5697bd..ce38ebda5fd5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
@@ -269,7 +269,6 @@ &u2phy3_host {
 };
 
 &uart2 {
-	pinctrl-0 = <&uart2m2_xfer>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 78f5bbddabba..48a3cbca38d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -711,6 +711,10 @@ &tsadc {
 	status = "okay";
 };
 
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
