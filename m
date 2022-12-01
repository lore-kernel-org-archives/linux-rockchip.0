Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7D91C43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 20:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSaXpyoxDtEEFvjIJsPKkq8rmqPg+Ln5SopzH0zhuJ0=; b=lbUddG/FAZUhFb
	iOaQmT6AWjjFZSzMoqcKAccnBiovrFMFs5GivMiXdyxPdlDFa2LyirlbkHHJlfouXb/uo+E2MMkUg
	IOpGrpLfozZgDgfGNiDPHMgyZRulGYHYBNNZfoBrdnlComt4Unovu6JQ7y0NyUgs2l+O8FTRAeHho
	rAttJi7GxYTZ5l2k5tQ5nwucvwjiWHDHE5iDFmDMmtU0pKo/zc+5S6GvVj9Wijgmd3+bJtdnRCI2K
	mhisGo7J3n6ofzgNMu3pKr0jUTOx34dUC+bEW5hn9+yZLBJGgBANrLaKcx/uvQ26KRwJf2Q3gI6kA
	YRaQvD8FfEsZp74d34HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qOF-00AucE-4T; Thu, 01 Dec 2022 20:42:39 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0qIr-00ArAl-MP
	for linux-rockchip@lists.infradead.org; Thu, 01 Dec 2022 20:37:07 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-142306beb9aso3479937fac.11
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Dec 2022 12:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HHhagubBU9I/eLAgfTTLb4aJShqjddvM8h9wwY5WXbk=;
        b=WOFAwNLlPMAJkPINQJWRTY8NNxpX2UsOwq/lRZ7LnqNfbPCPl0eoGZCVWqQAssTxo1
         sMsqsGmPDPqYLYyKsmv2Kzn+jcE96esdcDcVbsTjbHxCqQxD3GuJVXSkVtz/Kv7u+3F6
         JuWupgiHJuliheS4DsurKS5ocI4a8hAvp2nZDNfL2zXLmB/UuW3IDpi/EH2SGs8v62yg
         JK6lsIcAusewyCr+PFiK3GdvtIXE8qgC5PuIcE6/eyttzBt+uc+SZNou/ugsh5cXR2vy
         LlIyvb4WdBeMjbCPwEVDFks64mVxXTVdVi5DCg/7+wC+hM5bskdxgiaM1HZLUff9yLBV
         /yqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HHhagubBU9I/eLAgfTTLb4aJShqjddvM8h9wwY5WXbk=;
        b=LVBoJPaqyq55vJFCRNA7IPPpwLbkfnry/E71TOxSjI1pq12fKtJTSkwXGXQKCASfwW
         ZEIzn/U3FCC+xBcdYotcpupuj7UiRJ38ZFz+ZBQYzSFn13hmKg92zmlCHnw4nz4nDqDM
         H5TrKBmYae4D8joJSHtC2MDLRlg33hhyuWCWK8UMoMxOBpqN1/ww1ol7vjdpUtxb3Wi6
         ZOHfCadKunlFpeV1h64q3VNqI2481F/ifx+If6bVep2gXVWtXz+61DSPWna6Q0eyIPth
         4O4zgXmFx+2ojRhcIkJYys304FmptXfK4kZc1gDamy1n4Ci91BHMCbYjVc9BkYk+bBDe
         M6kQ==
X-Gm-Message-State: ANoB5pnbCb1GTHiTrl4gIjSrVBsZOWQ4czMi9G/v1wJl9EF4W3+fF7J3
	dZqN0OjxP166a7WerFGPRjFCvsH4xbg=
X-Google-Smtp-Source: AA0mqf7EnvyKcdI0cEdYMyvgGliVp9Y/xtR5JszOeeOoJnvBaEtCX5tleO0/+ysiEJLtYn5Q29AY4w==
X-Received: by 2002:a05:6871:792:b0:141:c075:9346 with SMTP id o18-20020a056871079200b00141c0759346mr27877631oap.30.1669927021435;
        Thu, 01 Dec 2022 12:37:01 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id r81-20020a4a3754000000b0049fd73ccf72sm2142142oor.42.2022.12.01.12.37.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 12:37:00 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: Change audio card name for Odroid Go
Date: Thu,  1 Dec 2022 14:36:52 -0600
Message-Id: <20221201203655.1245-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221201203655.1245-1-macroalpha82@gmail.com>
References: <20221201203655.1245-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_123705_769097_B421C7D6 
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

Change the audio card name for the Odroid Go Advance series to
rk817_int. This matches the audio card name of the Anbernic RG353V.
This is done to provide a consistent card name so that a single ALSA
UCM file can be used for all (identical) implementations of this codec
and configuration combo. The rk817_int configuration is for when the
internal speaker amplifier of the rk817 is used. The other Anbernic
devices have the name as rk817_ext for when an external speaker
amplifier is used.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
index fbc6bfbaa5c1..60063f4bb366 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go.dtsi
@@ -127,7 +127,7 @@ blue_led: led-0 {
 
 	rk817-sound {
 		compatible = "simple-audio-card";
-		simple-audio-card,name = "Analog";
+		simple-audio-card,name = "rk817_int";
 		simple-audio-card,format = "i2s";
 		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
 		simple-audio-card,mclk-fs = <256>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
