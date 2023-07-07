Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5CE6EB64DA
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Jul 2023 16:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mRHEb4MGDIA1TVN+H6sTXdpK9dBI1+Z9D3iOEeB9JWo=; b=MmWCOtDgjai7Ap
	ypFZPjNpnVzoQ2JT108yjM4derTOq3HiSYP+VHR3HUXrR14GX5cwJvAqJ9Twr35NtBicU/vvIWR3X
	c/e0jq/R9NKxSLzvFmLLwo8RxQv++azEnpMw9KIi3Cou+jzSMwFsSATEjEm3WrlqUBWKIHvWazBGg
	duFKFZMiNZZd/RXLsIO+FjebN/2ytq09R3uTdxoVSa5u495iXN/l1Q27VcVX88EyDD2Za1FrMufGy
	cKAv1zGvcT1n81B04fXW6mkXPYl2uEG16SBOS1zUs3SXkQUvL44K1BuOzf2Ao+3LB8QxlKZ82W933
	dlZGe0VDgzE9zin7c/Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHoJx-005Bem-1o;
	Fri, 07 Jul 2023 16:28:37 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHoJu-005Bdq-37;
	Fri, 07 Jul 2023 16:28:36 +0000
Received: from localhost (unknown [188.27.60.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 884B26606FEE;
	Fri,  7 Jul 2023 17:28:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688747312;
	bh=Ief3Uz/0TJdx6oLRMTJ+yX/x6uF+9WAIZcWT6R5LfIg=;
	h=From:To:Cc:Subject:Date:From;
	b=WxxkNs4txkB8dmMYi2qEBfiSOnjl7Z6CBcbqf5j9aR6tb/6hSrzfciKXLHuYmjCUh
	 uW5hkqXWTvB5GT0NBmh5G0+jZnZc+xAV+fIL2lRmOPr6/4brJTONXMvBc5L8L+C+Yj
	 bNSqa24l+hlBmOgakpw34PmcbfvenVDg8iuTZnWHgEjLna3FUlVWfAn2ew6Gy6KHzh
	 Hgko3/sMEX/jRljb6/1PQsRYlTGt48IDyex3RmtBjfFueS3B/DVgzSnscButUu6WOI
	 Xqxi3KkeGH+Nno40oTF7Tv6YWdua9BYnPNS7NqV20x70mKzK2XS85ZOWkGyjIsTyq2
	 BFBDx4WCuOmjQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH] arm64: dts: rockchip: Update sound card label on rk3588-rock-5b
Date: Fri,  7 Jul 2023 19:28:22 +0300
Message-ID: <20230707162822.676024-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_092835_185905_E5FE3208 
X-CRM114-Status: GOOD (  13.26  )
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

The audio-graph-card driver uses the 'label' property to register the
sound card in the system, but the currently assigned string is too
generic and cannot be supported by alsa-project/alsa-ucm-conf:

  card 0: Analog [Analog]

Use the more specific naming "rk3588-es8316", which is still generic
enough to be shared with other compatible boards, e.g. Rock 5A. The
audio card will be listed as:

  card 0: rk3588es8316 [rk3588-es8316]

While at it, update also the DT node name, as there will be additional
sound related nodes available, i.e. for HDMI. Note that this involves
moving the node one position up, to preserve the alphabetical order.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 51537030f8e3..87f4d5e9458d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -18,17 +18,9 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	fan: pwm-fan {
-		compatible = "pwm-fan";
-		cooling-levels = <0 95 145 195 255>;
-		fan-supply = <&vcc5v0_sys>;
-		pwms = <&pwm1 0 50000 0>;
-		#cooling-cells = <2>;
-	};
-
-	sound {
+	analog-sound {
 		compatible = "audio-graph-card";
-		label = "Analog";
+		label = "rk3588-es8316";
 
 		widgets = "Microphone", "Mic Jack",
 			  "Headphone", "Headphones";
@@ -43,6 +35,14 @@ sound {
 		pinctrl-0 = <&hp_detect>;
 	};
 
+	fan: pwm-fan {
+		compatible = "pwm-fan";
+		cooling-levels = <0 95 145 195 255>;
+		fan-supply = <&vcc5v0_sys>;
+		pwms = <&pwm1 0 50000 0>;
+		#cooling-cells = <2>;
+	};
+
 	vcc5v0_sys: vcc5v0-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
