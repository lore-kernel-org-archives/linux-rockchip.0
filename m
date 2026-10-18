Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10908CCF2CC
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 06:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LnGE4rYpX5ebp8/xiOVAlWka2u8lzxCovxMiPe53ZQ=; b=HAcGAS7SlWglE6
	9f24wHGT4lJ2vTV4lVBn96e/nobKpanLC17fMzgGVtOVlEP/3ZctDKN7/x87Y/1J8dzd9BL8j4DWk
	guJPoYPQBD86s6KUqT/NACtB8hymxmQnAxxZ2cGAgmN05btNTXCikZYQ9bgVRnQpPTmz1L7eLiZk/
	biytKFrTZoAaRWGGCPy+WqF62N/Pfzw3NkO49abOM31oI0SRLheknN5O7Govzx6fL0eHGEEdXSe+0
	nqFDE9I5oviECBbSi39pEfKmgeqSPwmTtSmFfGlRiZE/RIsKLj5WFjgaIANkKnlTlx+Dn6BpATWZy
	Z9DQlZA7FjTnZLx8yDeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKVF-00000005d1P-07pU;
	Sun, 18 Oct 2026 06:36:17 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKV9-00000005cyN-0uFu
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Oct 2026 06:36:13 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cd61a2dfd7aso308928a12.1
        for <linux-rockchip@lists.infradead.org>; Sat, 17 Oct 2026 23:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792305370; x=1792910170; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HAzlFpqY4S6yZH2P6UFaqiaYlK+IGKYJ1tKXbKgsXps=;
        b=GfCOlujKFnPGre/UM4gG9etn4i9MxwfdghC96qk9uG+3528H5pBfgTm+K0tXZk4EEm
         e9Y4/kA7q5GIbe1Ux0xQEYTSvxluIjtJoH5AVHoMQj+3Yj44HtN8BGxBQgoa6zcQN1X3
         XgS4wvlbz3+BiEqb/05h5qaAuV7k7cOdQEYeh7YG3Lp0uQdzdsrx35tL8Zxxp3LSffDf
         2yucwGyndV7G2EhvLaw4FuH+v6MCdXe7VHmfJ2DgxEJv8T3Q7F9OVMwRcxq2JK7epXtN
         BjIupnkujvGwyP32b/bHIQev8j3Y2nDE279ECP9KFixElYOf37bTA/gcJvptCihmTYsB
         BJzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792305370; x=1792910170;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HAzlFpqY4S6yZH2P6UFaqiaYlK+IGKYJ1tKXbKgsXps=;
        b=bWkqXUYsbkhKaNN+MiiNPdp+nXEUSXu/VJd08ltD2jk5vtEDYwNe6on1qtjMmeZKDJ
         uI+/zB/grczip4ddp8CKkbWYtlRti0tdelPukzU6gNo4oDSKCkz/fKXqMcjTX1IrljJJ
         BcE361Or/L4bzkby+JuQaj7k/HdNIsjm89H1ARFxhv9utDrQpna7aBdjEokskQx6JP9a
         Fxwp92YvaFceJfUFfLbRKgSGfV1oqSQeXv16A+4gQUFR7d2kLWcUZKCJwXycfLDVvGN3
         KjH1/Vy+9RCjQJXHJt6L5Ph4ZawYjD55n/4apOtS36q7KuldF5aFOji/dDJPhTllFHLV
         xJcQ==
X-Forwarded-Encrypted: i=1; AKwUvBzqu/oKVNXDWJgU0AiEq+o3fjsFvgXU0TNZvAZE/2Q6ko+/l4betao+txAT/z6b06J/6djesUxbpAh1YEfXUQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJOS5D73ZVjlBVqvEc3gAE1pg0aQMWfbxijOfLG5+7YTn4RmgZC
	CjTShDfBv8EAtStfEz0PVxc+EGP+E6nXJb2m/l22S0Z6hyUKyDryqnSx
