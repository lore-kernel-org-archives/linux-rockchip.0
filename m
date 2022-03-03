Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 427BAC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 19:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pfLdghilsEPn28uVA9PQkYRnb58+bYu5p4802oitl8=; b=0TY+lYScIy4QVC
	muKhijLqP9mn+W+neWZcPxecxvRS+CivruF1WzGbBx96q1AmZjQJO2QdIXg6eugKSeL6ae2zHSFQq
	uWQExW+5nn683/aBq/DIAdwrqrzkth2uYglUfwK5mID372y6+1tYosg5XdJPV9d0SlnrUz9leupKy
	WdU0pgvA8YNjYgarmpq79bPs8uxdbLoT4a0LIPYp+myWSdM8C457lNtBRaZIYVqDdnC5zyCW/oNlG
	s0NVEnpjUgaGO894XALjbbrlTJXEKJIjaUyV1i6srWSixjPn+D+c9AXlEuSmUb4Th5j5HM5V6RtII
	+IFv+HizLw6Y32QkNzuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPrXW-007d5m-VN; Thu, 03 Mar 2022 19:55:06 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPrXU-007d5A-5S
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 19:55:05 +0000
Received: by mail-wr1-x42f.google.com with SMTP id b5so9493730wrr.2
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 11:55:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=zsIbz0/b386hU/ZdkOSBubB6mU+6IwbbmnEE1Ycu+MY=;
 b=P2/lLp3fpnzXDyB/a8TOfUWFAEABVhPQyw4vrBIqcCPNSqVsh75hfUEo7ksNNW/Lcb
 ORQN/swrL9IYwChFBbsy08B20shjCFURo9fA0UgjDt75cIZKeskIDctWDweIMszbiF6m
 3+nmbWDgvuxmybGFmrYHRHpPTjZCB/qljmJZ3vd6zWuX2A0yZ1UHZY77KScrPe2Ub+16
 4cEBAP5AxkTO00SGIVZ8/zdzMBBN5llAfSpc1JftBSSCtowCDLpqBx1t2zciHAwnwV+W
 7sLq/+PwEBc8tt8f0vczCDQUcL29TKHITgigXYDaIVbTLoXTERVs1vX0tt/vf35T8kAu
 f+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=zsIbz0/b386hU/ZdkOSBubB6mU+6IwbbmnEE1Ycu+MY=;
 b=yAMMTgF3FtyAjxYyVmelxctQm/S1Ui3wOJ8Ri7asr9IimJ70eQTOVXZBYxN6AVN3Zo
 mCzUwVwivMnWLcNcdlSV4xMDv2GYN1oopi17jDnmlgnZ2lwHVqygS+8k+VNcmItz8a6J
 PUAHySckpvMRkhkUxdgsMxCupFmVMFeQah/aaOgCjrCzWUhIn1keajjeU9dN0rNZrPAu
 okyn6ZhSVBZ+p9RQx5SUOBEaYLmgC+i8LlLfLSNK1nSny5VQL7VoxqYvTmUkDnrbXr+8
 3Z90uZU/sb0VWmepPe0bZwbnvemaBKp1NtUOtvsNGHTDkXyOuMFCteoJkaG+wc8S9S6y
 t2zA==
X-Gm-Message-State: AOAM5322o3dvTG3fzmPNVZRRpN9qS6DMaK+DgQ52XCnfgRkOpuHo+1Rw
 5CDuON3GImM1JjSjge/WoPP84Q==
X-Google-Smtp-Source: ABdhPJwSAaV6ui1w2AUfj/WG1jEQ2FypYIkPGjDYhD/nRjjjEqPVDKL8xOYDM+Z1Oa9dFUUITZz1Yw==
X-Received: by 2002:a5d:5407:0:b0:1f0:1246:5a8c with SMTP id
 g7-20020a5d5407000000b001f012465a8cmr10294116wrv.193.1646337302326; 
 Thu, 03 Mar 2022 11:55:02 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 x2-20020a7bc762000000b00380fd1ba4ebsm16466518wmk.9.2022.03.03.11.55.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 11:55:01 -0800 (PST)
Date: Thu, 3 Mar 2022 20:54:58 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 06/18] crypto: rockchip: add fallback for cipher
Message-ID: <YiEdEoX79kDp8kUY@Red>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-7-clabbe@baylibre.com>
 <YiDO8Tt9Lhx530Oz@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YiDO8Tt9Lhx530Oz@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_115504_240482_39E07E86 
X-CRM114-Status: GOOD (  26.06  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Thu, Mar 03, 2022 at 02:21:37PM +0000, John Keeping a =E9crit :
> On Wed, Mar 02, 2022 at 09:11:01PM +0000, Corentin Labbe wrote:
> > The hardware does not handle 0 size length request, let's add a
> > fallback.
> > Furthermore fallback will be used for all unaligned case the hardware
> > cannot handle.
> > =

> > Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/rk3288_crypto.h       |  2 +
> >  .../crypto/rockchip/rk3288_crypto_skcipher.c  | 97 ++++++++++++++++---
> >  2 files changed, 86 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/r=
ockchip/rk3288_crypto.h
> > index c919d9a43a08..8b1e15d8ddc6 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto.h
> > +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> > @@ -246,10 +246,12 @@ struct rk_cipher_ctx {
> >  	struct rk_crypto_info		*dev;
> >  	unsigned int			keylen;
> >  	u8				iv[AES_BLOCK_SIZE];
> > +	struct crypto_skcipher *fallback_tfm;
> >  };
> >  =

> >  struct rk_cipher_rctx {
> >  	u32				mode;
> > +	struct skcipher_request fallback_req;   // keep at the end
> >  };
> >  =

> >  enum alg_type {
> > diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers=
/crypto/rockchip/rk3288_crypto_skcipher.c
> > index bbd0bf52bf07..bf9d398cc54c 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> > +++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> > @@ -13,6 +13,63 @@
> >  =

> >  #define RK_CRYPTO_DEC			BIT(0)
> >  =

> > +static int rk_cipher_need_fallback(struct skcipher_request *req)
> > +{
> > +	struct scatterlist *sgs, *sgd;
> > +
> > +	if (!req->cryptlen)
> > +		return true;
> > +
> > +	sgs =3D req->src;
> > +	while (sgs) {
> > +		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
> > +			return true;
> > +		}
> > +		if (sgs->length % 16) {
> =

> Can this be relaxed to check for alignment to 4 rather than 16?  That's
> the requirement for programming the registers.

No we cannot, the hardware could operate only one SG at a time, and the cip=
her operation need to be complete, so the length should be a multiple of AE=
S_BLOCK_SIZE.
The original driver already have this size check.
But for DES/3DES this check is bad and should be 8, so a fix is needed anyw=
ay.

> =

> But I think this check is wrong in general as it doesn't account for
> cryptlen; with fscrypt I'm seeing sgs->length =3D=3D 255 but cryptlen =3D=
=3D 16
> so the hardware can be used but at the moment the fallback path is
> triggered.

Yes, I need to check min(sg->length, cryptlen_remaining) instead.
I will fix that.

Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
