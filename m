Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88688D3E1A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 02:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=orHf9QPbxkZFXwOJxoISd/VM3d6l/uWQ0M6BVDDpc9Y=; b=dI8cF/Eo1mDkUs
	f5xBYjTRBkK8TayTCxb4t8um+NIs0rOL1RVfqkHeTRTQEuj51MBEHqKrleaP5VnKvj1D9t5YomMDI
	ab0W64xnuPjAJzlvuW09/pLUHUksugOLy6hOGICunhBRJhHRUrfv3OCrR0tRhi0x+hME0RZxCouiI
	KdrZJA3UmCs8KZ60/hoNr5WesCibNn8ldY2/DhYQWaHLZA3jvq4+2eDUcrIJRanOzW7ITQnAlE/MF
	oo7cFTpkK1Dynq399Z2pJM57eAz2qqdPlFi4kdgeY6w/U4v9BNkk3b6Tjx+PrXrvoYKzWreqTi7Nm
	sYd0ZVOtOeeMd+I7FH1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1yve-00000002RKA-3hsf;
	Sat, 19 Oct 2024 02:10:54 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1yvb-00000002RJm-46ek
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Oct 2024 02:10:53 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3e60966297fso133068b6e.1
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Oct 2024 19:10:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729303850; x=1729908650; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p3UNTkJcEdxvJDvux04z5kH5UrF1KgWM9hMhu9zFNpo=;
        b=S9Qae+YrBwh0wwcsP8VyUDLJCDeX5gAfeIetXvls66Z5H7SDL5CxalRLNFKLXS7J04
         /M4QqFWlqhu/RppOW+ReW58spYx6OhSR1Tq5k9BrQSQTWq3Dnoi2wCGuwkl/QuK8J6qn
         KRh1UkN8XVOx1j8fOgPFHCPWreHQzCgyVkLhGhpAo7XPg1o0zgxkNAwM75uJO68+gsI/
         fSWfwlhoXREEblDOWIZ7t13/CD2GqrvP7YPNoL0tAMoiKuiLhalRJld/YSLcgKTyCbou
         3VJwdX7hXbNgbuWeCvgb9BxoZ2qlMRnnAUNzi4+YtpgJsav+oulXLH4MjgA30CSTJCtQ
         tvPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729303850; x=1729908650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p3UNTkJcEdxvJDvux04z5kH5UrF1KgWM9hMhu9zFNpo=;
        b=tpLnH00GBxBeRzOzuss6Rkcig8hDRPBAllS02oYiNMeSrHYDYo2MxvxqvDk9jGYY4F
         PeECX8BEG8oFGZV+ap1qhnXtT+E8/W2l43V8ydbrMaQCALqYrzd/l9cspA8vFyq6OOxH
         5iohKfyBSbuDhQw+Gl62v618wi7zdCsoNeme/qDSp7W/Gqiw+V/tJt5dLUwmnD4jOVu2
         6Ldlholpwe15ApL6qriOWgkvmPO279hqnOqPVvABKsFLQMPuoJoq+Ts9I9l+fly7lMiV
         JYKdRl04ZYvZbEZykUa0a8y4R06CQKwcOI/tw9LyquXlHCloCab84doZap+6xS+emkfE
         rnkA==
X-Forwarded-Encrypted: i=1; AJvYcCXJZrMrawbjfu1mebamlXX3pP5oswqvwKcT/v6Rm++aoMYOkQcjCO8vuTjaTOwXhFlDOc6nZ/flw349loh5Vg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxWEaPoJWhBdWfDYH5DnQgymDYy5v0Fki8KRfGLOwrJGa6obgly
	B8p7z5/vYFUNDS7WRnpOM2ZVN7iQGaOg1BEb62nsSTxcgvoact6Y
X-Google-Smtp-Source: AGHT+IG5dnloE8OvLuLLwG1m6Ecu4ZGbeZfHpryKvXP2d3quj2/lhhUhyKazFuxCZJGyTJ1xkye/Kw==
X-Received: by 2002:a05:6808:1884:b0:3e5:e349:59a2 with SMTP id 5614622812f47-3e602c64dd3mr4234639b6e.2.1729303849659;
        Fri, 18 Oct 2024 19:10:49 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:a169:2300:5612:517f])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e602a5a508sm673098b6e.55.2024.10.18.19.10.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 19:10:49 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Cenk Uluisik <cenk.uluisik@googlemail.com>,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI0 on Orange Pi 5
Date: Fri, 18 Oct 2024 21:10:34 -0500
Message-ID: <20241019021034.1710-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_191052_044725_26CA7477 
X-CRM114-Status: UNSURE (   9.20  )
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

Add the necessary DT changes to enable HDMI0 on Orange Pi 5

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index c2d1a2f5e5af..436c43ae8eec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -6,6 +6,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -69,6 +70,17 @@ masterdai: simple-audio-card,codec {
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
@@ -185,6 +197,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
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
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -832,3 +864,18 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
