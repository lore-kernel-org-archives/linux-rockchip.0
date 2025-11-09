Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88D54CD13DF
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Nov 2025 14:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6+zw6UaPlq3JHnKzU+ze6zUCKS8rEGH4FISoZRJDww=; b=oMbOdC7tSlzAOw
	vPQ3egJHCbODjflhF1peEResNZvM/dlumBzf7AoVtKoSXmLWL1Bum1eBswapjsxJK7ZWUKXi6bCYk
	WaRs0xEZJKf1nSqjjRmdrbwR9+5Pf62KIyW3hC4MlFnvM0e7gEpfTHdnfP1xZlOkm5C9pt6Sspjyl
	J59UQTQMYzW3wFB4qXEMHSQQnKWC/b3jCUoS4ihiMaJWkKpj1dd1S1XSZQMRLA1xeurHBEy5pq1Yj
	aleZTeq0pqcsWzqTlQKzKGo6QiIl4UwN9dAktpRZo436fzftSeBSufdyv1ParKv7UV517lJy0nl+a
	Qdq+EBCrYD9oZJzqdT0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GN-000000043uq-3qje;
	Sun, 09 Nov 2025 14:19:27 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vI6GK-000000043r9-3gZS
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Nov 2025 14:19:26 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A9EJ5dm015030;
	Sun, 9 Nov 2025 23:19:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, alchark@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v7 02/14] arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa ROCK 5C
Date: Sun,  9 Nov 2025 14:18:47 +0000
Message-ID: <20251109141859.206835-3-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251109141859.206835-1-naoki@radxa.com>
References: <20251109141859.206835-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_061925_213223_4B128074 
X-CRM114-Status: UNSURE (   9.31  )
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

The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
total switch-on time of 0.6us and a total switch-off time of 6us [1],
meaning that the current PWM period of just 10us is too short for
fine-grained fan speed control. Increase the PWM period to 60us, so
that the switch-on and switch-off time of the MOSFET fall within a
more reasonable ~10% of the full period, thus making lower PWM duty
cycles meaningful.

[1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v7:
- Collect R-b tag
- Reword commit message
Changes in v6:
- None
Changes in v5:
- Reword commit message (Alexey Charkov)
Changes in v4:
- None
Changes in v3:
- None
Changes in v2:
- Reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 378a65e2561ad..086b4f45fabf3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -73,7 +73,7 @@ fan: fan {
 		#cooling-cells = <2>;
 		cooling-levels = <0 24 44 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 10000 0>;
+		pwms = <&pwm3 0 60000 0>;
 	};
 
 	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
