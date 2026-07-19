Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AFDCC4451B
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jul 2026 16:06:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tb8uouUmaKqefazr/4JUzQ8/v70tHu2IpScMeFv8mkI=; b=ow/+jl33DFmiZO
	iUDPecVMBc8ChYNill6NscuuiICxUILpJJwdIaTwByKFNbBSVlWqNYaJJW5cB0N+FGOd1rBkdx8Pu
	MsVxsDrx0L4a8UEIX7UtMkAOGUn9ERVc3lQDU0ODTjxNKYWHZRl1E/eqeV9zPNbK+q8JuUHISyZSI
	5HfxG0J2Eu55zNHYRMCX0O5Bep9I1Wmzl+IsTGHzYMWz67cyViQTwD9YflDY1QVUtTYo3Ry8jVd8A
	WiIgzosoGy0ZHgGZIPoFbwbL4pfTDEdsVfxN/S9eEMvOG9IwsUiaCgtZKNl5Bv64MmamDUj75ai6V
	iIZJiahX6B/hmnOabCVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlU1f-000000058u7-30CS;
	Sun, 19 Jul 2026 16:05:59 +0000
Received: from mx0.gmx.wtf ([203.137.112.168])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlU1d-000000058th-15pb
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jul 2026 16:05:58 +0000
Date: Sun, 19 Jul 2026 18:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=vicb.net;
	s=f747d04263f05989; t=1784477146;
	bh=H2L0XwexQTLFwFIN1aMrdC2PYPHb+Q6wCLspbhgSNPY=;
	h=Date:From:To:Subject:From;
	b=M9VoFfaNZ6WWq5eFh++yubo2HQwK679uc7UkUqilrIeybYLyEilavjmY+kinBO/RE
	 1XM299z1BPWVI1NJD8UTZnZ63Id3HbtX8D8j5SnKk/T6twqMHQBcdgQ4Ee/6u9mFM8
	 FFzoUjn9crRmfxlDAX0N1TDw8zdLRti0JTSrTUj7NzoCAtBp9KUeSRoWk6RRi1CzWn
	 MyE9xFjJFe3XxzUYiU4F9qFOOuTeAKh8Q1i7FTCI9nAttofW8HMO4VFwmbvwWpTVE2
	 MAGgAsAP1ZCZV5bNBezg6UQzjdxToR1RN1DfhAIt71sXqKWe7MTsXgKLR1qn2uBCU0
	 JTaIgeuNc2VBQ==
From: Vic B <linux@vicb.net>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>
Subject: [PATCH] arm64: dts: rockchip: fix label of sys_led for nanopi-r4s
Message-ID: <alz112qGhm77liqi@vicb.net>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_090557_421603_5C0542EA 
X-CRM114-Status: GOOD (  11.30  )
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

The sys_led of NanoPi R4S is labeled as SYS on the board and on the
original case, and it is green, not red.

The board also has a red power led, but that one is connected to 3V3
and cannot be controled via GPIO.

The above can checked on page 17 of board's schematics at
https://wiki.friendlyelec.com/wiki/images/0/06/NanoPi-R4S-1GB-2008-Schematic.pdf

This patch changes the label for sys_led from red:power to green:sys.

Signed-off-by: Vic B <linux@vicb.net>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index 4274d1b6e80a..6fbc76e2e679 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -31,7 +31,7 @@ lan_led: led-lan {
 
 		sys_led: led-sys {
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
-			label = "red:power";
+			label = "green:sys";
 			default-state = "on";
 		};
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
