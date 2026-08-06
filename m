Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A37C5620A
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFdS9PSQL9VKy4dVk+iRS1bdMWgX7vH2fGbuylEmje0=; b=ETMD/sc6rme/h3
	mSGPw/itfOTD/Dc3+2FCTUr8Zbyiro6qSa4ROJJ7ZAJDDWzHtEGnlEx0O+xipoTCvGypCmubfYSqE
	AiMYhb3jcuJPYfv+utcJkWaMjk8i6iyVOJi7xsuVdEBhB9O/H25ljxH9dRRrW3A8I1qjrKBAKIxdP
	B61EB9EtwJ1o5riXWc4F7EwLZx55UdgNiPd1vPSXifnsPckyFtYIIGN2D7b5uKpz1/TuSIJmUr+En
	r0RQ4Ap7qTm9IIYAvg/+Hzn2PJFSHuP2tnR6VGKhaaXEPDxopbh2dAMvaSxXw6Uj5cUwI0HSLOGgS
	HDuKvLF20trZUG1va4jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZ9-00000004xgO-2e3r;
	Thu, 06 Aug 2026 05:22:51 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZ8-00000004xdf-0bGv
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:51 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-84536ecfc5bso2256352b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993769; x=1786598569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0hWHLReiVEFXDAdvhyF4GcFfDKUrHwAoJwgfx7kXGn4=;
        b=WfPQwDZUEgWXCRfsj5U5Ltis8NkptYrGo8ni3A6Wcxm/elGLYkZBZhD9Dsa0G1n4S4
         m/TfrBGJi8M5Zz6e1eceODlirr+um2AWIvSl9kkNnS5JJPDmpmtmea0W2SZl+v6NoNml
         FacgC3XgnFq8oKzVo5vTIjZYjp4mpqYTIZsttGEtAX1d/UhegCdtmdX3kMMYS0tWoHA9
         FlcqWgJXA4XRbR4+E65JV3+vf8qw6x5e2igbNRsAGcK2nL3w0e1RQDuCdCj5OG8OivTi
         l212YjaSBaYYOzhPLwlf4EGSi289kDy3Ut1TDL1bj1Ru+hvhPYNUP/XeyzMUaG0xgfUH
         zt5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993769; x=1786598569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=0hWHLReiVEFXDAdvhyF4GcFfDKUrHwAoJwgfx7kXGn4=;
        b=C3kCpQwzfQis/Cs7Hl47NwvwXB7VN6nKCRE1s2vrUWZvKkwMSqUBeSfVrAUnMi1bTv
         tbPXx20AR0zq81Aw5hnDkkxF5Se6mZRb1mqRcwpHbHq7TFQ8ax7Me0VO3YePz12mfIVI
         zjzg/SZfnHO6fF69JTZAGk82gGJI5eW8L2qdbeYRxE+eCs3r2JlpHweF2kSo2aAGuI2f
         pPW6CFUYCsxk5sUB9zEVKZxO0woMNjwPIDdLpefD/pPj9TvIthew6ej3eGkq3dn8usFT
         upGRIjCDM3BLIWf5idcSueG3LOLnQIGR4MtcQmiXD8RetvlTh+ti2z/tuSpVh9Y8Pk9i
         gbEA==
X-Forwarded-Encrypted: i=1; AHgh+RpS9GIj/DmcZyO5zq3fhoTOKNH1dn+a/7NPBeRBwLRW/urFyoQdCtHeTAXEzWVFu9yvYn1pP9CIYZ4hDHTg7Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUqxVbDMBj5WIvPUBjg+1gDG31MDV3HEf949HTuLNBWVgRFbNm
	8IqUDlu5UGEwrMtjttzwpjlGLu7o9fOaABY62bo/nkBabplW8ANvsNco
X-Gm-Gg: AR+sD11TOUfIGFLlMhfYJJPNVH4PZSA63LkcmOOWhbIRd2KBmVM8gtf6+xwRwExzXLO
	4myrMzsBOdXhJreWMuv0MslgIyISkxRnjhTC4mbRcFvc2XX07ZcWZPFZ7EFmPrK4Cw9Yi2VLsg5
	o5Osz+nbWYjIbKi1eNXyON+Tc/rAdtC+HZpSaAR8NxFc/1T9fkhNOs+TKFkjAHtdUiH5qm6YjWJ
	x1LBw5+6Ss59MpOU1pXd2Eq1cuFxp86gsVaREdkzmJ0JdfP+XNzTT4ChdNJNyfHho9PxBQB2y1a
	D41xUBgr4nExooPpb8fx/qoozhgBmXe1oDkuY4h/j/ZXvZsXxSc3keKCOo6L7AOQI5t9DuwWg5y
	b9whwhZulq4t+QfR++kfDNe/qqeXs6siVr7qhkDBawTbLNiSvv0VyxMgfWYhMWdTqAIUhlzHZks
	L1Zxkhct/lsEBtnL347azypKLiHcsF1YdqwtLBT/RB05sC+XxEkC2szNYQSWrO7XXPkuxSi4bA3
	3n2DhQVRJ61EfvjKEcr05/velpz8FU7LVYQrMz72PcPxgTFZ1QjGYlpfF1WjtORxFCWCTTGSHlj
	FY6H
X-Received: by 2002:a05:6a00:2295:b0:848:62ab:7b7 with SMTP id d2e1a72fcca58-84f2e0402b9mr12960128b3a.16.1785993769555;
        Wed, 05 Aug 2026 22:22:49 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:49 -0700 (PDT)
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
Subject: [PATCH 09/14] ASoC: rockchip: rockchip_pdm: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:31 +0700
Message-ID: <20260806052136.21034-10-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222250_199957_7FB3CCF9 
X-CRM114-Status: GOOD (  11.62  )
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
 sound/soc/rockchip/rockchip_pdm.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 115e90d3bbfe..343fda478901 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -630,10 +630,8 @@ static int rockchip_pdm_probe(struct platform_device *pdev)
 					      &rockchip_pdm_component,
 					      &rockchip_pdm_dai, 1);
 
-	if (ret) {
-		dev_err(&pdev->dev, "could not register dai: %d\n", ret);
+	if (ret)
 		goto err_suspend;
-	}
 
 	rockchip_pdm_rxctrl(pdm, 0);
 
@@ -642,10 +640,8 @@ static int rockchip_pdm_probe(struct platform_device *pdev)
 		goto err_suspend;
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
-	if (ret) {
-		dev_err(&pdev->dev, "could not register pcm: %d\n", ret);
+	if (ret)
 		goto err_suspend;
-	}
 
 	return 0;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
