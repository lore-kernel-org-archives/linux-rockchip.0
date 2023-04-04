Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC215C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 17:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d5KlH/NOL2fxpiYCkk6Rzd22FY1dm3tbTj9ehVrFdkg=; b=pbBcCc9SwgM8hG
	V9sfCcAlqxneQHgP7ZgOxVtOVuCCcfCCNBpGI0bcR7rXy9JBJCIt8VQ5m2y/oi32+ln+eUtxJLLZm
	cQPJHdg6T9mt190cIfGgmMiGmWkTZnTw+ETw53inSjYobTlg3+nA/vpYZKBAn7Px+W8mFN5VOXwmt
	BxLJjwIuyzDfU9qIgsn/9hDw2hb3yb8JqhPvKxYuGNGjwMBTPCKpxl9qCPBm0g9QnytzvE2JVvKcv
	pL7H0nWo5vBVZipCASkbJb5nnVzb+yQer6xR3ysfpaI5bw+idwY723iphJR81QyPfhnFyZ2+QJ2j3
	jPNK5PW5/4+26+njceQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkfS-002Plu-1S;
	Tue, 04 Apr 2023 17:42:02 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjkfO-002PkY-1B;
	Tue, 04 Apr 2023 17:41:59 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D8B84660316F;
	Tue,  4 Apr 2023 18:41:54 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680630117;
	bh=eFM2DUmpK4asUDysohdMR8TB/pdKK8LNKe1onXMI9bA=;
	h=From:To:Cc:Subject:Date:From;
	b=dF06nkY6DUIwqs6bK/i6huSbsWUJnRAQzdGsSgZ9Lij0bIyX/5pJuOnBfoATxes1f
	 0V6qIt/tE42Owec+9MZN4pypNXcazIegoFDsDa/W25Tyga2aK1IUphv5uHSF2MyUdA
	 2k/e3M7BaMgesqF3luOqyCPH7bXb0y5zoizPYw852OJf12iUy1IhillZzBUbx9sWAr
	 D66skznvlg8tzGansrW8ZNE7JLZ5I9d+4c/PFP5sxVZ58vXYWNdpaTjsJPwj/dE2TH
	 IXQ8Uf18ys/RC9WpyPerbfmjcrcnnmollE4cz890q7Bm/Qmn33Uir76Gd9+wPqVINR
	 MbXxrKloJfchw==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2] arm64: dts: rockchip: Enable RTC support for Rock 5B
Date: Tue,  4 Apr 2023 23:11:21 +0530
Message-Id: <20230404174121.38727-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_104158_531810_EFC15EF7 
X-CRM114-Status: UNSURE (   9.29  )
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

Add DT node to enable RTC support for Rock 5B board.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95805cb0adfa..fcb5af09e49b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -27,6 +27,31 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&i2c6 {
+	status = "okay";
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
