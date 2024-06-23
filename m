Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01497C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 12:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OknBwZPBFTzK7GkxnrTZkEEezNWqMayNNnchLESS27Q=; b=lC5EEkOTetBXW6
	QV1dpjBd1e8qgi7WrVswCCypehzYtmpIJsSG5OiskvJJwJKLyAql23hMffo196nHF4KIqFSIrCiyJ
	VxGxqIf36J0aHtLv0z0P15gB9+1H9oS6GIvmr+sjPcB/Um5/EbbEfnjyBbjMxrFtCFFE85tO3fjwP
	ZoW/vrEuPJvdXF3v3K6K38EOF6HPbsP6X5uRPUwQgK+1eQTRH1tAg8BAmoOPGbOvXxS4mX+qX6EPo
	txNTafirte/Wza8nXC97aRtQkj1D3Yo1yXvjdtkeBLhIgUwBsRbHcKNmYk/7tlPEfv5b4JrgsG8bz
	xr5F6rfms/odaF/wNbpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLyl-0000000DwNY-38hk;
	Sun, 23 Jun 2024 12:05:55 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLyj-0000000DwNG-2g2H
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 12:05:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=52qwx2tWBwF1+IirwoASIL1Y9D8Goz+vNouVspU4Smo=; b=LLTGv1HQONwuTBql8KECLlbBAB
	c2L6H9CtTQXtJGbwIFadiJMfMtjQrfskpjIlhe/05XH/OCnA12SZsqArHMuhskjbluGQFeoU8Kt1L
	jeaWdzabmlkRPcHBNgSRVeDyB/3hCa9Dy9JShzvPVx9paJ7T++gh8K9lKAi001obfieWAXtcglfU6
	oEZnTlyRArRXgVnGNzmg9mhMKSQ4H7JDWlzQkoZKgZ5c81IiuvD5LXfu6PSru6CWPtr8Vm1zMhWqV
	tskYsuyEnTk8EXSqopJCf/1KtjLgNtOS0QPBHIO4Xwu1os0DPYNFr3ZSpwlhWjammEoFjsqNLgW9g
	cQDYW5HQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLLye-000000095W3-0BTn
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 12:05:52 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NC0fJB006059;
	Sun, 23 Jun 2024 21:00:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: prepare common .dtsi for Radxa ROCK Pi E
Date: Sun, 23 Jun 2024 21:00:15 +0900
Message-ID: <20240623120016.82990-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623120016.82990-1-naoki@radxa.com>
References: <20240623120016.82990-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_130548_585082_E8070862 
X-CRM114-Status: UNSURE (   4.89  )
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

Radxa ROCK Pi E v1.2x and ROCK Pi E v3.0 share most of their parts.
prepare rk3328-rock-pi-e-base.dtsi as a common dtsi for both boards.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../{rk3328-rock-pi-e.dts => rk3328-rock-pi-e-base.dtsi}       | 3 ---
 1 file changed, 3 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3328-rock-pi-e.dts => rk3328-rock-pi-e-base.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
similarity index 99%
rename from arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
rename to arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
index a608a219543e..b2c5089ad2f8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-base.dtsi
@@ -17,9 +17,6 @@
 #include "rk3328.dtsi"
 
 / {
-	model = "Radxa ROCK Pi E";
-	compatible = "radxa,rockpi-e", "rockchip,rk3328";
-
 	aliases {
 		ethernet0 = &gmac2io;
 		ethernet1 = &gmac2phy;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
