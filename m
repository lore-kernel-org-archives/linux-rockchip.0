Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDD98CEB2C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZD49flyo6Z8turTmz8hhOyBqYsK9LN9XJiJiHF5Ak0=; b=nKy4HgRFhrQ3eF
	O4FnW/8UC3iGiUbGhI2nV9zCfbjftFVDdA+4HU3is6LMwZ5rkLlmHngKrDSdHIyxVxbZNXtWstTvR
	n0jdjVVGAEhM7GXXN/iIyHNKFPRYWMZK1r5qzSAT6Ed8yJLqBJiR2npA6VgjlbGEYAn/q/0QDhcop
	MKzEtMOtOacnSYbAvZf3aM6g3ldYC7TlKqWHr6jhxrI9SR5VSZOuBG6PcxFBEd/V4UR9Rm9h6M7Md
	Jxjc8ql6vfl1RD85uuj0cnZ0cOZYilDnEgYutwe2WvRxwQCNjxi9k6MZXl1nIx4bLvA2dYW+NA9ua
	g01kdwJIxA3NCaImYNLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNYb-00000000qaz-2lI9;
	Mon, 30 Sep 2024 21:03:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWE-00000000qL3-3i9y;
	Mon, 30 Sep 2024 21:01:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=adqgPBGkNaW5Ii0AgpOkzS8rV7sx/ADQcVihFMjAFpc=; b=jIFCG2cUlzClgCSVfdZYWh+SpD
	P0gGIPePmH2aOv/svS3T0dm1HLJX6C5FadgEY3wE/jZJF62WNz0APbLGuqSoL64sePuhFZOulPT4Z
	DBcdQKMU2WZUxb36CrztPNCTNWHFQArETakj/KCkEb8gL7sIai1g6k7j5a5Y/iE/JwoN8oSOy4Gu4
	I+65YRgr/pnDmem9J/EJ+5aXAl3LgLieLX9oa0EHPrnmHWM3X5yjzxwYe0iajtGU/g/8zktUxq5kx
	BHRwQyHCeZtts7fU9GEK2VU3HwqFj0awypmxnVZt3WJYBUa0wndrbGxh4HYip1Rmv+Y1WtzCBbeYk
	cpTNse1A==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWD-00087h-Cv; Mon, 30 Sep 2024 23:01:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 6/8] arm64: dts: rockchip: Fix bluetooth properties on Rock960 boards
Date: Mon, 30 Sep 2024 23:01:10 +0200
Message-ID: <20240930210112.1993625-7-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_140122_946001_437BBB2D 
X-CRM114-Status: GOOD (  13.08  )
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

The expected clock-name is different (ext_clock -> extclk), so fix it
to match the binding.

Fixes: c72235c288c8 ("arm64: dts: rockchip: Add on-board WiFi/BT support for Rock960 boards")
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
index 8146f870d2bd..637088ca4c06 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
@@ -576,7 +576,7 @@ &uart0 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "extclk";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
