Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7022D0BB4C
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 01:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Lqcf74KSJs1yP/8iRCrPJc8Rza1EzVazv56DqYkWRE=; b=JYD
	gbvrBDHV+OV4vkLfEdiUJqtuhZkOuyGQ1mKbzeW6oM0WghqW//Y6xW1H9Z0C1YHUG79LbIKeIv9/t
	E/oGqdvijjaMkhrfvsyQr5q/D5tyt/DczoN8H5E/1NSfYpDUroCn21M5x1uXFFxv9tL2Do8KfS1U1
	tTZuSZjfCdt4yqa93RO6ufnUVy0r3AlMsHuTIH61xpTOWKKQmyDonGV6QBhLdPKENcT3dmQuwbdPG
	5rKgf/r9fsh8NMTIygU+D+jjyhtkr0ERSEOEUwaIk1t8jBolzpMW9BEP0pPPbvdbFHfmC3wrNHzzO
	GjxyDZ+2ig4MPPSGFZ4iY/TKM31XoLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3mej-0000000GPql-19fN;
	Thu, 24 Oct 2024 01:28:53 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3meV-0000000GPo4-0z7F
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 01:28:40 +0000
Received: by mail-oi1-x22a.google.com with SMTP id 5614622812f47-3e5fcf464ecso325090b6e.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 18:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729733318; x=1730338118; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3uPjqbZnGt45u75+pVjtSMOBbPqo0uPCU2rHzaPyTOo=;
        b=mamZHxq7JPhg4VRZ4knBDwhfISaarufhcmZMGFKCbSWh0kAPXvdaiTq8NWMyclUrSE
         4nNqjzmYwGB4qG2lypWuwHyG2oUT9rp3KhJAWIWxCVmn+hELHVt6ZMeI1d5LM7p2KqSx
         oqigWQaiUM2ZvL9CljAtyuq+5YBTSlKeV6lMCgZEBoPLfJ9d6A3wrjrYwzsRUuiOkcBz
         FQqCjxYWxiMKFawWZBX5ubq/5ka602TJCw3NeF5GT9AtLfp3b3jMv788lmMeuz+Gti5P
         K/vyqGeTf1JcQqJPC8dJM/TcrYwwuSo8AbH9q/h3HGkhRLN4OVaLOH8kmkGMxm9u9nfH
         Vv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729733318; x=1730338118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3uPjqbZnGt45u75+pVjtSMOBbPqo0uPCU2rHzaPyTOo=;
        b=v6PiDTzEKupYtdDXhiUwSJxuvupJPUV2D8kSVvPDflM2f16dzLXp2WjZanxz4aKjPH
         EotNuoiBMyv4t1jOF4RcuiC+kdNRJ7P677Um81HpDIcxb8wUZp5Dd6JBB1JYTRzs0p7/
         PM/n2mq2z5q6Aqv0ABgYoB1sSk+xa2ViT7lCqcLVJY9whS+qO3Ov5SUIHej+WAZGxxjp
         gz/BJwFnRJTKkujCl9VWMSdFPwfRW4LFOmzXVtA06xcoMQgooFVOjr+YZkG4OQkLHdN7
         cFX6NVhMIsjJrowZ6qiGMzYhGfpc/LEJwwdpvf4uSCfFoUGOnWViTegoh6H4JZN4U1Mc
         5/pw==
X-Forwarded-Encrypted: i=1; AJvYcCUtvbJ2V2yfqMD3NMYk2PyhXhorubMECXFxFTgr4Yg2BlJtbUi/kLc0T7pXBklnObI4bmNVu6rI5cS05PLlHw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSvkoJQIBVbLnwwfA3p8KYhxY1620iOdW6Y/K+884Acii6wkTz
	g3af1f7hc8rLDnAk24/DPO8c4QrSME+kKGvd//Z8PwgH9UjLENZH
X-Google-Smtp-Source: AGHT+IHtT0vKO33sJIN4VASrJrH4GU0JPJXi9UULcpwOma6LCoMjQ+UHFSzu7Kk93BWWUGe8LvC8+A==
X-Received: by 2002:a05:6870:55c8:b0:287:481:13aa with SMTP id 586e51a60fabf-28ced48f7e6mr235269fac.45.1729733318102;
        Wed, 23 Oct 2024 18:28:38 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:a8b5:55db:99cd:f335])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-28c792a1db7sm2866843fac.31.2024.10.23.18.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 18:28:37 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>,
	Muhammed Efe Cetin <efectn@6tel.net>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: pwm-leds for Orange Pi 5
Date: Wed, 23 Oct 2024 20:27:27 -0500
Message-ID: <20241024012726.1730-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_182839_294121_4085A229 
X-CRM114-Status: GOOD (  10.57  )
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
Content-Type: multipart/mixed; boundary="===============0629461739888094271=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0629461739888094271==
Content-Transfer-Encoding: 8bit

The green LED RUN is driven by PWM0_LED that can be controlled by PWM0_M2

Fixes: b6bc755d806e ("arm64: dts: rockchip: Add Orange Pi 5")
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
v2: add subsystem prefix to header

Based off of v6.12-armsoc/dtsfixes in the same spirit as the clean up of
enable-active-low
This change will also avoid the DTB warning coming from using the id "leds-gpio"
This commit implements Ondřej Jirman's suggestion from the first patch series. [1]

[1] https://patchwork.kernel.org/project/linux-rockchip/patch/a1eca379d151c3f91f4cd4e1751ba389096c4f13.1692102057.git.efectn@6tel.net/#25472495

 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 6b77be643249..c78eb298a017 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -36,15 +36,15 @@ button-recovery {
 		};
 	};
 
-	leds {
-		compatible = "gpio-leds";
-		pinctrl-names = "default";
-		pinctrl-0 = <&leds_gpio>;
+	pwm-leds {
+		compatible = "pwm-leds";
 
-		led-1 {
-			gpios = <&gpio1 RK_PA2 GPIO_ACTIVE_HIGH>;
-			label = "status_led";
+		led {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "heartbeat";
+			max-brightness = <255>;
+			pwms = <&pwm0 0 25000 0>;
 		};
 	};
 
@@ -297,12 +297,6 @@ &pcie2x1l2 {
 };
 
 &pinctrl {
-	gpio-func {
-		leds_gpio: leds-gpio {
-			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -320,6 +314,12 @@ typec5v_pwren: typec5v-pwren {
 	};
 };
 
+&pwm0 {
+	pinctrl-0 = <&pwm0m2_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";
-- 
2.47.0



--===============0629461739888094271==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0629461739888094271==--
