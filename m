Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE2E8C6FA83
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 07:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VilG8HaWZz6qZ+bBjWnnY8cL2U5db5iyQBiF732g6Zg=; b=0hINpUzo0tHlfB
	6KASR1DOeiDC7nG3O2KLiPQTivKodHFKuthy474TUxbJFRZchwixiao8vYdXrUW1Yh069WrTmN3Mi
	6PWV65PUgzLVYnfgQ/FNH/v2gNBw0LJ08yyBKE1ySxGGLjsDUNcePZfUdyowZjKaW1mfVAk+XKJyV
	b3lHSdO47m/oPga+Gi7fBFYbWRlVOXjK6MBjJDC1HJitIwsmZdGfx2Zn0c/PMM71P9Tm+RKwWG1pt
	evtB3jV2TjgKLmJR0f8fjN4v7/46GrfNWmZ4ynGbhNzYg8ex+x4BecafoHCwuFPT65bLZtNvLMJm5
	kAtFa+kNdwyl9ZokZWsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Sp-008vhd-1C; Tue, 27 Sep 2022 07:57:11 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RL-008uq8-Q6
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:41 +0000
Received: by mail-wr1-x436.google.com with SMTP id r7so13711140wrm.2
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=P95BMFMDCHcO/e4sMvbmMHIOXf3JyWC1JZaC8Mwvo8kE2gufm3WLSd6cGrmXuuXlwX
         U7DwYY4omAj6WdZCKCSGyChwxyh19b4NogvvtB9PucKATKIlova7ivlr6I8uP8KDJsYU
         3lhY1Zo8/s961maBxbAyjey46UF/rv1BR4Kz8Lb1k7ht+7NE4Shw5RiSheKPr0MIR89l
         geDeZ3nV+XPKarqYxmhTRBCfOlelWva94NRZNlFq/meiEsxlFveBeR4OiZBa5FImhFuA
         /Act2YafmvPTSX0K+Fyq1iRCzhjcpbN/ZN1PSbmxlEzLN3g5A0WQ13IERLR1x5Usocjz
         Mp0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=X4j4JKpODkDucpWVkVM15rLnBawB6D/wBzJxSBllRJw8826MOXHJXaxM0/H0QHk9sK
         MF6CoSUTOzXBfOGiYM0CB0QXh5cpldPQUBf1ZxAjDiOSNqX4aNHivQ2e1KUZduiqPUGR
         GDhJ/yic2Vr/Hc2djpDAk8kkOcCg81BNaCMtUrjxMAf2T42Uju/yKsCEkHf5WMuQsFS2
         xsfI9FYI4njHybwwggKY2HbAOu4m6M31plzEQ/cim9N0bO5I+GHu79O0CxSGvNXHr2mb
         x6lrzetZo6hjC4MoEh06UVIe0wsJdR9TMBwCeqn/Zxg4xzZwUuZ20cv5Ysi0m/7tEOut
         Puuw==
X-Gm-Message-State: ACrzQf1ps+8fVwsrsC9aIDXgKRJZr7GWl564LItxtSROiBt8ZkxAgnT5
	acOusHpknJlDWOqN1nyPfI5yuQ==
X-Google-Smtp-Source: AMsMyM5wMBHZjEBDjBgQmGUPkspEyex1NfqvseieXleEWYVoezEZEP/zQqKwVAGX27Q/YbgBLAP4DA==
X-Received: by 2002:a05:6000:154a:b0:22a:b8eb:ba53 with SMTP id 10-20020a056000154a00b0022ab8ebba53mr15726563wry.594.1664265337400;
        Tue, 27 Sep 2022 00:55:37 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:36 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v10 04/33] crypto: rockchip: fix privete/private typo
Date: Tue, 27 Sep 2022 07:54:42 +0000
Message-Id: <20220927075511.3147847-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005539_997657_EA122801 
X-CRM114-Status: GOOD (  10.85  )
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
