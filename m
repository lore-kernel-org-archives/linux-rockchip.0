Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80BCFC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HeNjVJ14fX7IBxrL2RBmTbeOp8sCwR7NSDmkfM0JbLg=; b=EdrZqvrN49V7bb
	P0kWwTMOZMGcM+PyxiK8drCM64oYxszeD6quKambFbVbyHWwkKcg+9iX4Sg41xawAz7CTaRzhbh0V
	dWZ7oCj0JEzAa3rnGxmTglr/shY1Jf6zailwLF+F/0uR7Yam5sDpGj1qoCWMviMkrGiYSHxA5Bfpr
	dXRWADsz1R02R9oseym2gAoKERT6/goOL1DRS8zoyMIDQUuDtIkUjylIikj9/YJPaaFOY2gP1SCdZ
	2ivod6sDy44ms440HKH8OX6NGArxU+2lpfdRXMMV1f/XQ0KoJrJYm2144fpK0maQa/skNBtBVGUrJ
	QELvycreQ3iEodzPsElw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZF-00000004xol-3yNU;
	Thu, 06 Aug 2026 05:22:57 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZC-00000004xkz-3Aph
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:56 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-84a2c90e383so436795b3a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993774; x=1786598574; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VI1znOBQLbz/1vQkVjAXYLg+Z0oCTtt7na+x+SnaEEA=;
        b=Ntzdh/Y9/pWEtBXSBpbp41cAhkXA3kBlsovgKDUq667y/0m5VNDzCAUE733+w3OfYM
         u/7j/JenWKDAOGe93nUo8FnbWZeT8CZIF9yJOdsiyp+e0t09YO2WOlpQklUf3VkxGmPg
         B9nuJFAMZZIGaQCzOFC+ANK3s3WFJH6ORNXmCyA0pG/h2JThcnNrTwiLh64dVLnq1sZ2
         EA5tkLUWzfRNnmXRx/UDHo0NRk3OzGPLaihCOOstSTr/eLhP7SqgAFwIHPu5dP5aQKfP
         +o/Dj0QetGyLGv/ai8XZIh0SJqdh3AoqYrbxyvcTCJwDG5spXFOhX846zUhi3he0PmQX
         E6tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993774; x=1786598574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VI1znOBQLbz/1vQkVjAXYLg+Z0oCTtt7na+x+SnaEEA=;
        b=S1H9+X+H+RjSO43ZLnL+pMptv5bgLpGh70jiB6SQClAvbXf4vqghwiOVRHMde7WvMS
         rJz1/qQ482pqF2qjC9Fkz4jUzWfQvFy0JEB7NNg7UAqUvYz8tv7c95PrxtKQ1aF5IYmZ
         V2pOr6t/MtSsRqYaYxOoes+rp/SZoKUWGB6QvZo2KmXWtXQdhKQonpkH2U6LaCPbkGfE
         oToMb2IG21r3+KYJtLm+8oIBz4xBRkeNjcU8TLK5t8qbzC2iba5phTza1Pcqtr2Vz1ch
         uOCbaPuMt9v2WDLJQQGa1V8sDDMGCRuo4eWpWCfu2YazIFNG8GH/dSjbsx2uqFYdkj7E
         zqyg==
X-Forwarded-Encrypted: i=1; AHgh+RpK5q/tsS1TJcl2/bSNxHNJLRA2P39dTrA4KMg138AwYF8tdyMO0g4TdDtnddaWyRYmZjIYxd4bFgDIwHoPbA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5lmaX9Ocao9o09rFiGNLeDM8UZyNw5J9t0vmzJUbfcCSGI398
	+fpSoJragNZWR5nsk5LDyLdRZOkPcUrONnSLW++QqqqV/RBd8s5a1zrZ
X-Gm-Gg: AR+sD13Cz90oI56t4YED70pdsDK5oYmF0/VMybWqoSkmvC64uEWiiCpUlG/+J98W4Ei
	sEtFSq/s7tT1GiYaW5MsvGTd3rC+aRd0K4O3wdp7dAPL4zUHTHIgWyXUdwH80lS7sB00Om3vlpD
	PGhxH48Lz9Og3nH8L5PZtvfsXUwkgQwVLhhUG9uXPah3/byk77dyed9YZ4Zj3B4ZQpV+wbZ1Q01
	kU/iXllGtbO+sEgkpMvbBI6v0Iw3tYmokfix3zb9ebNXpasXSRJOd7txT3hOZvRZFvclaPYY6mZ
	AEP4nlVjahutpISU0FXExnW5AqH56O4Zm3mEAV8pt2X/d8FLK5xQl5j85BPzusgUGXcTTz4XJcN
	Rt4b1z+tGNby6/TPCW8DRPO2tWGh7yyIjQ0YDbVrl5o4dE8yOQinRfsW0ILHdiNP8i30YGqY2BY
	b45+W2bRbP9/Gmlv+f+67nFEkZVU1ogKPqy+748J/yIaQiQ29A+fIXJHawQPrivl4aKrOqpQxtI
	mfTgtQOBa5wXHizt2NqEKcdpP8cv1w2jTfLod5UkEZst8JvFriLorp8z2wA1MKx7p5QH+/GGiTJ
	vn+R
X-Received: by 2002:a05:6a00:b56:b0:847:9d6c:a56d with SMTP id d2e1a72fcca58-84f47dbc610mr1869903b3a.12.1785993774069;
        Wed, 05 Aug 2026 22:22:54 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:53 -0700 (PDT)
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
Subject: [PATCH 10/14] ASoC: rockchip: rockchip_rt5645: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:32 +0700
Message-ID: <20260806052136.21034-11-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222254_798983_1A75A1FC 
X-CRM114-Status: GOOD (  11.06  )
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
 sound/soc/rockchip/rockchip_rt5645.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_rt5645.c b/sound/soc/rockchip/rockchip_rt5645.c
index 590b64b362f6..0432eeabc64e 100644
--- a/sound/soc/rockchip/rockchip_rt5645.c
+++ b/sound/soc/rockchip/rockchip_rt5645.c
@@ -191,11 +191,8 @@ static int snd_rk_mc_probe(struct platform_device *pdev)
 	rk_dailink.platforms->of_node = rk_dailink.cpus->of_node;
 
 	ret = snd_soc_of_parse_card_name(card, "rockchip,model");
-	if (ret) {
-		dev_err(&pdev->dev,
-			"Soc parse card name failed %d\n", ret);
+	if (ret)
 		goto put_cpu_of_node;
-	}
 
 	ret = devm_snd_soc_register_card(&pdev->dev, card);
 	if (ret) {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
