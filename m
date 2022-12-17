Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3CEFC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Dec 2022 12:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HiR+2E1rp1YVAXbc6RN4UVs1I0cu+zzHzHTlxbIOKm8=; b=uxtF021OFSNGaK
	3qhaiftz13Vq+QLEeEV2bsA94hNzA5dxJgVPNkhUFcQxOFAgP4YO8dBUie145GaGJ0BdTd8gy53KV
	mNbSJo5MoQAgn6TY35i5Ea6w/opr+Ozzen6m7pXclvK9VrxtyitNoZz5c63VcheoqcO2FKcR/4a9O
	1bJRjVcHSNaZH0fI3gmHV9dj5V5342Sg9QXTtkfVX8H3O9ThgrKmEM74WcxaXp5M66SJgrLxY3Awa
	i90SFeW81By1tGL0IlSoIS+TNydXyL9en7Woe/1u5K4560Ihb3X5ZCsBLpLSH/726kyZQ9DPaB8yo
	X6XrfNUSlDNVZnLx4Bmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6Vwy-009FkS-Ei; Sat, 17 Dec 2022 12:05:56 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p6Vwe-009FiU-T8; Sat, 17 Dec 2022 12:05:38 +0000
Received: by mail-ej1-x629.google.com with SMTP id fc4so11751145ejc.12;
        Sat, 17 Dec 2022 04:05:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MKhTX89WL/mXEZGpHtSl2I9i5/jLZsHst59ffE4s6Dw=;
        b=FdgHMlHhYMxeoL6VIqy3u3sr39KP3FDbAXf/AUxUfK/COxVCb3PG7ebsXpu1MrnFzx
         DXJZNSo1adODSbShtB2ICu4gfQhJimoqn2cVZQMgxyEKoC6A2nIuYNXRz+HpQamcxoan
         rvOaBtaT5oCGVKOCTBoM6raRBC5op3eWxyNCgtTiuRGTJIzE5tT3329qpMpVPN95Xi2s
         OrVbZBgc//AoUUGSGLUygV2gNNyJilGZUVBekXslb32EoNHeK4LFhYM9pGilzdkBcMPZ
         yKLmVPAFL5hmIkpfifYthDFwlq/nwVc5QSszSeFcB4RFG7nV0wRsAp42herBrVK+Bu0k
         bV8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MKhTX89WL/mXEZGpHtSl2I9i5/jLZsHst59ffE4s6Dw=;
        b=ZoIhA6wUzJT+HwPFYhxBbrsJej9DmwDPzZAmvu57Lo5k8ZebMNO/oi57W3dX60KXIY
         hDOsYZKYmgcGAmkmq/SA50gc0owJGn2/V8GoJYv876GpvXPm7WBWFoekfQ7rmjDlH6Ar
         XkLnyyWWW1HU1Odv/V1jD0e2FNk8TZDJ9YfJ/qA6CtPNsUuUKSZ2VnsOGFSgYkbWH4AG
         nuOFuAOIP5mjl7bL9tt9jzVSbqdTc/Dtems0Sr/FdUxN0BqSz+mLzC1r7lwCHr016lDK
         HtDGmfBr3rtAJU9aQtg9mJ46mk1NwARZulKF/1DwCUTwP0zguRYJSGs6b0OcQYg30gmj
         07bw==
X-Gm-Message-State: ANoB5pmYuHxtoP/cl7ZlBW+IL+Lg7GYO5kxRWNLgDV5/anoyn8GPPl0i
	mu1GoXQTTx3G3gwpMpDgCQ8pLpz19w4=
X-Google-Smtp-Source: AA0mqf4AJwwmy3iN1fgs0JeUZXimC2yzWZ2WjNbRBiwjp7TTKaXbB4edm7IG1cZ6LpePKKsyxOtasQ==
X-Received: by 2002:a17:906:5a66:b0:7c0:d833:5ea8 with SMTP id my38-20020a1709065a6600b007c0d8335ea8mr29585382ejc.5.1671278734232;
        Sat, 17 Dec 2022 04:05:34 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id 9-20020a170906318900b0077a8fa8ba55sm1895977ejy.210.2022.12.17.04.05.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 04:05:33 -0800 (PST)
Message-ID: <67675d28-87c5-0df1-4b93-2f1233918a1e@gmail.com>
Date: Sat, 17 Dec 2022 13:05:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3128: add space between label and
 nodename nfc pinctrl node
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221217_040536_984518_16EBE43E 
X-CRM114-Status: UNSURE (   7.97  )
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

Add space between label and nodename nfc pinctrl node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3128.dtsi | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boot/dts/rk3128.dtsi b/arch/arm/boot/dts/rk3128.dtsi
index 0480144c1..b63bd4ad3 100644
--- a/arch/arm/boot/dts/rk3128.dtsi
+++ b/arch/arm/boot/dts/rk3128.dtsi
@@ -694,31 +694,31 @@
 		};

 		nfc {
-			flash_ale:flash-ale {
+			flash_ale: flash-ale {
 				rockchip,pins = <2 RK_PA0 1 &pcfg_pull_none>;
 			};

-			flash_cle:flash-cle {
+			flash_cle: flash-cle {
 				rockchip,pins = <2 RK_PA1 1 &pcfg_pull_none>;
 			};

-			flash_wrn:flash-wrn {
+			flash_wrn: flash-wrn {
 				rockchip,pins = <2 RK_PA2 1 &pcfg_pull_none>;
 			};

-			flash_rdn:flash-rdn {
+			flash_rdn: flash-rdn {
 				rockchip,pins = <2 RK_PA3 1 &pcfg_pull_none>;
 			};

-			flash_rdy:flash-rdy {
+			flash_rdy: flash-rdy {
 				rockchip,pins = <2 RK_PA4 1 &pcfg_pull_none>;
 			};

-			flash_cs0:flash-cs0 {
+			flash_cs0: flash-cs0 {
 				rockchip,pins = <2 RK_PA6 1 &pcfg_pull_none>;
 			};

-			flash_dqs:flash-dqs {
+			flash_dqs: flash-dqs {
 				rockchip,pins = <2 RK_PA7 1 &pcfg_pull_none>;
 			};

--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
