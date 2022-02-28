Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1230BC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qF2R14lz5BSkuY2ynuky3Cfmy7VldxTFfKyCi41mOd0=; b=wFkVS6GeulDisg
	0pPcQ5UT0Ul6IMW6QSDXC63uc4TXO3WD9bbp/CoDkLoyOCgI8gOP9NeMEvUhnC7ErYQp96yayIWYt
	IssJwFElp7NPBL4JGnLmdWkGiwIrgt5DlSk+PP6bjLinfIP3fOcQ0y4mL2v5kOU1b50USC8bm0g2h
	275B76+jBgLFrIL4p7ag0c9FgqGNx8Tj0Ovr5U1800+Z1J85FnC4D5aYJ/F/L2GOfoS86EvRnnB+A
	KJkDddtTPRIh4CENNRykJALgXkGB79RBhh1hGDWLzhHWE8EfsKEkazDKd6+nZMENmLanjRsmMdALk
	uUYxm1WNKcPqVyze1sxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOlts-00Dnvs-04; Mon, 28 Feb 2022 19:41:40 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt1-00DnXs-Ne
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:51 +0000
Received: by mail-wm1-x332.google.com with SMTP id
 n13-20020a05600c3b8d00b0037bff8a24ebso49839wms.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
 b=lQx2VbY+csJAyRFIt7eX5IaDOBUSlUvZt2a4k6mP7i9oFSuU1NpSPZPT3UjEEWpzwf
 3FRL8thZISZKU9o4hTP4wiuTTrK/BOfBbC1Dy94eU72AZnpZ7KVccfHPwLpL0NG+NKsg
 TMhNvapt7Mw2X+/IgEG5S1+gJlimzjha+FvLB/Solu0vabZAkAAXtf5cPnTcefa/VVz1
 hbbJYTsQh//MB+2TqZhHAzPEljRiaX5ydBw8Yl69/4HLp4au5KCeNB/CXOTLKfldQr0R
 CMlaeqCy1JhbCKIadokaJUGICFsQ7w8zqpaVrXbTK2FBgrrf+ESmvcBRbeJRAGB7aJws
 5Whw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mEFtl1Tv/8nxJX+EKBZcS0Lbq1ln6/kUirDV/Y73Tsk=;
 b=EKPktRhaOOuj3Aw/L0C+8B5wmdbxtScDresz85iXriy2CD7PFMX3Yte6LaLXtdnCHv
 P/m253E45tSazQRRVz91VN7SIfcdBrZU6YWqS3rmxs1VDIzY3xor5npkO/duYDIc1Yoe
 pVKZGzQZJIJJQ1/5FPWKCB935mBtEB05h91JFldtrxLWlLp9Wm6hpMtY+PUMFy/qmpGV
 kOGJ1bgHqfJRfiVIGWSpI2UYKmQ7i2y18hoiJePv2JsdN44UWyIumPAcdKGoTGsz5WhJ
 nxL+fSjMTmvTcecq6WPEsqd+52geMkoNea9uIXgV+APnJfCSIgKcVAy6p533CLwVN5zv
 lNdw==
X-Gm-Message-State: AOAM533+nOJc/YJzrnz++mMHjsLj5iPTpuD4JCsd9TUqw5r1H4ZjHYBC
 LrcL0/Y5rFfYPUQGOt0PyuDnOA==
X-Google-Smtp-Source: ABdhPJxdGc/N0K/WMNBAxdA2Xy90225k29BBt3Jrxn5PKmQwrQNvHXH7fJ0r/q2b37gubKletRecXw==
X-Received: by 2002:a05:600c:a51:b0:381:3dc6:c724 with SMTP id
 c17-20020a05600c0a5100b003813dc6c724mr12829847wmq.106.1646077246583; 
 Mon, 28 Feb 2022 11:40:46 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:46 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 04/16] crypto: rockchip: fix privete/private typo
Date: Mon, 28 Feb 2022 19:40:25 +0000
Message-Id: <20220228194037.1600509-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114047_812050_57972C13 
X-CRM114-Status: GOOD (  10.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
