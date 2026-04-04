Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC1DFE63FF6
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Apr 2026 19:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lhjsb6+VtimBUiv627QLNvH71K6fVdso+MUNbdQ7+vI=; b=fNf751Zys5ZgUu
	dpXE/ZORAdosy/Qrc+qgrQH0DT2FYjqqzNuQK/tfnvwv4Y2uQv0zUj8F4nKwv6QSvIQeM2/Di9plD
	/1gSvHXSnYGh7Qgq94YDdAhRQdYwnIEwU1t+2lU39ESZl8Z9lkWwhEPhSW3BPWJP7f1m7xRGlQOpy
	qgS8bXsNndnifT2ta89JQ0d7Ap7JR7i2r5TAyjeDXpWYHNMnS4Bz1Pva9HEsczHwG3xF6mEUt+tXZ
	j697Ti28RJnlhUyOssP5ro8kEywiQG2H4EpKfp9EkBSpgX88ThH1sbX0/rib+y6tkDwQVDQ25Hv7L
	IymXU47SXCq/Rtp3JoWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w970f-00000003iDQ-41hX;
	Sat, 04 Apr 2026 19:50:21 +0000
Received: from mail-vk1-xa2d.google.com ([2607:f8b0:4864:20::a2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w970d-00000003iCo-2Ik8
	for linux-rockchip@lists.infradead.org;
	Sat, 04 Apr 2026 19:50:20 +0000
Received: by mail-vk1-xa2d.google.com with SMTP id 71dfb90a1353d-56a8e0ea02aso3261080e0c.0
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Apr 2026 12:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775332217; x=1775937017; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fFw0d3YxVX0IoKpqo6KQF5VmNpCfzzBEIlKe5xv8oSw=;
        b=ZxUeOHYtaBGnikK4GN6OQUyzJ1IMptnHYkTjDsdA4XyhVLBJJ3wSql5AiVyUVSJfyd
         af2tthgKRYRmTmPJcBWLUFciv4TfdXadPU0JFiuyj2WWI4BrXuFHKls7UhX2J7JQVFZe
         rvjEgrAbsMu1BN5gKSWxXuxafuSzsbWKClFPqhy3Xo02G2sMAuwuC+HxnXClPTRZ+7j8
         M3bdJ3DA7x/XeLw0OTEeG9c4Li4r2YJHiGVcxixLE+AoRuKnjevC6Bme01XHvsQM7NJ0
         +4G9juaMXNVet+exy1ZLnCPAej9ANgZ/O89ap2sbYl0q1SS2nGeQo0WeDm5lU6Al1ie4
         95WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775332217; x=1775937017;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fFw0d3YxVX0IoKpqo6KQF5VmNpCfzzBEIlKe5xv8oSw=;
        b=RZidsICn7BvcRZUPQhLcMTdaic2Ri/SQNAWTk3ndF9SVCPntKADxOtMABggIvzcC5m
         /N+X0bYPboDOxN8t2WcaMc914QcR7AkWO+0pugAbCqZ0Agah9SpD3nS5OAqLKehEAG5C
         aU8aajvBEsEnuzmpT3SIlfBW7w8L3cBpwe0FqDBwG8y56BgV1JqfTg9TC6HK+ooDJCPN
         RM29eVNoED38CU6I/5HNOwcFkDzqOgxu7Ghy5Qr4qUze52Y17VHAYIMvtgCl/mUbfwHC
         p5ZhksR9Y2ADOmN8zJihF7gL9n6UfxUv56zO+Q9Cl1w7J8Pj3WKfBLJlH5mCvN8uFKCA
         5yVA==
X-Forwarded-Encrypted: i=1; AJvYcCUT0x+4KYpUQ1VXA8tpdGf52Ms8Y0B1GrNLOV4HEjCiISfIlA+txQnyJ5+zPsp1RibAdSqsDWWKCV+HGof8TQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTIBQzlKsn+O/IgqMhKWWbn+W3GlfnJ3doc18/jJPfjxg58p4v
	/8WBQ7x3GepkIylKQ1H1O9Vrm9TVxwhZ1TGtcVgKSs6wgMEu0qxAxJRn
X-Gm-Gg: AeBDiet0JqP03CMu9S7anRVftBAJmuQ7ZHVWYQHLGOp18kkDAUoSd8GJ6/4qEArBp9A
	1YRglDr4pwxTDxLdI2OJRnaTo50X3XJ8b1h+qX7Y2eStoSBMCCv4d8GD48UtpqMIZ+KQcvofP+A
	caYcobGsveL3/Yice/yIt2MaitPKPrMyRQlaVzO0BxWwGCV30LT24K1e432ZAyl/Miuc2CooVoW
	8P51sddgs/ZNDAvld6D3IyujC07atcCPtTTCwwbf9tWjs7V7YfEIR/eW1A5OGCMT9DXzoYa4I6c
	laM6wN/L1pOSvcPINMRXxf5HGHfnxVpewE9X84Mn5u8JdtDkWcaDfHL1jsTPtzq+sT+vDXlIFRY
	uLfQz4+kdNgmptXp5dC647ncJS7iqXH6j0OIHPfUK+ipeyphhCC28X/aJZnl9AQ3ZP0yYr0KOrZ
	pCwa1563AOs8YCg507kcMkHB7yuqmp4MWR3kIcPeiFdDI9BlQkBVzgEUDk+HaPJXvyy2H0pw==
X-Received: by 2002:a05:6123:28:b0:56d:b337:4709 with SMTP id 71dfb90a1353d-56db3374a26mr1454973e0c.6.1775332217583;
        Sat, 04 Apr 2026 12:50:17 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:fafb:5a7b:510a:6309:f015])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56d9b8d22b4sm10695521e0c.0.2026.04.04.12.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2026 12:50:16 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH] ARM: dts: rockchip: Remove invalid properies from rk3288-veyron-analog-audio
Date: Sat,  4 Apr 2026 16:50:08 -0300
Message-ID: <20260404195008.1951910-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260404_125019_631367_8ACFDBEA 
X-CRM114-Status: UNSURE (   8.41  )
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

From: Fabio Estevam <festevam@nabladev.com>

The 'rockchip,mic-det-gpios' property is not documented anywhere.

The 'rockchip,hp-det-gpios' property is not a valid property for the
'rockchip,rockchip-audio-max98090' compatible.

Remove both invalid properties.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-analog-audio.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-analog-audio.dtsi b/arch/arm/boot/dts/rockchip/rk3288-veyron-analog-audio.dtsi
index 51208d161d65..25c7c0667856 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-analog-audio.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-analog-audio.dtsi
@@ -14,8 +14,6 @@ sound {
 		rockchip,model = "VEYRON-I2S";
 		rockchip,i2s-controller = <&i2s>;
 		rockchip,audio-codec = <&max98090>;
-		rockchip,hp-det-gpios = <&gpio6 RK_PA5 GPIO_ACTIVE_HIGH>;
-		rockchip,mic-det-gpios = <&gpio6 RK_PB3 GPIO_ACTIVE_LOW>;
 		rockchip,headset-codec = <&headsetcodec>;
 		rockchip,hdmi-codec = <&hdmi>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
