Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7332C04A94
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yC6IL0+JagDYxzABABjN3kvU+rFCii6P4daF5BM3vzk=; b=zZYvRbS96Jzs61
	sem4T4nDijHI9ORqyE3sc+FpN6/qtn0e730Y+F/jXa13ugbEwJ79QthoHLmVlDyAl5u8OsvUV3x9S
	TTsAWBwOxZIHmPCV8tvt73eRHUM2kcWaJe/SJMN3WKjEg0SDzQxLWa6p6hTM5awRwSRkNozfr3CpW
	DXsPjH6cloKfIqUaYCgCUyQxZdmFSfKmiX4324+hHXN6D1sWQJDj3AuofxrDdwUQ+yBT2j+blZ49O
	1/nQbxevvQpSImtSgbBJanTpUXz58Zwk6lvrU0RJawE1m1arpXeuLEybl2VkbAXMx7/zxk1tJKE6P
	lNexbKIF76GBTt2KbESA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D7-007GJK-2f;
	Thu, 10 Aug 2023 10:48:09 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3Cz-007G6W-2m
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:48:03 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-52364e9daceso900168a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664478; x=1692269278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpZqgVo2zkbi2B7sOh6o48YWO5812KC5/SRbTNsfhC4=;
        b=L+pJzrZz5LiodQRp/U/kbzpSYWnuq6UUxyeRItM6/VS+qn+D1PDLrcfAJlUCmks3Kz
         Licj4R5ZhYqFNIyGDXQpyL/zv+UQqLViDrfb5AQ5Lk0yh0s8tkC9JT5Wi4Rz2sWltvfD
         24dwksZBWyf0htE1vPBy9QBmrbo+qPRzH8EaHBcvW31pMM5faimC9YDi9d+PxB0L0IKN
         RvDGD0ECUskqfPBcVKcp9DdgIhUjd4a6DuzkmtbPY6Y/FFnK61k2qicYoEsqIRuuzPtV
         5rb0itHN4h2ptsZeSrFedln9PwV3C4sILAvNxBhujef01IdBWcivSBYg3FU8C6qUz/HA
         Y3AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664478; x=1692269278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpZqgVo2zkbi2B7sOh6o48YWO5812KC5/SRbTNsfhC4=;
        b=Kbii4o9ZDDJRDnjUUDdyri1tIFwp+u+yMgKz82zFJaexMBoPjRuUJUI+y9fgedGJXu
         qLFrqHxlIc4vQPOSsuhU9HDf6FP0fopqy+vQBksiKPTj5hYHejIKmpP4CLOE792bJPmB
         p3L96jYkysm+3k+m0wG41MIzMTjLrafhxi+6RbV7nRK5UuCQ+GhQYT3Av3IT5VgqKESm
         FqNZO5OSgj25UjxePYEEfh36OQV6+C2yL2X96hekVYaG2TWtBJol5/YgYYOIB8ziBgw+
         A3JjBA4YJ/kWWZUQAUdzdxquCR4wprzwvGoyVbFsthZDYNpgIWnauygqLSKK2v2ucxdf
         P3XA==
X-Gm-Message-State: AOJu0YyYGpLh0KIPQDcEZ8OgG4EgN0LqhIeh2fSGGe+95j2k/Kcm5hDQ
	cOz9NGK9gGLBIYmbWt0A5Rf6eg==
X-Google-Smtp-Source: AGHT+IFi6mpqtjPUZgkNME8tljPZsCKLpCa4i79mEQYjX4KcyxYg/CD19QBrJpMdXKSWYT3AtUshSw==
X-Received: by 2002:a50:fc09:0:b0:522:2d1b:5a38 with SMTP id i9-20020a50fc09000000b005222d1b5a38mr1688860edr.10.1691664478219;
        Thu, 10 Aug 2023 03:47:58 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:47:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>,
	alsa-devel@alsa-project.org,
	linux-kernel@vger.kernel.org,
	patches@opensource.cirrus.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	llvm@lists.linux.dev
Cc: Andi Shyti <andi.shyti@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/4] ASoC: codecs: wm8904: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 12:47:46 +0200
Message-Id: <20230810104749.164827-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034801_911277_E1FDAF72 
X-CRM114-Status: GOOD (  12.06  )
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
