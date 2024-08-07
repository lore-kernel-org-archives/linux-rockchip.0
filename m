Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F408C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lwxtyewo2w32iOHdOB+0rAGNu9lx8a2GB1JKKAMGjY0=; b=mWgkyLZHFzDlIM
	WPVl0n/eQZfLjYY7mGC/hS1QqBvnnXF/m1tP1cmkAE70hzMAFOirOeF+ogcdlG2y246A36O7ovzY/
	2ryOu0VKSXGS1B9WVakIj56PrdspEKRhot1I+N+U5xc0VWSHkFDDNhXN+GwNrUrN3/KiGLelzPRAm
	wjYahLmBzgLzzNYWMkG3NehlEV1jLKpBWD1vzsSJrKgL0Szo5HOl5HeX0VCQCkZLSuMmS1fP8WIpk
	lJQ/NV//p5f8s03O25KtfRIRpSMEn8qUKM311T+x3Xh1noNN6ObA494RlNz1nWUtJJIxIJWMvGp4C
	kTbhvGDt4aC9QXJWVeug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbk3S-00000005m2S-2djv;
	Wed, 07 Aug 2024 17:02:30 +0000
Received: from mail.flokli.de ([2a01:4f8:1c1e:e12f::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbk1q-00000005lWH-1cGx;
	Wed, 07 Aug 2024 17:00:53 +0000
From: Florian Klink <flokli@flokli.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1723050046; bh=/RFk5++xISD2w7ZR9m6Kr5hjptqHJpE5fLiKs0wQOkY=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=LdfSJ7GrVCw9bboxPX0YrmXSKan5A1u5fU5rIVVaG78lOZTGQOlW5nIOeYcFbDnSh
	 mg/obh6f7Msy9R++3EVh/ovVRW7JkdFUZPaYTUhPlGH/gzF5oekk8rSDCy5BmzJHd1
	 2hlqWd9t6/EQYknG7OlRVl8snJx1GRpwyZQ1E2ko=
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Florian Klink <flokli@flokli.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi on orangepi-5-plus
Date: Wed,  7 Aug 2024 20:00:21 +0300
Message-ID: <20240807170030.1747381-1-flokli@flokli.de>
In-Reply-To: <20240807162001.1737829-1-flokli@flokli.de>
References: <20240807162001.1737829-1-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_100050_924131_3799E64F 
X-CRM114-Status: UNSURE (   9.39  )
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

This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
rfkill node for M.2 Key E WiFi on rock-5b").

On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
enable signal inside the M.2 Key E slot.

The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
node referencing RK_PC4 on &gpio0.

Signed-off-by: Florian Klink <flokli@flokli.de>
Tested-by: Florian Klink <flokli@flokli.de>
Link: https://github.com/armbian/linux-rockchip/blob/9fbe23c9da24f236c6009f42d3f02c1ffb84c169/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts [1]
---
 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index e74871491ef5..c3a6812cc93a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -105,6 +105,13 @@ led {
 		};
 	};
 
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-pcie-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+	};
+
 	sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
