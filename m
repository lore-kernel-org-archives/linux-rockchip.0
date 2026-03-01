Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA26AFD0068
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Mar 2026 12:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n1j2An3lY/qZZKpOGMpYOu22I9A8orJF8SEZubHrFZ8=; b=MG9CvwvLKneMkG
	of29JpjBRYMIlKa5jJaKegwuMZOY8WZysTet+6zlX5BVimAapugv6MUe4PMieBDZ08OUv27p2A0T4
	BZLFHGQUI7ZHdMlHCQSZb7mljU/KbO/VprCrbjpv1iQS+TNtOIHSoyi3WQk+T7EEYRqODTnPARFnT
	UrQLcjCGPt96f2WCPRnIxOdiiOpmK8yDSg0pzmeXCLMcnmBGb+v/clCxOFNtS+YZyEmUIOYZ1jERL
	/qROhgC69ahYddH7euc44VV0nYxIKFtZK1Dwb7yzKzb9sYw/fP1RH4dca+dM/ZIdmg3ggc5wUNBag
	g3q6gFAxtfsCBQ+DW98w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwg7e-0000000B7QP-0AMd;
	Sun, 01 Mar 2026 12:42:10 +0000
Received: from mail-vk1-xa2e.google.com ([2607:f8b0:4864:20::a2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwg7b-0000000B7Pe-2ds6
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Mar 2026 12:42:09 +0000
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-56a8fdaddebso1212680e0c.0
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Mar 2026 04:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772368925; x=1772973725; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5okoGK4HOYT70Ij2zZZqq2yIlW9aGSZvFtA+KNZ5d8Q=;
        b=NktF523bMxQJaVYE6WWFHrq6OPesureXjfpLgqmtTT2TmEDmojZbFWin5smveTBYmF
         VHqSyGDWbANn730q1Kzb8c0ubVmWMUaAMjY37Qc5NoTiwiPxefmzIfn64fQ5UTNUftqt
         LjhBGMTAUciLfMHc0C5E8FJVq2U2E3W85fSHFHggmSDSfEQjyZY2AomEmT7u0OdyTy5p
         qpFGEuhy9HejvIIPwj3gBKaXY8ATIomrDcCFk+ajr0I5dSm9rTZFWXw9VvclnKtUq21r
         pVPsxSGVTGHBhYHQlbbALDXFekg6wXa0eUBBfmq5DqvInjP3yYWwPTLdhh9+VeiZ1euz
         0Qjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772368925; x=1772973725;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5okoGK4HOYT70Ij2zZZqq2yIlW9aGSZvFtA+KNZ5d8Q=;
        b=HB613EsEZgb3irzJIGmvIKFqrv4Kp0KlbCh7dOukBqzeJpsJLzVIt+1nvtUJxOr4DP
         J5RzAgubowR+W4bAk2PGf1vT5Z89VP+Z9NF3ZOI4aZzQb3nLbow6ORVOq6YwmMGcwAoK
         iXF4mkelApBfOf7Eyq5cwL3qvGYmixbjKjsOnX6O836lBOqPjZE2PvzaCsFkM2NCR14d
         RkyLFK3baDUPQ5qKvHwT5da9d56xFZidltbJmiMW5kcL1+N0QexXSdZxNfafFeJ0RlMY
         4MB8SjP35veu8VtvZNxCZdbJoHeV6dmDF879yGd37VeGBfz24HqTq8xPsvFriSLlY83L
         W8mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVk8z6RQNnrR7vnzE+wN1lYqnOIM4VKlDvSwkpsbMncEU2S7BHkiSmR0NKK7gheQOCbYsaD2DzQJId5im+kWg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxr7fKsvAT+ANfXDdG+13e2Eay0bhm7V4D7wpkkKq4lsvFWyVG1
	JhNdpCGhetfdTrBmcwjdi2EJB8NHxHUh8BNls9rmNeBSgRt8ASCKSNMD
X-Gm-Gg: ATEYQzzfJgDMAi6q+q0X9maQBkClgR4rEu8+YoWjasbYYfTx0O8joVT+MHEIO4CERBO
	4xPZGjdKAo9ebPWX/vxHODQrK6bUYiLKV3FcJ12nybzkQmE7ph9tk7DqrUA+ztYGrYB9yB0Nz6G
	862vFRFVmL7q3KwiqD436cNxkbKak0AsVC1G4y9toUtvu/9fMph/Lmuy9AK0H17E15nsDRYk66E
	YKoi8Aj4EuwcGky5/Kae7fxU5UZqKN5jwtIs6O82ihz0KKyne+DEH5PWkqZ+8EhQscLGNZ3JyvA
	YOX2O7P+yLZGil0ReMLMxlG3mcfF4bVD1LrSEyABFW56CB3n9rfj4lcNPy9R9/Y5yjo48CHBhoj
	CKVHj+VrR4rti05slwCZFyePE+S/zvrj8PKh3co3gLkOds8FZ7NpHOMyLpEFfyi4RnHeqK9GzgG
	7eDVNQq8Y+oZEV7Swkd7ti5hdS6YQr9GHKII6MtLBp2A7ttsdFmG5LbZa/8Fic23NxKsU=
X-Received: by 2002:a05:6102:418d:b0:5f5:6dc0:e50f with SMTP id ada2fe7eead31-5ff324b58f1mr3169537137.21.1772368925396;
        Sun, 01 Mar 2026 04:42:05 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:2168:1b6:3f93:373f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e845aabsm10495317137.7.2026.03.01.04.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Mar 2026 04:42:04 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] ARM: dts: rockchip: Fix RTC compatible on rk3288-phycore-rdk
Date: Sun,  1 Mar 2026 09:41:56 -0300
Message-Id: <20260301124156.473862-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260301_044207_691294_14E53E8E 
X-CRM114-Status: GOOD (  11.66  )
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

According to st,m41t80.yaml, the correct compatible for the RV4162 RTC
is "microcrystal,rv4162".

Fix it accordingly.

This fixes the following dt-schema warning:

rtc@68: failed to match any schema with compatible: ['rv4162']

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
index 10ce0554d4fc..a878a2632de0 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-phycore-rdk.dts
@@ -94,7 +94,7 @@ adc@64 {
 	};
 
 	i2c_rtc: rtc@68 {
-		compatible = "rv4162";
+		compatible = "microcrystal,rv4162";
 		reg = <0x68>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2c_rtc_int>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
