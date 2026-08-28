Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A6CCC61DCB
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 20:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O+JL8hmuX+R+EeQdZa+3QC8wWLFRH6BUu2aZrBV8N1A=; b=XfZWevHhk3gIft
	JOdfJbqM8Bs4HzUts0AfxfOlPQ9lpBoCik8L7kFx41wsXQoxWf0sGDBNAMs3jr2wsO0L3i1dkWRXo
	tKJypXvSpct8d9IR7OQaYEq8zp9b0zrJCJqddwQNlJviH2xJT9BWmx/J6++nOUjNs8KymAiO+MSrj
	pXx3RM7IJqhzATeknoE0JW0UOO3tS3xK1yNTbsWXDdZjeQU7jTELyek0LTHYu5j9+XdyVkeYYoKwi
	leTBWQ6kPwTiYalHHHFDug4MjBLb/iEEjeAdlDVMYlGcTTr2S97S5B2eONPHIjycE7Q4H9DKGJrxF
	IkDSHlLyb1b4s3uJZ88Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x03bw-00000006QJy-3GOD;
	Fri, 28 Aug 2026 20:55:40 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x03bu-00000006QJK-0rDt
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Aug 2026 20:55:39 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7ec1e9d3359so1540563a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Aug 2026 13:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787950536; x=1788555336; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=6moimaGhU35+7wiVcKN5sTnTB4vEOgWCO5j8Ay8GP64=;
        b=h3WbDSkysyT1SboTsIFXVGfUigE+IckdoFxwGYNnaL5kMtwHH8N+A4jrJhx5SW09I4
         1MaC1Nk1jQAMb512Lf4lM3ak2oyXG7+UarGbq8ik/ct9BqFE02tVOcHcZsmdRL30Pl7a
         IpCpwB5MGlfKO7jayrC73zXxKKbnLm2MlPnDqNIMk3VnaaAYDPrGKcJE5OQFXoXz94+R
         bqlQH78A0vZy0ZYWmNXZvEpPmEVFCbYKmv52sB6t4dD+tayKCpk8FzXA/TVsCfwjGIWM
         szhMc+pWStef6OSUOjGB9o9+BnMat/z1QsYfbBHT5YwfM0v3RzusOTNmdU6DML01NN3u
         zPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787950536; x=1788555336;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6moimaGhU35+7wiVcKN5sTnTB4vEOgWCO5j8Ay8GP64=;
        b=pwIvVDmzaDPhSi/g1Am50EzHt+hi0V7mC3BMG7VJLTfssrDZGPXsxk6fbc0woJd9OV
         KICaYitS1ciy8/Xo1hOanj8ELKQ6yE4gk+HCoDsosD6ONACWGhKoViPg7scnrsoDMOpx
         B/osZNRT7wu1tGAQUVAqeayBFHBj+jX2Eya8lbEVm95Bxn+HtwR79PYm6cCHC2gOTrgd
         umEDTysymSaKbFoowT3WyPpvcctl57lYFLFZEWweVlJccp7dBfQAhheT98PH7XZOGAgf
         4KWmTdh+MMixIREV9u8XUrdgTyjkJR3BI4DCY0NvK7o389769DEAEw2hYfLjAv/8wBbR
         ZkFg==
X-Gm-Message-State: AFuF++miAtY1tNtr+aNs70VV+caMQYNEQhjITpSSNc2Drl+bZ6C0tJVb
	aApw6a4JVtt6tqaP8k6n+h3b9BJBKfIKAD7SN3w58RAqjC50yDM3JPAqJ3oulA==
X-Gm-Gg: AR+sD11eifttQXkrB9ee4tvcNuTmoMTcX8dwmKUdNTbqOzFZXk3oQAUBxHKNxan/yU3
	Or/HcJfCSnLXIE2Aapmz3PtuBVNyeH/lcBRUHUdDLn2Uf7lUXGFTBMZXK/Ow3zKDYUvaF8wg4VQ
	jN2k/t4DwrQhORWrXVFUCPm5IFtdveJKqdHUp9cL/UY4LhP3AJUqMEvdn/pCx/CWlrfG72eidcn
	RXEeDK4NuZOtxQERAIkn8/REEXkayLFv4ne2tJCNZO+DtqDKmdXjo8u8W4dIk4+Cx9borxtS5xn
	C59SmrUHH0nE2tG+zmhkOZQ3sq4dp2Y+pQ3rPyx6aAHAd9IkFUL+l0wrftEAvAd7+0WgctjTaw7
	/T8gypuh2p+vPksAHtJuH0VioQqts8vPf4IQ1wM4yba/0RcZw33Y5NolHeSBx4LUSGhfrUCL+iv
	VTTsvJR+20A0ToHDPpt3A4OerUtxMeF38/if7TjH3sv7rID/QGggwhEt3ykuxfbhrPD0zmjA==
X-Received: by 2002:a05:6830:6d0e:b0:7dc:d967:63de with SMTP id 46e09a7af769-7f4f23b74aamr12473717a34.3.1787950536215;
        Fri, 28 Aug 2026 13:55:36 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f4fa6bc42fsm2035178a34.6.2026.08.28.13.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 13:55:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Correct Device Orientation
Date: Fri, 28 Aug 2026 15:53:31 -0500
Message-ID: <20260828205331.78185-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_135538_273188_A5C7A5A7 
X-CRM114-Status: GOOD (  12.76  )
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

The display, touchscreen, and IMU are currently not oriented
consistently. The touchscreen is 90 degrees offset and the IMU is using
the default mount matrix which is 180 degrees offset.

Fix the touchscreen alignment and add a mount matrix for the IMU. When
the device is held vertically relative to the display hardware, the
touchscreen 0,0 position is in the top left corner of the display
(next to the home button), and the IMU reads the correct orientation.

Fixes: 4e946c447a04 ("arm64: dts: rockchip: Add GameForce Ace")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 230aac005e8f..d43eb48152e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -596,6 +596,7 @@ regulator-state-mem {
 &i2c3 {
 	status = "okay";
 
+	/* Touchscreen is rotated 90 degrees with 0,0 position near home button. */
 	touchscreen@14 {
 		compatible = "goodix,gt911";
 		reg = <0x14>;
@@ -605,10 +606,8 @@ touchscreen@14 {
 		pinctrl-0 = <&touch_int>, <&touch_rst>;
 		pinctrl-names = "default";
 		reset-gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
-		touchscreen-inverted-x;
 		touchscreen-size-x = <1080>;
 		touchscreen-size-y = <1920>;
-		touchscreen-swapped-x-y;
 	};
 };
 
@@ -641,11 +640,15 @@ channel@7 {
 		};
 	};
 
+	/* IMU oriented relative to panel, which is rotated 90 degrees. */
 	imu@68 {
 		compatible = "invensense,mpu6880";
 		reg = <0x68>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PD3 IRQ_TYPE_EDGE_RISING>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "-1", "0",
+			       "0", "0", "1";
 	};
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
