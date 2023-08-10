Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D6FBC001DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yC6IL0+JagDYxzABABjN3kvU+rFCii6P4daF5BM3vzk=; b=Dlhz3So4gesTGO
	r6crLJNlqF/qMPwvX+irXbBIWv9t0fgrUnI+E5TvvWh/0m6j6yru8exnVyDOXYDh8U8elm7nSZ/mN
	SJCkNYaJazc4bAG8cTlbCPjmmpSVzBW+qMHbwqTarIa1w8+MsF557bFRPcBNPnYfwU7cQuyS1am1l
	ijaPw3KKGzH0n5Xrv7gGBdcvph/TZVnH8HHbWeAMgnBGnOlRZ2MzZLEdVLwrhHLIE2OS7p9+kY0r8
	q6/9SAV1jgC49tH7I2S8Ef2HYTK9AuuFLZPq1Ogfek94lkporXFZIsao8ZPnk2PHV5ftd9254l1vC
	9XtIGsBQIj7nk5ecJDJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D8-007GL1-2f;
	Thu, 10 Aug 2023 10:48:10 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D0-007G8K-2c
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:48:04 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so3902829a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664480; x=1692269280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UpZqgVo2zkbi2B7sOh6o48YWO5812KC5/SRbTNsfhC4=;
        b=KMQ/zCzP8/TnQe3Wo6hhI2Ivi3DhHc4D2lLfGnt9ciA00FsL4hsZH4u87Vx04WxQ3x
         RRedSie2gJxhgIafqOtTPolui5SRF7Ic4Vh/1ssUoRFIsFqtay8eJwiP2rP/GE3d5CyF
         1U8Y8epFOGqz1GAfIaPLFw4D8jQ7FzptURDIlo29y/NLoTttT7zN4Y6JjqzQPpmgZ3DI
         qkoSxsWbdO4WWARabNALqhZfBleorwPNeLZ6txLHzT3GrZ2hyPwlbJS1fKPvwSxXIh1h
         MoL9oTYywO4hnzh8dJ90rVwUuNJGIvdY3mBw5BAQWHGNEzJ2+JwSpH+gwOi61e2xzoIM
         byWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664480; x=1692269280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UpZqgVo2zkbi2B7sOh6o48YWO5812KC5/SRbTNsfhC4=;
        b=Z+BbcEAM2jz1+pqlWfTrbFjS9k/HTwnqCAnxGYR/9bv7APSnpgJ0MdAfTkOREO32Sp
         MIZ/R0Rk/LA2VQFCAX157QoazcI4Nhi8UtAY6ug0EOeyt8i2xjvjacNhnrG9w3bfDK0d
         +2sFhTlEPQGXyDjCHBCrwD3kYD7Sfe9lm8WK7weuPT7qqpesA5Z4gA9f7dqeGfeP4Dni
         rRu6OVwPPqkc4ABBZZzIM4TMzNYOKKhSyCaIN7/uuKGJs1oaXTjpqw8QwofvlwxJr2xj
         OkwlcGXd9u4Jw56BzwPFHc82qIWFzGYgoow+vvxcZ6TBXEPsMSLo1NVUV4EKh9mKFTA1
         A3ag==
X-Gm-Message-State: AOJu0Yw05Q6EPOPbX/RQDqNlwhBNrCHOA/gUzs7wIHHbNXtcxgk02JYN
	bsZ6gh3uF89CsjSQjMHWbaufUw==
X-Google-Smtp-Source: AGHT+IFqyvPfsZCXo/1EPc3mjODI47QAw0qLpl21vWUgc1bNs1yO0pXM9KolaKHhD7miC+E9pkUSwg==
X-Received: by 2002:aa7:d343:0:b0:522:2add:5841 with SMTP id m3-20020aa7d343000000b005222add5841mr2074582edr.7.1691664479840;
        Thu, 10 Aug 2023 03:47:59 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.47.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:47:59 -0700 (PDT)
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
Subject: [PATCH 3/4] ASoC: codecs: wm8904: Fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 12:47:47 +0200
Message-Id: <20230810104749.164827-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034802_893180_CD9988D0 
X-CRM114-Status: GOOD (  12.15  )
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
