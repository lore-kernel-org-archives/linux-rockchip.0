Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80C29CCFA19
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 18:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NqMwjfsGKbWpETH5hMa9nOm1sNc9/aD7ntDVXlpqU4c=; b=VjPMZVSPWtggIL
	6NSMqUaaCNqYaF0Y174ga/XKCVxnL4wRUElgJAT3wgAC905VSDjKAHBd58IKbNTMJSn4EPXPQ4g27
	xIhldRQXVw/9Dsh4/MNvH5UdnujZx7M5KC33bgO9w5C9nhD702GZWpeZ3vGt1UCE0MybxOoGYMOsM
	5LJ6LejJIa7QeXjOdfXEMA15pf+UZpkhx0Ly3JMmnLo5UUUMm90ndMjJb5t2+VJ/SIhf3ZLTl0ybI
	ZDiEf5Aitp5jCDFv8omQnApl+zE25VNeTv2CANc3dnlIyyGG/K/fv1ok6IqTXirN7XoGsMrXYuKRM
	wv6PGIEvzW88crbsXs1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SW-0000000G4sO-316W;
	Thu, 06 Nov 2025 18:11:44 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4SU-0000000G4qo-0OEs
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 18:11:43 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-30cce892b7dso672610fac.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 10:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762452701; x=1763057501; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nTvSrRIoFUcQoZC4cTRmqWQzhHQETi5HQX0+94VQOzE=;
        b=ABmZNMav9qYcVc+utv033xLtHoj/5BMAcKPtOlvopMOWmWvTpFSkGhDRJ/Aa2+nCBT
         8vBjcfYwJGLYkF3E/5mYzXxHMvwfwPPGms3bKLbJlg1jK7jhdu35vk9ddK6iGG07XrB9
         4gakYB22ckQBx2a4OJYiNiMyh6Zlw63jcAHJXQsrL3ZpAwXEH3WOqCHPJoS8foqfpl3H
         JsYwcVjlsKjAJNj1JCPoioCSoW6QhwS60X6aHh4BYcgGUjaDsLySiNRyPftR9jYl3rMb
         vL1e+0Ymby4oT+RJaSg2b9otL0dBEAHpDWWTuuk5q1mU3FED1tH7hROE6xSzPxzVbiml
         nnwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762452701; x=1763057501;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nTvSrRIoFUcQoZC4cTRmqWQzhHQETi5HQX0+94VQOzE=;
        b=ESe5LIVK0A7jKmLm/bNKtbHXLVppSWm4oVNTw90s8YyCW8tuU2EaM2O7HtCAzF6A1v
         2d65EXpqEdMMUm1/1fZKs4N2lsqtC/pIWqLJQRNHmEYzq+UkU3yBMzYNoP8eDn+zPyIr
         WMqpX9WcyfN2Fu4TX4MSM/McCK8Iniwn3HtqktX3S7FZO2Q6seCGQz0S4jK3C0ZuiLki
         QH0Hlbk4WK7zRXNR20jAWNtksrilV7SOtN3uipibU+sWE6Ie00m6mRTA8lSff09VwzvP
         D4Akb+2qbbrb4Qlqi0b4WiPinc4nk3OpVlgJH26xU2TWJIKOOf9lJqg0zpfeKdDHUmhC
         0Wbw==
X-Gm-Message-State: AOJu0YwJmyUu2J1+0Mphset0H8u5a1C80lbXH+KMWWfUbnkDZ1F8a+SR
	VgfbpFcP2jirPecaGtSrW7BOB+gloyuk0awzHBXpM8LgQHkzK5VL8FctOcjLqA==
X-Gm-Gg: ASbGncs9zWfuJHrYXcohuHd035e9k0tUZ/eoS2YhTMdz6CpaafTH9Iy49MKrMDC/4Kt
	uHzOhRAGMGFfFReSzUO2QkW3dd4aWvrufrIBMwc0LnSn0D30gWMRn6T/9/gIGD4c9WlyVpbYYEN
	/77mAkwM7PBmfabq8Sywrdg2/2H92VaqLKyhlkEY02MCvc9rkhrlmTtqEvj94MOJFfqqdEBwS0H
	GogK+CE1OQWhqgzuonYPApAXTpZg54aiN4OFf8dbJM6dkCuv2hriCcrYdoGEimCuv+a6wGyvSrb
	4Vo0RBTY0FUGx5ZUI1XZBOaztEhNAtKgworhoV+kzHhhhMRUJAQ1L2YD2PjJpXrD6iFEfh/aVQd
	cgg8qIyUFvZbejXal+Ie5vRJao94Aga72FbcO1V+z7zT8nJEefeH2ckDooEdR2tlrC17fgfWwlQ
	QVO8U7OS5GrwzMlTocXsA=
X-Google-Smtp-Source: AGHT+IEfuV69CL6SVcZpapKEvHBs4toFoMM6EFJyVvrWMOaDwcUJHXd4zzkXKqfcYAZxWxaA5cWcnw==
X-Received: by 2002:a05:6871:2b22:b0:3e1:1de:9c0d with SMTP id 586e51a60fabf-3e41e49bdefmr305404fac.17.1762452700826;
        Thu, 06 Nov 2025 10:11:40 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3e41ed0aa06sm137739fac.8.2025.11.06.10.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:11:40 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
Date: Thu,  6 Nov 2025 12:09:14 -0600
Message-ID: <20251106180914.768502-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251106180914.768502-1-macroalpha82@gmail.com>
References: <20251106180914.768502-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_101142_138037_C25D6B57 
X-CRM114-Status: GOOD (  11.46  )
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
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org, heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the HDMI port for the Gameforce Ace. The HDMI port
has no HPD pin present (the manufacturer's devicetree states the pin
is reused for an additional face button) so add the attribute of
no_hpd to poll for connected devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index f5894672fcbd..b98e1a3369dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -300,6 +300,20 @@ amp_headphone: headphone-amplifier {
 		sound-name-prefix = "Headphones Amplifier";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		ddc-en-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdmi0_en>;
+		pinctrl-names = "default";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -498,6 +512,34 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	no-hpd;
+	pinctrl-0 = <&hdmim0_tx0_cec>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -746,6 +788,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mipidcphy0 {
 	status = "okay";
 };
@@ -842,6 +888,13 @@ charger_int_h: charger-int-h {
 		};
 	};
 
+	hdmi {
+		hdmi0_en: hdmi0-en {
+			rockchip,pins =
+				<4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins =
@@ -1416,6 +1469,16 @@ &vop_mmu {
 	status = "okay";
 };
 
+&vp0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
+
 &vp3 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
