Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 888A6C001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWDLySLuZQMQDb5BC/di1Q6NKhDRIYATf1B0DUJNOQs=; b=I39pnhkAl9ZGgK
	0lb/EIe9OjvCUx+7jDhRcJeLSdflI1w8sV3y7U0v449kQULcMAZOKwoowu1pXpkGeWXZrTGMiJYNk
	V0ba4MDMW19ec5661R0RXkevDZwR3Jk3FKLFYI6ILccV7/exYor3AaA1BYVzGjDnK6dti7OfZfpzd
	sPLl3K74BjqFg0HgSwCn9Nd7kwSlY5wdisyDq+LHF0MBdk/h8GSRuDu8y5VpX1UtCUH76fgm5vaaW
	TD7UUPOJ5qDLnbkzcXskVQHZiVyff8m7ku8CQki7WWA+WvZFg1qQx6wNINSioelQEMLgEBFqxvmlW
	busoMGECpgzR6wfMv53w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3DB-007GOF-0Z;
	Thu, 10 Aug 2023 10:48:13 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D4-007GCG-39
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:48:08 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-523ba00a62aso7074a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:48:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664483; x=1692269283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzMSq7HLSHN1HFLKAp83kiHFzC/dRhYUs++4UrDqaOA=;
        b=ClILBq+MRAloWpJfwnTeCf1bHZEDnZelIoj+A/axjmW1s+j+dR7FOxDjEF9I8PXXMG
         Tc/C6Gx1scvwjkKx98djoORst6Cl/ycaIodat9D0KfilMBRvN/MaESoqI9Ak9Z8YOvq8
         Drt7RbTwvMya7Xn2ck8jDeLdI/Z7sUH7nVGyIWw72YyEu8FIwQyDUF2+604OgUg5Qlo8
         KTzw8odQYPl7LwA7/7fNEKKen26+y7OwDK4lXPT/WxmIVFxgAll4Bs74be7u4YK0EZSR
         uDWOkSy5IvuHT6ViBxshwTxcHfylLOROqvd7FmX+lup7xXId0mPOyWI9lt1jUGL3LnMp
         YXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664483; x=1692269283;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzMSq7HLSHN1HFLKAp83kiHFzC/dRhYUs++4UrDqaOA=;
        b=c2UIcJQTrBgjfgDtc3eJXUgDMg/QkMoSd10ITMQzbJN+G3PIV5h1jzxIfPTjTOXo5N
         OIOc3c56y8HuhZmrLv6qzdnLaRvRHAvM8Y6ZpiONsf7XXbvCGX/FZyLtW1+ClswVqCts
         zCU7nM4q0ufxEEWjWEgVEP8CX1to2blroag4Ab/IZtgI4GavMHbHgxlQwNT3uDGLWSEp
         hg2ovRvAYHe//NzxJMoAyEgMF780hzGwfMWBQpnPUVZg/vCwpNZJ6FdWXXyivMuapQpA
         RizVLOezaBEeibMZUWNsclM3KlbBdT4iqZqPCxDvvLmGebWzi12M0jUi+yeWS5C09N6Q
         nxlQ==
X-Gm-Message-State: AOJu0YxHyJYQro6wnd63SgaSjHci3Y+BgJv/3YRY7wjImV8MMgKizqKH
	gdHD1gWxQK3E+PGNvx67oLt34w==
X-Google-Smtp-Source: AGHT+IEm4GcDsfGX7LdWBqE4b5IJZoo0ChzDs3csIlSh1GyolAoj+48i33/6cKTWLD7egpAVJdszfA==
X-Received: by 2002:a50:fa84:0:b0:51e:2305:931 with SMTP id w4-20020a50fa84000000b0051e23050931mr1511310edr.22.1691664483233;
        Thu, 10 Aug 2023 03:48:03 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:48:02 -0700 (PDT)
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
Subject: [PATCH 4/4] ASoC: rockchip: Fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 12:47:49 +0200
Message-Id: <20230810104749.164827-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034807_028580_CFAEB0E8 
X-CRM114-Status: GOOD (  12.46  )
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

'version' is an enum, thus cast of pointer on 64-bit compile test with
W=1 causes:

  rockchip_pdm.c:587:18: error: cast to smaller integer type 'enum rk_pdm_version' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/rockchip/rockchip_pdm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 52f9aae60be8..678989b25e57 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -584,7 +584,7 @@ static int rockchip_pdm_probe(struct platform_device *pdev)
 
 	match = of_match_device(rockchip_pdm_match, &pdev->dev);
 	if (match)
-		pdm->version = (enum rk_pdm_version)match->data;
+		pdm->version = (uintptr_t)match->data;
 
 	if (pdm->version == RK_PDM_RK3308) {
 		pdm->reset = devm_reset_control_get(&pdev->dev, "pdm-m");
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
