Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FC3BCCFA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 03:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3yhXiq0/6ZtsLHPiimRtzE+pIQ2C856uCsjtZQIccs=; b=KMTB13uBUoXXza
	+FBSA+i2xJxc89o0+F3o0Q+GqM0Gmy8d3dQmukTGXBa01LC4z78BpmckCUlce9K4ih+zR9Ml84X6c
	DLaa1WAYwiBWGmDmNvQHbNl6Mf1HoCFGGLyW/Wp1Kg/VbuL8DIqdOnjh4Ohj6tZiYAChBi7Y18MnO
	OjUtBgkL7SFRTsVZ7Lfiz4uEVLoK0Eo4/tw7WZkCZinXwnevjfqCkepoq6QNyQecElthplEL2Wt+d
	JK9t3TaLn39IRtxMGnGLZ7t8QdwnNYQpEE2hkwNLcu/8C8J0WVcaf+9uwah+kBnhNSDnKmbKk3f4V
	+GBVh4hCX+xbu7vW48VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIJ04-00000004flj-0vQs;
	Mon, 10 Nov 2025 03:55:28 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIJ00-00000004fkX-1R0n
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 03:55:26 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AA3t1OU017086;
	Mon, 10 Nov 2025 12:55:06 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        jbx6244@gmail.com, pbrobinson@gmail.com, kylepzak@projectinitiative.io,
        damon.ding@rock-chips.com, sebastian.reichel@collabora.com,
        amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Make eeprom read-only for Radxa ROCK 5A
Date: Mon, 10 Nov 2025 03:54:55 +0000
Message-ID: <20251110035455.839863-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251110035455.839863-1-naoki@radxa.com>
References: <20251110035455.839863-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_195525_014298_7654800E 
X-CRM114-Status: UNSURE (   6.58  )
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

Make EEPROM read-only as it may contain factory-programmed
board-specific data.

Fixes: 89c880808cff8 ("arm64: dts: rockchip: add I2C EEPROM to rock-5a")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 19a08f7794e67..ae7b03488c9e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -254,6 +254,7 @@ eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
 		pagesize = <16>;
+		read-only;
 	};
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
