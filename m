Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE78E7716B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Dec 2024 04:55:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Xy4oKeufvj4GSKrPwM3oMIC/6c6KCXYmdjupt7nRaM=; b=YslxINRmq0qO9Y
	kwohWusgRKl5WKIncTmtdxJ+2MgxnOIxh+6LW8p8h0d+XLSZmXacm7HaXBdfKTirvsOL95U0MHW/f
	paoyoEmKZz4VnXA4HlSoPdur8GCvRRyredWshcoctmyFX1bPab5EClua63pzKnUcXKFtMPUixk1og
	Ehu+zLelBQKAeCyyijfOGL+lu1ya0LwGEj0qdJkT0f6+gm3MTG/IdSoqUBkV5Tulo/uUf7AqpmMS+
	9zM32Mb0vvw4wc/dvT7UhlYz3fFVwASRwh/6ov0Iw+xGx9GhqD6BD3/wuXAAfkb2th4NGY1ktXMVn
	bpjYQ9N+Ahgnj2cO5OgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhPu-0000000BU6y-2rnt;
	Wed, 04 Dec 2024 04:55:14 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tIhPr-0000000BU68-0GLR
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Dec 2024 04:55:13 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B44sq0m009553;
	Wed, 4 Dec 2024 13:54:53 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix cooling-levels in pwm-fan for Radxa ROCK 5A/5C
Date: Wed,  4 Dec 2024 04:54:47 +0000
Message-ID: <20241204045447.1036-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241204045447.1036-1-naoki@radxa.com>
References: <20241204045447.1036-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241203_205511_327541_3360B9D3 
X-CRM114-Status: UNSURE (   9.61  )
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

fan behavior is better than current configuration.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
index a1cac40d439e..472b41f0d47f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
@@ -36,7 +36,7 @@ analog-sound {
 	fan: fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
-		cooling-levels = <0 64 128 192 255>;
+		cooling-levels = <0 120 150 180 210 240 255>;
 		fan-supply = <&vcc_5v0>;
 		pwms = <&pwm3 0 60000 0>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
