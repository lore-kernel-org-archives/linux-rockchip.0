Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72692C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 15:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzvXWaGSUrLcUgq1qID/BBAZWp2+kDei4R+aZPkrrlY=; b=Vp64ngJWD3KY0K
	aV1onHF6Bmjnbc25HpGXv0Wt2SdNdz0/XPQK2tGPOaTXbHY7lTJRtMfDlIkMPf2em5758h2WqZgUf
	LSZ/6WpZvxnU8DNoKTdgTapZDjJZG31BcAKTWZf1/DCGgEgDxbT4L0RWMChVhLiPBpE+lfLNfMUEp
	5h24IbTj58DgdSTXNzAvEZoUCFmFLuAFKwIOJ8ukk0nhgmTjZgpuOIJDcTVFE/5rtlMJ5zHaWypvV
	d1GCGOURECRDz7WnJaPUMrGDuUqS/fOIZznHpgwKlGxnI7856H6fcgcSfXltKeQL74tKPN888To6F
	zCPWTRi2cb6Mj/X42KGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8NGL-00DNeW-Oz; Thu, 22 Dec 2022 15:13:37 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MdR-00D0hK-Ld; Thu, 22 Dec 2022 14:33:27 +0000
Received: by mail-ej1-x62e.google.com with SMTP id jo4so5318664ejb.7;
        Thu, 22 Dec 2022 06:33:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3tzm+8PkCoG+IFqQnJKv6s/WFlDz1S9hgijTugMX/bI=;
        b=TzOXnr9K4kajX9bIK/WZB3FahhP1w6vqcHzSRLDI1wGi8vPRQotaTMBjFQ5acMX+Kn
         Wk07AvtQlG6j023kKCKliq4wIY4sbpLmTLDocADmSRQvP9EZqXgOOI8/BwcjFdWB2y7Q
         sbgCzDz4mJ47mzZq11IsTixO/Sk9UGdkjwz+Dy0EkV6rb+7po2/oOLbsRlk8kzMQ+Bev
         oDayfXtv7pIKMnlDlaulk/s0on6V7VZqu/EfalrF4copH2a2qXdLo4I0IbWnfne2uTe0
         Ht9dBlptgRTVZ+XraSWBxFmJrWrLSl0iibQLRyTXOZXxZrR/KarQY+T63ZWwO8BAZT5F
         qLWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3tzm+8PkCoG+IFqQnJKv6s/WFlDz1S9hgijTugMX/bI=;
        b=ijrfCTjUmMtB3Wl0s+mPILrMuEydXYEw3TGk/k9GRJvFtvyR21kDEGhQEG4q1Zl9yv
         8j0s5hfAuGDzlcjGvuplnzP4JoKDC82jbsGKrcJvIwEmjgdh7+tE78Hju1KW8p1em7C5
         3KchCBAj40nL6yr+kzhMF1dJWtQtY0fCnYvAGJyPSLhUy+Oyy83kkViZ4cZSm+lssS5T
         eai+gVkW6inEW/hOPMyOXLc0Wh7YkPABbauu8JmLpxbmGlIdi7Dl/2oGs7wEPbmfk+60
         16DUYQu/q4w4A89bQXvVfrSeUVlZIPS4COhufSQswHZ3lwQ9+jJloqWmwsbvU4N18xz6
         9qkA==
X-Gm-Message-State: AFqh2kpZgPB8Jh72VMLmh5ze+ukzQCg4mzGPH+e+ntoUcY5pd6Erav9I
	cFzg8bSHwBdLXbZwWtGM0mk=
X-Google-Smtp-Source: AMrXdXvRhRHj2vwrTPeoGMfOkoJbnMKxdSD94gT8jMnTAO4Eim3FH5O3xsHrF4NAry/VlNnLCTxHpg==
X-Received: by 2002:a17:906:191a:b0:837:c2fc:a97c with SMTP id a26-20020a170906191a00b00837c2fca97cmr4736411eje.64.1671719604154;
        Thu, 22 Dec 2022 06:33:24 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id b12-20020aa7dc0c000000b0046892e493dcsm429715edu.26.2022.12.22.06.33.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:33:23 -0800 (PST)
Message-ID: <1889d8ee-e119-4a52-33a1-b990a41a137c@gmail.com>
Date: Thu, 22 Dec 2022 15:33:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 16/17] arm64: dts: rockchip: rename vbus-supply to
 phy-supply in rk3566-box-demo.dts
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_063325_804162_7650B2EA 
X-CRM114-Status: GOOD (  10.63  )
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

'vbus-supply' does not match any of the regexes in rk3566-box-demo.dts
in the usb2phy0_otg node, so rename vbus-supply to phy-supply.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 4c7f9abd5..4dc9b7623 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -464,7 +464,7 @@
 };

 &usb2phy0_otg {
-	vbus-supply = <&vcc5v0_usb2_otg>;
+	phy-supply = <&vcc5v0_usb2_otg>;
 	status = "okay";
 };

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
