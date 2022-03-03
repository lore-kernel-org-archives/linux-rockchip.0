Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 861B2C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 14:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abhcn/pJPJFfN3mW6+pPkSN/oRXPe9LZKGGDAI1kpes=; b=LRzJ4cGMvQhL0v
	tuGN+AhFgK5qFGPj3ykSTjGOa7jXuo0C5BXi7UI8cp3H3SR9vvO3TgyLq9YH7DQsN/D+cHnSr+XUU
	OSbXgFQVlSTq9Bq2zF5BA3tek/lh/XVzJl8ODbUFJo27LfdFgc1IbqDycDw6HOx56tIOGiaAI/D67
	LZF49TsBe1NXzm/tZOxbKKEI5d5j27jiXDNB0LirlH+4H1kdEJzQTcInIjJJRjQUe2UTrNFmXjv5T
	MN+et4jpO4VYbSZNij2509V2VWLwQrrtAwq3ZkH3mahpZycu+VcL/txwt3OFPcjt2VbCJAoWTW7kP
	UEed9FEA67JTQGTCwOHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPmLA-006cml-Lo; Thu, 03 Mar 2022 14:22:00 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPmKy-006ciC-2i; Thu, 03 Mar 2022 14:21:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=qjeRQXDRHJDEOFaM/bFhRf+N+QLbWVSGAMDaOy7ZtIw=; b=Rvpp4
 8c8iAHDqTdLm8OD88p2G1kMMZO1W9Qi8uaYRy6VtgwIne1WnNP5cFq+1yHtWWbJKgAzkyrTZ2OD/t
 1GAjcpLSaQ2q1Z/zbJhwn+ZgShs+EEoJtL4NtYR7Lr4tJBrTiRgJjUiYtedY05KN3wsNw56tzeXd5
 xYsbHbNtEHBnddcHxE2yKCNmG24T3XqK0lcyH9rwZlwmW76WtWKTAsk6ZiB2mxqelhLwKG/iIkfPH
 Q4t4f9pYMq0gttOHOmdDFCcchJpb1xwWOAz2XvzIyq0SEQiHiymNXyNpwu9qTLXc/GpjeaUg474I2
 zs2suSeUxZ4I2VTyRjKIDlr7YdiWQ==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nPmKo-0005yL-KP; Thu, 03 Mar 2022 14:21:38 +0000
Date: Thu, 3 Mar 2022 14:21:37 +0000
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 06/18] crypto: rockchip: add fallback for cipher
Message-ID: <YiDO8Tt9Lhx530Oz@donbot>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-7-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220302211113.4003816-7-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_062148_142464_053CDBFF 
X-CRM114-Status: GOOD (  19.90  )
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

On Wed, Mar 02, 2022 at 09:11:01PM +0000, Corentin Labbe wrote:
> The hardware does not handle 0 size length request, let's add a
> fallback.
> Furthermore fallback will be used for all unaligned case the hardware
> cannot handle.
> 
> Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/rk3288_crypto.h       |  2 +
>  .../crypto/rockchip/rk3288_crypto_skcipher.c  | 97 ++++++++++++++++---
>  2 files changed, 86 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
> index c919d9a43a08..8b1e15d8ddc6 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto.h
> +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> @@ -246,10 +246,12 @@ struct rk_cipher_ctx {
>  	struct rk_crypto_info		*dev;
>  	unsigned int			keylen;
>  	u8				iv[AES_BLOCK_SIZE];
> +	struct crypto_skcipher *fallback_tfm;
>  };
>  
>  struct rk_cipher_rctx {
>  	u32				mode;
> +	struct skcipher_request fallback_req;   // keep at the end
>  };
>  
>  enum alg_type {
> diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> index bbd0bf52bf07..bf9d398cc54c 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> @@ -13,6 +13,63 @@
>  
>  #define RK_CRYPTO_DEC			BIT(0)
>  
> +static int rk_cipher_need_fallback(struct skcipher_request *req)
> +{
> +	struct scatterlist *sgs, *sgd;
> +
> +	if (!req->cryptlen)
> +		return true;
> +
> +	sgs = req->src;
> +	while (sgs) {
> +		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
> +			return true;
> +		}
> +		if (sgs->length % 16) {

Can this be relaxed to check for alignment to 4 rather than 16?  That's
the requirement for programming the registers.

But I think this check is wrong in general as it doesn't account for
cryptlen; with fscrypt I'm seeing sgs->length == 255 but cryptlen == 16
so the hardware can be used but at the moment the fallback path is
triggered.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
