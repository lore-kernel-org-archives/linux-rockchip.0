Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 472BDC36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 16:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G21mEnPfMcV9PWS1NSb1awhY6uRiT54jraxpHaV2dvk=; b=zYoACxf6do1NTB
	NmBsPlBtrR3lNc0NT6BjQnvREjEJ1RYOXEwN0lt8/TT2NcEOq42ASeplXbjYMZ2ED4q+eTWPPiWYJ
	nefAjH2DTab52aqrjhIBgr5nZpEu2XlSGQlxNUNk5HeEmFUcCfvua/zZc6Ce0yNV0JVXzLeaKVUA7
	2tw296h2BAcYAJLopVtNBN1qaDNvuwkwX1eIbEPVTaNXqMx0vxdaAHz4F4AoJ8YkyFOjCfAmd3xUW
	XbjKsx/8vM9OrFqKYOriLH2SSP+DTQHsSH0CDTqzVEaTLiVH25jPptLCfLv60JQdnE8VAcQG6b7UI
	lzfKDXN/KTQELNF7/g5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTgJ-000000091qE-2vx8;
	Wed, 26 Mar 2025 16:32:43 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTXn-000000090Np-1gt7
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Mar 2025 16:23:56 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-abbd96bef64so248479566b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Mar 2025 09:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006234; x=1743611034; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wDm6vwX/7MhCy38Oh0zCGpwppmmiRhE1IJH2tHqDN4w=;
        b=f0IJO8GMajodl+UHSZfX3eBUjbIOwLOSzvd8cDAxRxIYjdWgg/TNc8MeRMNr06Pdjo
         tijYWdiYTdw+SLJ3XySY4ODONHztT6+Ty8jFUlqE08QAbuF+I5XTlC4qZK0Q6Ij0e/Ry
         9+7QVca2eVEsuPsTpYQgT40kZ+qjNMkJoYE6ZY4G5xBIO8vQ5myx6CMTeDhrma/PdO96
         4p8FR/RhtvHUpvVejWC3idvM4s7AgQXVxiMttO8aN91jTqwPYEugAdwzFdAPusn6CELw
         5jcGTEbq0xiQ5rmaGG6wPPCGjd+F8nObjZtJ5hWvME9cpm49loMUszJi0acjWrUksnjf
         B6EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006234; x=1743611034;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wDm6vwX/7MhCy38Oh0zCGpwppmmiRhE1IJH2tHqDN4w=;
        b=Osod6fUBhXm7qZXMZbcsbkypnqI3xw6fn35Mj485d588iPV2DWTfPota7rDBp2GU3h
         R6zLnxgOIwwvYRN6Prhd7er92lcdw1n87lTs8D+VkwkXRaqdxltMtMYECv2xMa68t/Hl
         QmqBT+8WLAIbBZNOQYanIkTV6oVw14PDeSuxinHqxgXvItrtIo0z1P7+rAZ079mHMuqN
         i7CZDS16Kw5RFSGA3I25izx5cNGd7zy8pXmqfODyGSVYhKwN2jhitwVGR6BjiuOgFM3Y
         wvUDLm/pri6numTM2R0XGCLJgkd1u0znn3pDBdxkD2cicFDZkq3NF37EEAgW6xVDDX/k
         UkJg==
X-Forwarded-Encrypted: i=1; AJvYcCXwNxh1MPeODcP7YnxzUfHUiROtEvEl1f1cOi4sZZZfWnLCf75TZ6opAMBpsKnlm7D518bI2x1psAYXwAoYEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTEOuvoytbEVgDSGlqP82SEy3aSlRH4hDZRMe1kzxzLQBwtPWD
	1y/kfFBypR5clz/Ni06lM49eTTVMuvU1bywggv9eAl1y8o0hySJCGB2jMHEtEIw=
X-Gm-Gg: ASbGncvdViXdJZg5s8jvVBNdz05I9S6z6sDzozuJRgvpUgu+Hvua/C3VQnG2rNPvdcg
	DIkvEI/x9UeVlrC8wgKXlU6gG88q2mIN1lIxXhAkZJojooiMrfYe3hCQ23es7tFuOpFKsNLeQY0
	NINxSXWDB2znKfGF+XZwjpMZtsd0iLuunJ6wIOux+2Jvvr60rRrMqZmwYKUdlq2uqyjGVsdm5Z8
	ZC7fVTJBd6nhmhjbsUPl6f9Ws1tfE1/IybeOmNKQyCy3DSADtZyKSYUQZSC4nTikTbrvK4ETDBt
	IYnjC24LXWC1fxhJrQatEKQO/qK1ekPgBKl1u2LDLWNjfGq/CvTvORhrdA==
X-Google-Smtp-Source: AGHT+IGQDtjWme6NCVpAtHSgi92qK4szwj72LFKXUSvl2zwfLCr6eOS0xs1KhoWnEmaFlvUG1YBTXQ==
X-Received: by 2002:a17:907:2ce6:b0:ac3:446f:20cb with SMTP id a640c23a62f3a-ac6fb14f3f5mr1655966b.43.1743006233972;
        Wed, 26 Mar 2025 09:23:53 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:53 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Wed, 26 Mar 2025 17:23:00 +0100
Subject: [PATCH 5/5] arm64: dts: rockchip: disable unrouted USB controllers
 and PHY on RK3399 Puma with Haikou
MIME-Version: 1.0
Message-Id: <20250326-onboard_usb_dev-v1-5-a4b0a5d1b32c@thaumatec.com>
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
In-Reply-To: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
To: Matthias Kaehlcke <mka@chromium.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Klaus Goger <klaus.goger@theobroma-systems.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 quentin.schulz@cherry.de
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_092355_478555_DDB73B00 
X-CRM114-Status: GOOD (  16.23  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The u2phy0_host port is the part of the USB PHY0 (namely the
HOST0_DP/DM lanes) which routes directly to the USB2.0 HOST
controller[1]. The other lanes of the PHY are routed to the USB3.0 OTG
controller (dwc3), which we do use.

The HOST0_DP/DM lanes aren't routed on RK3399 Puma so let's simply
disable the USB2.0 controllers.

USB3 OTG has been known to be unstable on RK3399 Puma Haikou for a
while, one of the recurring issues being that only USB2 is detected and
not USB3 in host mode. Reading the justification above and seeing that
we are keeping u2phy0_host in the Haikou carrierboard DTS probably may
have bothered you since it should be changed to u2phy0_otg. The issue is
that if it's switched to that, USB OTG on Haikou is entirely broken. I
have checked the routing in the Gerber file, the lanes are going to the
expected ball pins (that is, NOT HOST0_DP/DM).
u2phy0_host is for sure the wrong part of the PHY to use, but it's the
only one that works at the moment for that board so keep it until we
figure out what exactly is broken.

No intended functional change.

[1] https://rockchip.fr/Rockchip%20RK3399%20TRM%20V1.3%20Part2.pdf
    Chapter 2 USB2.0 PHY
Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 947bbd62a6b0..93cefacc7a01 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -292,14 +292,6 @@ &uart2 {
 	status = "okay";
 };
 
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
 &vopb {
 	status = "okay";
 };

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
