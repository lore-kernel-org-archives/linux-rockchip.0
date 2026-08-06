Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6B1BC56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKPrvuZwl++GcbDGa5AmUjn8HoLYqpfxa237pzufqJ4=; b=2Cdz3w7s7U9tG5
	ZCHLJ10nlGDeSbQcvxVLtqx+QZeXHYcautpBKl/JqZTNVoaNpw1/jjaS7LfGPsTXw8uotwUYbmgPA
	6TV1NviPMxOW72jOeaoOTk7gCKjdq6La9ovHuwVkWSybMJNgjUHRraJMD9AJATj2WucC6j/nTwk7J
	7KldEueap8vStnbMDH5DbUVS9m1+43KaNN6kFHEXlsrCYg9l61bEe7lySB2WcXFAkpa+ixCTo17Xo
	vKhAmx+O5APDhtFT7/GCrVvzYXO4CFpLlJjbFMRmIh9P+S3hMoaR4tp5xhRBalYfRXCT2CdSUfRTa
	ryIX/DUG6ynSHu+qsUdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYd-00000004x6e-197N;
	Thu, 06 Aug 2026 05:22:19 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYb-00000004x3U-0dvl
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:18 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-84830c774a0so1874915b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993736; x=1786598536; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NDuDwKR82JLi7EFxiha+vT2mlqKphTJuE7gvFBWzRzw=;
        b=J9bHlJOpKjp1n9ayukAnPjUofrbkUah37Y/ogNwa+cmJzWsFH1nMl0z1BrY3t2qd/m
         UUaC6RgenCwLzUNtfFgnLvFuznq4NJCUhtI/3ykfZH3+dRZ/lf6KTXSR0PG5+98WwFfj
         q+nEwfN0hj0PJC9xdrIOcejidGgskRQM82/0AyT3u6XjMqK9ZYilH+wCr8s36DzNCVfi
         qtO+5yqxiDJSl6Unlc7743EvIBVyQIR0fnbzfi4CVCinc4KyQVT9tQL1IQkNQK69yG2q
         V1gOIY/++mdjsOtW1/aIGsmNyOFIOU2iZSe4pyPeFSG7vSbYd9nHGRyOuOCXNe9T5u8b
         COXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993736; x=1786598536;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NDuDwKR82JLi7EFxiha+vT2mlqKphTJuE7gvFBWzRzw=;
        b=Z9P3hbCyl1LN750CHKgxtgIzX/oYL1vSLS4uPvBkHBlgHiLWWJfOysP/HwYO/dknJO
         2n994jj2lCXu8hFk0GbVC3W/SWaXu0Vpl14NfFS7MQFVfY30LKgC64tB8rCeoIqwbozQ
         B/iZp91jKX+oTpJaS73MvEeiDWb/bI8MEobxZP0wKkcFcncfuQasg273esrRQD0LrZYw
         BoRDuX3ZPtMLw3Cqcy/R2wn4T7A7UTaSPQnKeBF2OXyQeeu7OnlgatTbGG8MMPQc87Hi
         s3QxfEAdFWlBFO4knQDLmf66r00PpB6j7FN0LvpcjfyVfhNefGGjhBM0ceivXLr/LP4p
         Fp/w==
X-Forwarded-Encrypted: i=1; AHgh+RpnvUZo/CDWZ2hn1ANI7i1fWmmbik4gkBcPr8BcEwfD5tCY+0hYtp8kYPUO0qkIezmjAQ5KDTKNZcEV8MUd7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YyTc4bep1hhdjq6iON40zb9Zp/n5n8thItEHL+iMA+FF+WSARo6
	Si9E9L2Io2k12viRkbRty7I2mI21aqiBfakf2z63zWzC9WcvPcWDAlfG
X-Gm-Gg: AR+sD13r9z1E6rZPDSnNGOm8qW+vb1cEscIHNM7lHhCAa0lUVWBfCX1lIYeRFrsmrWJ
	IgxApOApOzbKFoBrt8TSbg+q5jZYqYm3TUQf1L+QgU2tIePAIJZazOiSsHxf8GYxF0C06FF8a1f
	xS0pByAHaCZoJ2zWqOpJkqVlDDJHk7Llr4sg8sVhT0j27Kz9Ft1pLCI//5cq4O+ZlUtmVck6DJh
	8xF2ws0xMzK1HYWMC2jiXITDiI2RsDUfKUqk/iF8Kptk5DszoBi554MPhOW++qybAGHXbKcls/8
	FfnDEDuxqkovcwN7ooxAtbHqtbz5mzWS1KVqOYOND7r/tJX/3+8ea+uLj8GiiLxsMf/QQoFXOhA
	7hYy2v2IpSf/5e0/+DyoDbC7ho7L2++cO6G52LuJPsBtC1M5r1DJRQiSL0ROnmIJ5raNsUHb3CW
	ev5rSzgdbR5BHq2pxDOgMlY7EILI6DJgd6mW1Mak5fqI8pxP0sSeOJYYw82bzMiS/uQaIaCetMT
	q5AeJhR3vJ9OFStxZjO6QHkl3My9I2ncjEtAtQgFmfS8V2LUDsUmeia7fxAJoonPbTCFYHak8TP
	go1+VWS46bAD2GFn
X-Received: by 2002:a05:6a00:218d:b0:845:d6a5:716b with SMTP id d2e1a72fcca58-84f2e07129fmr13301068b3a.23.1785993736232;
        Wed, 05 Aug 2026 22:22:16 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:15 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 04/14] ASoC: rockchip: rockchip_i2s: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:26 +0700
Message-ID: <20260806052136.21034-5-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222217_194266_EFD51476 
X-CRM114-Status: GOOD (  11.60  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Remove the probe error messages to avoid duplicate error reporting,
since the error is already reported by the called functions.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 3e8d07b3fc1e..354430f916f9 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -829,16 +829,12 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 					      &rockchip_i2s_component,
 					      dai, 1);
 
-	if (ret) {
-		dev_err(&pdev->dev, "Could not register DAI\n");
+	if (ret)
 		return ret;
-	}
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
-	if (ret) {
-		dev_err(&pdev->dev, "Could not register PCM\n");
+	if (ret)
 		return ret;
-	}
 
 	return 0;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
