Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF4EC55838
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=786gcetFp+od+exIoP7yC6rRpbmJCGMYRzQlq2mtJt8=; b=HchnOYCxA5HCQP
	YrpjAqyx5YI888iXLispXouIUDOwlOrKYkm0/ORW6ox22dGJy+7fzORRUVBKKAD9rFXZ+Z7bZ/lNC
	hepROVYeKndjrJaN16wk9wcXTeyzAQeM4vT2OhiBXhmx80JCym3AxAfSrmtsy03+b6YZVCvEqPHf4
	Yv459vmqwIMyzCDtEejQRIDxvumiKNT+fSQxib/j+062AqUO3IRcayGfQwjqhdg+Z6sbE9GdnhSur
	hcmYNtIzEImfMwrLgdLaZU6Ep2qZF8/y+zLUF0bX08fvD9mkc/bs/0y7GyyaZ+jraJ3eTVSVYrZCV
	85ZSxr0sjx/TxvzJ/Jwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZ7-00000004xcX-1cHd;
	Thu, 06 Aug 2026 05:22:49 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZ3-00000004xWv-2dzr
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:47 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-84a4d8fd6ecso2203849b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993765; x=1786598565; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wed7zRTG0fPLK7b8aSvZs5TBxnd4+YK7ALZwX/ab6vo=;
        b=sPSEwKvsAFZsYx29pfMjeQZVZwUS9L1GBwW34QBT3MhzQvpbGiV6U0OFOaeOOHR9bm
         EK1YPghUgDNMZapTF49saWTR0cELq2btkd6+sOPYvxZsK7kEF7SqRTVs8h7o/wMC80wn
         gRrh5sFhU/1ejNB4xOJHnBnRbtNOAxtJs66Fme/ivvGZcPOAawQz8XGUjjrB2nxgZPSM
         /t0XKPGTHbMbs60zYCJbBomziC3rASfJ3EVUxbk433HH232UulBpIAOYBjr/NrQBMtBX
         rWypQA+gFSmIaI4PrR+QnJM5wxSiVoUW+WM8tdU4UiHgx+P0f8eisOCXrmtFSktw0jtA
         IrLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993765; x=1786598565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Wed7zRTG0fPLK7b8aSvZs5TBxnd4+YK7ALZwX/ab6vo=;
        b=nDr1E1K4q9Ky4Hq2fxB5McbZyNTWk/ZA2Mw4qmTG70drY5ItYk1pnXDaEcC9tG04k4
         2Z4gGeB135eyY/F3i66ElvX7VmfOznOSm4/K7MiZlk4TWFvCGwVaIH6gG2FCMm6a7gNc
         h2eGPOQXXI/pjlhdv7UN2CrzECwk0JGhxZ6zQRzjxHyDFgJ9cBkmmwd1seE23wOyAGxN
         OxP/3kWrP61FGgyIRtXCwYdMaBGYA0PqSa3irxW4XNUpSm+Gkl4eV82twpRD4pWm8jg0
         UCrpyGa0YunFgS+1Lsadp5YqmziEE2u/9rknnzETh6MMWGlVRiWdvTVmLIWG/tdeOfaX
         lYaA==
X-Forwarded-Encrypted: i=1; AHgh+RqT9CeiLMExTabU6Bl7Xk38yuUvgCnZqA82dpqEC0DOeM4ch/18gizq3fjbyXgHCI2Y3K271xCy+1pPMFRSJg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyfVkv454i/Ygpj1IuemWq3NoBsfSiaKXdJqfw9Zd+OffqPzWpQ
	iR92M6Uj1GnIcfkigo3L0tKOUcZXQd31yv81skKg9hTGw+orE4hvy/jH
X-Gm-Gg: AR+sD103u24iuE1RXFyffsr05Owda6+qnmXhYjtd9pZbjgbd9ajVhJOyHSRC8qlPL79
	m7SNMN7o0cTMnk4LStkyP2OJsH2iaSfzla8L10h20QKXFNwZtPe9GXBe+rndOe25hM2OyVnst50
	TZe12z7SR0YmpCz9c4kPnSEmAHYAi1CzFc/4+w7O6pnDFrqvdaB84WOlT5NLqWV0SwXfgM9l9AE
	3Wz2MgGS1c+iHkCqFu7eI3AnbqtKFEZlx82YJ844R5exCLaZTly5/dUEb0ujNSD6m4c1IHlbN+E
	7WAvmdyKeBpOPzjbTo9wNim4/v/sLotSgslper5Ue0zM9bb6AJvCQQ4b/mUMIb5UEJp40TATGsW
	S2/PKp9LqBkQuiGF3V1QFMK4qzXZSZdH7Kt1EhBs1c/Z+hkSane0saLW24VUv25P6gpUoN7nAv5
	YCtIi5dsH9HaKDEBi0i6RdkKnSqgpT+Aj5jKNcIAh5n2etBsEetw7JAUipuPV7JYBKY5gKUhdzZ
	LRTES5CGSrZi5wsOnZxZFs2wRACxQyg/ZdZjGq3cQ+5bXsqNXsuNDQ+aFtIbFLHVVT0YHd9aOM8
	AKz1aeJmw2TwSNI=
X-Received: by 2002:a05:6a00:a226:b0:848:2a55:7110 with SMTP id d2e1a72fcca58-84f2e13b00emr13190693b3a.36.1785993764917;
        Wed, 05 Aug 2026 22:22:44 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:44 -0700 (PDT)
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
Subject: [PATCH 08/14] ASoC: rockchip: rockchip_max98090: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:30 +0700
Message-ID: <20260806052136.21034-9-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222245_705454_A38F011D 
X-CRM114-Status: GOOD (  11.28  )
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
 sound/soc/rockchip/rockchip_max98090.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 075d0990a126..426506a8e18e 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -428,11 +428,8 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 
 	/* Parse card name. */
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
-	if (ret) {
-		dev_err(&pdev->dev,
-			"Soc parse card name failed %d\n", ret);
+	if (ret)
 		return ret;
-	}
 
 	/* register the soc card */
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
