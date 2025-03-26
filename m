Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37DACC36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 16:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ohdfzP48tYgkggzXNRXiQ+pq1McD6abfjPyt1ujs2Es=; b=PKno0dptZkyumt
	EI3ZlCyXClP+3qviwo1Wzxoqoo8HPVe+MML1yjW9jS7OF9wtsLdReHNY9b+2DrtSMf/TmxsErfnMP
	Itao4GvUJLg+PhkPp3FwfdT+HFzzWWuQ23cvsLf9MWnIMs2bvo4mXysb8w0oBrSotlUNgup3kxU0M
	J61cuV0tjM1iQCJLL5V0fPJKKVZ3rbe99xTMhOd7K1B2g2fmp7UY9pBVvvQQg2MTgSpXlFhl9k/3q
	JyHxQGXXLdF5SUR2R1civgvaX3nKdp09SqSpBUD8HhfQQhovXxqfw4wy0j3FmYlIS5CmCbqFhmIl4
	5OTqLbhrdFvNVNkPB3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTed-000000091gs-30Nr;
	Wed, 26 Mar 2025 16:30:59 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txTXm-000000090Mh-1wu3
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Mar 2025 16:23:56 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so1184532066b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 26 Mar 2025 09:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1743006233; x=1743611033; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rLyts1UbCS80soWAIK/VLH5pGMtL6M9HaPrhO/pX88s=;
        b=IQ1E0p+hdy8QjX7vUOyM2ZdRref1sul+hI0FLgEw1IuAvON3nUCPis1AyZu0/PJ+3m
         HVpzvsBi7djHoiIeUk7CaXW3loKuYszvL4vylEJZoPG0+5UWVZMtHIml0NQ8sgP7AbfG
         Is8VbSRSA/p/hIHJ0azLAHBRyTsUEnP31LmCytZusAydX92bfMX/B8YojbOqymEsuOln
         J9ya5MtA6GdkXZfLFrGRyUphHEQKWXjx3Dex/QLtH5U3qIl/ayJvSdtKZWiGlHRtMWSQ
         oDxlEeQzXul2fLnWwn5m/xmVupuB5WP2Hb29WPX6vapITX3EEkCCLkBU2THCAQ0xhqSe
         MDbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743006233; x=1743611033;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rLyts1UbCS80soWAIK/VLH5pGMtL6M9HaPrhO/pX88s=;
        b=krz6sB5l+oTIDR0XAZ9tNN1MYpSwz+Yx7c2mzvq2Bl6K+uqpwmiMT0zR6hnObvDVoS
         GLlddLN9tK6C0arKl5Yo9D5IHQx7mQoWvcA4FYtWM44RX+FZhLjRFX/0Ov33US85OmKS
         phHUKB4zabbmE/JkvoZ3brsWLngHMIrR5jfXb0VCaOLaOs+12RzmmTcoPSmcgaMsVywS
         6OK4m4ryJhY7fg8ijayFOV3v4aa1tpgpcipDtvTcIb0uBa05Tk3yVg7sZPbuokgsGyqr
         hjnVlzUKfOZivdfnMKEm1ieWVAu4131ByPYlt0jWSmxMt0z0RhsAQ55EpVuAAcld5grc
         praw==
X-Forwarded-Encrypted: i=1; AJvYcCVo2+qxuvuubOQnVWwoLIy7/mLXK7h+x31VM4gKSjqRULhPjy3pEd1WEaaWfZt327bKt/OF8tcZM+Ct72qgyg==@lists.infradead.org
X-Gm-Message-State: AOJu0YynuHN6yDwbZ6Igx/yGdphwXEY6p3fSHOiiy6wYebLJiJx6/qdJ
	0pDk1Pfm4CBhEVfl4terv+wqy1FTgkUClMKdkej/04LZVkRh6b6D9UR179hR/+c=
X-Gm-Gg: ASbGncvJVU9vrYJAbSGRjEwlBAHt88LOwyGO+99symfUGeDiNEt2k4ZR58/9WmNmBRk
	06PqcoN5P1lekYaaIUnm2flCa/xSvFGC7i/q7VxWSrSIynNi+8qpro1CSt9rFyiYrRx21yeVRln
	CpmbgvXRq6wzqvIBrZNAPrf+vKlN4rFYd10p2YefY4eH/VA0Kp92PSOtFTLFRoFO0WG4jTWBECF
	rJJijqrFB3yf7md9A46rYd7o28h0Y4hwkcZE3Nwrvlmr+eF9qGtR+18kCxeA/TCZgCm6qjbyd+2
	1ObwylTBCtTUNnZ2df2bNmgSa8Wlsjlf5dov/Zec8G7K40XTW0hvkDClbw==
X-Google-Smtp-Source: AGHT+IGuL6Nt4ApMHrsVVJxTN8kmsE+fO+syqOdRHUYnjFPTrq5knLFF6NaAbaKnyWcocuiQ/Tst8w==
X-Received: by 2002:a17:906:4fd4:b0:ac6:b639:5a1c with SMTP id a640c23a62f3a-ac6faefef90mr4899766b.22.1743006233086;
        Wed, 26 Mar 2025 09:23:53 -0700 (PDT)
Received: from [127.0.1.1] ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac6f0f498ecsm76678866b.135.2025.03.26.09.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Mar 2025 09:23:52 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Wed, 26 Mar 2025 17:22:59 +0100
Subject: [PATCH 4/5] arm64: dts: rockchip: disable unrouted USB controllers
 and PHY on RK3399 Puma
MIME-Version: 1.0
Message-Id: <20250326-onboard_usb_dev-v1-4-a4b0a5d1b32c@thaumatec.com>
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
X-CRM114-CacheID: sfid-20250326_092354_511367_7BC7E94A 
X-CRM114-Status: GOOD (  10.56  )
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

The u2phy1_host port is the part of the USB PHY1 (namely the
HOST1_DP/DM lanes) which routes directly to the USB2.0 HOST
controller[1]. The other lanes of the PHY are routed to the USB3.0 OTG
controller (dwc3), which we do use.

The HOST1_DP/DM lanes aren't routed on RK3399 Puma so let's simply
disable the USB2.0 controllers and associated part in USB2.0 PHY.

No intended functional change.

[1] https://rockchip.fr/Rockchip%20RK3399%20TRM%20V1.3%20Part2.pdf
    Chapter 2 USB2.0 PHY
Fixes: 2c66fc34e945 ("arm64: dts: rockchip: add RK3399-Q7 (Puma) SoM")
Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 3a9049372e12..d0d867374b3f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -579,10 +579,6 @@ &u2phy1 {
 	u2phy1_otg: otg-port {
 		status = "okay";
 	};
-
-	u2phy1_host: host-port {
-		status = "okay";
-	};
 };
 
 &usbdrd3_1 {
@@ -611,11 +607,3 @@ hub_3_0: hub@2 {
 		reset-gpios = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
 	};
 };
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
