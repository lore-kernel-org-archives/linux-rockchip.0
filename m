Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E940C55838
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HXF+97z8Toe+hxDu0DcsaK/fuPrFMVaMFJIZP3XuWUA=; b=Kc8tczKdBbe0D7
	3d8zO7mqUg1GT5oWq6jPOrBVLhR81E+b4IUZFoV+OrGYt3YRsnimViC+gf8OjyWaTwnd7Q3xq/RPT
	yONFiOltaq6wXUNjwa9RDldjq42luqhRanI2hlNUceLX+hMAyciZh4+/iQt8fF+JVdm1XSFgoyEjy
	s2hdJtHIT2AjRaeWCfejGE+XFBja/rhHgvkLHGOJdg948+XE7AozaslDnsgaqCg2c7WI16zeJFX/f
	zkgUK/yyO4QN3+7e+b+YB+hT31ANoRabKyQQ/TGe8EuK5pG6xyE7n0TuJR+CPFO3g4v+q7fknUmpO
	68DUhQhzyOl8UV/0SoZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZU-00000004y9X-3j41;
	Thu, 06 Aug 2026 05:23:12 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZQ-00000004y3f-2HhI
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:23:11 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-84864086bfeso1464513b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993788; x=1786598588; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1Ex53QN8qUaM4ezvj3nywtUMeXIR5OlcqRfF6FOJ3bY=;
        b=LmjFEXivKGUe8q4eqjUE1WbDXXr2oUlrF0n9vYAfiNJydBx/IacUHILnAAmF4wL0cA
         fmWx+WkAJpe21tzkJVsZVUq3lCfAa1yVT7ImZOASv2s0sjJ0itJ6HBfyOzxWGsxP2GiZ
         pela823PD5YWSM7KSG8Rrppdp6DzjzxaTUD14CmGOG1M9dAqmJ+7OQZnmzPGfnn5iqXy
         vgxhl8e9pTfyRA+qvBz5EropfpRoV19tFUvUvBIgIljPxbW2UiEQqaBIpjjxly/LRI0Z
         aV3a2C323pgn9+5g0aXETz9Qvp0V/vheZwH13G0/ujrzazAO4mbT//HXcGTMXNG0Iaff
         rb2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993788; x=1786598588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=1Ex53QN8qUaM4ezvj3nywtUMeXIR5OlcqRfF6FOJ3bY=;
        b=R2eN9PD2qjKuqDyhWMcTvyGL3gSEIK3NLJmY35tIl6IEOxJOQ/TV4YcT20L8CcE9sg
         kCLaRX12L9LaTmOmt02wpvcBNrm+gXTrALIh6Z1w1vTU9EKzGozy+XyBbpiY7aK0ZHet
         Cuqsf4TbP/Uikj+jpKYWP8XLdeDBLpFo5BxpiMuI6h0/b8fGr0Z9mcoe3mxOonCIEPDx
         RSM36fFXD6dSHmxHuVxuO49bjpY0E/HR3iG4cc+BJx8Fs5H6nMDxiO121g5pTGvd4rmt
         AoVxXQggpQSCzNdpDOKz2XEPSxDZuH+gYBt5TF0s+Q64/kzrn9azaFH7cWThXHDLS5dh
         dZjw==
X-Forwarded-Encrypted: i=1; AHgh+RplfN0XNCA5df8CBLj6ry88PcHxGArHpS2wrr3IY2emS6K6pPKvq4nP3icPxaBxiMDFEOeOBRcSmZaNIMVR0A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzY/JERLPBCAHqe0kSm96OM4vLyRAdnkPn3jXukfKvstukOxlMK
	fFC1P87GRGiu4+a6Yl7m5DqGmeb8liiCQdr7bpu1AAlVs3Dwnd+xhrgE
X-Gm-Gg: AR+sD11sZ8UGMdZq7jvlY8ZnR3e5iy+9HM3jUKo7UYEFaFVITA9KH80L+LfF9VLmUab
	7h23HQ5arqMq5nQlqZR135dbAjakURu3WM+mXJz+usKbjRh5LExnJx4goojhZ9c90aKYDO5IHUQ
	pj79e2/whyNH0E799goW7YMoK66SYnkF7gcxiw0vQj2tEsRsXtJdEuFPYWN4jCf/SQ7lXn396Rg
	GA3e+rn4/feZYp0g0NsU2sLI4S94s2jlpYKDcjwKQv9cNPBG0piR3+HEUpuHoUfVofdIK+Zg78u
	TW4gbOKlYciLlnH8mXp6uCF5PAcDgCphIyxKRU9lcbRMkwG7c0bZ1OcBCDzjnANmnTI7BV0igHv
	DX2rB+CauXNi9QIvo9EJj5DvAgMIPQQ/CGztG7XRfWZ2fgfRsIJWCprR1RttnIZLM73tDYASl7k
	02jI3VtnA+2vHMIN62nK1d7GclQcAzkX/xGdG02rkdmnouv4QYa5nmolUYEZMQR+Z9W34yTMO7q
	sBIfvxV+uRBNRX5UdN1TknOmhvNmdtFtU6oNa7kq1smf2ToLCpqd2k8jEXzchmfdNAcQpvmgPOB
	LALY
X-Received: by 2002:a05:6a00:3c89:b0:848:7f56:1e44 with SMTP id d2e1a72fcca58-84f2dfcfcfbmr13260578b3a.7.1785993787706;
        Wed, 05 Aug 2026 22:23:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.23.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:23:07 -0700 (PDT)
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
Subject: [PATCH 13/14] ASoC: rockchip: rockchip_sai: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:35 +0700
Message-ID: <20260806052136.21034-14-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222308_590010_627310DA 
X-CRM114-Status: GOOD (  11.41  )
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
 sound/soc/rockchip/rockchip_sai.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 1fdec12a0d4e..30b5e71d0937 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1472,18 +1472,14 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, ret, "Failed to resume device\n");
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
-	if (ret) {
-		dev_err(&pdev->dev, "Failed to register PCM: %d\n", ret);
+	if (ret)
 		goto err_runtime_suspend;
-	}
 
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rockchip_sai_component,
 					      dai, 1);
-	if (ret) {
-		dev_err(&pdev->dev, "Failed to register component: %d\n", ret);
+	if (ret)
 		goto err_runtime_suspend;
-	}
 
 	pm_runtime_use_autosuspend(&pdev->dev);
 	pm_runtime_put(&pdev->dev);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
