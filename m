Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D30ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 12:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VilG8HaWZz6qZ+bBjWnnY8cL2U5db5iyQBiF732g6Zg=; b=GdmZu+8yiaNmBv
	DhYZrtmbMY3+00QRGj1SKbdZY4JdT/MB0xIwn3sYJB9mk4uMs8fB+Avy2NBWuIAV4aC53N7EK2x0N
	5E5ZDJp+98hU12L7zC7Vf4IRH54bkmVrHRiugEBYfGvXGErUm65p1rYQUZwG34u2rJN/wI9rOBmPP
	UPiwyWqzgMMUBNXwssJ2dGHcA+uuf4QLAGFYUqvk7G3oJeOEosaR/wj0f2+HoM2JCcVhVm2FheBqq
	knNkFAF9OBdZJ4qq0prp6KnFBkJ6je40KpRUStztZY8oayTagJYlGbhG+OuSnD5clBM7QwxfB8UIK
	WV1x0yKpCYuMVP8lOn1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlt-00BoEX-NR; Thu, 01 Sep 2022 12:58:13 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjl6-00Bnmo-H2
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:27 +0000
Received: by mail-wm1-x32b.google.com with SMTP id d12-20020a05600c34cc00b003a83d20812fso1400001wmq.1
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=rDF1idJDvMgd1slZPtIOFydLsr/QY+6sEYiNV+jLIIOBKWN7fXF1q08wS5SK69LMbw
         NCG69o1ZUcYBnQex7Q+2biQV7SjyIe0VoUdhyjkGoAgkVsWZ7nnU+WRE486yZW/7tZtC
         /6Lu5QTpxEefboD577lvcRfeErfcQCD1b7TW0MIhd8c2qyczHsu+DKssPe3kxzZoM7fZ
         yrawoI5iXeP73B8SFYxAbMTiDyJOLDM5NCYKbVMWBwl/SjNrC8VICFxoYRuO9MnzECHW
         6TutXiS7YS3dO3XYhEG2zgjoJvn9axJd4ZiAvBGG3XoP6wIfF4MY5D3r55t0FcyV0Soo
         +W6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=NdXMgLNlg1CD6s4wZNLK45itU23d7L1JPoLAmHGBZ94BU7PUzv1a/nRG7rdqxYG1cn
         qn0sCG0QKT1UklOFGS5AE8fcq3pTcYcMT/fouoh4xsQGyoIYHVPsc0mYrjvhtW7jz0Y9
         MCFMOQSNOveQhJfSEAjOny+1m52LAYZNmZ82C/+zKrkHZRuVX1ZeMAWE+fFOCO224R5d
         txw1mxPZ5aMz3nGEKJSFPsNNL7+hNUdDTA2YqtZobu/ik+Vj25QQfHnxZX+cJFbTDb05
         5vO6seQUOWtZEeYd2aqnhWD6Uf1pDnCQ59NLZGSDSt197+zAMPx0Ks9GdTbXq6Q4lrK6
         BI3Q==
X-Gm-Message-State: ACgBeo3lZGrXBZRVjoM07+6jcHCgf16zdSYx7319/27WkqnQX+vBe5W7
	BnMToAfIBhrMN2q2ocozUa/GvQ==
X-Google-Smtp-Source: AA6agR59aMWYsCOPWc0ZKAYC9b9Kg5CQrnbJzXg5aOklf16iRgHqumCQg6tvrkmk57oEfxrlLYSO7Q==
X-Received: by 2002:a7b:c84c:0:b0:3a5:dde3:2a9e with SMTP id c12-20020a7bc84c000000b003a5dde32a9emr5458936wml.84.1662037041027;
        Thu, 01 Sep 2022 05:57:21 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v9 04/33] crypto: rockchip: fix privete/private typo
Date: Thu,  1 Sep 2022 12:56:41 +0000
Message-Id: <20220901125710.3733083-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_055724_614086_D2793C60 
X-CRM114-Status: GOOD (  10.74  )
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

This fix a simple typo on private word.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index 2fa7131e4060..656d6795d400 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -235,7 +235,7 @@ struct rk_ahash_ctx {
 	struct crypto_ahash		*fallback_tfm;
 };
 
-/* the privete variable of hash for fallback */
+/* the private variable of hash for fallback */
 struct rk_ahash_rctx {
 	struct ahash_request		fallback_req;
 	u32				mode;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
