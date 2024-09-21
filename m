Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32FAFCF9C5B
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Sep 2024 21:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ydDZWd2KS1FsDtPRg5ZXJ2f08hWSh9vGZVLMVTZCtvs=; b=Z+d6hruQ++U/xk
	/Q+OZZuyN2m7tb8SPlSK7vwnKeStzRRcSDx8zEYwTVWDTlnefpiAd4opHazYyNitmOkZ17Hjj7alG
	OjlBFjnzMJit73rYKBx2NFUnRWT6hyDWbFIreAscDvAGgoBla7J+HFKTZZ0BxXtxUb0MWhcpOED5w
	dDy40puP3Y8DvWDYZGaCEmzCcqIHnMyi7NJf9r3zLrg2SpQUYp+ufV1k7Wbj49E56r2VD64/BtbT2
	whDT3xpOqraNNHPPWFW3q0NJs4+6chmSZbCxCliQ+t7MIXsn6iq+SowZu424YPaXG9YtpHUbf1SPQ
	FmWNayJVaaqwZZJAQBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ss7qF-0000000EIJi-48Vi;
	Sat, 21 Sep 2024 21:40:35 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ss7oy-0000000EI25-23T0;
	Sat, 21 Sep 2024 21:39:19 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1726954753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=aK8KbRwCvuQHz3K5ucCXTTuDlPUMyQ/ggvKNYCR3JcM=;
	b=QBXhJMEch4SLR9LAsabdISlPq+wxxOxyvNxom8tqrZWy+AyEUyzJlHhZPU+hqMgMGSVjVm
	X61iJYA3awBeRoVaUhcu6JEhPpDnPivTjIyWG9ueCg05CuhRT7IhhJ9wojWnv/Qp5ZUwJn
	mIB6MUWRudUDy3r6Vqeq3lm2L2QJT1WGiPWmZ0Tjtkq2f5Pq7zDTp1rgIXQxntTgS1F7kb
	tENRJQCgZYtkaE1dJBWMaVlxxwFBUuEQ8XuNqijbK+o9vUtWyZ/FW6VK0zxKlz8K6mxh1F
	9FJiKbOwHKlFCwoCS6cx05DEBTu1KGktpTDvNbU7V1cPUtgocf4FRG7u8hzTgw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	alchark@gmail.com
Subject: [PATCH] arm64: dts: rockchip: Start cooling maps numbering from zero on ROCK 5B
Date: Sat, 21 Sep 2024 23:39:05 +0200
Message-Id: <335ecd5841ab55f333e17bb391d0e1264fac257b.1726954592.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240921_143917_036389_2E4F5405 
X-CRM114-Status: UNSURE (   8.73  )
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

The package cooling maps for the Radxa ROCK 5B were mistakenly named map1
and map2.  Their numbering should start from zero instead, because there are
no package cooling maps defined in the parent RK3588 SoC dtsi file, so let's
rename these cooling maps to map0 and map1.

Fixes: 4a152231b050 ("arm64: dts: rockchip: enable automatic fan control on Rock 5B")
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 966bbc582d89..6bd06e46a101 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -304,12 +304,12 @@ package_fan1: package-fan1 {
 	};
 
 	cooling-maps {
-		map1 {
+		map0 {
 			trip = <&package_fan0>;
 			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
 		};
 
-		map2 {
+		map1 {
 			trip = <&package_fan1>;
 			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
 		};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
