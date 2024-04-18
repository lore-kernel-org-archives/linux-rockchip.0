Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C2BEC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 13:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJOWKNxxlPdZ8pa7LwUYLjTIUgKMpsz/uTgbHet5wYk=; b=eyxdYEcg56URK7
	N7Xy3+nhv6z2kojLC0+08NX9FqPVCVeqiYySKlCyck0X8SOcA5rrf1NYnqpF2+BFTefAHnp0cRE5g
	Dhom58EwWxN651z36Bq/S1ZCmuliDyemgnJgKt5V0poSEm4zeKe9lyV/OPM8X2qEiNJQ7T/9lUYEM
	WDtOB9t3FRGDEqGBRuMtD/iL95WKpu7mm2KjSpxLuMb3FMUNTnwg1eq1XdPsFHFoHrGiUEQqFJLtM
	tfHPvkMokhVGCYHTZT6pVxqOl555lpWAlkkZiTRT0shzz7fgrVYNqJfl7nNRdH4HKeFks2bs8KEII
	mSNakeIJaSpJKDkVMT9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxROn-00000002I1t-3aqf;
	Thu, 18 Apr 2024 13:01:57 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxROe-00000002Hws-2BrN;
	Thu, 18 Apr 2024 13:01:55 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:5e10:18fd:e06e:24de:a3c9])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 958F67E0179;
	Thu, 18 Apr 2024 21:01:27 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: correct the model name for Radxa ROCK 3A
Date: Thu, 18 Apr 2024 21:01:20 +0800
Message-Id: <20240418130120.67663-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240418130120.67663-1-amadeus@jmu.edu.cn>
References: <20240418130120.67663-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkZTktIVk0YS04eTxpNSksfSVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0tBTh5KS0FKQx0fQR5LTR5BSU8fHkEaSBhCWVdZFhoPEhUdFF
	lBWU9LSFVKTU9JSklVSktLVUpCWQY+
X-HM-Tid: 0a8ef14c37a403a2kunm958f67e0179
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTo6Vio4DTMOEUoJDCNDUT4P
	GCkaCz1VSlVKTEpIT09OSUNDSkpCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTh5KS0FKQx0fQR5LTR5BSU8fHkEaSBhCWVdZCAFZQUlISk43Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_060148_767270_8AFCC01A 
X-CRM114-Status: UNSURE (   9.73  )
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

According to https://radxa.com/products/rock3/3a,
the name of this board should be "Radxa ROCK 3A".
Also update compatible to match the model name.

Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index c62230308457..e859c075bd46 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -8,8 +8,8 @@
 #include "rk3568.dtsi"
 
 / {
-	model = "Radxa ROCK3 Model A";
-	compatible = "radxa,rock3a", "rockchip,rk3568";
+	model = "Radxa ROCK 3A";
+	compatible = "radxa,rock-3a", "rockchip,rk3568";
 
 	aliases {
 		ethernet0 = &gmac1;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
