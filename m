Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC97C3ABBE
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 May 2025 16:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqdTv5n5dOTbrn8glFkCQ2T+Vf5ZDaVBqM3W21uJpkE=; b=vgKtntMbuUXxDB
	K5szpSWvw5S2MO36o7wIiKgdbtuJtMgkhR6mst5r/x9SnM7KfIcc1YmQY0eFw8nPAinGIb7jNvEE9
	aqlQaGCyh5uNT+fEhW0aIuZ4edxTaV7iNx3YEEBlxzEKBJ/7iIW0Z9Il1pGxAwl9F6+MMzDPH8VVv
	/pBG6j5HB0MWyZshUVsCftTU7d4fp2XGQXZeztkmEzze6BSW2qV7NOUdSjUKseNqIf44j6aMMopH/
	bK2pgoVly2bo/Eqza7+V3ilJssQKdxzLezkaHTkYRbjCYha7Y0Pg0OuyH5+6CYc4lc9IBj4eJB55/
	I+MSrsloJ5ZquLiVQmew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD3xX-00000001GGq-3POB;
	Thu, 08 May 2025 16:18:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uD2tM-000000014hH-26Aq;
	Thu, 08 May 2025 15:10:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=QxndbpgSNr0cYULeSq6GWDTM3BOUwJ9UwSQ4i+jhzdA=; b=DILv0QjXXBSLv8Cx+7A6QTuxuA
	taKgP4VZg/pMEMJab6hT91xHA0d+FihFYxelrm21GvS0bepsf79CjT97p5iYYsT/gdP7OfHFUZkeX
	vi5a3Q3zTjzLNaxu3fL6Sy990fVh6a8t6WOajHbyIfRHmNZaRoK1ZD8rTisiDqxuwefuIwtSqmiTh
	ui6lgSuJHwOZ2bwZuQWxtqCQ1dh4P3C9q3RxTLvHBUVoPk0X+ENc18AUIa95qK0rmUvRGfi6DFz8g
	fwLu5IfmWqGeORL+0Vu/rzwtOJy1cBtiJ/wVNbrSBxs+EekvkEmSXFBGTBDAIvZz1auj3bnVsygb8
	R/m7ziGA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uD2tH-0000000G6JY-2V07;
	Thu, 08 May 2025 15:10:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QxndbpgSNr0cYULeSq6GWDTM3BOUwJ9UwSQ4i+jhzdA=; b=DPBnjYC9VvLA1k1DxrxMKjwsqd
	9XFI13phL5Pigm43MuKdoXV94t46mU7vZ6YvRGdFA9lnczL5Qx448YsXOwd4T4sYQotsLhI9vAA7/
	ew7DqZ9DMMxzU487udci9mPt7YmCR1YBpacaJQqKSXxJkFXk3p5qTjCWSe8v57uUzQuy46u0zOUZu
	dI1HKBQ8TGRaix2ozfBcb88ZEl1SzTVydmLSsw6xatnhns8Dax1n2RDYU01yltbmApM+KK6mV8d+7
	oel5qf7Fzh7p3DUd0Z6VCGGzaQ8V3uYzBoCP/PgPNGj+w85pd0YhZDCWZ7exoBP6zHr5h/m5VdV7x
	1wZZfUaw==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uD2tE-0005fP-AW; Thu, 08 May 2025 17:10:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 1/6] arm64: dts: rockchip: add basic mdio node to px30
Date: Thu,  8 May 2025 17:09:50 +0200
Message-ID: <20250508150955.1897702-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250508150955.1897702-1-heiko@sntech.de>
References: <20250508150955.1897702-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_161029_958694_3AE3F3B1 
X-CRM114-Status: GOOD (  11.71  )
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

Using snps,reset-* properties for handling the phy-reset is deprecated
and instead a real phy node should be defined that then contains the
reset-gpios handling.

To facilitate this, add the core mdio node under the px30's gmac, similar
to how the other Rockchip socs already do this.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 9137dd76e72c..feabdadfa440 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -985,6 +985,12 @@ gmac: ethernet@ff360000 {
 		resets = <&cru SRST_GMAC_A>;
 		reset-names = "stmmaceth";
 		status = "disabled";
+
+		mdio: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
 	};
 
 	sdmmc: mmc@ff370000 {
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
