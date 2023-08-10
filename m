Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7F52C04E69
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 10:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWDLySLuZQMQDb5BC/di1Q6NKhDRIYATf1B0DUJNOQs=; b=Tx1qx659geiuqv
	w71AJiJYFaSZGxPA9WWknDpHx5GUW4GAPq2smIVyQHNh9ys3AM0mKtdpvP/I3UT91zZq5X+lZisDD
	lq0qXlICET7f8ODXeiaFXtD8YNfSy9bcOB+zPcSxxu83DXB0CYPebM6t50onQXivnRK+FzNVBJVz8
	jyDTgA/TKIJuwbZybXklQjn+c/nFqxVNV87Y/ge8Yn5LVd0qF+so1JjN7s7oGvf7YF2pw1apdB5ZB
	rh8TcQfnCelvqwoRvX2g7grLLaAPk1SpbyDcDSJQ6yTb5OixenHYRmxtNTSc8nI0f+ZmxrRT7opGg
	BMlLX4R3O8EeA/dmXHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D9-007GLV-0f;
	Thu, 10 Aug 2023 10:48:11 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qU3D1-007GAc-0D
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Aug 2023 10:48:04 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fe1c285690so1095389e87.3
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Aug 2023 03:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691664481; x=1692269281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzMSq7HLSHN1HFLKAp83kiHFzC/dRhYUs++4UrDqaOA=;
        b=UGqNEmNN1GRZd/cQPQ8BSIM/P3HO1mpPaFsq5qWJJQp/cf2hqFCbXFb+QeRHXLlMKG
         7zasTTRuG7one9GfxqSB1uSZzw6Wy2owDcgscp2LVQ0ZEYKU/dIgcZ2X7SMvcCIuMvnP
         fT+UGY1nG6W+GX8JH8DDyNGJS0INeWEZe/xIc7W7rVuY1LUon1MxyAMsMXy/QaIJnAs5
         yOJES8JPBZNK0XFRdKrYta4LXxKYP8bpG35w5ltlkGbEGVbpp3kh+yoIZax3cM3SBv4E
         PjezXo8hgAwGpuJ1o+WPULiVfbGjx4KGX4Oer/736Jql6eOYkB/sibEnHmDbRKKrJh36
         Xrxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691664481; x=1692269281;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzMSq7HLSHN1HFLKAp83kiHFzC/dRhYUs++4UrDqaOA=;
        b=MTJryBON3MuXCjA3DVcEN7HCOU4ZEh1540QGCn6EzXtu0BCnRxOJJyDkNTfd2MPFjU
         e0POuAQBLcyIwoQtAM2e6m0LMgAs2RifZf8v9tSgBt1ousTjtvktFx0L/d+jkHtNhF1v
         95eUNtlRYzTZlXYUGvtZGPyvKCcyFAruK25QdzBvoC7eM/ItO4560b2XKXR2AnvkUuz+
         OXds9kd4NnMzd941+hsCasSsMir4lzqHLVqw32Aic/KrGUYWLDM374gu6vfpJ9v6pJga
         CGXcP2EdEB75xMtHKO75EdfOAEA8WxPywWti/GpcaJH9wGp6ECfPYxHPkHJ+3XzGilmn
         +PQw==
X-Gm-Message-State: AOJu0Yzg0BnxTwS1iSD6LCjESEa/iTl3B8h0/L9ekkpGrvyzt50UQi7+
	aJ8KSRxtMy9iJLZuGiL1ej4/nw==
X-Google-Smtp-Source: AGHT+IEP9ckwBL1/0mfPqosWIWOXy9uevpV0Iq3ArH10HdVvSOvTyx5j3EETKE0Mzgr1fyviNz4aeA==
X-Received: by 2002:a19:9159:0:b0:4fe:a2e:890c with SMTP id y25-20020a199159000000b004fe0a2e890cmr1439491lfj.49.1691664481535;
        Thu, 10 Aug 2023 03:48:01 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id x20-20020aa7cd94000000b0051dfa2e30b2sm653854edv.9.2023.08.10.03.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 03:48:01 -0700 (PDT)
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
Subject: [PATCH 4/4] ASoC: rockchip: fix Wvoid-pointer-to-enum-cast warning
Date: Thu, 10 Aug 2023 12:47:48 +0200
Message-Id: <20230810104749.164827-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
References: <20230810104749.164827-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_034803_132261_AB699017 
X-CRM114-Status: GOOD (  12.36  )
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
