Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65CC3C76196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 10:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/EbHzW0vSzMwsYo/Mdav3yDAKgALoLYUEYpSVwwbQJQ=; b=oDaCESXOgCXoMQ
	JelAxb0K960Nfzm8TFriTjgcvPh1L33RJbxRtpWMOdC7qFNwmB7G3cMzMRgkGfs+PJ32j1Z9i/Xk6
	sHJK694isGHd+c/qOE3U8Smwy/xu2tAJq16Z/uu0BFkx/Qs7s61sQro2SqbMaX8ptzX0ja7ul598H
	oyiov1RisIZ3EPytlNNLfxLzZiQF/ZxrrdQakOd5tQwArbFnxUrUN636sB2X2aSvBnT/Yw8qMtf+J
	bvKD9SjKV08OvZnl0Ae7HC8DWgbXKNtPT4RHEEPBsQOp27bK/MQYjjfZbx/WSNDQ4ntc0Xo80H7X2
	UJUp9/HoOxtEqyM5YfeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHmL-00F0LK-20;
	Mon, 03 Apr 2023 10:51:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjHmE-00F0I4-2S;
	Mon, 03 Apr 2023 10:51:09 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BD0D16602040;
	Mon,  3 Apr 2023 11:51:02 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680519062;
	bh=97JLXa1qL1Q6tXE1ABA2Qq1JziV8s4pj8cdLUcAzWyc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fGAnFpQPICXfoOONO/XSV8hsItw5JzWd7biiPsvvPzz1ud77H2sO0uf/KgHo5bGiR
	 jiuWRlGZdIf41QPiW7LDytgPTzv1m//aW7160vN9iZFceJP1VOlueBcyFK1kZ5tSbI
	 rr/VlFchlyQXHHo02/gNsFas7tme0//yhZwTqYT2f3Rjw0RAtePB7vMRMaLwa/STkI
	 I9jBXGxPQ7gXsJwGcyWd2eJs/cfoguSfBRbmG7TGzXt0giy7c1mmZ1uhwEt62N4/qj
	 C3KT0BHEbOdXP+3OQhLZFomKC0BjiyhoTisdjBsj2o4wlackXczgoCOKzSi5f/LYPm
	 4U+SDeM+e3JtQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3588-rock-5b: Add pwm-fan
Date: Mon,  3 Apr 2023 13:50:52 +0300
Message-Id: <20230403105052.426135-3-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
References: <20230403105052.426135-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_035106_926742_02F74105 
X-CRM114-Status: GOOD (  10.09  )
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

Add the necessary DT changes for the Rock 5B board to enable support for
the PWM controlled heat sink fan.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95805cb0adfa..bd74d9da2c17 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -17,6 +17,14 @@ chosen {
 		stdout-path = "serial2:1500000n8";
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
@@ -27,6 +35,10 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&pwm1 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
