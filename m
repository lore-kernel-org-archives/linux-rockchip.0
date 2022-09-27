Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0E6DC6FA86
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4tZDmVWGzyWSJ+GdWHCd/W5YmN2WN6EOoqV9ZRrB2U=; b=b0fyKhE1d44ocp
	6L/XNfnjzpZqTiwW3Z/C69yZxly/eG6uUNuoYdPDzXhwlMoosCeslwiwo02fE/OlyPVEKS9ZCVqfg
	+y5fJ5ySXVBHC8r/tYhh5EG/zK31ZUO1Ket08iTRR8dPoQ7snkQKxuiRi+Uwtfo6+eVrthU1rvX3P
	/ur9jH8gvcdNkVys84N+Hx0NGJ2ojJBxk/2UVR7jwXf+iRQEIXJZSSMfCuvlf7fNdnJ6UcJ2cSjBC
	Vg7bawF2WF8P8a22FCQHwMnLhn9vRaAXzW9bfxyFbqZyZ+Dz/2Tld+ax9g19EpHWm3t58excdyePa
	qXVCkZxqiPpfiKTRjthA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Zm-008zG1-2f; Tue, 27 Sep 2022 08:04:22 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rq-008unv-7w
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:56:11 +0000
Received: by mail-wm1-x32a.google.com with SMTP id iv17so5975605wmb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=SUtWt/yKk8dwQYXBM4pX0YSAMwhU0ggta2eQ2yzWE3hZuzbqcAra+8iI1B43bIaLde
         2A5pKkjX7yk/Ek7bmehuqmQsmxxHC7tGVGUTB9P3weCNedcwxv2TbavFR7/94cJMiKBg
         GDLHG/gw8KymsHp402S2SKJ57hI1Crk1V/vmJGaSqUcOMlE808U4gcA+45+bv29Mlo9v
         cczjPNLpUfrYxoQcled6pr02jRD8OzLNZX4rqOuu+AKIEvyECAACnj7lKco/su8KTFtV
         ICkdHA72mnoM156gkzmBCTRv/g55zJuHF437s8jfbVy+bPoJly6lTWmH2el8NhUSvFCT
         o6yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=z10vTtQ4qHSJZ9nRrmQY5lLp9Bvyc0G2kDbemdDveLc=;
        b=snaAxzENhBtBfrRPuxw2gZEKLq7+uBdg7IxdkAUjOSUe+RiqpRC2tB+hweQPLeUrqE
         4IKvpGYLXXNbqanlGKopaFDAa7S7IJ++rxzeNYLAzLSaNO6IHRJgdrD6iO90IbhVC4j1
         +uH+KXKrOJJWdXpKQDlnbBJiLYyBwyEYuXGjSHC4wx0d9Qq4/PQAxKs7FPkCuR4QqQka
         6aBJs8K4aurtiMewhxTA07//Ty/NSu4srFy+m62Wadjw/lHefRRToa6wIrkhedQUhXN2
         7PEV0no3Y+rT2cIeiCtusRt+ZQGOnVoTYYWQR5nd9tQ0c/JpxMh0JNt5lGuh7bPL9Oo6
         6kCA==
X-Gm-Message-State: ACrzQf08R84TjyOqBI0BS6zKnL7yxUkGcXCCvZBpQM4ru7P6x24FSatn
	e3JqW71memzOQbU4Xa7kdCOXEQ==
X-Google-Smtp-Source: AMsMyM4BaygUsH/WyeQVQo3CW9varbVyVY8PtLnBUqF7L7qtyzWYzthtkrR1qRH4omU72F2l8jzJYA==
X-Received: by 2002:a05:600c:1c03:b0:3b4:618b:5d14 with SMTP id j3-20020a05600c1c0300b003b4618b5d14mr1534048wms.59.1664265369832;
        Tue, 27 Sep 2022 00:56:09 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.56.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:56:09 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 32/33] crypto: rockchip: permit to have more than one reset
Date: Tue, 27 Sep 2022 07:55:10 +0000
Message-Id: <20220927075511.3147847-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005610_361192_119532C7 
X-CRM114-Status: GOOD (  11.77  )
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
