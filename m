Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D489FC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 11:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FldbXH4if1xx5Hbv2EtiY6mHRDf37hhJLtbRqVPmWU=; b=pB8xUllfXIN0hX
	YOWso+ps1f9bATP8jvj8FQ0Ihht+CLkA9y+DfcNirGxikGfN3PMse2k0JJYxDDbFkdPgNze6sW86R
	QTf8YLBIKP2c+ZkgBaYfbmFcO574uQcAysBxOJLsD+Q4K3Q+2KEEiFb9SxpRlHM6CzUrRirmf1/4z
	R34HyNkADXSiIePgEdZGg4rGlo1qUCo6x8XQULk5YvBYOA5WF1ZR2XS1wBKFchOvRhhwwOZNbqTGk
	j3yQz/yw5vKDDPDpA1eGYlGAM0KfiiTxZLpVRkLjfXFWks2GlpXVy09txX1J+ToSe+Kh1VeyZASZw
	hSEa4WryH0LxARh9TcDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbKr8-00EhcM-Ts; Mon, 04 Apr 2022 11:26:46 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbKqy-00EhZA-Jb; Mon, 04 Apr 2022 11:26:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=In-Reply-To:Content-Type:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description; bh=LnoUpy8pxIXgWxR6IblJWmslcB05NK68pxcDoWJlSfk=; b=DS0Ou
 KQrIxO23qLzQ+DvY1bPnIzGjxCX+gnmtE3eBpqcpIXxFZjFSi0XgG2mnhdIc4Ik7fv8qpH+1Rgp+N
 bQAnGfv54pnAWgdwYR1UMrCb9NdGt+QiiVIqgiNUo92tROAqdINZ3OmjptNRJAHgYZjzg5ApcVHgF
 8qi5gA8zjgnPzlvpFLmA4qADwJOYI+N1gZVF1k9AmJVnnNoySJHIcnq0XUMJuDM7rDIdn+zyxYOyP
 WRSJp0L+JBAhncHRrGKPhcBvUAs4WOLn31lJ2K4mOzr81hAXgB6yJ+DI8y9+qs/yI9COakF74xcid
 XUYRM30D38syFfuDQtjFlGRJoQvXw==;
Received: from [81.174.171.191] (helo=donbot)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1nbKqe-0004ue-SJ; Mon, 04 Apr 2022 12:26:16 +0100
Date: Mon, 4 Apr 2022 12:26:15 +0100
From: John Keeping <john@metanate.com>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 06/33] crypto: rockchip: add fallback for cipher
Message-ID: <YkrV1z5GPVXc+d/X@donbot>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-7-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220401201804.2867154-7-clabbe@baylibre.com>
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_042636_670918_3B1DA914 
X-CRM114-Status: GOOD (  19.45  )
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

On Fri, Apr 01, 2022 at 08:17:37PM +0000, Corentin Labbe wrote:
> The hardware does not handle 0 size length request, let's add a
> fallback.
> Furthermore fallback will be used for all unaligned case the hardware
> cannot handle.
> 
> Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> index bbd0bf52bf07..c6b601086c04 100644
> --- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> +++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> @@ -13,6 +13,71 @@
>  
>  #define RK_CRYPTO_DEC			BIT(0)
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

This check still seems to be triggering the fallback when it is not
needed.

I've done some testing with fscrypt and the series is working great, but
the stats show the fallback triggering more than I'd expect.  With some
extra logging here I see output like:

	sgs->length=32 sgd->length=255 req->cryptlen=16

In this case sgs and sgd are both the first (and only) entries in the
list.  Should this take account of req->cryptlen as well?

In fact, can't this whole function be folded into one loop over src and
dst at the same time, since all the checks must be the same?  Something
like this (untested):

	while (sgs && sgd) {
		if (!IS_ALIGNED(sgs->offset, sizeof(u32)) ||
		    !IS_ALIGNED(sgd->offset, sizeof(u32)))
			return true;

		todo = min(len, sgs->length);
		if (todo % bs)
			return true;

		if (sgd->length < todo)
			return true;

		len -= todo;
		sgs = sg_next(sgs);
		sgd = sg_next(sgd);
	}

	if (len)
		return true;

> +			return true;
> +		sgs = sg_next(sgs);
> +		sgd = sg_next(sgd);
> +	}
> +	return false;
> +}

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
