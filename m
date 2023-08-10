Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B95CC04E69
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U93SYDMtRoIkdeF5au9mguVXeHosSIIg5CfMwqM2dR0=; b=3v4dwUYwSXDcl8
	IczqE1pl4ijaIXNYrRsvLy4IezcM8KqnV3gK4dcW4risEUL6lEuy3USBqyVjohBXLsFuKKh2m4D3e
	Z5H6J0n1gQpVPUQZJLs+z6grpjO/82lEgKUeUrxCDzzhk59wb775LmMIYw99taN8b+ixpy6ROuBQ3
	VUdtEWjRXX8Q+qWYJ9DwbCM43+flrVQCsIpIdomorlz4+UVmXeP4lz+SnV8Ghsp9d3KeTRtC9DbNH
	nPC/KQe9vbZG8XEesNo6iqLNpF4tNgS8ZvYyQuyGvq3ae/qPknxnyfuLzroe2B9eowg3Flx/XjCRM
	/gNEauDnfpXkf2q6LQdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D6-007GI2-2E;
	Thu, 10 Aug 2023 10:48:08 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3Cy-007G59-1X
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:48:02 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fe2d152f62so1154778e87.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664476; x=1692269276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wdCk7OUtlyVla0geNv76Vk4CNU64Mjej9PSyuuwP9Mg=;
        b=zfeXdylhcEBVDrqAny1SLIvN9Crr5v54nzF3ZLf3W/Eif1dNWT9wNlCKgPCQL/o0/E
         iYzjBPH3863DIk4aENP9BsmFOE0Y+EpLU2SlozYtRxJb4GQaDpNAA33nYUQsy3M2dVsT
         OpxZyOWl5CCCLP6aJa0vYV6RmTQxA+wi4TcMmhitHOdEobpn5o5vLFCXEirr7/Qm+DMr
         G5Rpk7tIg24B9EHXKP/uHgwg1ZuSYKfYQmoOFP6aLTRJty/VCoAZStEIc29/gNuUHg5E
         VwUyx6TO9alL/BcefRo7HnARKktyocMZXCzb007Et2yQXMf/XrlEBt21mzzwDFc17QPK
         ar7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664476; x=1692269276;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wdCk7OUtlyVla0geNv76Vk4CNU64Mjej9PSyuuwP9Mg=;
        b=M+8KBfrzp+DPSG/j713U0C7ajKMsbsMvqtNaD1sge5tw0WFsjO2pgWsx8HlpWUiDIu
         bKqIyI5i68aE9lq58IODAKb8nSGMddlLEpKzCvabmVC7LF3kZO51ZchTXp/U+ReScJMa
         S3GzBXg/fQQfwyjM6kW4dmRXw9o2iuwPWzDqASKM40RxKBlbjwMxHHylgAJTEHBbhJzX
         l1SJvDjW0hCDTNKuZ2sRqDA7wzXuK9Zb4Sxb+YEnV8IacXR0zYcm0HrHhVCHZgzeAjgo
         yaQCbmC1TE2FBpuBfTbFqenDwJskyVYJRv8jmnmxQxWlcR0fB2/HZaIDIP1T0gZ5KRci
         XmFA==
X-Gm-Message-State: AOJu0Yz7oH2gdmfqzLqJR6pJEEnblX1cMs595+X6zS9gDrdrL5+dGWB0
	QnH6DkqJm45pbZMuUrq6QbqLtQ==
X-Google-Smtp-Source: AGHT+IER0Z61HNUztY8QpmTryefpq33DBRiWMkpaT+UcHCgK4QowLfvk76l0MXCWns6xcZPsgfbbnw==
X-Received: by 2002:a05:6512:4013:b0:4fe:c6c:ac95 with SMTP id br19-20020a056512401300b004fe0c6cac95mr1693259lfb.35.1691664476514;
        Thu, 10 Aug 2023 03:47:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.47.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:47:56 -0700 (PDT)
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
Subject: [PATCH 2/4] ASoC: codecs: tlv320aic32x4: Fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 12:47:45 +0200
Message-Id: <20230810104749.164827-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034800_524062_3D6D7CC0 
X-CRM114-Status: GOOD (  10.77  )
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

'type' is an enum, thus cast of pointer on 64-bit compile test with W=1
causes:

  tlv320aic32x4.c:1352:18: error: cast to smaller integer type 'enum aic32x4_type' from 'void *' [-Werror,-Wvoid-pointer-to-enum-cast]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 sound/soc/codecs/tlv320aic32x4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/tlv320aic32x4.c b/sound/soc/codecs/tlv320aic32x4.c
index ffe1828a4b7e..6829834a412f 100644
--- a/sound/soc/codecs/tlv320aic32x4.c
+++ b/sound/soc/codecs/tlv320aic32x4.c
@@ -1349,7 +1349,7 @@ int aic32x4_probe(struct device *dev, struct regmap *regmap)
 		return -ENOMEM;
 
 	aic32x4->dev = dev;
-	aic32x4->type = (enum aic32x4_type)dev_get_drvdata(dev);
+	aic32x4->type = (uintptr_t)dev_get_drvdata(dev);
 
 	dev_set_drvdata(dev, aic32x4);
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
