Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94593C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PBq08+wu/Hj8duxm/RfpczUkLa9EU98kG4EUwuAO6i8=; b=LvyhcsqT1OlL4P
	0UFqUulUiBpgF3oBFtAzrWfh18ZQQM/gjyDW61zW49EvThY0bdvDoFx0Vra9jX4EQd/TCMElEZgbP
	sT4Zsk9CyOD7vLWpeztCCsRrN6JySGvExEbawIgBF0othjaPhxMDGM0HegR9+A9Oj8Yz+R62r/HjA
	0Jk+5oaAOELzm+PMm56w0qRauNaIwEaK9qPQKQ4QYw3L/Ak0g7+Lsc2ODnJM27NwNOvyMt09TnVGi
	PbODKp/dS2u6o1gFcPQY/s31Sw3/XL07wQi3vwL+3z7sYTLFsiS2ike4L8rJMzR0CXxrqxZuzRS4e
	pvWHCf6vCWM6fjV+98qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWON6-008vH3-6m; Mon, 21 Mar 2022 20:11:20 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJo-008tSs-JV
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:08:01 +0000
Received: by mail-wr1-x430.google.com with SMTP id t11so22243090wrm.5
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UQNU+zESf8LDh+yao8Oc3gO6dXSE2ne6kHnyQ9VdhdQ=;
 b=bCWuedgEdxQ7ZPcn7Zt8Lml8+iEWLNQVUY0rUru/QtoYn0MOrpEUsyLpekVCNDYCJ+
 YeEdphO1oqFtPGEyEIBfxShBostEBw7ElvU8b5Hb6BRr+ZDTU7P2/s8WLpAcW4WNNjqL
 dy0io7iO7xqlE/pYqgFzVtYTt+zUOE5WjMEhFrPmLiCXtOIe/fMI6Hi/PRu9fzg36a70
 YUfaeSodXPYFR5VsIiKvhxSORikLu9Gh6Ou8lcaBABQ6O6Z3AUI4FWn3jC+iEUihnC+y
 Jc4yvH4jmgX/8RFmeqAyG1h4DG/9+QCquKHhPAqEq2RVYHhlSVURqhgGR141duC/bvV1
 B89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UQNU+zESf8LDh+yao8Oc3gO6dXSE2ne6kHnyQ9VdhdQ=;
 b=Kq4eLuNE0PnH12h4h32tYgGYcnVQtx4GO3HeI3h4LvWedksuR8beihYeRNZYITKExU
 22WSBgrHxBMG+wYV7Wa0A0YY6TNhwdWap6jp6qMYTcSVOQtYSSfKgBiKqZ8hjFEyyZ3C
 NyxXlFDbVEfH/+OlEFSlKTvoVdKrizNIH1v4ISHnWjJQXZEOaJdbz7StbSW+l7/YDd6c
 2lr5kvMd5XtFT6jEb+c8pW33MlTzoR31VTC3/u+o2FXJYMuDGiaYKWSV5qJNs/Z/iNaY
 VXhA18C2Wn+iXIGkp55MmKsIZjEmYDrQfqkW2YopfoALORhtmKgAopq59z/aaivNph3n
 Qnjw==
X-Gm-Message-State: AOAM532XGrKbTNlp7FKItYP6akw4v/coXjP4bB0og1EF4P5eA+r4BP1k
 RZTtLLTfroVvz2z1z+ldiYzI2Q==
X-Google-Smtp-Source: ABdhPJw+YjFMcmO2mxPCtPyEBZnTzJXXr/ng5v/aNNYmHjLenv/wVVgoiGG3XNBwDlHVKQmZZJYNJw==
X-Received: by 2002:a5d:6442:0:b0:203:dff2:866c with SMTP id
 d2-20020a5d6442000000b00203dff2866cmr19241487wrw.465.1647893274691; 
 Mon, 21 Mar 2022 13:07:54 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:07:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 07/26] crypto: rockchip: add fallback for ahash
Date: Mon, 21 Mar 2022 20:07:20 +0000
Message-Id: <20220321200739.3572792-8-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130756_690982_759A98EE 
X-CRM114-Status: GOOD (  11.79  )
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
