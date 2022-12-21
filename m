Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADB35C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 18:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzvXWaGSUrLcUgq1qID/BBAZWp2+kDei4R+aZPkrrlY=; b=Hml6SGLXR6ZYCk
	lTW6Y7dG0MfKcMvyq1sL/LqY2UaQt0NPBCGUhgQ1lg4Y/qqFRX6463YftR86OHqJUcARPNB6A3k8C
	BCtCVyA2oUirIqBhI9flX2uvKip6ncxdHxv9La5/+y7+3w0sbJMm/mLOMrN20tMI6stKq0R/+ytf4
	6s+dIS2VF7ynO/JWGPjkZFCpVJ2MpIc8uiiuqZtvSvdKW/ADwrweZCBzA6ZM4Dh3boz0k1bHjobUl
	gvHoDRh3rXSpDpTbx8kcaUPwiv2x4/4MPN0hdW0+fC9LsFEpswRZ68sFQ8XJ7vTGjFtjK7dqtpUqc
	VZrPogna8zqlPrWzqC8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83zy-000f8L-Gm; Wed, 21 Dec 2022 18:39:26 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p83ny-000YOY-7y; Wed, 21 Dec 2022 18:27:03 +0000
Received: by mail-ej1-x635.google.com with SMTP id kw15so38769143ejc.10;
        Wed, 21 Dec 2022 10:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3tzm+8PkCoG+IFqQnJKv6s/WFlDz1S9hgijTugMX/bI=;
        b=Disu3h00/Wb54++iZFoLClUFEFhCaaORJptiOD20dHdG+Js0vtzqGz5PPZRgBJG74N
         0Ts2oau97PHUS1qu59WdqWqqreC6Di+3wG2H1jMMyeNH1wJKJljeEOkHLxdnPx9tqMEe
         BjHn25wnkBHiTN90cipWgk3aWnQEmbs0CeOtMuwsQWiXgOJbN08MBoDCmvi3dfGyLAk1
         AdIj/z/3v0UyAfRnu2Q2ezFjjk1DMEjO4QcwPYtC+SDq5dxiVorL1SZSU/m4RttcAh1i
         KG9VK4gmPYfmXZnMXYrA/MADD6aOhpzGnk3FcYpe4xXeH3qlwllKZByIi3scGJYhuYcE
         kn5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3tzm+8PkCoG+IFqQnJKv6s/WFlDz1S9hgijTugMX/bI=;
        b=1mcQezjvtFfdBsY97otwo03SlS8usO7b9ZgzHIJH3xhWEYJ74CTToD2pzDE6ps9ToK
         cQ57UKLgMH+gPkBs0BEImCTV3Jd+KUpoBy+qZGt2AuFzgVM5+2hDRykPZ7+1tbCBeH1e
         8/x4aOiGtaXiqbcHRvxIxry+rfeUQs6x+laElW4bBLuuhw1Vnb+hzZO57Iz4c/JOdalO
         1F1HQTJTl+Yz+yGqQqGPAJdSiIFn5r3qWkHjMHAybO9to007YV66C6FxFSdHV5P0H9WF
         j9ZaU4oWoo5KPGAVUFRwjonbjDCfNPbL2akRYLgEUOxBp4eJ2A6J0nrQp7plH1/XfgJh
         WEKg==
X-Gm-Message-State: AFqh2kpBFFHMS9SAned4k3hBQlftmLm3bvd8/4p5kTHV5ubN0L44/SYW
	+5qh1WAr8oKuOp5+8TR79A0=
X-Google-Smtp-Source: AMrXdXt6ILaPZxXaZkt/4DH9vZSFIGy460+kqXNoi6CbgMozPJHOZ/xsGmRmC5XMPwiHIWeJDm0GKA==
X-Received: by 2002:a17:906:71c3:b0:7c0:dd80:e95e with SMTP id i3-20020a17090671c300b007c0dd80e95emr5789134ejk.51.1671647220873;
        Wed, 21 Dec 2022 10:27:00 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id la15-20020a170907780f00b007a8de84ce36sm7262965ejc.206.2022.12.21.10.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 10:27:00 -0800 (PST)
Message-ID: <6b4669ba-4731-d3e3-3293-f5fc69ccf6cf@gmail.com>
Date: Wed, 21 Dec 2022 19:26:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v5 11/12] arm64: dts: rockchip: rename vbus-supply to
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
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org
References: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
Content-Language: en-US
In-Reply-To: <7f883643-c796-029f-ba38-73532325632d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_102702_491807_FBC83143 
X-CRM114-Status: GOOD (  10.81  )
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
