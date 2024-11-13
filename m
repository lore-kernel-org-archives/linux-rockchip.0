Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8145DD597C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 00:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsnHOqmLJQ8bKOfeqGLYcfZ979iN5tsQsFlZk6/2rCU=; b=umKKi6qOQF495j
	kPdXKbNGzbS2+hnYS8yrsQVr4tm31BiOKbY5zKGMTVQhfWCxJ7gMRucaUKgKuo5sNa7krIS52azfs
	vpAtGo+ipOfdOS87/VhysJXiHbuydLdMgHAs6Jfx2fFdXed2mSgg8q+zd4cYhWPI5IKP7Ju3Poofn
	QOKkgsYP7VhAvvCqx03ISUZ+rfSRl+EQGyEv5n3/NWx+ix0JDvgH9+pNiM12zENFMz8nC6W48gAJu
	wqiuY/k+Sk3+MCyjTbg+14ouSvI/olSx6Dr4Fwt7ijjn9zXLtJq7MPaYwjf/tSBsEHwh/vIIweYUB
	pVLgOC2gJQEcYjOvY4VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB11V-00000005NTI-44L1;
	Wed, 13 Nov 2024 00:14:17 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB11O-00000005NOh-2s5i
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 00:14:13 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD0Dmhx024846;
	Wed, 13 Nov 2024 09:13:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: fix pwm-fan property for Radxa ROCK 5C
Date: Wed, 13 Nov 2024 00:13:41 +0000
Message-ID: <20241113001341.7952-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113001341.7952-1-naoki@radxa.com>
References: <20241113001341.7952-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_161410_983720_D1C48E66 
X-CRM114-Status: UNSURE (   8.33  )
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

fix pwm period to match with vendor kernel[1].

[1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 0389f9e3ba65..24e33f98865a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -73,7 +73,7 @@ fan {
 		#cooling-cells = <2>;
 		cooling-levels = <0 64 128 192 255>;
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
