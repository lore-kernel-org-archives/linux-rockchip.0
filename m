Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2ADC04A6A
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 14:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yC6IL0+JagDYxzABABjN3kvU+rFCii6P4daF5BM3vzk=; b=CcUgSHspyB0OMG
	JnJDARQP3pkQSVVJ5wefo+ttTvI3F+7f/PHSzyaQ/QtxHqPHZIUPR1NJXAN1Tuetl7qN+T9bZ6AhI
	nwMiuaIk0pe97+APQBP7RvO1aG4kyJqJpBUQK3Ksyt/08IBCP0DNGBMW0zv5xYx50pWxw45vVT0r6
	tQnFUx4f7wmP64zmZSn9zqRO9ps+ZED7LjNY6bwu6mJKZZkTI6gDHY7pQeajS/3YMN6Jyr42iyPeI
	EjV1anhOGWAuXM27x4hKBhV39aUBIswdtmUHr5Zr0/BTOvu1cT4LJnDjwD8shY2ZgjWW7GiMx7Qtu
	0PJLuSbz4p7RBDh9F5qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVv5m-001ljw-1O;
	Tue, 15 Aug 2023 14:32:18 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVv5j-001lhz-0V
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Aug 2023 14:32:16 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3fe8a1591c8so39659275e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Aug 2023 07:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692109933; x=1692714733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpZqgVo2zkbi2B7sOh6o48YWO5812KC5/SRbTNsfhC4=;
        b=AjF7/iSx//xv+IXbPrL7byl1tK/SI6NcdK7rZc73VtoiGg7V7Sah6expliUD2+bF87
         lzbiBreVfmGWFKUAAvYpVUu5NjpfNgvYtUKTZfW4u/g7Fqp1OWlCIO6GI3wNGlMfsShu
         QaCMlMbRWVfdrBzrcf837XmCmiNlNcoREEI0n1r+JXFcjIuTNOL/wPsp4n5ZyekJgREy
         hcf8GsOJcMcDkYSbZ7hjiuaWK/Kdflgiv65As/HmePDlqJjG36NaQcJrTaxIju2YZ1+H
         S73dQldaf8Um/soORXdpTCTPCxIEu2h3wMSJjpCoLYWdX4EuhzlrSCaMqv358l+yIyhr
         c8bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692109933; x=1692714733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpZqgVo2zkbi2B7sOh6o48YWO5812KC5/SRbTNsfhC4=;
        b=TZM7je/8gCH0KtRCvz0QKuv7n2pUvvKPa8UrsjJu5RNexkCwezRlHtmRVwO20Q0TXG
         745/aXrcKl6SmLVGhG/x26XqYGjIMAs/0hIG+9zZ4nJB1XAWMemAJ2b0qBNcCXWsj2Ya
         WWR8NgtnvbeFP4t9fVAqCU0qbaRk0UzKLOYFngXwUAlx3m59EjwZggIgw9Srw0nqVWxK
         lL/wEs7dNWjT//04fAr4tI5BbdOs4XbjleBc46wcmd0jNGQSnPwfh3tDIFniidVenlwj
         hptEP/hdvN+sOTzc6hh+9TE+rgZ9vH+4cttCyb9h6XCa9d947SODZRjiUsoIJ8dl/Ou4
         E+8w==
X-Gm-Message-State: AOJu0Yz8QAfrMydD/XAbRrRGcUFSTsi0s7n2ABz+7SYQPMRQac7j4f4J
	IOa9Xishy1Zs6Y5VXZtDaulRNw==
X-Google-Smtp-Source: AGHT+IHtM12tZqB/uARbgqLwol3KwbEzc5BSEYMRqCDwwlrAIrZkQ/bVwv4A6dHrGW9OOEqZ0i1fRA==
X-Received: by 2002:a05:600c:5121:b0:3fe:1b4e:c484 with SMTP id o33-20020a05600c512100b003fe1b4ec484mr10756757wms.5.1692109932920;
        Tue, 15 Aug 2023 07:32:12 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600012cb00b003177f57e79esm5851481wrx.88.2023.08.15.07.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 07:32:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND 2/3] ASoC: codecs: wm8904: Fix Wvoid-pointer-to-enum-cast warning
Date: Tue, 15 Aug 2023 16:32:03 +0200
Message-Id: <20230815143204.379708-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
References: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_073215_199434_8B434056 
X-CRM114-Status: GOOD (  12.55  )
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

'devtype' is an enum, thus cast of pointer on 64-bit compile test with
W=1 causes:

  wm8904.c:2205:21: error: cast to smaller integer type 'enum wm8904_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/wm8904.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wm8904.c b/sound/soc/codecs/wm8904.c
index 60319b468fb2..829bf055622a 100644
--- a/sound/soc/codecs/wm8904.c
+++ b/sound/soc/codecs/wm8904.c
@@ -2202,7 +2202,7 @@ static int wm8904_i2c_probe(struct i2c_client *i2c)
 		match = of_match_node(wm8904_of_match, i2c->dev.of_node);
 		if (match == NULL)
 			return -EINVAL;
-		wm8904->devtype = (enum wm8904_type)match->data;
+		wm8904->devtype = (uintptr_t)match->data;
 	} else {
 		const struct i2c_device_id *id =
 			i2c_match_id(wm8904_i2c_id, i2c);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
