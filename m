Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 723CFE82CA4
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Dec 2025 03:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/GsjfBlooKW0c53dpi5zRrEDyl0f+ChJlEVBxqY2RaY=; b=G5oU5iI43KC08M
	o780Nc7zWLDjRcqWokfOXdM2pe48gLb/dSD6QAuEF/BgRP8eclmIHfEUxnDbEOvr7ueaYXO6BNWa6
	070w6d8fGIeJI/awB9jAvyILaPU30VDS5OEedfd4CaLNz9Y3bR7G69Mq9juwZhFfnwJXKT9jrzhCW
	appZVndr1Sncx6IuSVBfUNZf2lrsFngyWbnFbN7ZrnsHZXX1ZwK/edD2EqhjIHTL3FaIHIlOTfU49
	IaCc8T0d775EAZ/u5Mn+nHdHc+NAjYSB0AIfKWRyJfHvGBe5m1SW2gsrUjGtAt6dEnwK6csgakjyk
	bcy9X3wTNDaD29uCpAfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYykW-00000000sRt-3CTK;
	Fri, 26 Dec 2025 03:44:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYykT-00000000sQu-2W08;
	Fri, 26 Dec 2025 03:44:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6824A60097;
	Fri, 26 Dec 2025 03:44:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12B2DC116C6;
	Fri, 26 Dec 2025 03:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766720656;
	bh=Zi4zn3Y9G7BtW8d1C0I9fl8sHSfCuIBZKh7au6k0ucA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=YhA3GX234xtLs4bXoBfNGFukrhuR1ETrR55YY/w59olrXYpTyRDrOj+LIYUtNhzRW
	 E+KFhPNg8xvM/ghuVGNRA8Xs0PCJKJVIDKKnXPaXu5OBzphr2TaENAY9qNXeCGVPvR
	 VceNA2co9AP7kSokDwfz7xSUalKGCF0XvbRdtOw2UEhfZlZkzOye9fbSzJhf46L5BL
	 TXIPJ7YOKOYqyu+rnj2Dq6zfZ6m1JELK1EyszpvIvyWRbZo5rFLuHK7lNqMQBY8/+X
	 DCM5vdkTScWrvHDlvYiuyYSucH6UWvLR6ot31Zp5+q/SJdiOn412YXD8VuW1WTev8C
	 gRXYjCp5gf0Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3083E6B26F;
	Fri, 26 Dec 2025 03:44:15 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Thu, 25 Dec 2025 19:43:19 -0800
Subject: [PATCH v6 1/2] arm64: dts: rockchip: Add magnetometer sensor to
 Pinephone Pro
MIME-Version: 1.0
Message-Id: <20251225-ppp_light_accel_mag_vol-down-v6-1-8c79a4e87001@gmail.com>
References: <20251225-ppp_light_accel_mag_vol-down-v6-0-8c79a4e87001@gmail.com>
In-Reply-To: <20251225-ppp_light_accel_mag_vol-down-v6-0-8c79a4e87001@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>, 
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>, 
 Pavel Machek <pavel@ucw.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766720655; l=1717;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=0XuYXwAcw7Z+0HhnTrXafixONjaWrvmPAzuL5lX4iks=;
 b=XlQM56S+SOU0+omqFG/+SCuRoarfUKte6KV5pVrGOYfOtajHB0B+jNhlM8Y0eGL74qnktTGTe
 n3dqg6nrKQkChDEXMaue9NNWdFhh9sOIY3+FCDVNV506UEEonKowL40
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ondrej Jirman <megi@xff.cz>

Pinephone Pro uses AF8133J according to the schematic.

The mount-matrix was added by Leonardo on top of Ondrej's work of adding
the magnetometer. It was verified with Leonardo's compass app:

https://gitlab.com/lgtrombetta/compass

Co-developed-by: Leonardo G. Trombetta <lgtrombetta@gmx.com>
Signed-off-by: Leonardo G. Trombetta <lgtrombetta@gmx.com>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
---
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2dca1dca20b8..1d3baa557c70 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -537,6 +537,23 @@ mpu6500@68 {
 	};
 };
 
+&i2c4 {
+	af8133j: compass@1c {
+		compatible = "voltafield,af8133j";
+		reg = <0x1c>;
+		avdd-supply = <&vcc_3v0>;
+		dvdd-supply = <&vcc_1v8>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&compass_rst_l>;
+		reset-gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
+
+		mount-matrix =
+			"0", "1", "0",
+			"-1", "0", "0",
+			"0", "0", "1";
+	};
+};
+
 &io_domains {
 	bt656-supply = <&vcc1v8_dvp>;
 	audio-supply = <&vcca1v8_codec>;
@@ -649,6 +666,12 @@ dvp_pdn0_h: dvp-pdn0-h {
 		};
 	};
 
+	compass {
+		compass_rst_l: compass-rst-l {
+			rockchip,pins = <1 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		red_led_pin: red-led-pin {
 			rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
