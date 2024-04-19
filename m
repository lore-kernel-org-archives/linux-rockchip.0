Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2610C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Apr 2024 10:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3urM6/OVH/E8v69WDtYBLkfvHYZt0fx1mne55bgCFg=; b=1VLMKVePxd1+O9
	D/7EEHEB3N2xoXgh6D/4ffx9t2qqXKGxabEjw1GX3DpRGqAjCJ6cgMAgM7hlyW3PRLPAF2AW0uerG
	DzOqMM70ie5RCPgmcQwu2O8br/SNxFBUMewe1xhiJO7NFLYCW8wta0WA5xiOCr3Ck4GUFZ0cyIGVX
	2mVSGtywf+0ovmDT+BNCjpY3ouvLlfvjrrCTXgvoahKzE2VOIBb4dTn/ygSOVmPdGV5WPYDsvbO2o
	2jsxSYbJkMaqWXokcvgTeH/iZi0yUL220geX0CDOAhA/awe1V2VX8nqKImGYcircxSt0Eh+jtx6WE
	xQ6IGbKorVfgo6BoitiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxlcD-00000005L25-1pLq;
	Fri, 19 Apr 2024 10:37:09 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxlcB-00000005L1T-0Wj6;
	Fri, 19 Apr 2024 10:37:08 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c01:4860:bdbf:c4be:ec53:8f46])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 1EBE77E014D;
	Fri, 19 Apr 2024 18:30:35 +0800 (CST)
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
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: correct the model name for Radxa ROCK 3A
Date: Fri, 19 Apr 2024 18:30:19 +0800
Message-Id: <20240419103019.992586-3-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240419103019.992586-1-amadeus@jmu.edu.cn>
References: <20240419103019.992586-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGUlKVhgaGUhLQk4aSk0fQlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0pBT0NNS0EZHxkdQRhPGR5BHhhOSEFDHU9NWVdZFhoPEhUdFF
	lBWU9LSFVKTU9JSklVSktLVUpCWQY+
X-HM-Tid: 0a8ef5e8729e03a2kunm1ebe77e014d
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MT46DBw6OTMXK08dSFYfP0o6
	PjEKCz1VSlVKTEpITklJTUhOQ0lPVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0pBT0NNS0EZHxkdQRhPGR5BHhhOSEFDHU9NWVdZCAFZQUlISkM3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240419_033707_441279_166709A8 
X-CRM114-Status: UNSURE (   9.03  )
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

Suggested-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index c62230308457..ebdedea15ad1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -8,7 +8,7 @@
 #include "rk3568.dtsi"
 
 / {
-	model = "Radxa ROCK3 Model A";
+	model = "Radxa ROCK 3A";
 	compatible = "radxa,rock3a", "rockchip,rk3568";
 
 	aliases {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