X-Gm-Gg: AYBFou0MZwqHyE1XvLwcciph6SQwXWZf37SrxLZwdAPH3C8iu88r0K+CSQXEtpQ7o8+
	Wc93zH8HvuEiy2uz+ToUC+ydJWDJqykflVw2+p6C4SBKB1eUA12Y0NW3d2xycNPNy4nAP1Q2vH1
	WqgyU0g/b10vX4zMfAJiYXmgKMLSQ9oSYow1te7BojbSsqCiqumWjpU1wy/ziDvNVdjiNeMpH+6
	G3JTQYrKoE7GByYiYlkB7BzZETbeLOVedGwI3Myuwe9Fahj6Du1u2QIyPp21RABG9CwvrodgdnP
	84VCzPT0s1AKLmGq8CFhbEnjSlWxesN5YYKbC5uxlsy0KE3Bng+mttAw2V5M2drMhgwhXItnDvs
	3J6YoAai4Gfc7+Al6eQUsDeR0hp4lJimhDKGdsyd4Ip8rb1LH/+p5hY1IAna5mlLVvt6dVfF1Xj
	f6qGvzTIoS9qoYIDduOzDMGZ757jCqT3Ui1v4QC4vpFrbsS2M21k9EoNJGZNShxQpBosDMzz4n8
	84pIzBayYeXQ4X1qw==
X-Received: by 2002:a05:6a00:2e1c:b0:899:55e9:880b with SMTP id d2e1a72fcca58-8a04be570ffmr3463065b3a.14.1792305370295;
        Sat, 17 Oct 2026 23:36:10 -0700 (PDT)
Received: from [127.0.1.1] (2403-580b-35b2-8--43b.ip6.aussiebb.net. [2403:580b:35b2:8::43b])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-89f57653ea9sm2718874b3a.32.2026.10.17.23.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 23:36:09 -0700 (PDT)
From: Kel Modderman <kelvmod@gmail.com>
Date: Sun, 18 Oct 2026 16:35:31 +1000
Subject: [PATCH 2/2] arm64: dts: rockchip: Add headphone amplifier to
 Orange Pi 5 Pro
MIME-Version: 1.0
Message-Id: <20261018-opi5pro-amp-v1-2-05c84e91bf6d@gmail.com>
References: <20261018-opi5pro-amp-v1-0-05c84e91bf6d@gmail.com>
In-Reply-To: <20261018-opi5pro-amp-v1-0-05c84e91bf6d@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Dennis Gilmore <dennis@ausil.us>, Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kel Modderman <kelvmod@gmail.com>
X-Mailer: b4 0.16.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_233611_401813_C387852F 
X-CRM114-Status: GOOD (  10.22  )
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

The Orange Pi 5 Pro routes the ES8388 LOUT1/ROUT1 to the headphone jack
through an amplifier enabled by GPIO4_B5. Without it the jack is silent
apart from faint leakage on signal peaks.

Describe the amplifier as a simple-audio-amplifier aux device and route
the headphone path through it.

Fixes: f47af8ebbe53 ("arm64: dts: rockchip: Add Orange Pi 5 Pro board support")
Signed-off-by: Kel Modderman <kelvmod@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5-pro.dts    | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
index 783675337a..f5e43dfe1e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts
@@ -18,13 +18,16 @@ analog-sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,aux-devs = <&headphone_amp>;
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,mclk-fs = <256>;
 		simple-audio-card,name = "rockchip,es8388";
 		simple-audio-card,routing =
-			"Headphones", "LOUT1",
-			"Headphones", "ROUT1",
+			"Headphones", "Headphones Amp OUTL",
+			"Headphones", "Headphones Amp OUTR",
+			"Headphones Amp INL", "LOUT1",
+			"Headphones Amp INR", "ROUT1",
 			"LINPUT1", "Microphone Jack",
 			"RINPUT1", "Microphone Jack",
 			"LINPUT2", "Onboard Microphone",
@@ -44,6 +47,14 @@ simple-audio-card,codec {
 		};
 	};
 
+	headphone_amp: headphone-amp {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&headphone_amp_en>;
+		sound-name-prefix = "Headphones Amp";
+	};
+
 	pwm-leds {
 		compatible = "pwm-leds";
 
@@ -233,6 +244,12 @@ pcie2_2_rst: pcie2-2-rst {
 		};
 	};
 
+	sound {
+		headphone_amp_en: headphone-amp-en {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		vcc5v0_otg_en: vcc5v0-otg-en {
 			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_down>;

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
