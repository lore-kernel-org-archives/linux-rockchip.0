Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F403C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dMscJtp68Bm1C3vm1JdDa8HEdZgAprFBWuiMnOnaWFo=; b=A0n5sssABDVxu8
	YdNTDFSa0Rh3mLyCgdNJPtv6DZjLrYGqZ46ZoeOOYax2vjYF62k9iYSa4OqoFK948C+dJh6jzTiiY
	9r5Uybqc1nMfFqGTYwE2y39UTZqDJSsXKjlaCsF1jEw7qBO0uQW/6rdU3xqZPAvNVJXWY22UEfTUF
	aGLF/avEZPRtPYOj+VRX8vNjV/LldZJwPfuCN5T1qD1nWKC1jbR5tmNmPNT7vdoYgIR1RqEEGPsx5
	PCb76PsbFB7sfVSVRdPb87XPY+kGqA72h4miM2dLWd3Z9ZTMgKq6lWARkoQHgi6IZuI8vJnFpIesS
	5Asnt9es+UW3nCUgQvKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92Jg-008Y0B-SP; Wed, 06 Jul 2022 10:31:32 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xp-007bo8-At
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:55 +0000
Received: by mail-wm1-x331.google.com with SMTP id f190so8422757wma.5
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=e0yxJClSSXUpxDCwHaDOIvRbSdrRABgnEeecbOpuZA4XLCVBkpW4gXL+Wk1VaIiSVL
         /yCdOstHJFcouC915CbdVqS7Tx868WNSlZHGvvOdjzkN+8V4Iv948hnotFeMmebif5KJ
         jIcJMhNoBQlK/G0WDrkfLcATnb9vue15d+/tkV0tTl32cpb+D5dpTGg0Xj77/c19ZvxH
         WPqz6PrZNnUt8yLrm11Rz6kMcDArUEH6QWDdDV8MwpK3kf9HDJ+QTxhEc+4S0/vzEyPb
         3lGPUJhBlXEb7UCNljr3yotpXx9k6NmWl69/f13H4yxs8XCnIHf4nt4r8hN3UbP+WjrO
         hs5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V0VQZblY3ilqDl88ksU7sNdmpCxvXcKe3g1VMncWlyM=;
        b=JcGMzaRfRfNREmN1JKA2fKrj7ZRq3be0kFFthLinQrcuLo52tti+uUb1xvnhQY2rBh
         pdCH0/Vo1WUx64yZ1YYOFaAadv0Azd+XwJ2bJ8ocE7q4ae2yvwM1CQBBJq2kp5ehR4wv
         i/nH9e6bhmZZI71vAkxGa7Gs+6A9eOHiCUwv9TOq4EctjbqmijD2YGzee+Gz+wv7SWnq
         vwn6rIlJtwv5MLKmL2o1uOXJaOO6P6Mj+RD73Z1PJR64bZtZ51llA636R5DKDXQScTpk
         EsZjCKtTXQ4wnRBsOu1iSotY4w9uknzp94SrTqn0TNKPislnzc+0Dc3Xj0lJt1W+SdB3
         K0bw==
X-Gm-Message-State: AJIora9YhH70UeA6yQIIySmNPgmRVCLbZk8LKcjfRykfnWmEb0lKDYFx
	pzkqd5B+r9msfWZ8RQMDSdpeOw==
X-Google-Smtp-Source: AGRyM1vhku6FFRqMSgg0ZToVK+4jD8sS/eXzzi4dV/619Zhx8Ilio+pxWWjXHv62NgKXwOO5OBzU6w==
X-Received: by 2002:a7b:ca54:0:b0:3a0:522c:d0ec with SMTP id m20-20020a7bca54000000b003a0522cd0ecmr40784122wml.63.1657098292893;
        Wed, 06 Jul 2022 02:04:52 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:52 -0700 (PDT)
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
Subject: [PATCH v8 19/33] crypto: rockchip: add support for rk3328
Date: Wed,  6 Jul 2022 09:03:58 +0000
Message-Id: <20220706090412.806101-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020453_425337_EAF7A955 
X-CRM114-Status: GOOD (  10.87  )
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

The rk3328 could be used as-is by the rockchip driver.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a635029ac71d..c92559b83f7d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -202,6 +202,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
