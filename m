Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7503C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 23:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GQdmaHtekbPDXbWRckJyFkhLiBI6GVO328RvhR0Jvqw=; b=mqCctNsprBEYEd
	c6hM6HRQU4AcWmtQvvg4SbVC98NtztFi0nX2u7lQ0nkBjT3I+2d25CGbkQSgjiTD1TxZ5uttGE1vz
	d5FFXvqvaKBrd6ek+PFjazVI4D8NKQmsYgMit0u7AKf+3p1wTS1Xu4Tj4XAMATMy9bs+U+SiMU8BE
	b8ff7t38/qJLu10C5GughDCoUTICrCXCVHfcbz2eBbh3/vELTIJwYc99kPFEghIfAmklQsAE8LIiH
	Hautpo6ZIL/mtNXgnQdUew/TZ0SJDI659qVncdNBuN54H4vWdOm28yjCMiyYtuTdz99pmWvf0tJDO
	ZaWP42Q02C4Cw5peUNAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK4j7-000000031Or-1hXK;
	Wed, 19 Jun 2024 23:28:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK4j5-000000031Oh-3lVl
	for linux-rockchip@bombadil.infradead.org;
	Wed, 19 Jun 2024 23:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=4jzmMEOAmQ025hlZkzhGkRe6PcVxO5BnDiCtdinkfNg=; b=QjfVAfdHXjyzyfPTmbakCYgO+X
	vUTmPaQ9pnab/dP2h7lYhuImVgRD74DeO2pP3Nvb0Hvxk1RR0GtAlJNtVxGdY7R7uJwYD4WE1eTAY
	2zISJOwyDF7nzXwFOKDw8XbYtQjvyTDz2R0Sd4tuEKI7FO8gxVdFB/Mw6prxP7bIy4CuCK5TQn1Ka
	MQdxnUDfoNhjMbib5gvl03CBQiMd/O+h9lmXUz9fgMVia+imHWWf3F1dXtZvjiX278cO9nR98gWAc
	huxCDKk0GHhxUV2vh/erK5vwPRYWH+KE2o/0YoeJUTzpzhrO7RTBIqw94xQoqYlyjKRZueU+0jR53
	rkeMdMTQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK4j0-00000005IpJ-0fuK
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Jun 2024 23:28:26 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45JNRgmD026016;
	Thu, 20 Jun 2024 08:27:43 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Thu, 20 Jun 2024 08:27:34 +0900
Message-ID: <20240619232734.1126-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_002822_738571_16545CF3 
X-CRM114-Status: UNSURE (   8.53  )
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

align with other Radxa products.

- mmc0 is eMMC
- mmc1 is microSD

Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 623d5939d194..85d76d535338 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -7,7 +7,7 @@
 
 / {
 	aliases {
-		mmc0 = &sdmmc0;
+		mmc1 = &sdmmc0;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
index 9bf4f464915f..188147c4b78b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
@@ -9,7 +9,7 @@ / {
 	compatible = "radxa,zero-3w", "rockchip,rk3566";
 
 	aliases {
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
 		mmc2 = &sdmmc1;
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
