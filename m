Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABEF9C27C5E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 12:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A0vXNz4iykvNxDrgQGTitXI79+CVAggxMxNtjhGzW1o=; b=gN3ojSI8WDK3dQ
	pTcF4rsyzmrsqM6ucGoBnBzylOBAudEBGsb7jZdFQWRMzHLxeWX/sarNaOaB/c3FtqafLPnYGvw3N
	vTX81ezSf3vGo8yqKzM504sRWqO3laC9f3DaWXksrz4FCbaNfY1MCy4Gz7wbx12pmND6crjOYzbVs
	wy5eNGrI1TsBFqCO96hISGCUpcKsg8NLXcOgDWeLZ8yD1UzBC5p6DVsr6TTFDwEXOUsB+GWce5AOD
	iwgk9+i1ka+tmrmY7VbSBJbJzW0HM7k9ddAG3s/ZsZCrKpLclf6h7BcpJlQw213JHPMomUmD8J5sb
	4M/AoS2gS02ybopF2XSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH0cU-00000008phG-2Fk5;
	Tue, 11 Jun 2024 12:28:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH0cS-00000008pfT-3iyi
	for linux-rockchip@bombadil.infradead.org;
	Tue, 11 Jun 2024 12:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=VfN09oPC5lUncOpd1UnDzHQqD1l4SsA1qZE9bXW2/Qw=; b=OBxIW3qSepgKC1CC1/c9SKdjbz
	ysXQW0ZSp4/D94QSnS+lHJiKYUFBa31mHdjClk2OJ51zLljI8cSTO5q9HLPkrLkJu5c9aOMqCbNYS
	qLynY2io7aZJeJ7S+Y7naXOoIJbkugiHlEG0oFTmBL/inl8gTMHXiYyn8UZQwZuS4hv7mpuFGt5ip
	YFrnyx0iayYODpOGuBTv1ZQWkNN4MOH2ZjkbjHmtHsY5751KO6aM2qL4vTZGRpYLHKtLUUj8XBbey
	UpWCdeK26za+XcO61ybWr4bAHDafjWf0TbqtIs5IaL2iQwdNKqq6GDV4XPFdgrOnIFc/kF0/Vfx4t
	ZbOmD8hw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH0cJ-0000000A6Y3-2fqv
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 12:28:55 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45BCSHA9028451;
	Tue, 11 Jun 2024 21:28:17 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
Date: Tue, 11 Jun 2024 21:27:46 +0900
Message-ID: <20240611122746.751-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_132848_185129_7FF04587 
X-CRM114-Status: UNSURE (   6.18  )
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

to make "poweroff" command work, add "system-power-controller;" into
pmic@0. without this, "poweroff" works as same as "reboot".

Fixes: 75fdcbc8f4c1 ("arm64: dts: rockchip: add PMIC to rock-5a")

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index b070955627be..cf7b878a3eb2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -395,6 +395,8 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		spi-max-frequency = <1000000>;
 
+		system-power-controller;
+
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
 		vcc3-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
