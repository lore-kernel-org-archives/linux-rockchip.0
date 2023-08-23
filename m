Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2862EE4993
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 12:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ww+YcQjMt1HJeTRFW8fXcD1zJrjYhnZlP/R++WyodBw=; b=YpxaUhX0eIVLai
	YnL7OC0OqzCp2zq5py5qbu4Y9S7DlblckhU6Db+8uN0IdDIqFgkBvuVMOJCzsFQdH8EQ5BgM9tjP3
	p18R+iN3NOVwHWnw/zaRdX+sXXmS8Qx20fR52nNspnsYnXKKGfHYxqmI0hpnVHu/8yEJtqYrTad4G
	x2P1cQ3dcTOdL36afzo8suP/oFTkEfpiqkmBnfR1XgNPbuX+OcGpg1altWN8mOJu6KOHy4/E4KsCm
	+SSsV1XwM2EgKXIYzvCNqhARF60OthM1zJNH06dNfJy/LMoH+1Gja5CSE70iYKywgJIzQQzeJ8dDk
	mef02gBaV8xCeEUJno1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYmqi-000XLQ-1S;
	Wed, 23 Aug 2023 12:20:36 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYmqc-000XJf-0I;
	Wed, 23 Aug 2023 12:20:31 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-31963263938so4792986f8f.2;
        Wed, 23 Aug 2023 05:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692793228; x=1693398028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0PcjJ9/tpEyzgWyGCozvGUJD+4alNset4hxE/zN5P4=;
        b=lp7CyabF9Pw8kMokiEHWY0IZr8JB86eYd+goysr2mkHjjdpku0xn91F2wCLWE+3cgJ
         /Z6frzFHUBWWoB4QmD13ufXhR0o0JytjC8aKOHcGesSQB6ext8qcRRQUqL2DWY+IcCJO
         gHYOom39IabzaKggFoIGTZ1Q3s1TQ60llID5Wmm09EDBwcgp4p4nQJkkVQt/uUMvsbtZ
         pbPA1m6vWrNSuvY+sioYiod1gJGSLAjFkF3Z3D/zRkzMHO0Z/WpgLKwZ2SB6zLSMzelU
         ip82XIZmzOYMTp3RLAaVKU8EJKEDSS1gYEh5kFELN6aVD/stcuRgfnr//JTi5ltb7EA4
         ygcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692793228; x=1693398028;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0PcjJ9/tpEyzgWyGCozvGUJD+4alNset4hxE/zN5P4=;
        b=U6mi07SQOP4NIt33mIPcuuO0IdbnXemYMFOAaixFLJbIcoBgWFAK4PaFYI3p/NqWA8
         9LjWxs4/F7Q6AUfm7Zw+csJwzcMhA6oSqi+RzN4tqkDBMX2/2bVDJbN2AZEbGcVtQ5hQ
         kYHS3xjFr97CcYWepyI2uIETvZ1dQSzrzAgPvxoji9MAqk855K6eZnvmlE+5waTn2un3
         DjEnGRueRl9Z0q1s/gz9q4j2q3k0bI4pjAMeSBz5ktpBko3CnOVOuO+HeAD23kwTQX2I
         pDg1PDtqv8jALNIfr4G+buOIyhazWp3tNk3F2J7ps1WKrgMy9j1rIAP9CB2hl22pRfAs
         x1jw==
X-Gm-Message-State: AOJu0YwgW8laeumAfebkMqfDkaBuQBB/WCpOVX17qylUJ687NhNpc7gh
	D5arJYDfl2rF1oXMD9OlqmQ=
X-Google-Smtp-Source: AGHT+IHdOObfzHaSlbCwyRwlQdkYL3vpdYaYAdGh9ZsTlwPkRCy7BY4zwFQGs4oPumfuVyR+qFOa/A==
X-Received: by 2002:adf:e84f:0:b0:31a:d112:954e with SMTP id d15-20020adfe84f000000b0031ad112954emr8628421wrn.46.1692793228210;
        Wed, 23 Aug 2023 05:20:28 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id w16-20020a5d6810000000b003197b85bad2sm18909196wru.79.2023.08.23.05.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 05:20:28 -0700 (PDT)
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
Subject: [PATCH 2/2] TSD: arm64: dts: rockchip: set system-clock-fixed in sgtl5000_codec
Date: Wed, 23 Aug 2023 14:20:00 +0200
Message-Id: <20230823122000.585787-2-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
References: <20230823122000.585787-1-jakob.unterwurzacher@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_052030_128169_70E2EC3C 
X-CRM114-Status: GOOD (  12.39  )
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
