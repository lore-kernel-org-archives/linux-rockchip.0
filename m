Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DE9CF2564
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 22:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RCTUTZNMpKpxHL6a6ATOLnA/jLrSCnElvbYUZGbRjE=; b=eeO/c1C9HpkCOb
	RGHVKV/1PSwbPNkzTWZCjFJDv+e4o1j0iE5aCI3y2dfgeF+QHZRBp1khvYIkJxKOZEOGkFOeCaU8A
	oOrZAGoWgd1Hk3RVI9YUq/AYCUqGJps/dO/9dl96PrY+ycY8FuQviiQX+bBnrKtjjwvzBsZrBlqb5
	DRZK6j+QhxnmTYMrOhsI8vLv0MLJZm+KrkWUMSMzqP1FALDOiHZT8DDl8O7MRML4jCXeBHy3M92to
	xvLu4//QYlRGMiRvzYdjmdqPv4wbCnBXUno4rSeiQsDy4iEnEZMm7CLiDMVt3oG+3gpCYXWgvB44o
	7q7pJE6OP0YMS4tDUiDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGI-00000001BVp-0nr2;
	Tue, 18 Nov 2025 22:33:22 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGF-00000001BSp-0o3M
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 22:33:20 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-74526ca79beso4675197a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 14:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505198; x=1764109998; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mDRvRAZ914Ruy74VnImJGj9WAIWsIdFLFqnLvhLdMU=;
        b=fJLIJNRPa0Uoxua3A+NHo79HZczDX811I6RllmN8NrEJ3nb1bYLH61FjyonnHRqVfz
         aF3hZolI84QKPDmDCxfHtJcA8Q9ABrB5M8NKA+cbux5NEPWnjnL0GUDHSWzq7mkQM0k2
         WVeui9lLXxC4na1pMVpxTgM7tUa2gR1GyOIGzejaV8bu3JeGkeBSSgNYRKd/aEDp3u+G
         DgDPtjyh8d6bD4dgjH2ooW6ZMl30AU9Dv4ljd8CdGMCjGHuX+SeGThiNS5WxmsyKnMNk
         lP87KaWbhJI+y/mnzYHksKEdgdmPnJ7LUHWUzz85j8s5Anvg0b1/6rWbPhm8Ofr8S5bT
         DCrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505198; x=1764109998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+mDRvRAZ914Ruy74VnImJGj9WAIWsIdFLFqnLvhLdMU=;
        b=KWIeQ6VUhV/Ma87+iSrxYHz/pZ8m5Se2kc4b9izDmAUqK/n0kJ9xEuyPb5doeWhngO
         WubUi8jituodgrwVTYr9eSfmKtcvcL/0HSmfGknvGIIAbFYuNmXRDUzVSYE+4LqBd7JB
         c/DED7wttrntIXiJHjoKwkQKsYXT2tE2p1fWOkm+W3hgEsO+8vxmcrdlNJxPcR3kW+Bc
         0eLMGKaWbwbNktvzGkBazITgHlbumuf7T+0j3Ev3EBTOX2kDF93RsofyqfcdXRULa8Xc
         BCZzAglVxkIotcLVN9Wawmu9VbfaOwo722QPji9Ro1PhDsKAx2+MDx0MMpNE+ZoscqQh
         nE2g==
X-Gm-Message-State: AOJu0YxM5m1bMOOX7aJVVtEsj6SCmqvJZOhNUhZ40MOigP2QPfWRvtMe
	hgDb54lUQM6IAxiVHiw2Y5rkpx3czhRXTnbEQnTulyKgw+xHoWaxF+wq4suP6w==
X-Gm-Gg: ASbGncuIXBUgFBdlwiDxj35Uopdg0rMWgEKIGEWyL3XwFhC8s6CI33LM/MgCDGfiZvL
	S6tgU0h6rp/l7pHNEKy8JZTXN/S6p/Bs+UUH/jDK9IXPiwIDxdSJsxzwDEKn8H8fS69XvPD8zUn
	duo9tBEKzlNR2o6OVHaAkzmTav/uuGlm3rTFwhhk/WZPJCd6YSyPdFziRfsw8TbE3i5IMeKCF/c
	ErzAI10lP0y9rR8+4lYdGMvN8VChNvJ/LhKgP8VArR2BZumduBhnCYBafohVC8jZjVSNBPj3vQL
	Vn/2LCtHMt6q7YJZ6NCZcreNs/IqvUBMpZaPyR9dkUm59zE4S8DZ/+BP0PJ3RmPTS5Tk9oWW0oy
	kbS/h+GETw745Bsbbc7WjfmOk3/F4tS52c48xgYChwn8nG2m2yYFsihbJt54aYWlvDNruse9CPv
	oaxc4r50n8
X-Google-Smtp-Source: AGHT+IE1kZ7VlWSJ7cAjxcfm1Utg0/toDq2y2/Ys8lMMnu7WXgG20PEyqdkaXDcxyN01DfwnSMdq+Q==
X-Received: by 2002:a05:6830:3881:b0:7c7:61e1:444 with SMTP id 46e09a7af769-7c761e10626mr5268313a34.19.1763505197947;
        Tue, 18 Nov 2025 14:33:17 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:16 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 4/4] arm64: dts: rockchip: Add host wake pin for wifi on Indiedroid Nova
Date: Tue, 18 Nov 2025 16:30:48 -0600
Message-ID: <20251118223048.4531-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_143319_794950_4078FAA2 
X-CRM114-Status: GOOD (  10.78  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the pin definition for the host wake interrupt on the Indiedroid
Nova. This necessitates adding a node for the wifi controller to
properly define the interrupt. Additionally, we can consolidate both
pinctrl definitions under a wifi node to note their common functionality.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 30 ++++++++++++++-----
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 7233e290d0cf..174d299cc6bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -525,13 +525,6 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	sdio-pwrseq {
-		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb-typec {
 		usbc0_int: usbc0-int {
 			rockchip,pins =
@@ -543,6 +536,18 @@ typec5v_pwren: typec5v-pwren {
 				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &rknn_core_0 {
@@ -593,6 +598,7 @@ &sdhci {
 };
 
 &sdio {
+	#address-cells = <1>;
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
@@ -604,9 +610,19 @@ &sdio {
 	no-sd;
 	non-removable;
 	sd-uhs-sdr104;
+	#size-cells = <0>;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "host-wake";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &sdmmc {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
