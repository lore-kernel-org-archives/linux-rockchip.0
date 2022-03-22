Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AAC7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 11:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5EmAE6zK6nsykmrx2sD2rtGBqB85rgzDMfjYSVkLsZI=; b=2jt4b/Cwovz73p
	/45guxrb+FxgYCsI+S4MXH9A7bSLxkuAonP0ZmZXcpvmmHtQmAOLUc2InqVfLWqv6MChuNfIeInrN
	ysNOvO1u1+XGD27sLkBnqj1iQ3ZQSjX3PyFySX8sAYXytjst0xjOhJtZJMR8vRCK/pfn2F1v/jQyo
	VECPYgOkLbuc6HyBw2jIY1XbSvqj1Rkb7Pu8/oIoYrQgVjY4B9aiskmp4kliHNYMhOdawfKGyfCoO
	5UBvgfJ5epMQD7KKNHXmO/r9C06pMuhPHiKyVO3XaMMltjy6DOtGO4lKVtSqrio8u8RhCK5f6lz67
	I7+NpXhqTBbDlCJ2XSDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWce3-00Aolb-Vy; Tue, 22 Mar 2022 11:25:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWcds-00AojZ-1a; Tue, 22 Mar 2022 11:25:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7612D153B;
 Tue, 22 Mar 2022 04:25:34 -0700 (PDT)
Received: from [10.57.43.230] (unknown [10.57.43.230])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93EEA3F66F;
 Tue, 22 Mar 2022 04:25:30 -0700 (PDT)
Message-ID: <c643c8a0-3ebc-519b-bc6e-f95362d43a69@arm.com>
Date: Tue, 22 Mar 2022 11:25:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 06/26] crypto: rockchip: add fallback for cipher
Content-Language: en-GB
To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
 herbert@gondor.apana.org.au, krzk+dt@kernel.org, mturquette@baylibre.com,
 robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-7-clabbe@baylibre.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220321200739.3572792-7-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_042536_253016_289C4E59 
