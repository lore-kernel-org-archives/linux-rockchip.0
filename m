Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83EE0E7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4XrrZi6j4WHUtJbH5QZE9VfRw87wL/xZTatCwkfE/ww=; b=AQikDhZhRcI0Sw
	CuPbAcyGjcZZjaz5Kb4kECOupI2TYHglqLa2DrAMQ/+jdqePyuKyh4XkeBGDCDMir3szpxN4YcB8b
	KU67i89fARdUaYF1HUoKR2RVXlOKESqBqDgz2O+i0U7iZAj9PP4/f1m65odqA2x8KyX5JgTrk2lDy
	YjUpZI339uzeoPNIL0OZJvD3Lf9yoaajOO206d5NsHq2HSldydKD3j2NYNOMcUv52N/oHDiZSBv94
	33lLt5Qx97alaLg9Vvol07AEcaT1HM2PUb0cbZUw+I81INmzJY7iZq882ylFC8B2vPCddBgTvxBy1
	tjFVA0lBkVDdLwhEUqSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdzb-000000082QZ-3Yqy;
	Mon, 09 Dec 2024 13:40:07 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdzX-000000082Pe-49PP
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 13:40:06 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9Ddotw032095;
	Mon, 9 Dec 2024 22:39:50 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v2] arm64: dts: rockchip: add rfkill for wireless modules for Radxa ROCK 5A
Date: Mon,  9 Dec 2024 13:39:41 +0000
Message-ID: <20241209133941.4750-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_054004_241013_621AA9E0 
X-CRM114-Status: UNSURE (   7.90  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Radxa ROCK 5A has a M.2 E key slot which can be used for wireless
modules. there are two enable/disable switch pins, one for Wi-Fi,
another for Bluetooth. these pins are connected to GPIO.

add rfkill and rfkill-bt to control these pins via GPIO.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
this patch depends on [1] which depends on [2].

[1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
[2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
---
Changes in v2
- put rfkill nodes correct place
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 095e1f5f7786..278d372e9b16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -19,4 +19,18 @@ regulator-vbus-typec {
 		regulator-min-microvolt = <12000000>;
 		regulator-max-microvolt = <12000000>;
 	};
+
+	rfkill {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-wlan";
+		radio-type = "wlan";
+		shutdown-gpios = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
+	};
+
+	rfkill-bt {
+		compatible = "rfkill-gpio";
+		label = "rfkill-m2-bt";
+		radio-type = "bluetooth";
+		shutdown-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+	};
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
