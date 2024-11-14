Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C05AD41C00
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 03:46:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+Qac1gQe5dMG/aGVSOElAArawVlaRsbbSdX+qbOm4M=; b=2H1K0virJw2g1z
	AJtG+BdSApmTUeVOumXCAugS18T0leFRBxRjtqNv5pRKd35VxRTUnnP1KzaSoA5DcQ3LIOB8UNN8i
	qyGhZnRCWVFYfu0pqnbDTiWKgvIoBqbe4z5aV7L2NqxOC17BYljCN8XrnU10ODHC0jCutK0OZE9Pe
	EuP8PSvqSF9flcNhyiGD8K1koN8BsWOXGskXPopxfpcQuHcohvliu5r034NwIPDhueb8hFY6zZR/R
	LndhHGC0b2qtGmrnvs3pMa3bEbnde7p+IC8U9ndrGzGm13s6FKA3yyLSxeX097TlOxEbiXGBXE/oI
	K1FI51iODlezy5jhGteQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBQoT-00000008hVs-1UrM;
	Thu, 14 Nov 2024 03:46:33 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBQoR-00000008hVZ-2Ewl
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Nov 2024 03:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hdufFE94RaXAwW55VjUenYZike0K/Zro4T5q6HLtF/E=; b=ceLV1RdcK+03WRovkUfys5g+6q
	qZzeu89RtFmsK50/OxHpx5P8X+5ing80l0iPJ86YDEIpGhvdBo/N+x8hct+o9iD+bL77RWfdwxeFe
	PVhCVj+NvesBFFfSsjCoCQdDp6REIsNWa4upKClSy4CilV5rndav04a+Z3+UsZJYZn+XjOafZbH7o
	jwHruAzdc4lizje8/mUO2CKhxdJcwkt8dWrhUs9Fu1VjPqeZK+NtHPjptCNYm7BpXcYl7/iybRoD9
	UE38SIjwJ13IZnqb6IHKEgPzNa8WSG/kwLOAU6acepv0KknibY9oQ+0VYKUcT8ZAW5WOC6C8BuIdJ
	DZhpcN3A==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBQoN-0000000HSzL-1SuG
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 03:46:30 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE3jqu2029588;
	Thu, 14 Nov 2024 12:45:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] arm64: dts: rockchip: add "dcin" regulator for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 03:45:43 +0000
Message-ID: <20241114034545.6440-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114034545.6440-1-naoki@radxa.com>
References: <20241114034545.6440-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_034627_990268_50E96533 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

add "dcin" label to vcc5v_dcin regulator and use it in vcc_sysin
regulator.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9f4779b9f3e7..1c826827ac69 100644
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
