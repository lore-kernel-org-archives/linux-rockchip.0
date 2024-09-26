Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49B17CDE009
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 13:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpUJ7HyrZ0hoPLG88UHTs6pcZFzirHZoIq79Ta6TNSo=; b=rXUgRNnTyCc7ta
	1BY4xmT5TMUsWyG3Cvvosq+u6Y7VVzNvPQOo/NMapgEfs/qQtGGvPne4W8BbXaMsv1DX9oDOusKA3
	qm6MdMFU3aLUql69JMuw2DpkPSoddWSzZa3y1m1ZRcCXhicJOsEdxlmJTZr7V1cyms603HPA+CZxI
	OldbsmqUGBPurFMfz+D/2wcPk/I8LifxkboepuhPiQuDt5H2riP8VtINd2zKqUjXGRovS2MGKMVTL
	62lt7nB5jtOii+IJ55YPIkUYHog+zezPbTSnRuPZ6tP9NvXutYgOfkGlnNnClHEzJOt5YJh+a+bYc
	38nXKRfqP+GzGQGIWODw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1storY-00000008Uu6-1ACG;
	Thu, 26 Sep 2024 13:48:56 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1storT-00000008Urh-0uFB
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Sep 2024 13:48:53 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed80:7bd9:a854:38c6:ce04])
	by xavier.telenet-ops.be with cmsmtp
	id H1oj2D0013fTnLU011ojmy; Thu, 26 Sep 2024 15:48:45 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storF-000bca-Qr;
	Thu, 26 Sep 2024 15:48:42 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1storK-001yEg-QI;
	Thu, 26 Sep 2024 15:48:42 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Jacob Chen <jacob-chen@iotwrt.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3399-eaidk-610: Fix rt5651 compatible value
Date: Thu, 26 Sep 2024 15:48:40 +0200
Message-Id: <a9877b8b1bd0de279d2ec8294d5be14587203a82.1727358193.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1727358193.git.geert+renesas@glider.be>
References: <cover.1727358193.git.geert+renesas@glider.be>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_064851_616941_E43F17AA 
X-CRM114-Status: GOOD (  10.61  )
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

There are no DT bindings and driver support for a "rockchip,rt5651"
codec.  Replace "rockchip,rt5651" by "realtek,rt5651", which matches the
"simple-audio-card,name" property in the "rt5651-sound" node.

Fixes: 904f983256fdd24b ("arm64: dts: rockchip: Add dts for a rk3399 based board EAIDK-610")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
index 1489eb32e266a748..4feb78797982baa5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
@@ -541,7 +541,7 @@ &i2c1 {
 	status = "okay";
 
 	rt5651: audio-codec@1a {
-		compatible = "rockchip,rt5651";
+		compatible = "realtek,rt5651";
 		reg = <0x1a>;
 		clocks = <&cru SCLK_I2S_8CH_OUT>;
 		clock-names = "mclk";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
