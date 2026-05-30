Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45909CD6E51
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 May 2026 03:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T22qfWBy9ZHgyoyda7G2Ezkr8Rjjt/hkULpIiyX8d94=; b=Zll/y/NgMbuQkH
	p9rLHWOHdvvcol5czVtFVbqwJQJ35eagiSUvbEmPIeycHWawvrO0GHxcCd4j5G21zYSR7QUde8DN6
	oowqlJrUVNZQ3e58yP1TB3afLa6OR9MWu5VWnbErXsey6oVe8IRjHJTnr2cPSedBES2veRUWn8ueq
	K1/DtwwJRMt20ecu6x6Iwv/pjhr0ZdSITJd2rT6BkIKMSBR0Si6GqP5PYY6JxxPNMnm0ZLy0JiPZ5
	Zs6/nfwjZiKIKjIEgUaX613psebywLp43sHKy6I/H+vTFErW3ss7bSXNwksJBvPqX+dfv+EeZ9zlr
	vtVZ1tm4qMyBQ1dQpDXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFV-00000008PTL-2vyJ;
	Sat, 30 May 2026 03:20:33 +0000
Received: from mail-oi1-x232.google.com ([2607:f8b0:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wTAFQ-00000008PLi-3uX5
	for linux-rockchip@lists.infradead.org;
	Sat, 30 May 2026 03:20:30 +0000
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-485433a6889so2713920b6e.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 May 2026 20:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780111228; x=1780716028; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=NantX0QfAiE6HvKTqVFak6JxCdV9j1GCSPjX2Uii9hExZ6Lo9ZbMf4FBgCISj9ORHV
         fLCF8CNJrKA5NHhNek4d9C0Ub72Zo5aXy/2lvnJ3H5PFIFckbaPDT8gd1wYms1RJQxG4
         M1rUZVAEC3kVjkeoOHgL1eTuBwcd9Y1/Zz+OhzVW63rOzptE0H7IZasrnOWsWhmCJmKp
         hRrdZAe4U59S0Ag6yeLa137OjQaRnCDos1VKX0G75GF1TfjohUKDVcRWT6JDWCLdPyvZ
         ouym3jNqn4hj8EFcntsAYt9F6B9oft/vor+lHfDwr2AggDpjH8xg4qLSndlWoYMw76/b
         6ueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780111228; x=1780716028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wNoA18UrHfHWWifSIaqhsuJYv6mLpyyKyk6HN99Blw8=;
        b=bQuGl90rzuzBsfOx0rlsOXKJpTPScoVRQwA54Qz+2QGQoskeY02S1ZJVCab2fOsasS
         cL/zWyjUVSOFvwUNUoqbaEpSbOs9v1aiEdxAFeaiM6fJDXg9ZPo6ZQ4TrT4Rl7i0c7AT
         a3f9om+YL5YxzUqx0Kas3S0PzIZSCvBCrqRA7OrY8BDoSWJvecFwgtYNPaExb9IOxd+h
         dDcTOVUnWpCruK/eN8+o37T7DyjfQUUriZE/AKFIC5O8II6/AhNu7fmWUHiRuoeuNO/b
         vDXpiJSy5+XPBclJDFCjml+M+EkNijifyLGwqVfQlUFXk9daCgT5XkSNMVRpPsbQmrhP
         NihA==
X-Forwarded-Encrypted: i=1; AFNElJ9g9A/j0JqtQUUmxIoPkJ3bsYaabdpaBhxOtKmrUcOAeDHe9yZuXxXaGwUBI5XXtalWW7LPknGBgKfOLZMc8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YwqiEnXUJDQXGI5JL8NvUXrR5ImNFncY//OefanPmPjXAjGWotn
	Pnk4I7idOEYmyGeIOJPvYr78h6lbBlzZUI5toUSJeFAcfUPvmp+37jNe
X-Gm-Gg: Acq92OEjbn9ROydsJcxksPGHAQtgAL+zLaTtMoEH4T3wYA/zXi4gjPmKESe1t1jYSkE
	ridxrNCJ1tKCbQAPgpLoMisVm/r7n17fmA4q6IPHCklwXN8ugq1E6GXTeT2NEKgLgY8R8G2D33i
	n387+tiqbxb5yxPE2GGcYqfBmEa16PlzNLrdaEuqvmo7BJZ0Pob1hQq5Dz60XroZJAjJELpIomV
	KDpO8FNBTwxhs5QIm1N/pJo+GPo1NUS5/A9Cc5V8alYZnvwfgQU/2NglwCDKCw1QrnjE/5/dGsL
	0Ml36vitnvRcyUJpdCWQhU4PpBgxo0S1AjjB2RCDps0W6+/ZBhYjWsRGkg81MI9nKBFgxSEM0I6
	bizU00QqW7J+wX0el6WBQuc1QlBeJzZcp5T+FV1kRiaxrePSN3fdU1C9R4tAgVGvZb2X7kGL6IX
	fosv+J4Yc8YmKmkBRLITEckJinBQ0wlD0=
X-Received: by 2002:a05:6820:210:b0:69d:5be9:d073 with SMTP id 006d021491bc7-69e105f7132mr1038228eaf.53.1780111227877;
        Fri, 29 May 2026 20:20:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e067e911csm2130737eaf.5.2026.05.29.20.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2026 20:20:27 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V9 11/11] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Fri, 29 May 2026 22:17:38 -0500
Message-ID: <20260530031739.109063-12-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260530031739.109063-1-macroalpha82@gmail.com>
References: <20260530031739.109063-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_202028_982949_72EBD59F 
X-CRM114-Status: GOOD (  10.51  )
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

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..875ca884deca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,18 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		interrupt-names = "INT1";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD6 IRQ_TYPE_EDGE_FALLING>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+		pinctrl-0 = <&accel_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c3 {
@@ -932,6 +943,13 @@ &i2s1_8ch {
 };
 
 &pinctrl {
+	accel {
+		accel_irq: accel-irq {
+			rockchip,pins =
+				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpio-keys {
 		vol_keys_l: vol-keys_l {
 			rockchip,pins =
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
