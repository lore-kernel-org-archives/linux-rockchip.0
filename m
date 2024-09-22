Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22EE6CF9C64
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Sep 2024 15:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TynnllLsmeG1afHrtdwnGwL8S7ly7Hq7it/duf00exA=; b=lDb5L+k0Tf8rRI
	N4j0PS8cgqxGAHZn/orxafcDjzPNeg+XXFC68axrSlkOh7He1FH5fGozwL5XisAp3dpnhASNe0MaU
	28MI4rCH5OJ/mbNq8zieECChhk69edre7MMzrxDjBOo7lk6HJ5MM6CLUIO2TZfssK6ouXq5BeQrOQ
	K+YS8wCiJ3iiDtsGmfMxOqhrkvB26DRcRltaXW/c5JUhjl8TQwSWp7VV+drI5IsVJNbB48sn2iAws
	KDq8Kq6rAMKc9jSY89ZqmPJDpZmXyQddaQCeFsZs3G9PfF20mWDKtmoalLNoiKYAtuKDhvD+Gljdi
	HeV5SWf5/REOp9c0vKUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ssO4l-0000000FJSP-3gYW;
	Sun, 22 Sep 2024 15:00:39 +0000
Received: from mail.flokli.de ([116.203.226.116])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ssO3c-0000000FJDp-0t7j;
	Sun, 22 Sep 2024 14:59:30 +0000
From: Florian Klink <flokli@flokli.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1727017164; bh=wzNkufJNs8JPj15IvW3yIEGMtLG/2YOpr4iUk3QGOrA=;
	h=From:To:Cc:Subject:Date;
	b=GUA8IbtqGOgl4JXHafk152p32hTzOHE4TkzL7n35QqLyoHdhIQRC7/TMiD/+p0gQZ
	 Oi9drzI9lZz2CFkck6JCxJdfgvpLhtFSGDi2S9iFMiuiyXR8bwP87sEk0v5VjFWN4k
	 PPFFGXKKECoBGyECWReZiWaW0roT/RQo6gbgRous=
To: 
Cc: Florian Klink <flokli@flokli.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: enable automatic fan control on Orange Pi 5+
Date: Sun, 22 Sep 2024 17:55:29 +0300
Message-ID: <20240922145538.256235-2-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240922_075928_525445_E0EA3C6D 
X-CRM114-Status: UNSURE (   8.47  )
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

This links the PWM fan on Orange Pi 5+ as an active cooling device
managed automatically by the thermal subsystem, with a target SoC
temperature of 65C and a minimum-spin interval from 55C to 65C to
ensure airflow when the system gets warm.

This is pretty much the same as '4a152231b050 ("arm64: dts: rockchip:
enable automatic fan control on Rock 5B")', except for the Orange Pi
5+ board.

Signed-off-by: Florian Klink <flokli@flokli.de>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
   Changes in v2:
    - Updated map{1,2} to map{0,1} for the same reasons as [1]

   Link to v1: https://lore.kernel.org/linux-rockchip/20240921183810.225322-1-flokli@flokli.de/T/#u

[1] https://lore.kernel.org/linux-rockchip/335ecd5841ab55f333e17bb391d0e1264fac257b.1726954592.git.dsimic@manjaro.org/T/#u
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index e74871491ef5..d91438752006 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -351,6 +351,36 @@ &i2s2m0_sdi
 	status = "okay";
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 /* phy1 - M.KEY socket */
 &pcie2x1l0 {
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
