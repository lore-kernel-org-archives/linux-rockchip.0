Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E238C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 22:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M2H/RSIYTFSYSn/vNvv3+zQLJzXNUuQdWHQC+OYnny0=; b=YToSrWDRKirqU1
	xOVNPFSmpd1rhtnHltyxvNAmPrfosObWwZi3aErsUT7JmOrHJ1bhbEHE7NSjLoLQ+JtuEHmmDmmYK
	R91U6YN5fXzSyCuDGqCja5o7iYNtPWVDDRYnnJDJE7rhRpH3fwZ8ZMOyrJFv5NZ9dzuvWfKqziL4o
	Jsbmp69TLQy55NaCWZdLhU6p7EqELguTI68bUtCFGrjynZh9YlHpIcAx6NJELAH1OvurCn2Gqs+TL
	7afjmJE3CMjeVFdZ03Glfk4u9C3ZLiCDNYOiJMp7/b+eukE+1KTIx3RK4K2mwcizdji24gq1Rut4M
	ADNusAjQTVUuYm9H8m7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKQXR-00000006z3t-2Gi1;
	Thu, 20 Jun 2024 22:45:53 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKQXQ-00000006z3j-49Hw
	for linux-rockchip@bombadil.infradead.org;
	Thu, 20 Jun 2024 22:45:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=rqGqhpgPkwWN5Ckf2+6TVB7vCzejMjvaTLHX5mhStoA=; b=diWsawHLaElKXBNxaeBoknMA4L
	JssglkpTeY86BAc76wDL6eSzqte1tz1kOKAHPMiQ2me1LqX2JFkcjQ8jCyH9YfX6tqAWmjYTWpVzs
	Jg2nZI8Hags0ixRfj6M/1A2/7sg4teOKjI5y77aAm4nyEd+G8GtDLCkbuvOfnhaNP5pa/sy5OSssr
	95uzLAkSktHDcQKMfEC9Wwh4kp0kjcKZBg8zcSRPB6Xjmgxgpz4ZLwd+1JoDYwdFx5uw6W8/pUhKw
	PVy/dnjgLN9TxGOmoJJ5QtNdevvoarHiJ6zpi3EaoFdDGvsXP2A4FIgbxLn3DpGfL3/yOQRcdX+nO
	sP89BgkQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKQXL-00000006XjW-0YSj
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 22:45:51 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45KMigCN029151;
	Fri, 21 Jun 2024 07:44:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO 3E/3W
Date: Fri, 21 Jun 2024 07:44:35 +0900
Message-ID: <20240620224435.2752-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_234547_820740_425B850D 
X-CRM114-Status: UNSURE (   9.42  )
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

for ZERO 3E, there is no eMMC, but aliases should start at 0, so mmc0
is microSD as exception.

Fixes: 1a5c8d307c83 ("arm64: dts: rockchip: Add Radxa ZERO 3W/3E")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v3:
- fix syntax error in rk3566-radxa-zero-3e.dts
Changes in v2:
- microSD is mmc0 instead of mmc1 for ZERO 3E
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi | 4 ----
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts | 3 ++-
 3 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 623d5939d194..081be841b286 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -6,10 +6,6 @@
 #include "rk3566.dtsi"
 
 / {
-	aliases {
-		mmc0 = &sdmmc0;
-	};
-
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
index e166d66990b9..4a830eb09f0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3e.dts
@@ -10,6 +10,7 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
+		mmc0 = &sdmmc0;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
index 9bf4f464915f..f92475c59deb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
@@ -9,7 +9,8 @@ / {
 	compatible = "radxa,zero-3w", "rockchip,rk3566";
 
 	aliases {
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
 		mmc2 = &sdmmc1;
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
