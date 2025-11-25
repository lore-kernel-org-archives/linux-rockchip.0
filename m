Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83BBACFD377
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 03:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EtoMwsriQgEO9deCa4ZIwdpYelgqFdAzi+wTBT9c9bc=; b=3K7xJkJ6rG5egs
	ClD2GQPpr3UJzswuNgi+aZpJwDlL/tz+4GRPoKbG+seDroNAfUli4SfqF8pnoxY66HTzzRcd0Cd0h
	PJ4ACNUpyuqc/LpkR4FHsiyOAWJ3Vx/dC2mX2m5J3DtjLGswwvhxSHO67vSjGDW+Ln1eNlLR7aQFa
	ooylhBTzTd5c59ZAT6Tvs3YT4PTgkULUWjh5U5MAL57LXMzJnzWxgDOhVb9H+l7dzQGNy/ZQtk0Xa
	oOs2JtIlJ7XdkU17D8t70ZrC8uuyj+8WM3WTgahsC75wccnZqOtRPFjgV3FEvWqGlVAyDRWJVGOyO
	h2zmG2FKMPhkc1zZBz5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk1H-0000000ChHv-2zXE;
	Tue, 25 Nov 2025 03:47:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk18-0000000ChCB-2v3D;
	Tue, 25 Nov 2025 03:47:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B897E44444;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93C5EC19421;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764042421;
	bh=U2sKGfrG1AuXfw/WKYwLvQsUXr5m8ldv6cClmddJY0w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=quWUt6dYC5b3SpWV9Rye7QkchNc+YUPh0c07GZa6QaIChSx+yKRnghUkDylLw3CY2
	 GxvxziRFCaI7e7ciC0TOlO/ux7iVCdLH6hcdkZtbGVoR2yxlTFRwZiSElB8z8abPSA
	 ztJVURMqyMexZQtovSdr+jXwk7A0sup7hFOJxITs8LTmR6WMXqAr3srfUStRn9sNBr
	 8TYqNbXGtI/iFMoVd7zsxzkg/YLcOd1RQsOKHqTbiCu3XG38tqbG68RIPGMTmJuydR
	 G1YvuU5ChwnRNCxbcz8F2CgSTQuvVJCPgbVggnEMQ+/EeW9o/xEzoMf6G/OG5P7GlM
	 Ajr3zj6sqQsVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BD3ECFD370;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 24 Nov 2025 19:47:03 -0800
Subject: [PATCH v5 4/4] arm64: dts: rockchip: Fix voltage threshold for
 volume keys for Pinephone Pro
MIME-Version: 1.0
Message-Id: <20251124-ppp_light_accel_mag_vol-down-v5-4-f9a10a0a50eb@gmail.com>
References: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
In-Reply-To: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>, 
 Ondrej Jirman <megi@xff.cz>, Pavel Machek <pavel@ucw.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764042420; l=1551;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=8q5u/rrJlx+VcAI9BxZ+DVAqqoWsJx3wKRY3rg0cQgg=;
 b=5gNGjBiWQzw+Cia1/yrUL22IXp/WlWSV5+18Ip8iwkRCq8OzW9u5aVpnA8oMATmi3zDk8EYum
 FxWAeo9EsGXB2vf3+jyx5RVRoYyMrBeFOndSq6t47IXjeuNAi18CpJ6
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_194702_794600_C41A97CB 
X-CRM114-Status: GOOD (  12.25  )
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

From: Ondrej Jirman <megi@xff.cz>

Previously sometimes pressing the volume-down button would register as
a volume-up button. Match the thresholds as shown in the Pinephone Pro
schematic.

Tests:

~ $ evtest
    // Mashed the volume down ~100 times with varying intensity
    Event: time xxx, type 1 (EV_KEY), code 114 (KEY_VOLUMEDOWN), value 1
    Event: time xxx, type 1 (EV_KEY), code 114 (KEY_VOLUMEDOWN), value 0
    // Mashed the volume up ~100 times with varying intensity
    Event: time xxx, type 1 (EV_KEY), code 115 (KEY_VOLUMEUP), value 1
    Event: time xxx, type 1 (EV_KEY), code 115 (KEY_VOLUMEUP), value 0

Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 03721d71766c..5de08a155d10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -40,13 +40,13 @@ adc-keys {
 		button-up {
 			label = "Volume Up";
 			linux,code = <KEY_VOLUMEUP>;
-			press-threshold-microvolt = <100000>;
+			press-threshold-microvolt = <2000>;
 		};
 
 		button-down {
 			label = "Volume Down";
 			linux,code = <KEY_VOLUMEDOWN>;
-			press-threshold-microvolt = <600000>;
+			press-threshold-microvolt = <300000>;
 		};
 	};
 

-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
