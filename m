Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF47D0BB59
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 04:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Hz4z45IHdqTcWWni34ouUcHGyJvXmYQ5s51gysdi54s=; b=KBxlKO3alEI8Wr
	Ws3x06KXOe4hXHggXp7/qOq6/VRqDpmPIwMD8pBfRCW6vvedKFOV8+nMtZfKLox1MxFrpk5Fv1/j4
	liF/47shgtAVr/ICvvx0vx01a2MQZWz3rfbwUud7PEJnjjT9tnmYDRUdfWaQ02fXsUxjdkWE7q+4t
	xcy0YNek0PfqJFFEzHpMwsxOUvYqxpxG8yZqpruPF3l5CtAwfzOzprqvaE84fFNsOfiahpM/tY1HO
	8uW69AHmW9nmjQZkosXU8Bm7dNPlU4+ferMFrrCE4n7TJxF5po8nQctOOnJ2jvNmgaOW/5aZjxfrF
	kDHaSDZXplmP1wmsph7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3pJg-0000000GhEp-133L;
	Thu, 24 Oct 2024 04:19:20 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3pJd-0000000GhEQ-2VHC
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 04:19:19 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-71850708dc9so328864a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 21:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729743556; x=1730348356; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MW5yesS0dg6Ghl+1mHHBZGWLJt/F0oGFzRY8u9kCIxw=;
        b=Vi/fvBB13Ugo+//Zu47SNE39C+/mSjJUkP5/uSjpbpTVbSAJg4OieyDNnN+wG4/uOk
         aGfLLOzBSK57a7P1VguZvPCZsbv3MIgJezskQfS+Z4suPTXP7wdMIPK2tFPmJUCqfh/3
         /1Eo2tADQKB2GQTay+eygiYoDgwUGZTfWdxw9G/w/QwArltYqHf5Yx2Qz58rF98rXgEL
         jrMEegACuToCkkytlTT2GmvEPlpqxM/82yYJHFDqqfqqNBXpD1ytvF6cfnDAQ7j1DzFx
         yfuJKuo+UP0lbpvc0Lq6Mrc95MvD17uCVbpNv5nUg7hAIplYF91qLMnzajpLMlFqyDB3
         sx6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729743556; x=1730348356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MW5yesS0dg6Ghl+1mHHBZGWLJt/F0oGFzRY8u9kCIxw=;
        b=WQsX4in7HU8s8VuZqufFb5nLCozLFMRou7cM/e6MALXA9FpKJNSWX/8tGwKTPUEeN7
         Ly56fc5VIVHTCTjcS4vSLY2aHc7cXC43elZ8Un8oy+hhcLQXzxT2UTnBUPmrmkdEfcAN
         i278gm9EFYVeg0/ZS20ERoTOfr4ZGFh+YO0g0+bISMHs6B9MeGf0GVRD88KGfsjyf1QY
         t6+jeqL2z2f7I4g2mQYb5Dul/gGIzXs/TOXEMs9yNldJirVa5CPKapWwMaebTTdVGvLo
         aWoY38pMDVpuN+OChpWK2wKxrFYJt9O0NBOSgdEIX8j9pBDhqyXRn1eGUtar2rZyIKgw
         ni3Q==
X-Gm-Message-State: AOJu0Ywv37hce8Zo/+Bqln2TkpzdMX8DqIs/z1EcmLkcHhjn2jESxZ25
	zsAgPiEhvuzG9sTRXT30XXP25yZYDZauqz8QhN/f4yb+orIDwp5F
X-Google-Smtp-Source: AGHT+IFyYEXr+YZptsUL2hA+F1vQ5LWMEkVQDZjjgiWJ4Y6EIxM/abSBSIl90npxSipDpolhKLf2qQ==
X-Received: by 2002:a05:6870:310e:b0:277:bf1c:da4a with SMTP id 586e51a60fabf-28ced48f7damr494194fac.45.1729743556497;
        Wed, 23 Oct 2024 21:19:16 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:a8b5:55db:99cd:f335])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7182eb533d7sm2074776a34.45.2024.10.23.21.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 21:19:16 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: reorder audio/hdmi nodes in Orange Pi 5
Date: Wed, 23 Oct 2024 23:18:51 -0500
Message-ID: <20241024041851.5600-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_211917_660855_F8CFA373 
X-CRM114-Status: GOOD (  10.55  )
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

Fix the node order so analog-audio is before hdmi0-con

Audio was submitted first, and it wanted to live above the leds node.
Next, the HDMI was submitted, but it wanted to live above the leds node.
However, HDMI was approved first, so the Audio node ended up living above
the leds node.

Fixes: ae46756faff8 ("arm64: dts: rockchip: analog audio on Orange Pi 5")
Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index 4ca8b2c0fea7..792432eda867 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -37,17 +37,6 @@ button-recovery {
 		};
 	};
 
-	hdmi0-con {
-		compatible = "hdmi-connector";
-		type = "a";
-
-		port {
-			hdmi0_con_in: endpoint {
-				remote-endpoint = <&hdmi0_out_con>;
-			};
-		};
-	};
-
 	analog-sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
@@ -81,6 +70,17 @@ masterdai: simple-audio-card,codec {
 		};
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
