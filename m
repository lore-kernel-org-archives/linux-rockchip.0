Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA784EE4993
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 13:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fmpda+9id5xgcxVf/kP//jUcXblCVR30F9dcCWHwgcQ=; b=PPBB4Ce9F4j1PR
	gP0ugqr/kh50LdFBlYIsVzMM2MDNF7aGMfVwKOn2UT2BMRliO9HqLYlMpv8jBq8+0C6Hxb1l/NN2o
	iJIFzW44NNjmh5C3wss/MjydmxQJG6VBQnZcnk3TVTpC8qwJDmqmSKQHmNNitgI9YuclCz7hxqPd4
	NtXUaNWoa6xnQwDmyNPIiBkM5rzG2bTuwHXarfbgTvp9mktzdmUDIxL7bUyfULX7LXGMjQen1zoHj
	ZZ+7GLloJ2L396cYdGPxqYNyBD9G9wDkHrTQaabnQa/6hJ2F5x/Xgyr7zDd/y6RDp6b2k7ku5CN2E
	e9itZbS2e+LYLpSxyBPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYnkY-000eiR-1Z;
	Wed, 23 Aug 2023 13:18:18 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYnje-000e3r-2P;
	Wed, 23 Aug 2023 13:17:33 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2b9bb097c1bso86063421fa.0;
        Wed, 23 Aug 2023 06:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692796638; x=1693401438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gCkeO3JMTWnAck68Ec8pL9VBr1IQgmzcgGRPd/I418Q=;
        b=HHtL5kjzz9CC75rSGGBlEATePuGnbCNdaaRHirXhA8oryVb0k/uQZAXAVgigFYDGvD
         4rLRJDPfVM5oJOfqgaaZWd9SRVV7ZJ9v20yzMkiAKpcu1upmMIuM/1jv7OeYQEPCwwnc
         KxIv5GTjHAZdcZLqfn9kZBy9etsiWdHmAsx6tovC1VP8g5qlrRIxjSlwbbChMPVX4LIJ
         3iU3WoT1HSc7J7UW3RIdnS2C6rzRf653gYmWtsWVkO6XwafAq8wauIZaos2ZT5M/TpGM
         Kv2CzDxiBNuU8OrV/fzvLtAvY4kIDFP07SFewBZeWjpnpk+376iOYfW1NmXj1udyfqZu
         4QGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692796638; x=1693401438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gCkeO3JMTWnAck68Ec8pL9VBr1IQgmzcgGRPd/I418Q=;
        b=KcjirutLqkf7Nbe0YCwITWSrNY5Yole2jTiPdncVhLQ63GB6o6GNYTJc7YqJSoIkQr
         iEWXoRqFa7O7XqMVgL6+yiVm+jw/GIW20VQhwOQysl153FjzO0xA/76r8L2e8DnwLVj0
         bp6hCi0YzTg68l5uCcDz+0pwdzYBrTd6mUtG0FahXL7+Lnf66IHSjKfyz/6ep9Rma4KZ
         8zRotcp8MdY9EoMVCrDm3uifpVWH/HeQPQl24EkmQqoZUaKVbOjmok8wytkpR+hDq4yQ
         JJ5ZZEgQqU6igxWnOMjPEUHRRJ+WOjeoBq+7EC3HI4TgdHkm1K5e51BmlZj7ivoxaDgE
         v8MA==
X-Gm-Message-State: AOJu0Yx8FE8yqrqPxVlCSy9tAUpDW4jOxZEQdBBV1QDQkCfZOJQwWScR
	GFwBn1gkCvd4oVW06+bWoG0=
X-Google-Smtp-Source: AGHT+IHsC8O1Dq5TVhEX9ZRsOegPJCDRHJD3up522LXRl9bLZX1msmlAVl5aMPUj2r2JwDGJl5PCmA==
X-Received: by 2002:a2e:7d04:0:b0:2b8:3ac9:e201 with SMTP id y4-20020a2e7d04000000b002b83ac9e201mr9171906ljc.40.1692796638300;
        Wed, 23 Aug 2023 06:17:18 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id e1-20020a05600c218100b003fc080acf68sm22463192wme.34.2023.08.23.06.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 06:17:18 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: jakob.unterwurzacher@theobroma-systems.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] arm64: dts: rockchip: set codec system-clock-fixed on px30-ringneck-haikou
Date: Wed, 23 Aug 2023 15:16:51 +0200
Message-Id: <20230823131651.586934-2-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230823131651.586934-1-jakob.unterwurzacher@theobroma-systems.com>
References: <20230823131651.586934-1-jakob.unterwurzacher@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_061722_784238_7B56E449 
X-CRM114-Status: GOOD (  12.70  )
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

Having sgtl5000_clk defines as "fixed-clock" is not enough to prevent
the dai subsystem from overwriting the frequency via sgtl5000_set_dai_sysclk.

Setting system-clock-fixed does the job, and now a 1kHz sine wave
comes out as actually 1kHz, no matter the sample rate of the source.

Testcase: These should sound the same:

 speaker-test -r 48000 -t sine -f 1000
 speaker-test -r 24000 -t sine -f 1000

Also remove the clock link here as having it in sgtl5000 and
sgtl5000_codec causes duplicate clock unprepares with associated
backtrace.

Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
index dafeef0c2dab..2cad02096271 100644
--- a/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts
@@ -72,8 +72,10 @@ i2s0-sound {
 		simple-audio-card,bitclock-master = <&sgtl5000_codec>;
 
 		sgtl5000_codec: simple-audio-card,codec {
-			clocks = <&sgtl5000_clk>;
 			sound-dai = <&sgtl5000>;
+			// Prevent the dai subsystem from overwriting the clock
+			// frequency. We are using a fixed-frequency oscillator.
+			system-clock-fixed;
 		};
 
 		simple-audio-card,cpu {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
