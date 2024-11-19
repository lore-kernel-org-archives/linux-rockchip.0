Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B084BD60D1B
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 10:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c7ynpOZQ6q8vInzW7KRZzng8CChem3mAmB6PUJ4AeDk=; b=DJlSa6Z3+Ame9+
	LBDQ7cidnHfJtMKJxyAm7HQVuFaJbMcgAhnXkzEEMgdNfi9jb6jb3Z3e83AuWRQD9CEDSsbKoE5Io
	U3nlT2uCxyT6/3RwzxUWiysltEu0Pvtl1GSgkDAqfCASD7Pjy5pC4b+fhUhFVtx09yBYsT+ETDN2S
	R39k+nYKQBEqX6Ocy8RdfsaallUPfxiXjtqOGqKC9TzcpOHXmlmGcMfpOhZL9ZVWmJEBHQUo5uhlf
	itLjpiqupoaBI2/orUnzA6thAm2achFbmpuj8wkoY8MeKpL1yedWUEO8Igh8FznCKdG9rBDlm+3mf
	TR2S1kW722wqrP6Dnpkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDLAf-0000000BzVr-2oor;
	Tue, 19 Nov 2024 10:09:21 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDL9p-0000000BzNa-3y5Z
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Nov 2024 10:08:31 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJA8IPu016159;
	Tue, 19 Nov 2024 19:08:19 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2 1/3] arm64: dts: rockchip: add "dcin" regulator for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 10:08:11 +0000
Message-ID: <20241119100813.78820-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_020830_194793_A81F88CD 
X-CRM114-Status: UNSURE (   8.83  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, cfsworks@gmail.com, kever.yang@rock-chips.com, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
regulator.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 6da13b6b9a7b..b5460c179ef7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -88,7 +88,7 @@ vcc3v3_pcie2x1l2: regulator-vcc3v3_pcie2x1l2 {
 		vin-supply = <&vcc_sysin>;
 	};
 
-	vcc5v_dcin: regulator-vcc5v-dcin {
+	vcc5v_dcin: dcin: regulator-vcc5v-dcin {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v_dcin";
 		regulator-always-on;
@@ -170,7 +170,7 @@ vcc_sysin: regulator-vcc-sysin {
 		regulator-boot-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v_dcin>;
+		vin-supply = <&dcin>;
 	};
 
 	vcca: regulator-vcca {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
