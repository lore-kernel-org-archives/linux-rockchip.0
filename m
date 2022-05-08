Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79913C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oL13P5KE/qdQOmvZ7zWka/MirMW89Sklx1YQyDU8Ti8=; b=PilgEn2aAzawdT
	FkRMJ0eDKqQlea72nOdzMXqeAbg/mEZ3PvLwHEnj13oJyxdW1Ovb4t8a4j2chvxTQux8TUXyx3zdg
	4Yz91mcvjbbZE2GO9+8xuaKA0TjyOaoR6VgXeg9MCYzgK2UpjNOKjUE0naaWe/FoXUnpA1qlO60eS
	STpjb2T5Er8tYEUgpxkMnU5vimGN0wgdIYpN6QrfV6oyZEJ/lyvVugeu7sexRktKDpWHRfodWb6yU
	Z5BxhQ8K6OArP6pl6zsiOmHQJ4AWiMdB8Y3WjXA0IcRR2FpBhB+EM2yTHAqkABgwVRYXrj6IJ4ke4
	y3D+YX0XtjytuEHcy+Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnne2-00BQrE-7K; Sun, 08 May 2022 20:36:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnnWL-00BLwj-2p
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 20:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=; b=pKcLzsQ18gqCUZUBQKbQAaEvcN
 n+5b2SbaifCXn1Nd+EX8TfTrL/NKpv2cHpeIA2Djd9NjU9Aaz6xH4yyPxGutVUtQOuHjyy/JLeDP/
 7PJiYDPTtfZMaB/36hVEBsIjh9ejj6qED6lmdMr6gKyhI7UcKqhOlgLYdqV/Nqlw8zFJrL5poV0KH
 PgLTFWnXGNokNoFxDu9NOTjvuPk9gXab1TRClgFnatWcNsU/sCOhOhgA4djwysTNCGCyNftABS6Sf
 lt+sO0rwEVJ7K6xh3hBaR9WA6ZdS+d6Q6yi3cKvzf4oLGKFKoLzkCCM6ZQkd1OJqgseqgeWOPBEV5
 clVnfu9w==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8e-00CL21-7C
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:23 +0000
Received: by mail-wr1-x42a.google.com with SMTP id q23so16716845wra.1
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=JsiIEZbEorhvcZhNqOJyFrQfGu/JLj+5HxjhV183f6b/htj1yxYBv4yaK5nPWzJ90p
 oiGnbbjhnbKLrQce2+XWAtZuoR5Tesixo9WBwdHQXcD2fxtOs1iJ9Gybj0N8invS45N/
 1q2++C0HAZkPNs7zUjTDKeZXXNyJD/soyPiF/p9woE5UYqy5HSH3l7gSn/dCZF4cF4Gf
 xMK2tRuXGkd4IULgkVxaLIi57ZBBbJROh7ryTyRbDyhNr9tf6ajG8Q5Y67reczNcBAK7
 ZnTMyIVLeLuPtN4FQx701kI88NQa7tO8cToZAktD/MjRfWL45MgVBEaCqPxtARXCNfeS
 7IhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yzvgVyreo6slTFAo6yIfKz7ssJtwxUt4QGb+bB9VZnw=;
 b=v6PCqbJH2mcukTyrU/CIDmwtASvkmKcVdYvVHyeQvuaHgcMgHoA2E9tU28JbOr33ti
 5IBxkvx2VJcKhQn7sOBq0vuoLLNJdyHfLC0FCDCzoGQMoblkmCEs1WDEDBjkoz/UmNQO
 /YAXC7kPvnKik2mMeydgFOBrycJlnrp7Jkv8JJ+kvmV1cO4mCEqK8s2x6K5H+Kwx8L8u
 8hGTqGLVQLsacIoDJlER2xP3hdxNEued7PcPa3WrP9RcWR88PD3ARknR6/8RUCZ+TrnT
 mH+qKtN738xKHhHx4UWCCH7HDEX3XpGZl65AGzqEpOVPLD77vnuP3+P9oly0izkGEqnO
 ETkw==
X-Gm-Message-State: AOAM533VOZm9FvZwbNanDqvKV+2bX8CP1YDYcYFk0nhpPrFR6UxET7Wi
 Q55ovTMccshiDrt9VV/Nqi8JXA==
X-Google-Smtp-Source: ABdhPJzctY1kgG5Nzp0gZ1p4e7AznRgsramsEtrcJP0YHQqPAKpQBcF7hn+yKTSdbbPC3zsrMv528A==
X-Received: by 2002:a05:6000:1707:b0:20c:660c:7c78 with SMTP id
 n7-20020a056000170700b0020c660c7c78mr11030537wrc.150.1652036412312; 
 Sun, 08 May 2022 12:00:12 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:11 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 07/33] crypto: rockchip: add fallback for ahash
Date: Sun,  8 May 2022 18:59:31 +0000
Message-Id: <20220508185957.3629088-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200017_320764_C52F273A 
X-CRM114-Status: GOOD (  11.95  )
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

Adds a fallback for all case hardware cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 49017d1fb510..16009bb0bf16 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -16,6 +16,40 @@
  * so we put the fixed hash out when met zero message.
  */
 
+static bool rk_ahash_need_fallback(struct ahash_request *req)
+{
+	struct scatterlist *sg;
+
+	sg = req->src;
+	while (sg) {
+		if (!IS_ALIGNED(sg->offset, sizeof(u32))) {
+			return true;
+		}
+		if (sg->length % 4) {
+			return true;
+		}
+		sg = sg_next(sg);
+	}
+	return false;
+}
+
+static int rk_ahash_digest_fb(struct ahash_request *areq)
+{
+	struct rk_ahash_rctx *rctx = ahash_request_ctx(areq);
+	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
+	struct rk_ahash_ctx *tfmctx = crypto_ahash_ctx(tfm);
+
+	ahash_request_set_tfm(&rctx->fallback_req, tfmctx->fallback_tfm);
+	rctx->fallback_req.base.flags = areq->base.flags &
+					CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	rctx->fallback_req.nbytes = areq->nbytes;
+	rctx->fallback_req.src = areq->src;
+	rctx->fallback_req.result = areq->result;
+
+	return crypto_ahash_digest(&rctx->fallback_req);
+}
+
 static int zero_message_process(struct ahash_request *req)
 {
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
@@ -167,6 +201,9 @@ static int rk_ahash_digest(struct ahash_request *req)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(req->base.tfm);
 	struct rk_crypto_info *dev = tctx->dev;
 
+	if (rk_ahash_need_fallback(req))
+		return rk_ahash_digest_fb(req);
+
 	if (!req->nbytes)
 		return zero_message_process(req);
 	else
@@ -309,6 +346,7 @@ static void rk_cra_hash_exit(struct crypto_tfm *tfm)
 	struct rk_ahash_ctx *tctx = crypto_tfm_ctx(tfm);
 
 	free_page((unsigned long)tctx->dev->addr_vir);
+	crypto_free_ahash(tctx->fallback_tfm);
 }
 
 struct rk_crypto_tmp rk_ahash_sha1 = {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
