Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5A97CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 08:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxhkiQjy20CBA0NWSbUO9K4/E8fw9FigIIZrex5yiJQ=; b=W9S30zkYE58Nry
	skelxUoIHyvyFuvChxkOe9PjueBU5hcGfVyHvEiD5a31gHn2CvXK87xeZTPwBmE+uja/YGMQmloZf
	TM+kolk7612jlIUAmLqGvOvCxCKiaYNyKVzP/d5Jb8pyESkPwSZ5CIXipLzFAy8PrU81aAgROqKnx
	tmHAkBhpWxDBbLN3VRYBg+Gui2vVOO3oefREA6ASmzbwCfvtuT3ClD3cTaeiwxELXHf8uxZHkUoRj
	vEMc9PsgygRacxIQoymB6clilFBJ0urneEWpurTxUb1Hn9+n2bGOOIecJUcqpw50Z2jSr5yyHyf6B
	O5t9om6lqP4ygyIVHftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0F3g-000000071nK-3XTo;
	Sun, 21 Sep 2025 08:04:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0F3V-000000071fX-1GYi;
	Sun, 21 Sep 2025 08:04:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CC4B144D65;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91E9CC19423;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758441860;
	bh=AhixuexTrd59t99WLu4pyplL2ezihsPR8JW2sbv+/SA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=Wy2xoBbVTEIsS5TeoEuyTvwUbZdZQKlSIXQPxXo2dZWY46gHH10bM+CoP7AlgJlGU
	 mox/wc52T8hyNWWnOMb32+5Rapb2F2c4GQd0mfQOyu1YWW0XZDBg2v0+kOAwZOvvlY
	 TiyQbJUW4IeLuq77BwHvtFtVbw4iIuGY3Y2v6ZCgsADDu9AhMW+Tik/VYEca3TRzgc
	 P7EGmU7XYrJ+KfjWKZTxTV2fme6YphP6QOCOeC/pxXU7Sx+n2vkTbJ/ew9M1TVKdhY
	 C+Wap4l/rVjRi9lOwIqjbGbdO8p4K3BcmLfyJkISyKSr3JkIbrVC247/CEj9D4fxEA
	 eM8GYQ9eUnq0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87682CAC5AA;
	Sun, 21 Sep 2025 08:04:20 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Sun, 21 Sep 2025 01:04:22 -0700
Subject: [PATCH v2 4/5] arm64: dts: rk3399-pinephone-pro: Add mount-matrix
 for magnetometer
MIME-Version: 1.0
Message-Id: <20250921-ppp_light_accel_mag_vol-down-v2-4-e6bcc6ca74ae@gmail.com>
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
In-Reply-To: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Rudraksha Gupta <guptarud@gmail.com>, 
 "Leonardo G. Trombetta" <lgtrombetta@gmx.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758441859; l=1257;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=qrBum6tpCbh5Y3lzHoCw8XU7jiTEUSu/XrnJwPQpgTg=;
 b=nT1qSpLmqXY3kXf2eAa35+OKQBlh5iRWQO4vaVL7iV01eONxB+4kQpEtGFWzg9/72TXS4ZKzv
 g1/JjIWOpo8BN80x3urFZK67WJF+LMFbE/0xGVJV1I57sbL0jFI4AAq
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_010421_382919_DBBF72EB 
X-CRM114-Status: GOOD (  11.47  )
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: "Leonardo G. Trombetta" <lgtrombetta@gmx.com>

After experimenting with the magnetometer on the Pinephone Pro I found
out the mount-matrix currently reported by the AF8133J driver is just
the identity matrix (no rotation), which is wrong. It would seem to me
that there is currently no `mount-matrix` info and that's why the driver
reports a trivial answer. As far as I can tell from my tests, a 90
degree clockwise rotation in the XY plane would align it properly.

Signed-off-by: Leonardo G. Trombetta <lgtrombetta@gmx.com>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 266a08540dd0fe099319ec703bb0828c8c5c2c25..0a4121b05d36c5a7e05eddbd3514a11ae4f7d3eb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -561,6 +561,11 @@ af8133j: compass@1c {
 		reset-gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
 		avdd-supply = <&vcc_3v0>;
 		dvdd-supply = <&vcc_1v8>;
+
+		mount-matrix =
+			"0", "1", "0",
+			"-1", "0", "0",
+			"0", "0", "1";
 	};
 };
 

-- 
2.51.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
