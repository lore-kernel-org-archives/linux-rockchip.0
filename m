Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC196CCFA03
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Nov 2025 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fdncjJDEt0iZ5w7qzqVVNCFV3cHZ/hIuYAMD8QjXel8=; b=3H4DrG9/BWh3iz
	mLbGEY1g1MKPuJKqJsQGONzd0Mt1aTI5jFXgm5E+DVsGXB60FXEmxyqpS9iMeNx+IlWe692VBMLkc
	GNEOBQ8NMqRr/uoid1oMxP9bM1CoGC1UAqLYGes+WS0E22hBcXMe1f44Cv0R/BkET6e63PBE8yCWY
	/sCCp9m26JTNuycLMasUhm0pixH6RmtsC1OexBc3TGg3gvPLPuYP/ac21ARyEwMk3WXwlFJfMmlTY
	HovdEJ7iOR/ZiWNAVLG6sPVJJ8/MOdYH1JeoU8S5INhDlbHYOzvLZEwfIJmjAN+NGjoE06rcwcdMa
	HuShA57Pg9ILBHK1QPLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFDdc-00000007sRo-0RZ8;
	Sat, 01 Nov 2025 15:35:32 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFDdZ-00000007sR3-3Pjz
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Nov 2025 15:35:31 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-6390fdaa1f4so681292a12.3
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Nov 2025 08:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762011328; x=1762616128; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h0Tk9dDcYmqBenbtFC0DeeXVXsg2rmtasPdJhxUdBos=;
        b=TuLifoN+SfiZ8J8UV5RTJDY7lK59rE2x9yVRHKujbGpYIVlvqolNWNOG+2eqS2x9Sz
         cIg+NZhAtMeTXbxYjrAHef8IeHtc8eO3rNgRo3Wo2GlE+8oknrBIXWn/mbtB7Fi1q8WS
         EN3I6cTR8MEVlgA39SbBA7c6FLUsi45Qp/13f7FRFC+0pVszYuYsJJW0EicDQiIv+7CT
         f/LWi4efRXh4Yx3LG7QeITYyAq5r2OROwqnGms52jwEF4Eh1QME5zxNZJjpHIKI3rQ2e
         k+H98Ln4Wz153pdzOR8qgAN0SPfhQxmPmyXc5VAhCsokJZvGV4AB3i9c924x6L6dPFn+
         jogg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762011328; x=1762616128;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=h0Tk9dDcYmqBenbtFC0DeeXVXsg2rmtasPdJhxUdBos=;
        b=i3qkhlXuUP4RGaRd77rNX/CbRcZu7zXZTC3giVkI2o3pnpcgJ5/vUbjucggXBDKKmE
         5Pzhy9+RdwQMdFlAGg+pMwcvwLU9iTTLs7o9ZWNRBCyyt+XBpJqWgaWxmf2ntyksFRVZ
         BcdmozNe0SGYKch37IPvjpQ3Xs9Wg1Lz2UAh98/y4aFyo1Xl0pPUXVr3FB+QDguWX6Sf
         VQeKueiLI2z0AeBUUlOtJoml/QcxZLDrm70TAo4mlDlilWHGSgXeiGI5PxY5CY9bTZ0w
         oOAEvgSRp/PD6d18u5Hj9ThKeiQqLj/p7vbmkaPnxlD2AHBzJnKxewXRs7DQd6A9FsnS
         t4mA==
X-Forwarded-Encrypted: i=1; AJvYcCVI/zfOjtnrgQEymB1YHvS1QznJen3m4b9AhRrba+8iGCyJCaeKIKSBAhynZ06+ujKC/txnxJEqpFxnNTbfbA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzRZpKaR/PJTpgvwI/7dumtzoatz1obTMjpThb+CN1vWO79hVlp
	Y0Y7WKjsbNYL5kk7CDtLE2iKPXctuwLLB9T0nVQnizS4QRQ2eKcpCZ4h
X-Gm-Gg: ASbGnct/YxSIaHDpfSvJUfsWWGQZdnzHfQNCG3ocKnfIEGp15Kqkvd3DUti6QImCwHL
	vkJFi3fhr5TEQwNswrMaxaBqKRRrmO6eMXiD5ep+05Ad0UHPFupNlC7K/ahEXPghrjGLx6s6OhR
	4l5Cy/0CmTJDt0qx7lYIFwiLcbmBSRL9z+ydFHKf9HYTXODXS1PTC9o+gpf8mIzNuF/zOte9+qy
	leK+5Wg8jExIRuAO9F1oHHnchY3ZGjjtyzsIiWocAHRi3OTSr1t1QyV7/eiHwEzTQXpSWaDmB+S
	tvR6l0EY0vDKOFGBShY1kqjNdudp2ltPQWYAoJy3MO9SttiJPwqhvmTKgXNxf5xqr2TbnxXKVnF
	hll+Tz5OXKIMxNv17chEuZcbLj030jZyAnjC9ef/z9ap/8E+Q3/nY4OllODPfJhIWzrC+gCkthr
	95TWXcrRRq1MUcBxBIUAlQ/+tIlDmUg78l/zASlPPVuPiWD1zyrQ==
X-Google-Smtp-Source: AGHT+IGGbZKmix+04v0yBeE+miuCe2f5O67VTMu7nJKCL7jr0B/QprRarMtQ6I/yofHU8ylwWgs/DA==
X-Received: by 2002:a17:906:730b:b0:b6d:5587:e336 with SMTP id a640c23a62f3a-b70708c8a6fmr418924566b.9.1762011327533;
        Sat, 01 Nov 2025 08:35:27 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077cfa966sm478124166b.65.2025.11.01.08.35.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Nov 2025 08:35:27 -0700 (PDT)
Message-ID: <92714b6c-6c0d-4a10-afe4-73ed313c87c0@gmail.com>
Date: Sat, 1 Nov 2025 16:35:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm64: dts: rockchip: correct assigned-clock-rates
 spelling
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251101_083529_873895_D9C0D4DB 
X-CRM114-Status: GOOD (  10.43  )
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

Due to some copy and paste from the manufacturer tree the property
assigned-clock-rate is missing a letter "s". Correct spelling to
reduce dtbs_check output.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot/dts/rockchip/rk3328-evb.dts#L313
---
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328-evb.dts     | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
index b5bf84322031..b9d4d78bff0f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts
@@ -184,7 +184,7 @@ &emmc {

 &gmac2phy {
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
-	assigned-clock-rate = <50000000>;
+	assigned-clock-rates = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
index 3707df6acf1f..76715de886e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
@@ -101,7 +101,7 @@ &emmc {
 &gmac2phy {
 	phy-supply = <&vcc_phy>;
 	clock_in_out = "output";
-	assigned-clock-rate = <50000000>;
+	assigned-clock-rates = <50000000>;
 	assigned-clocks = <&cru SCLK_MAC2PHY>;
 	assigned-clock-parents = <&cru SCLK_MAC2PHY_SRC>;
 	status = "okay";
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
