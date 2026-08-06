Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F7ACC56205
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUTRs0L86pne9pcKiTbHtUfeYEodNMyOV5ow75V60fc=; b=FVBEatvhAUlgsb
	KRh3WrgZ5xPdLOHoZbmiVBXG/t/gzu3Tj00Dfxj0+m62H3SWgofad9OOnixXZCWDH8dTaQgv4fcqO
	Fsx6MvgsO2ex8iidWyVIzK2F+e8s8fUbZcmIt9Ne+8rEPCIc28xMmac46gLcu0XFYi43kMHePcUX+
	0p46VYoWSjC2+BCFVa9jVaTD5gY9iPT/DCE18MwWuBkV37IBgDUwL2eYV1Sm/3nlhu43FfqwlhBjB
	VNYjY5G59aVSNSCt/WYqtmvCqL9nCepzxQxfuSaLj2L0Uj22MkuIBXCC0RMWiZNYCYSEqJVDQ8D1e
	vyULP91IvdLy/tcL+xaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYc-00000004x58-09mR;
	Thu, 06 Aug 2026 05:22:18 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYW-00000004wzr-1NrI
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:16 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-84867f07d63so2161906b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993732; x=1786598532; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AjOMq1XsUpQov1kpLT0My6RNRrW7igNYjy0AQ6ioFe8=;
        b=sPrVfCRTAFWcpPsc3w5vw7G+iGoS3tWH1WA0tei6eTj2vIJ5/38wG7KgkYRgsa9BbR
         YRpNZ/aoG9K1PSsucOY/tU16d2oWdTgUTdMBgYUC53Es1kn9y05KBZ7svLYjyiFBrDRs
         vbeUp3Agw261HPQozCNifX7Ub6PPja0LzP0BAN+XotCpmriEhdODzMY3SBufnCBHXPmI
         BmcXNeYRs5Wat7D+uoyH5cmnlHzkXAUUonpfupktAlZgXcGsgQV6sR+AmUf5TrLPRgkL
         z2PeyvzacJMhsqx+uyjPhldC4Md5ZlQ/5Pu8KSrJTurOvfjqTW2odNCkRNyiA023ilbo
         80uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993732; x=1786598532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=AjOMq1XsUpQov1kpLT0My6RNRrW7igNYjy0AQ6ioFe8=;
        b=aYfyozmOvNa3/pJWtpNXxYKFIW6faNn9bpFfVe3UD3HnECnn6ssQy8X5g5JZmcr0Us
         Iv9E2x6lf6kY/lxcwlFeG4TWqUO6mnMCBp3lThgCm5E5tbkSZxBdlI+lTgYMVe+YAN/0
         Gnx9lrOMMQIkhl/pAIfVcGKrZr9n6I2Ix0BFCYNzRXwUTXYJ3C84gZPGiQwCQXmD1od8
         16b7JIW6ZvCjwU2Yn2U421ZgNNfOkYukiv1++DrPkEHBxwukmzAW1ZGI7Qj7KDzGZpok
         DTOsH2rLaYEkhI6RS9iDalVpuJTbLOsY+133XHwOtEe0Vnz7QhbZMvcNsPxOvpE/ONWf
         zzig==
X-Forwarded-Encrypted: i=1; AHgh+RpXwmguMcoxV8datYGKyRG9S3HNAK7R4e7SPL9TCRSgYXdiEUiNwGkWCKUvfJz3lcdhNCRPXDjoUrzR8pgiYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz72+g8LXqeT08H0Mubly4nR5b1utzO5ty6zAHUJrNFycn2N+Rr
	7L0jBn8ko5RrMHIXymj/cZr5DuqtjsdZjv6rhl3aduqBYAsJyXXzEfuQ
X-Gm-Gg: AR+sD10exDWQqi403SOr4y6ccXjYFkmqm8eERPeOdfKE39ECai5y30G89Ia2PtIbuCS
	omJEd0vDWQylXAP+kuJAtGVZ5rN6o7vVn5gD1kt84LAqLYjaI0PKidNoUYoCAkysi+BhdsbfOL9
	vQMqZ6DdcpVTKZ6FwqV2S1eLAXGyy5UtQikKugEPeoiXRa66Qe3bWgO7DHZ6WhhqWK8myvG/Er4
	a+ncUewekH+kECa3274mYOKMJLYFkJVBIMQhctJwmxBF3EhA127ojwJiThpIkWgcl+Wzcz+NWfo
	IQAUJiKQtPRtlfh6/x4v3QxZHL0X5Ig8bbo/+sFW6yrFeqhZgwGIcsIGhUUX3Zcyif21xCwXv1D
	xV0EhE61oe6HQBEcRoR0u/xCMNhe2OWFQaYv7A3tZT++J2RiiNszg8gOlmxopTUuQVWR/UG4APx
	BB4DbqiMpWmSxyvUihM+a+iQRv4UPv32E4F4OU7V55FaaJCd8OTY4isHMNIVsRBaq3zYllu6dIf
	F6WxmmuDc/jj0CsDEMRrnyiiowynQg6929vYzm60LlzRXCR+UyUH/71Uwsb8o8WcXUaHi3cvVPB
	oFO6
X-Received: by 2002:a05:6a00:3cce:b0:847:711f:49ab with SMTP id d2e1a72fcca58-84f2e006c85mr11362332b3a.22.1785993731714;
        Wed, 05 Aug 2026 22:22:11 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:11 -0700 (PDT)
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
Subject: [PATCH 03/14] ASoC: rockchip: rockchip_i2s: Use dev_err_probe() for error handling
Date: Thu,  6 Aug 2026 12:21:25 +0700
Message-ID: <20260806052136.21034-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222212_367394_05282B1B 
X-CRM114-Status: GOOD (  10.42  )
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

Replace dev_err() with dev_err_probe() to prevent log spam when probe
returns -EPROBE_DEFER.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
index 64c90316fa02..3e8d07b3fc1e 100644
--- a/sound/soc/rockchip/rockchip_i2s.c
+++ b/sound/soc/rockchip/rockchip_i2s.c
@@ -767,16 +767,14 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
 
 	/* try to prepare related clocks */
 	i2s->hclk = devm_clk_get_enabled(&pdev->dev, "i2s_hclk");
-	if (IS_ERR(i2s->hclk)) {
-		dev_err(&pdev->dev, "Can't retrieve i2s bus clock\n");
-		return PTR_ERR(i2s->hclk);
-	}
+	if (IS_ERR(i2s->hclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(i2s->hclk),
+				     "Can't retrieve i2s bus clock\n");
 
 	i2s->mclk = devm_clk_get(&pdev->dev, "i2s_clk");
-	if (IS_ERR(i2s->mclk)) {
-		dev_err(&pdev->dev, "Can't retrieve i2s master clock\n");
-		return PTR_ERR(i2s->mclk);
-	}
+	if (IS_ERR(i2s->mclk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(i2s->mclk),
+				     "Can't retrieve i2s master clock\n");
 
 	regs = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(regs))
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
