Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA8CFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Apr 2022 08:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cf2YCJb1JaA7ydzdwggKhZj0ERUWEmqlCcFWxbjLjJE=; b=IP2CGxCZFeUWXo
	NUV9YCAPWQsw31Y36Y0Np7GVrnFjZM1eRCzhpaAxsgVNNI4JEVy35bH4qhXdvuOYRtMck3juTYDcp
	/YDP2YbsL6GHn0NFy0a7duLRZqxlbDfoWUudSHzIHk3RAwOJVjfIj6M+NcM2RgADKhGYxvAwabDco
	xCRMouy6mvFxAim9ysrjq9rCOQNoK2rhEk4aWqistwW/fxva0KU5NHWkqucafR43hUZGxkBBo8A0g
	lt71STm84TW2Fz6343fRr5DHHhpV0U5HIvwp8Lw4jUSEr023PtTGvLK6vcH6+E9NewdBIJcyOpHU6
	hWLgF1mr/qRvMIKTolJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndpm2-007eB9-DK; Mon, 11 Apr 2022 08:51:50 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndplu-007e4w-MH
 for linux-rockchip@lists.infradead.org; Mon, 11 Apr 2022 08:51:44 +0000
Received: by mail-wr1-x42c.google.com with SMTP id r13so21901300wrr.9
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Apr 2022 01:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=IXFXkZ/zIPR/vpj7KNO5NDwB6CMm+azUma0NGH5YVgU=;
 b=DU1x7RrLRqhM32z2qCQqJ8a/bsJ1Es12ZQaw54KzV/aumf31lk1TLA1cpv4cZI8Ml0
 I+PBZQ513P+Kl+A/cS98JJNei9ccl78hSmxjsg7XW11/rh3t9Ybra6WILnO2jHnWVw03
 d99k42th8WeHxcw1YDHY+O1+QzALwhvy3AH1pZW142gprxVanbAPJMWDcfOlCMCwxITt
 0bDMQgwZrIbdNbhNstZ0ncbZD4ArqB/X32ZlX0JK3qVtYtPbKZ7UwF7Z7vjQOIhIkgsF
 hcglTWYerpYvHtIhiNnQjyVGp4qBPBlKNsdrpzUAw6LdVPJPh8vkURTvWG+uDP3P+36m
 kpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=IXFXkZ/zIPR/vpj7KNO5NDwB6CMm+azUma0NGH5YVgU=;
 b=0/LNCfMA4QdDlRprp+yZjjMoDr2zcZNa4yi8BIRGSZ0PLJ3gx6uwqdcwpxJhd16sbx
 jJdzLE5rzEVc6GJsLQeIZ6l2P+rQgJjzdsxkI+iQoJGywDTbq9ZSg6+Wr8+RH5dHhPhU
 tWv+lPbud3XczXais7lV2FXrsua6MYd8330XC9mdqi0gg+Hx73gdntj/nBFVq1Dct3b2
 WH0TUslse5RmcBGQKfVIqPUO6SHJEZ14Veyiwa0XH6ikGzIrBpr/J3m9wcpYaJzftSkZ
 q2lIcSztBKtBBa2Pq36UDm/hXhD8Ab2XeblUmS22oIlU810Ww/rViTOTJS0dzaDSMrK0
 iisw==
X-Gm-Message-State: AOAM532jw5LIuqp3Cd6qVeLT6AiuUn+pnz3tYXwGwH0O8YGfGAvVd95p
 8wBcydYf5gGZpDsKMSRc9ciNCQ==
X-Google-Smtp-Source: ABdhPJwBIvnDClmMj7lyqH8WolBn46vICihfyKzrStW5W+VTLqQQ9byyWSgWtWbeDhcHuG4qEqGRgQ==
X-Received: by 2002:a05:6000:15cb:b0:207:97e4:e445 with SMTP id
 y11-20020a05600015cb00b0020797e4e445mr11520814wry.672.1649667100481; 
 Mon, 11 Apr 2022 01:51:40 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 y15-20020a056000168f00b002057a9f9f5csm30881650wrd.31.2022.04.11.01.51.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 01:51:39 -0700 (PDT)
Date: Mon, 11 Apr 2022 10:51:38 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 08/33] crypto: rockchip: better handle cipher key
Message-ID: <YlPsGvmoloOBw8Sa@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-9-clabbe@baylibre.com>
 <YkrW/+DX5vN8W5cF@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkrW/+DX5vN8W5cF@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_015142_820073_EE8231E9 
X-CRM114-Status: GOOD (  19.08  )
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

Le Mon, Apr 04, 2022 at 12:31:11PM +0100, John Keeping a =E9crit :
> On Fri, Apr 01, 2022 at 08:17:39PM +0000, Corentin Labbe wrote:
> > The key should not be set in hardware too much in advance, this will
> > fail it 2 TFM with different keys generate alternative requests.
> > The key should be stored and used just before doing cipher operations.
> > =

> > Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/rk3288_crypto.h          |  1 +
> >  drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 10 +++++++---
> >  2 files changed, 8 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/r=
ockchip/rk3288_crypto.h
> > index 8b1e15d8ddc6..826508e4a0c3 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto.h
> > +++ b/drivers/crypto/rockchip/rk3288_crypto.h
> > @@ -245,6 +245,7 @@ struct rk_ahash_rctx {
> >  struct rk_cipher_ctx {
> >  	struct rk_crypto_info		*dev;
> >  	unsigned int			keylen;
> > +	u32 key[AES_MAX_KEY_SIZE / 4];
> =

> Should this be u8?  It's only ever memcpy'd so the fact the registers
> are 32-bit is irrelevant.
> =

> (Also a very minor nit: this should probably be aligned in the same was
> as the above two variables.)

Yes, it could be u8 and I will fix the alignement.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
