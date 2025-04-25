Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D6E1C369D3
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Apr 2025 16:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/k9ZRt0PHIzdt3a3ynRdhtzYxbs3S8Th9/sos5JDLg=; b=ohDBivNoQt9V/1
	FtrwjwUjcKAeJf2D7DXpSBV2D7f3mC2wxwnj+/YUUTxiRABTfaSVAxuajsq/Tu8nZCkdRD5fs7Q77
	Q0qPnxwDkF6hNirHSKPGu2gLmpbbZpjN4uVhhipxR4cGbr0Fk4zHyiazxc2hZsfl8vkve/uDfkpnP
	doy4nk3C/Tj5UhlZFLANDvgUz1vq2JlcUVD3a1+4HHoUX1flZcnj+LPSBhtaqklNLgsyA+MeqoPos
	ApkTgLTqDODyoc4iqamKsBMFE7BNcW96RjZpjKkWcso8SbWIAr35xeBOQRV4hi/wRllimxdYuNRDp
	3S5m4SEItRwq6aPL+NMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Lwq-00000000E7p-2rLs;
	Fri, 25 Apr 2025 16:30:44 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8KpG-00000000161-3v2B
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Apr 2025 15:18:52 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-acb615228a4so595319666b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 25 Apr 2025 08:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1745594329; x=1746199129; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ow+UI0NPOq4F4k1XRdbs16ucXtgoo6yarOk2Eu1UB88=;
        b=PAFZryrliSmp9h5L5o45kWaWdwjLGCeljw92L9RIVY2+81lfXhUDFLSNw//CtTw9qX
         JdJxxbfx+RnRB9mbwPH3tVPceCNPIic/HfpTnCKqzBRTSQU6panieFD+dQs9RX1+C8Dp
         b35vZcCA+T9ihFA0i7YXFacnS9G/CqwkSrMqy7PIOo/9sip5yFYP07Q4QKuTzW3/ldXc
         Bwf4dj61g9HXlhdzpmGabeJTLq6FskuGwrBYzH1FUT/JxGF3UwhRaOCebSH8+yQp8dRq
         u929exCQquD8SzitzSZeSssB5yNLYNnOpWdA2O3n+s1eq4P3igKSsgHTKAXZNdSjKqR/
         qZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745594329; x=1746199129;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ow+UI0NPOq4F4k1XRdbs16ucXtgoo6yarOk2Eu1UB88=;
        b=k+ucnLoJR7Cu1HR0LkNz+67mVy7gneSJklcl0b0AG4TuOkfe/fYSJOWGw2G3U8UjBz
         tWVS3aTMs1dSu2pGyV7vnwn8KkeHJg0cAYEgig3vvHFkuP8Ii2ITjpe+Qna7ehjkn6b/
         QrIIU8ktf9f86QJE0F9BGU9Xfm+CrWkipv5+P8jaALo6/JDvN37XYT1H2zeCm9NzFqEK
         FtNjWFc6kbAcLl6B384sYJ/b6PQP3R9mGO9V52LFGuBOvACXdrDn2NgeQWPEX46XLnaG
         xfQlrw8mksQff7d+3H+9T0GY8zdaelIwH5mPyqI0YX8Ver6eQHkx8d9s82AecsA2aHrH
         pl4g==
X-Forwarded-Encrypted: i=1; AJvYcCXyljLpWI+FxPrv4v/SITLbSpSUbmN8VLMtcBzq/oqxJq1g7sclbw04M7ViNm4XC7QMv/pHPOyTQpUK1CjR/w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUV6cxmy9hN18YmqQTKoFrliME3ciqMPpKAhcDunu/IRptxopF
	Htx3Xqj89K1KxJElSP0Evp3kzQVJoXg95zCZBWTtN9tOZM5X7M7Tq+ahXN8G6uQ=
X-Gm-Gg: ASbGncuLRab+1yU782yAKEUkYKrMaoUfNxeA2opVROohdAzHVT4Vmb4oGj6f3up10bU
	BDqyD4N9pMXWYXG7Cw045DjSUQOawxfIKkyQyBxX3ItObbw5r6j+oTmAIMbpzw/HINju/qtntYa
	j5YBJLeWPqBgogwgme/fk/SVY2YE0quP+UxDE4+mfasAGVT8Ixitb9KiP1e4+9nCBjvszMF+ORy
	IMqjn5Qw8OlMXpKJJBqY7eQbUgleHb67ULYozV74O8NZoUTdeRUeZxesy8LHzMouIJ1Sl+M3drg
	cH6YbcmNrw0+9OhDrhX8JKtFDiMf+AuG4YHcrNmPBEe7bmln8ZmPs9ilrQ==
X-Google-Smtp-Source: AGHT+IHLD6XdK+4P1TnWS4a50TCqQBANW7xBQ8lr6hgbyOsYBCK2P26JRQZuJdTwivbVOS6RTnoM6A==
X-Received: by 2002:a17:907:3f0d:b0:ac8:1bbe:1a5b with SMTP id a640c23a62f3a-ace5a27b983mr482588066b.9.1745594329437;
        Fri, 25 Apr 2025 08:18:49 -0700 (PDT)
Received: from [127.0.1.1] ([185.164.142.188])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e59649fsm151099766b.85.2025.04.25.08.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 08:18:48 -0700 (PDT)
From: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
Date: Fri, 25 Apr 2025 17:18:09 +0200
Subject: [PATCH v2 4/5] arm64: dts: rockchip: disable unrouted USB
 controllers and PHY on RK3399 Puma
MIME-Version: 1.0
Message-Id: <20250425-onboard_usb_dev-v2-4-4a76a474a010@thaumatec.com>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
In-Reply-To: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
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
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250425_081850_975651_A722BA47 
X-CRM114-Status: GOOD (  10.38  )
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
index dd5a9bca26d1d221607e73071685d5774330d760..5c1162e2f34f9c9786da1f774dffa71adda23dbc 100644
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
@@ -616,11 +612,3 @@ hub_3_0: hub@2 {
 		vdd2-supply = <&vcc3v3_sys>;
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
