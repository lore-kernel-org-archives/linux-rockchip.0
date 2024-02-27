Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 459C9C5478C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 21:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fh9BJLQMcmyoZAXdMbaocGoHe6zEeXEhi7cYNQxy5qA=; b=pw3X9b9fj0YcXb
	Ol8rTsHZV09mrEOdmQ0GK8o/ANSjc2skKO9PmpIhtKNH7Bm8UCLal0wUoTmNDG2jE5EL9lGCLZoMs
	pN9mUadAbU9Tv6kQW8pT+rBH3yZjOMcsT/Mv/wjaZt1SHna4utRGBdh3zOIyIcaTGPgVaz3AuGSm5
	0uIyA4nfVwkTdQ+bq6NE+jq3M0xYn1yapOR3Es9KW3A7c5npqxYmerqDFLCficm1oAN5fZ0MRcRyz
	JJR80T8EgnBelg+A8WU7vlgjTPfbah8doNi5GH3icm7DrR8zM3a8rYl5aNCC1IoVfbxycIhho9ORP
	bUEUONcV2q2xze8YHZWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4e9-00000006qy2-0Ied;
	Tue, 27 Feb 2024 21:05:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf4e6-00000006qx3-1Vu0;
	Tue, 27 Feb 2024 21:05:51 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf4e4-00016v-TK; Tue, 27 Feb 2024 22:05:48 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: add clock to vo1-grf syscon on rk3588
Date: Tue, 27 Feb 2024 22:05:21 +0100
Message-Id: <20240227210521.724754-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_130550_419290_B5E37960 
X-CRM114-Status: GOOD (  10.14  )
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

The VO*-general-register-files need a clock, so add the correct one.

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
This goes on top of Sebastian's series [0] cleaning up the some VO clk-
handling.

[0] https://lore.kernel.org/linux-rockchip/20240126182919.48402-4-sebastian.reichel@collabora.com

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 36b1b7acfe6a1..7e40958b5174b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -519,6 +519,7 @@ vop_grf: syscon@fd5a4000 {
 	vo1_grf: syscon@fd5a8000 {
 		compatible = "rockchip,rk3588-vo-grf", "syscon";
 		reg = <0x0 0xfd5a8000 0x0 0x100>;
+		clocks = <&cru PCLK_VO1GRF>;
 	};
 
 	php_grf: syscon@fd5b0000 {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
