Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF59ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFqBfnnUAvugOM6BMG+kJAPC6qQX1BZHTww5KGSm69c=; b=cGH68no2iP5ZA2
	Gc3uLP1F/jyYSfL1qZhXLD0ZIp522YGxp0+vsvnuttRdNINDbYFmKo8ilk+d6Oi4fQQcQIgyiSDT3
	FfsxSz8ONPA89ohuCViIdyFu803yowOvWRqEpb4jHWRPxmIvgJ7xWVUFV767dkwbB6wSRPLSKDBEk
	XR6y4bCxM3Vb6GQsHpt38ZJBgNn8PQ8GKLU4xypXHrBu3b6C7gA8IPIHgabaKqttjT5x5siQy5DSU
	02XfN9ahqM7+3IfUNdJ/0/yEDuvxAjHIXk6INHKp63CqPrPi1fjNh7Im5HYx4Ls4lLjXm98VBJ6ZL
	Blt2AxTp1JooDVsZROMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTks2-00CLfR-01; Thu, 01 Sep 2022 14:08:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkn6-00CIuS-98
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=; b=gSP71eUfWlaoChn2FhwcOciMc4
	dGjgt412guN42T5oPfwPhaetRta8aPjXVAezz3YrbNptcDl2LWWTLAK2D8MsG8imKdowx+Aqx1/u8
	IKKyv6tTm10B78c0FE8b2h4U/7HWux3Vm4Ri8ImQWsLu3/1NrB17NuCZLDVwNIS6hh8d9FsfDNpvH
	a3iYumdU2FtyTU7oS7MQ6VWJYMkKqjC7S2Cc8TMTLV1NI0wzyDp/gECGmDapxSMejhG28oxkHR4SS
	mSRqYkMdMb/8mY4NBjq+lpwsS1Dmv4T//UBUEx/ZGI25SSAskDnUTGtURKIhoe3Vmj78qPbdgETSp
	EKE7Pj+g==;
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlB-008P16-0S
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:32 +0000
Received: by mail-wr1-x431.google.com with SMTP id m16so22222555wru.9
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=;
        b=pUjnzyHs3Qtdz4cBIm3pKEkaTlVWFhFgjmHad9LeNzJOeMSMZ0r74SncSGCcgdig54
         Tf6eUgDDfEYd180OWu8b/GNhqdolUyqcP64jQfqvX6M8dWA3Ep5q+dQRpMIOd6jvOuJA
         k21Bt/cHmNIgGNFIwQwFMoxHThiGO8QWSh2M4VOft6gb7/0PXKU50ih3NkwrMwgfwVd3
         QM+KYaHvSa7smG8nw1Q4mRCBuYLiMoGQa7e1dy/AwLnIhQKaegOjrb9TEGpZMgtZi3AX
         qPf9A1v81JjYOlooTDDjs8mWMMWPKo+6Y/nl8gs5H+zkdCI8aCcBZTvnNUbPcIOAFLli
         Kz3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Lb5wXjXl71KLOn69lH3EgInZyalgQlnigOqDmtk2Tt0=;
        b=Gpvv7h5bqiFg646gsKZzv4BocHU8NzW9oaMJKatSkJ/5MZg75rg1zGoNl2wYTROsM3
         mTSEApX4ID0PvoRzHFOvtb+9PV4Hrdganf4ZprUp61hwePy6uecWg+n6N2AdWfgwQ1Kw
         65wwXCwkU9RU8lbZyQ6WKaK6Di6uBAM7PPRODD9G7O/YtbbIxqiEoRahy1bgxmxcxtkR
         DUC4LFNqh7ANUnAG/wXb1XMDEhoJ9otVXx26+RsznHNMUsDG+NDSqxVmC+X1ZMJhVLQW
         Hle4gLtgLKOZFEMCVJBaAgrzX0REp9OrZhKynXSuJITzoVx+eCRRUZQmwT4qPhtyRAAa
         04FQ==
X-Gm-Message-State: ACgBeo0koOCFldbQ5HqHcX15ViCCfl48m+3tsZNV/L553vexkQpV72Aw
	Le699IVewBEsJV9Jm6qb7+znAA==
X-Google-Smtp-Source: AA6agR5q85txGe157k35TclTmXbqdUaBdWTF7HQkg94KKyn5yLIrKzBsAzn867WX/GXpgWfPh5wtgw==
X-Received: by 2002:a5d:6c6b:0:b0:225:dde:ab40 with SMTP id r11-20020a5d6c6b000000b002250ddeab40mr14723322wrz.690.1662037044057;
        Thu, 01 Sep 2022 05:57:24 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:23 -0700 (PDT)
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
Subject: [PATCH v9 07/33] crypto: rockchip: add fallback for ahash
Date: Thu,  1 Sep 2022 12:56:44 +0000
Message-Id: <20220901125710.3733083-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135729_406889_177CE45E 
X-CRM114-Status: GOOD (  12.19  )
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

Adds a fallback for all case hardware cannot handle.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Reviewed-by: John Keeping <john@metanate.com>
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
