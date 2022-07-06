Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E4B6C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 09:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4tZDmVWGzyWSJ+GdWHCd/W5YmN2WN6EOoqV9ZRrB2U=; b=xaX5PyNjqPaXBy
	lXyQ+bZH58AcgVH4TEtBziR3uiX3pVsX6qkQ/+K4GSM3QmLsaJAo5rqk3ORlW+5+77Vw6mvhhHrfv
	sphzD1NHkgxOz4NI4kMlRS0w/FRc67h4+5sct+HXUrJyQVl4oRIouuQFJtVdAW7d3uoM483zs3PeQ
	dvrO7Lcg/JQUtXcUg1pGLgo/BuWFRSM+uZINXCRPdbWRLa7uOhXFD8N662bcMAM7awPIUsI4VAbfL
	rYgokY8U/E3iqnQ7WPvxv34cKizCGHR5R+Gv8X+tiAJHrOxkYD+XSWolutiFkaqap+QXf4nGZfiB0
	3N21lwrwQyaZtzJOZOAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91G0-007kjO-BB; Wed, 06 Jul 2022 09:23:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o91EP-007jeN-9b
	for linux-rockchip@bombadil.infradead.org; Wed, 06 Jul 2022 09:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=; b=dYEAiulZ8yG0ODZVrtn67nbllf
	Of6BwkBGS+nImAQntWEnO1p1dj91dF4lOyKJQE6Pff+8ueWiPRsJzcTTgGBqbKjwKFNs9s2hqzsYA
	pGwaeQ+lGndDA+/mUJLC30TNa+PYb/cG+efvf/xDnmkhkj8GzbGaUPxZnjva/uJ/GkcUC+9E0EEAH
	j8OGhSzvWQ93uHsMNiENCPC6N62mZAIM3F2a0obbi5agYPQzIIxBvKuFQUT8uTr4YijrofaLtfaYG
	47iLFAdaks346bID0URPsPC/6TYi/UOk1wI6+rFe+l9oYsanNN4FuGSlWdcVmuvmpuSVnsI/1GyVD
	3n4oUDSg==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90yD-001MPF-UF
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:05:19 +0000
Received: by mail-wr1-x42e.google.com with SMTP id h17so7904518wrx.0
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=E5GE9YCmCMIhMO2D/gpbHRe1l3D7xDBrlxRw1T0NpHDSuJX2I0zJ01SA77X+Ypb95F
         IxH9341vzS6f9HRvGDZW1Pvfah1Ajs+GYMuuix6+XAER3HwBkC8VVVKn8re/11zSOLUY
         /PpGB+RRuIYMS+tnnb7gKAgXTpXUqslS3pUYbx55O7iqFoFMR5yXFZX4/XHD1KneRk27
         SbYZG0c2XxXOMsPSLg0CkQOe2LamirBkkH4ropL6mvCgJ/uXVy57YtoLlOl2NbUTROU7
         xs6SXcvpWeY8HlpE/xnWr7NDJiJTiGnStnPsoRqaj2Qc0zZ5J+/gJORvYosCb/3sgoWn
         UDWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=e1zqKpNRQkaFaLjJzxrxpQKHkOfmBj7ZCKS7B1BX9zoZb3XsgLO2uu7rT2jY0AJjoC
         CNTzBB/kAS9IVj50FEWs7w32DPW8Jk1HFmzNs/jt66lvFt+Ri0DE9ZyxycVGhlRvmyQ7
         262o6ibrJmOLXcAUiwIw5qpmbvqfrsPTowaaqaarEhq1NHH3Mel4SxVha7rVJ32vvnvn
         y7AdqETuvOXVJ9+NAFnMnb53fR7P2CMtK/cyGqd0SlCLBzGL6mrg7MIQrQcAPIE7O1HK
         o+8qOQ2dsjfsnJnfgH6BlTVKK76hqaTeMiR0bjTRsyzBUMpzTwIKJmeSHkPoth+aKfMZ
         AH+w==
X-Gm-Message-State: AJIora+x/P17rVbyZVuzl2mw8l9j2gvyHa1pRNloaIVZsV0rKjI/Nh2T
	CSobf1O73Jy61FmCC/EZkDvUsQ==
X-Google-Smtp-Source: AGRyM1ulg96UJaCG6169ehYplV1+a5sXk+kbCnPbNNkmvYpCCQnDU08EeOTBhit7iFXQIkTZCwV3Gg==
X-Received: by 2002:a05:6000:1243:b0:21d:6123:7a80 with SMTP id j3-20020a056000124300b0021d61237a80mr20483339wrx.354.1657098305981;
        Wed, 06 Jul 2022 02:05:05 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:05:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	p.zabel@pengutronix.de,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	john@metanate.com,
	didi.debian@cknow.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v8 32/33] crypto: rockchip: permit to have more than one reset
Date: Wed,  6 Jul 2022 09:04:11 +0000
Message-Id: <20220706090412.806101-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_100518_046260_25E97BAD 
X-CRM114-Status: GOOD (  10.62  )
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

The RK3399 has 3 resets, so the driver to handle multiple resets.
This is done by using devm_reset_control_array_get_exclusive().

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 232dc625d6e5..d96f375423d5 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -281,7 +281,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
+	crypto_info->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(crypto_info->rst)) {
 		err = PTR_ERR(crypto_info->rst);
 		goto err_crypto;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
