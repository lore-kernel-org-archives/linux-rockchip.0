Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DBC8C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 10:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VilG8HaWZz6qZ+bBjWnnY8cL2U5db5iyQBiF732g6Zg=; b=rj1lswLs38a0MQ
	XDr8omTqvbITyBfPMBc3kAm4Z/bU9tfcPLwvIB7Ynt3o5qvNDPJZ2CyBlLwVDkM7od/Tf0VJNZ/DG
	gZojUIpo7sJSa84jJpWNXCa14pSsn5DNCH4xueOvmhBU3/9n3Qtd5q9a3QaEbqBgzRf/lOEnskfgn
	ija8ujrjXI/BVV5yRO1vtrjoHGpGzgjlA0RiT2qY6F10gjoyCA1cTPXS4KQBo3ei5oq7TyE3BVjN1
	l9bVHjZb5BavpTcrIZPHv9+OTK8YJANGSBb3pORbebFD/bnP4JmhqWecWZF15NevgZh2qKYYEim6E
	1SX5r5hcz/5+6/tv/toA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o92D4-008R01-Rr; Wed, 06 Jul 2022 10:24:42 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o90xc-007blt-RP
	for linux-rockchip@lists.infradead.org; Wed, 06 Jul 2022 09:04:44 +0000
Received: by mail-wr1-x42c.google.com with SMTP id v16so9614127wrd.13
        for <linux-rockchip@lists.infradead.org>; Wed, 06 Jul 2022 02:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=qYnjOSsve+CU60SZAGBBlF7DQsf40B4ppATy+M4RqiYsYCYGKKCqLRBjoS63bwkV7y
         UoyVME2BouYSVlzOVHR6OxKaX2DFxVDM9B9YIM7cfyB5gyZFOlQs8mYBZWEGlfHHsP2W
         X62q5fLEGO+E3EPkCFO9+yKEZCts36MY8GKJVxDvHnRxL9/yoNWSNyos37133Ntfdp58
         PBgsRy7ZvTDQwm47ks9TFgn1xoxX/K4tDresapBXPykl/Vcpn1a/l6OMpl2Pzvn1IN68
         PZvbv9fdH1jJvCr0lwZ+xqiAiH2Rfnzik628v8RTHB6oNElHz0aPV2wEA8WKUCWrDepD
         mzXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=e93jdwU7lOD2x9pMhJTBQN+yJo5I1w/iWBnUD+AsvRI=;
        b=GDRlT3eYghPVWQii0mnd2mxtYFob7/WAQ/BPajZfBY+rZ0PhbeFeykjnYIFk2eYf6e
         T7INL7bvo4Zu+nEHxOU5LpIhOfhlGLD30/686r56gmYChUgIkqKyESkob6G7KX+z3Ry0
         lWqE6pxpW37jlzkNNQ2SuzVGV7n4heEeb0pEHdNQklYni2PWfcV5PtGPUCCB5OXR6cHB
         P+xIZPgmTLPmg3SSKzdVp1Fdv5dm6DNqprp5e6ZDpChfUTb3oEyrSzIismgxmO1JxH5V
         D2nIXjWZaB5JBG4Oa31BWBZAfHSDxDb2i5lTL/nV9ZIzqlwONO64kOIsRmUBcVdRrigb
         5SWQ==
X-Gm-Message-State: AJIora/xbRMOGw6O0p4E4IdfPxpnDcZn0Bqixp/1+NgJyyVq11/hJGwA
	E4P0XmJh0aciV7O5XpVmMvanyw==
X-Google-Smtp-Source: AGRyM1sJ/Eew7H8iS7hX0nzquUCXkYxooD06C+J/SXSVN+r6E2DP9OY9XPMY7TacADQllOgs5bFVTw==
X-Received: by 2002:a5d:6e8d:0:b0:21d:7223:1e1b with SMTP id k13-20020a5d6e8d000000b0021d72231e1bmr7734511wrz.713.1657098277195;
        Wed, 06 Jul 2022 02:04:37 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v11-20020adfe28b000000b0021d6ef34b2asm5230223wri.51.2022.07.06.02.04.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 02:04:36 -0700 (PDT)
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
Subject: [PATCH v8 04/33] crypto: rockchip: fix privete/private typo
Date: Wed,  6 Jul 2022 09:03:43 +0000
Message-Id: <20220706090412.806101-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220706090412.806101-1-clabbe@baylibre.com>
References: <20220706090412.806101-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_020440_985300_D79065AD 
X-CRM114-Status: GOOD (  10.35  )
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
