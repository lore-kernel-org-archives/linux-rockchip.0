Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D731E77182
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVCtoZYmj9E7M+cU2nbz+tgCW5g7rCMM2/5OSPrQNOg=; b=kuD3DioXUWBUp/
	AqV6CRdh6tjx+7Z0S/IrYWT/21HnKA3exjkL6Uy0usRfth4FP0KunlzCzMe6JnYo1mEb7zSi6N0dU
	ZfgAqptqboM6n0NpmEglzwc8xY0+ot4TGwE3xSzQ9hnJF+Ffrq/GJlccjAQlK9enbwXU6NHdyxg8e
	Kt5Fk8nGN1+FN/FIW9unscXII/KOdtMDHbWJCAGCYd2mQClbDS8vmIFdI6I7Mq48qAYzPtK3hP42M
	2lWBJOCj3tJU583d7yCbrXDLFV4yD18/qb/AXV386V5/adzZxpuKgaYCEC0Qkl3B1VGMcYRLEkZQN
	rg5+4mmfh7AVCMY7UZ+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdYT-00000007tvs-2V2b;
	Mon, 09 Dec 2024 13:12:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdFW-00000007nfg-2QJc
	for linux-rockchip@bombadil.infradead.org;
	Mon, 09 Dec 2024 12:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=32MpsBP5US0cPMXC5YokGTc8gsLTML6ZdfqYKqfAj8U=; b=BYHwPFMG63jM2qQWc/IZpCl8XQ
	+/C+KBSBJrPVvrzkMf91ozCfqhqGUDs6ZKyN1DQUcTu4F5Ds5jHMCpAo9TaV03AAUIvcxRZToi58K
	rMdjz2QbPJsaK8O1lHUtDogavt1AhUsUUx8M1gDsQN8DF01AdyDwCQOtR/jxsfS2JXw/eiJa4b+vH
	p0qm+42feuMQeIxwKCJOQr7RKNY+3BMejU/0tlOPSV/DXRiqVCEXFfBJIhsRgWOPv//cMsTlhvRJP
	e7ntDZQGXkc+2YZEgSxoxdzlkxV5Z8ik5Wsu1oz/fO1OOmyvVRU+MboDddIOLFLoQyz1NFhpG6lDY
	ZRuWFh/w==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdFR-000000025xi-01nq
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 12:52:29 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ1031943;
	Mon, 9 Dec 2024 21:51:46 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 01/12] arm64: dts: rockchip: change function name for blue LED for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:20 +0000
Message-ID: <20241209125131.4101-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_125225_560194_4B066EA5 
X-CRM114-Status: UNSURE (   8.15  )
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

since Radxa ROCK 5C is updated version of Radxa ROCK 5A, everything
should be compatible as much as possible.

change function for blue LED from HEARTBEAT to STATUS.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4
- new
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 9b14d5383cdc..23e9b447b6f0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -62,7 +62,7 @@ led-0 {
 		led-1 {
 			color = <LED_COLOR_ID_BLUE>;
 			default-state = "on";
-			function = LED_FUNCTION_HEARTBEAT;
+			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 		};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
