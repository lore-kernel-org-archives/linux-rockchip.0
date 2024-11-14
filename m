Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B943D637DA
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Nov 2024 02:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EMF88ub8WuUUOPgOtDz8fdMhP0Scb7SPQ+7vOl4TCM=; b=Mtdu3PvGiOid5L
	PCnvEg6QyU0AYt5tdCjqyCBI7JWKQWfFs2gnQuUYyfpnFUuaA/yx5CYyzWBTkHp6AUNIU8kQUfZuw
	PYzd9n5J1gfKRHBQY4RqYU6zijbw5H1B9Vo8cQkERvpCH4b8rvf2j/rPkVhpOkX0QVE7NMLHJG0U1
	sDID8krik4MXds/D3+X7e4Wa8azoQ51Nn/2X/P2Jxe9/MXjI1Pqpa+odhZLOFo6U4d1ybegterD9G
	OsXZcvmKeNvezegVforOA2cSWSlU/Ks8OYqb9HDaX5SFCeyRW6V+iXYuiIRcsFWufKzPjBIw1nfVS
	8T89GEULUhkzhSkJxPfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPlu-00000008ZtX-1tRL;
	Thu, 14 Nov 2024 02:39:50 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPkg-00000008ZnK-3SHd
	for linux-rockchip@bombadil.infradead.org;
	Thu, 14 Nov 2024 02:38:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=xjB1vCm+lPjaQMRAsdEEPmLbHJ5xIzmJli2fD2ssEaA=; b=duPuCjWoRrWZCChQtbwbpez/vl
	6G2VhI+kx9rsxCojIgoA+PmtO4nXjzu+Cu0LbEu1RMKD29I19BDFCIzU669ZeMukqv9trzfp/QmPX
	hCpnVAxR9YKICGmTqw3aEmBsrWT6YIGYqmj5OIlAMNVm+hEL1Cs5E+2ClcgY3dimJSi3NgIy8McVK
	M5FL8fzn86/ccph3bxIw7ptb3Q0Os4MbV9gv0t2Dj9g/GPdU6zp5C1gt7R5yUIHdSjokTAZfL0VKU
	RvqvTx1Mnjet7kEu6RckQbNk2Z22xDu3XOIaKsu4q1wpDzmiLESBk5eXwnZq9XI+N+1dmLYI8O9wI
	nGUuvz9w==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBPkb-0000000HLk6-4Bvf
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Nov 2024 02:38:33 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AE2bplo029356;
	Thu, 14 Nov 2024 11:37:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 2/9] arm64: dts: rockchip: add cd-gpios for sdmmc for Radxa ROCK 5C
Date: Thu, 14 Nov 2024 02:37:39 +0000
Message-ID: <20241114023746.4867-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241114023746.4867-1-naoki@radxa.com>
References: <20241114023746.4867-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241114_023830_590461_83008DBB 
X-CRM114-Status: UNSURE (   6.93  )
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

by discussion about cd-gpios and sdmmmc_det pin function[1], it's
better to add cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/4920950.GXAFRqVoOG@diego/T/#u

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 997e95bb5b74..3eed50253442 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -501,6 +501,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-sdio;
 	no-mmc;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
