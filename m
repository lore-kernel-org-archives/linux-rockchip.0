Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89640C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 14:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oWDLySLuZQMQDb5BC/di1Q6NKhDRIYATf1B0DUJNOQs=; b=kSbTQlMoQit2yk
	U0aJTSCu8ftH8WpkE24RITBIFOZykMLVyni8NOCfTTapZ/Y3Fgn8TmR043f4CkZUB1iiw5ly2UqjI
	yamjkX9lfupXltDBl2y4i2kT/06y8JipdekpmtcQwoPEZ4HeCw0OmOHi5Ywn/3q3z6bTrMdbzUqJK
	ecDDmzOrz1MMBHQ0lpgTZ8c3LzodZE3EbE0WuE9vx3Tdg1qod4cLnzaiKpZGwFzHZ6nkmdPkokzF4
	bdfKE5qfEJrCiW1BDjkOqKvmOWRTJ4Aez5pmT62DGUl8FtEfIjQ6E9y+xTNeuu/2gYV6AzxwuLW0Y
	lL50rNLKs85BARMzQ0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVv5n-001lkK-0y;
	Tue, 15 Aug 2023 14:32:19 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVv5k-001lii-0h
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Aug 2023 14:32:17 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3090d3e9c92so4827295f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Aug 2023 07:32:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692109935; x=1692714735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qzMSq7HLSHN1HFLKAp83kiHFzC/dRhYUs++4UrDqaOA=;
        b=L1iV0sMzPMso3PSr1XH+y5/B8gyuV5pYEWqlU8NARJdqLI4hZ3F6s321hi7/VG8oLE
         phF5PpbnKhgxxQhD3n7lKAk/avrkQIoh6ll4b0iLamniMrti4GKXu1vdJsELmnaHYnmy
         dXW9fqkfSZo2Oc4ZLpAhuO/5waWLbDsOiufUm5OjYPAP2tQG98GYDqdKTERblKPMEH0F
         K+aDkrfeKeuhJAlzYWKgLsBOO9SDk0kp07/kNYdsC8nGGGUqwun4YursEJrylhuJxp0/
         n+Ka3lwGrr4oaw4/KSAIokrbKf8wPNLPfVHq2FCcb72KkDxaRhRl5by6WCpyi0ILqMwc
         OgeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692109935; x=1692714735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qzMSq7HLSHN1HFLKAp83kiHFzC/dRhYUs++4UrDqaOA=;
        b=kmQZswWM+nhHCyQJpRf4V/iq7wT06dUWdTqzXnD9joUz64zgP2gyPy9XPa8OCu3fe+
         Yo7lFIka82ZffwFAAW2ncEcDha2CUJElBu9DCCoLlVGAOkMb8fbOZTY0YMFVXUpHDlyS
         CiPwahigeuv7Ebm2J+V/Vwewz1Sa/oqjJeLlkpYaO+1EJdn0ZbrJW6jP/JXTSs4QORrc
         VgpJfYNV7BbcJGyUl/VM6dPO5r3pvkNWHLddjkjJ61q6ueDWkN4IO7iTbQbjUoagjqKZ
         BJpkLNIWcHgU25RsNUFu+AQZHEV2err+grERgcNHld9hIgknVZ5wonX7U7XYwdDg6JCV
         miIA==
X-Gm-Message-State: AOJu0YxJbG9nkINKgX5/fuYA56qw+0oEoGwwVP+61qjgM9pfHDysBUA0
	n8A3FI0hC0yHKztiY/sEaptyrg==
X-Google-Smtp-Source: AGHT+IH7QnBMIW+PVYhiQDxK0D6EQk2b+8pkoH7NcQ2NFAHzAWryQ2DVu/uXHuscNAunX53Tk+bXPw==
X-Received: by 2002:a05:6000:42:b0:317:e3a0:92c6 with SMTP id k2-20020a056000004200b00317e3a092c6mr9135862wrx.18.1692109934723;
        Tue, 15 Aug 2023 07:32:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600012cb00b003177f57e79esm5851481wrx.88.2023.08.15.07.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Aug 2023 07:32:14 -0700 (PDT)
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
Subject: [PATCH RESEND 3/3] ASoC: rockchip: Fix Wvoid-pointer-to-enum-cast warning
Date: Tue, 15 Aug 2023 16:32:04 +0200
Message-Id: <20230815143204.379708-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
References: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_073216_253284_CE93EC51 
X-CRM114-Status: GOOD (  12.96  )
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
