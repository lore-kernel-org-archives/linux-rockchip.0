Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A85C7C52D73
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 17:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AkWPQDD+EP3PHYdL0zDCalFHUeY4B0tFIMhSNPo8lyQ=; b=lB7V2b8AhDxoji
	geu+OHL5oXsFnSITFOAwzVYW4Zb6rAJLUIWCnLAvAqPiuQWaBZ9Q6weqeI3Nr6Y+A1oVn3Y8fwws2
	RlihmMWVm5d349DbJe37rf1/WW8iV39HIcuL465D353JVsEu29P2v+Ec3aHlygfXZf8gZbJZtekYx
	oiDA7vK5qn6mmHAp12nz4mLC6ffCnCzqd8CYyornyvZQK8YpC3lvE3iuMTcxbFw/1DQpza+HrFmmv
	NPyQ+42YeVYJdGvkXOwTlj1apikrmDsFlZYVt3aAjPhrMbMVOL0SDq0M0vdsJroz17o62Dn3mJq04
	bkhKVaQAlGKCrIHpXMyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkTr-00000005pZS-2LIh;
	Wed, 07 Aug 2024 17:29:47 +0000
Received: from mail.flokli.de ([2a01:4f8:1c1e:e12f::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkT3-00000005pO9-0VC2;
	Wed, 07 Aug 2024 17:28:59 +0000
From: Florian Klink <flokli@flokli.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=flokli.de; s=mail;
	t=1723051734; bh=kdDUdUvOsprG0d3u0aTFhxssbCBQ2VTP6Ekl1OBlv2Y=;
	h=From:To:Subject:Date;
	b=RC7lOaEkzUje5SAKaMPKYTyam9/+jtIAv+4cXiZOLzIoZWkHclrDvZHdLSj/7Hrnp
	 Bbow9Q+VD2dYVr2BvdfFQJ3GiwSaAK8PGJ9Xe0ARF+M4I3jTXeUj8lyBrYYbahbZVD
	 YtPXz2vbEV73s0TARCEPtM9+eA4fPCQMcHcUVNr4=
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
Subject: [PATCH v3] arm64: dts: rockchip: add rfkill node for M.2 E wifi on orangepi-5-plus
Date: Wed,  7 Aug 2024 20:23:55 +0300
Message-ID: <20240807172357.1751312-1-flokli@flokli.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_102857_571421_F456CF31 
X-CRM114-Status: UNSURE (   8.42  )
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

[1] https://github.com/armbian/linux-rockchip/blob/9fbe23c9da24f236c6009f42d3f02c1ffb84c169/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts

Signed-off-by: Florian Klink <flokli@flokli.de>
Tested-by: Florian Klink <flokli@flokli.de>
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