X-CRM114-Status: GOOD (  22.91  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2022-03-21 20:07, Corentin Labbe wrote:
> The hardware does not handle 0 size length request, let's add a
> fallback.
> Furthermore fallback will be used for all unaligned case the hardware
> cannot handle.
> 
> Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>   drivers/crypto/Kconfig                        |   4 +
>   drivers/crypto/rockchip/rk3288_crypto.h       |   2 +
>   .../crypto/rockchip/rk3288_crypto_skcipher.c  | 105 +++++++++++++++---
>   3 files changed, 98 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
> index 7b2d138bc83e..84ab14afcbd9 100644
> --- a/drivers/crypto/Kconfig
> +++ b/drivers/crypto/Kconfig
> @@ -784,6 +784,10 @@ config CRYPTO_DEV_IMGTEC_HASH
>   config CRYPTO_DEV_ROCKCHIP
>   	tristate "Rockchip's Cryptographic Engine driver"
>   	depends on OF && ARCH_ROCKCHIP
> +	depends on PM

This appears to belong to patch #13 rather than this one.

My initial thought was that it probably shouldn't be something for 
random consumers to care about at all, but there do seem to be a handful 
of other drivers relying on pm_runtime_resume to enable their clocks, so 
I guess maybe it's an acceptable idiom :/

Robin.

> +	select CRYPTO_ECB
> +	select CRYPTO_CBC
> +	select CRYPTO_DES
>   	select CRYPTO_AES
>   	select CRYPTO_LIB_DES
>   	select CRYPTO_MD5
> diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
> index c919d9a43a08..8b1e15d8ddc6 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.h
> +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> @@ -246,10 +246,12 @@ struct rk_cipher_ctx {
>   	struct rk_crypto_info		*dev;
>   	unsigned int			keylen;
>   	u8				iv[AES_BLOCK_SIZE];
> +	struct crypto_skcipher *fallback_tfm;
>   };
>   
>   struct rk_cipher_rctx {
>   	u32				mode;
> +	struct skcipher_request fallback_req;   // keep at the end
>   };
>   
>   enum alg_type {
> diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> index bbd0bf52bf07..c6b601086c04 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> @@ -13,6 +13,71 @@
>   
>   #define RK_CRYPTO_DEC			BIT(0)
>   
> +static int rk_cipher_need_fallback(struct skcipher_request *req)
> +{
> +	struct scatterlist *sgs, *sgd;
> +	unsigned int todo, len;
> +	unsigned int bs = crypto_skcipher_blocksize(tfm);
> +
> +	if (!req->cryptlen)
> +		return true;
> +
> +	len = req->cryptlen;
> +	sgs = req->src;
> +	while (sgs) {
> +		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
> +			return true;
> +		}
> +		todo = min(len, sgs->length);
> +		if (todo % bs) {
> +			return true;
> +		}
> +		len -= todo;
> +		sgs = sg_next(sgs);
> +	}
> +	len = req->cryptlen;
> +	sgd = req->dst;
> +	while (sgd) {
> +		if (!IS_ALIGNED(sgd->offset, sizeof(u32))) {
> +			return true;
> +		}
> +		todo = min(len, sgd->length);
> +		if (todo % bs) {
> +			return true;
> +		}
> +		len -= todo;
> +		sgd = sg_next(sgd);
> +	}
> +	sgs = req->src;
> +	sgd = req->dst;
> +	while (sgs && sgd) {
> +		if (sgs->length != sgd->length)
> +			return true;
> +		sgs = sg_next(sgs);
> +		sgd = sg_next(sgd);
> +	}
> +	return false;
> +}
> +
> +static int rk_cipher_fallback(struct skcipher_request *areq)
> +{
> +	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
> +	struct rk_cipher_ctx *op = crypto_skcipher_ctx(tfm);
> +	struct rk_cipher_rctx *rctx = skcipher_request_ctx(areq);
> +	int err;
> +
> +	skcipher_request_set_tfm(&rctx->fallback_req, op->fallback_tfm);
> +	skcipher_request_set_callback(&rctx->fallback_req, areq->base.flags,
> +				      areq->base.complete, areq->base.data);
> +	skcipher_request_set_crypt(&rctx->fallback_req, areq->src, areq->dst,
> +				   areq->cryptlen, areq->iv);
> +	if (rctx->mode & RK_CRYPTO_DEC)
> +		err = crypto_skcipher_decrypt(&rctx->fallback_req);
> +	else
> +		err = crypto_skcipher_encrypt(&rctx->fallback_req);
> +	return err;
> +}
> +
>   static void rk_crypto_complete(struct crypto_async_request *base, int err)
>   {
>   	if (base->complete)
> @@ -22,10 +87,10 @@ static void rk_crypto_complete(struct crypto_async_request *base, int err)
>   static int rk_handle_req(struct rk_crypto_info *dev,
>   			 struct skcipher_request *req)
>   {
> -	if (!IS_ALIGNED(req->cryptlen, dev->align_size))
> -		return -EINVAL;
> -	else
> -		return dev->enqueue(dev, &req->base);
> +	if (rk_cipher_need_fallback(req))
> +		return rk_cipher_fallback(req);
> +
> +	return dev->enqueue(dev, &req->base);
>   }
>   
>   static int rk_aes_setkey(struct crypto_skcipher *cipher,
> @@ -39,7 +104,8 @@ static int rk_aes_setkey(struct crypto_skcipher *cipher,
>   		return -EINVAL;
>   	ctx->keylen = keylen;
>   	memcpy_toio(ctx->dev->reg + RK_CRYPTO_AES_KEY_0, key, keylen);
> -	return 0;
> +
> +	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
>   }
>   
>   static int rk_des_setkey(struct crypto_skcipher *cipher,
> @@ -54,7 +120,8 @@ static int rk_des_setkey(struct crypto_skcipher *cipher,
>   
>   	ctx->keylen = keylen;
>   	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
> -	return 0;
> +
> +	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
>   }
>   
>   static int rk_tdes_setkey(struct crypto_skcipher *cipher,
> @@ -69,7 +136,7 @@ static int rk_tdes_setkey(struct crypto_skcipher *cipher,
>   
>   	ctx->keylen = keylen;
>   	memcpy_toio(ctx->dev->reg + RK_CRYPTO_TDES_KEY1_0, key, keylen);
> -	return 0;
> +	return crypto_skcipher_setkey(ctx->fallback_tfm, key, keylen);
>   }
>   
>   static int rk_aes_ecb_encrypt(struct skcipher_request *req)
> @@ -394,6 +461,7 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
>   {
>   	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
>   	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
> +	const char *name = crypto_tfm_alg_name(&tfm->base);
>   	struct rk_crypto_tmp *algt;
>   
>   	algt = container_of(alg, struct rk_crypto_tmp, alg.skcipher);
> @@ -407,6 +475,16 @@ static int rk_ablk_init_tfm(struct crypto_skcipher *tfm)
>   	if (!ctx->dev->addr_vir)
>   		return -ENOMEM;
>   
> +	ctx->fallback_tfm = crypto_alloc_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
> +	if (IS_ERR(ctx->fallback_tfm)) {
> +		dev_err(ctx->dev->dev, "ERROR: Cannot allocate fallback for %s %ld\n",
> +			name, PTR_ERR(ctx->fallback_tfm));
> +		return PTR_ERR(ctx->fallback_tfm);
> +	}
> +
> +	tfm->reqsize = sizeof(struct rk_cipher_rctx) +
> +		crypto_skcipher_reqsize(ctx->fallback_tfm);
> +
>   	return 0;
>   }
>   
> @@ -415,6 +493,7 @@ static void rk_ablk_exit_tfm(struct crypto_skcipher *tfm)
>   	struct rk_cipher_ctx *ctx = crypto_skcipher_ctx(tfm);
>   
>   	free_page((unsigned long)ctx->dev->addr_vir);
> +	crypto_free_skcipher(ctx->fallback_tfm);
>   }
>   
>   struct rk_crypto_tmp rk_ecb_aes_alg = {
> @@ -423,7 +502,7 @@ struct rk_crypto_tmp rk_ecb_aes_alg = {
>   		.base.cra_name		= "ecb(aes)",
>   		.base.cra_driver_name	= "ecb-aes-rk",
>   		.base.cra_priority	= 300,
> -		.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
>   		.base.cra_blocksize	= AES_BLOCK_SIZE,
>   		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
>   		.base.cra_alignmask	= 0x0f,
> @@ -445,7 +524,7 @@ struct rk_crypto_tmp rk_cbc_aes_alg = {
>   		.base.cra_name		= "cbc(aes)",
>   		.base.cra_driver_name	= "cbc-aes-rk",
>   		.base.cra_priority	= 300,
> -		.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
>   		.base.cra_blocksize	= AES_BLOCK_SIZE,
>   		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
>   		.base.cra_alignmask	= 0x0f,
> @@ -468,7 +547,7 @@ struct rk_crypto_tmp rk_ecb_des_alg = {
>   		.base.cra_name		= "ecb(des)",
>   		.base.cra_driver_name	= "ecb-des-rk",
>   		.base.cra_priority	= 300,
> -		.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
>   		.base.cra_blocksize	= DES_BLOCK_SIZE,
>   		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
>   		.base.cra_alignmask	= 0x07,
> @@ -490,7 +569,7 @@ struct rk_crypto_tmp rk_cbc_des_alg = {
>   		.base.cra_name		= "cbc(des)",
>   		.base.cra_driver_name	= "cbc-des-rk",
>   		.base.cra_priority	= 300,
> -		.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
>   		.base.cra_blocksize	= DES_BLOCK_SIZE,
>   		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
>   		.base.cra_alignmask	= 0x07,
> @@ -513,7 +592,7 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
>   		.base.cra_name		= "ecb(des3_ede)",
>   		.base.cra_driver_name	= "ecb-des3-ede-rk",
>   		.base.cra_priority	= 300,
> -		.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
>   		.base.cra_blocksize	= DES_BLOCK_SIZE,
>   		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
>   		.base.cra_alignmask	= 0x07,
> @@ -535,7 +614,7 @@ struct rk_crypto_tmp rk_cbc_des3_ede_alg = {
>   		.base.cra_name		= "cbc(des3_ede)",
>   		.base.cra_driver_name	= "cbc-des3-ede-rk",
>   		.base.cra_priority	= 300,
> -		.base.cra_flags		= CRYPTO_ALG_ASYNC,
> +		.base.cra_flags		= CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
>   		.base.cra_blocksize	= DES_BLOCK_SIZE,
>   		.base.cra_ctxsize	= sizeof(struct rk_cipher_ctx),
>   		.base.cra_alignmask	= 0x07,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
