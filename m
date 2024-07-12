Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90C72C2BD09
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 16:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBOw/8VYOOmpO1mfWGbmFvIDZFBeBPjGeXlUYOrVC+U=; b=qJiMkBSSJpRpgC
	QgG4gmrxY0AXxIEX5nZtwCvd5X482EMzBb3Degkd38IYYgxSa0b7wyJDzBdS5enTewezbkbRvJmWm
	y/EgxB13ZWB7YZKSobqWtfgLYd1AFLC7TVQqwc4S6LcCI138vdIbsvEcGtndP/oU6VLURdkhKsV4o
	ixBBUNTXeyYsZVApYKY3pJpp/HGewM1yDJEH7CCxC3s3c+yYy4oIKWu+cacOLaBjifkuF4fvlrsbU
	BsHzAfm4xdD5PmLV8hw47mPaikLrrrUzCI244VR5WJwcwyUT/2zA3LW6AQwhvbyBAJN5UBA0TcxEF
	88Se6kt2o2Ki37PVepzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSJQh-00000000ix3-2rIp;
	Fri, 12 Jul 2024 16:47:31 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSJPv-00000000idG-4500;
	Fri, 12 Jul 2024 16:46:45 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-71871d5e087so1573926a12.1;
        Fri, 12 Jul 2024 09:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720802803; x=1721407603; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0p6c631FLQWoVkBf59WViemKYmG2YbdNp5MW1ulJ3U=;
        b=EA43wDuFSxTXwwRCP0mNFEAeZLzVyuuR6L/q/wT1TwdNXjMToDwzsbxu6bjaIZlaTz
         7hP6fnv7eXrDtdGzfbWKe8XiRtvetjkEMAIpBtpFBqcIwVtb0HL4ABCAiXw41AmLqqCy
         j44CvRdsPZYLHNoAFdwMY3ZcCrCMmtfMXQdTEjkvQjcta4rCtRfVfFesH7J0qlFa0HVV
         2ANIeXDIDoC90rsGzBvgBTWC6jnDDimLILE0ZbgLYny/QWsnzpS5rpdagDhlfUFMONxn
         l3LKk8Jk1BvRFLmrlsrw8ceabueq7O5vVL72rUzCNgA5jJgK/u9YPELd8u9KqGNNf+F0
         HfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720802803; x=1721407603;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0p6c631FLQWoVkBf59WViemKYmG2YbdNp5MW1ulJ3U=;
        b=hPStPB3XskZ0BC5dx+YZ7C3Ps8Qatxr8SziiEBVLfBHUD1JM7WXxucrBKuqVJMV8Vy
         uZlHgri6SIhG0AvN2T45zPnzMZ2vHgtrzVG3Uyvk8PWoo2FyKWf2PY5OA1IVtVqzjkag
         Dk8efPjRRmh4yp6UoanjKrEqOWV1hLYimeLnHbmd7ibs4Xg7/WcSma6krkw75Fs0NLxU
         uHGcU/SBAhySZdDQVMyX4GSYlEizDMyqnm1+9t064nxHfLIetb33qtirybtoBWMX11hD
         H1GVEbV4Sv5MqCYUIQm6H9iWWYUSX9OF7G52/fys395RVulR5EyjXOR2s1OT7ix7WfDI
         U6og==
X-Forwarded-Encrypted: i=1; AJvYcCVpG0ObFXILTFeduX6tD3AlWEw4yb2WsH1doLag+RfqZZKK2CnIjP7fIZEkvKt/LcNTM6lkNVp8Uaoqlt7/jKC4TI4DgWJWeKxsxa90O9bZVg4jFnSr9NR/PBjMXF6FmwDEmaoyVQYi9U3gl3wZIAyspsirgfAWWnM=
X-Gm-Message-State: AOJu0YzZD4jxgQcLXOlbYwpn7UwSS9oJ03uEZ/hXD6iGotgo0Ul7YcMG
	MQDBYwGB9rmOf4EhPzGfSVvPQPVE7K+OhX/zOmCs47/zfGOj4ro2
X-Google-Smtp-Source: AGHT+IFDNxRREJPmJRLCYo6XCextG0QrJvySxgtmRlqYBjRTxLmp/vQCGH+/Vxt91Db5JSs0j42PXQ==
X-Received: by 2002:a05:6a21:999d:b0:1c2:a0b2:e69 with SMTP id adf61e73a8af0-1c2a0b2110bmr12269918637.33.1720802802998;
        Fri, 12 Jul 2024 09:46:42 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cacd65a663sm1765436a91.40.2024.07.12.09.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 09:46:42 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH-next v3 2/3] arm64: dts: rockchip: Add missing pinctrl for PCIe30x1 node
Date: Fri, 12 Jul 2024 22:15:50 +0530
Message-ID: <20240712164554.1763-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240712164554.1763-1-linux.amoon@gmail.com>
References: <20240712164554.1763-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_094644_033839_99DCD835 
X-CRM114-Status: GOOD (  16.24  )
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

Add missing pinctrl settings for PCIe 3.0 x1 clock request and wake
signals. Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Rename node from 'pcie2' to 'pcie30x1' to align with schematic
nomenclature.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 721e87a3a464..c5ac233264fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -318,7 +318,7 @@ map2 {
 
 &pcie2x1l0 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie2_0_rst>;
+	pinctrl-0 = <&pcie30x1_pins>;
 	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
 	status = "okay";
@@ -364,16 +364,24 @@ hp_detect: hp-detect {
 	};
 
 	pcie2 {
-		pcie2_0_rst: pcie2-0-rst {
-			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie2_2_rst: pcie2-2-rst {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+	};
 
+	pcie30x1 {
 		pcie2_0_vcc3v3_en: pcie2-0-vcc-en {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 
-		pcie2_2_rst: pcie2-2-rst {
-			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		pcie30x1_pins: pcie30x1-pins {
+			rockchip,pins =
+				/* PCIE30x1_0_CLKREQn_M1_L */
+				<4 RK_PA3 4 &pcfg_pull_down>,
+				/* PCIE30x1_0_PERSTn_M1_L */
+				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_down>,
+				/* PCIE30x1_0_WAKEn_M1_L */
+				<4 RK_PA4 4 &pcfg_pull_down>;
 		};
 	};
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
