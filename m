Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17D1DC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Apr 2022 08:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeuHPs/RbGEbuPbBz1Oaum0kGJG4b3/AQlxzP0CybUM=; b=n6DyTtB66P6CWL
	XpnbLa/585I0tNWMmgJSgdymKh08tE3mvnpQMMglpNRV15i7wG/PnHU+zzXy8hBhVWrzH0sifiZHC
	37fa4NBIbUUqQlApmVQCz4UtqQqRUoTKSvCnsGvPKc+MjFubf+cxHHfnk5iAcGcmXSii13rNetVVi
	qAurQF5EVl5i3S123s6iu3FI06ShmUfO8smnM8UghuRf0sSuzrryVyumkd2mnfpeyibq4qHb7F/+v
	FWCuMmsoQkc+jqRLDoS2UGv4/MyIZuo/LdUZlOsLEjbTmgxIR1+O2K5hceIgLcnuY9pTKOj64DG2m
	du/bcEqR4bCsyK8349FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndpdD-007boX-Um; Mon, 11 Apr 2022 08:42:43 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndpd1-007bkQ-BL
 for linux-rockchip@lists.infradead.org; Mon, 11 Apr 2022 08:42:32 +0000
Received: by mail-wr1-x42d.google.com with SMTP id b19so21859421wrh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Apr 2022 01:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=8C/eYgaWADBmXGolQTtkrHTLecaGjlBMq7BNuIlcZ8Q=;
 b=xeJcy/KGJE8E9dTJtbqIY8xwk3sT+9zWBdf3lwNQ3wiHwbo4fFi8C+BojzWUb7Nts5
 YPHs4k4QJ+0sAnvMgpBPi22mDZOONbSIFtlnjK/F59s/8G5mPCd2VtQv5dvyliQPsxYp
 KmY7lSTcYSkZjPO7nyfaPW2MGED205fey3U79yIsgipqxg9s588DuLwxZoS624dnuMgM
 MHMyVZLpuUay/uFgMoPsgbusEwXdLTEqSSHSIgL/tziKq/jixkyvnP9IpacQh9Y4GqEV
 Rm3sXKIwUpMR9FpWp1I6M9UhCnaMeQFSP4Q/dXQ3qck3BCxgik8RLUyCr26oF7Q4kt7N
 JBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=8C/eYgaWADBmXGolQTtkrHTLecaGjlBMq7BNuIlcZ8Q=;
 b=FmQcLqVua0zbT9TrjqpD5Un4lmWxUmsNm+MM1GZ3mGLT92J1ySnF+FWnyrqMlrkhgr
 j7QQC0zCGAv8S0CJFantxCHjHb6OcX3YNHuRkap37FZUoy2ZCA9hKD2DqtyuNVZIk6Lq
 yBefZTX1fqpycy5B9ny3ucvtGKCzFJFAFuWuT6Ea7sfRF823lcg3qFhXm2DH2dG6xBtG
 5bjtU8qxgsjb+4YtMDlde+aWGtrGiafavVA5jHCgdq4TnLh4o2nYE/1Kv45tnikpvxQU
 G9jK0M5Nz0AamtxmHwo0r8qeJ3VBv73+lFg3EQ56zFBC6xnn4DDEhHgYpM+vpJEHQgNg
 OdgQ==
X-Gm-Message-State: AOAM530YWl68L2sLzjwhsdbOPnr6IMNI2kXahS+ZJQJ0gz1NkzpRWGpX
 aNzuKLXPnkwxmsC1eQQcA5XxhA==
X-Google-Smtp-Source: ABdhPJwj2GX5sxFvKfF2plvDXxPFsbnq+9QtCMe/UP3BTx6ywnM8X9ZtvNekIgx0mHUmfcedMxPk8Q==
X-Received: by 2002:a5d:5406:0:b0:205:a2c2:3530 with SMTP id
 g6-20020a5d5406000000b00205a2c23530mr23927622wrv.587.1649666549614; 
 Mon, 11 Apr 2022 01:42:29 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 c4-20020a056000184400b00207a55f712asm3337327wri.37.2022.04.11.01.42.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 01:42:29 -0700 (PDT)
Date: Mon, 11 Apr 2022 10:42:26 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 06/33] crypto: rockchip: add fallback for cipher
Message-ID: <YlPp8rkH7B742TZM@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-7-clabbe@baylibre.com>
 <YkrV1z5GPVXc+d/X@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkrV1z5GPVXc+d/X@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_014231_399986_D062A9A5 
X-CRM114-Status: GOOD (  24.45  )
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

Le Mon, Apr 04, 2022 at 12:26:15PM +0100, John Keeping a =E9crit :
> On Fri, Apr 01, 2022 at 08:17:37PM +0000, Corentin Labbe wrote:
> > The hardware does not handle 0 size length request, let's add a
> > fallback.
> > Furthermore fallback will be used for all unaligned case the hardware
> > cannot handle.
> > =

> > Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers=
/crypto/rockchip/rk3288_crypto_skcipher.c
> > index bbd0bf52bf07..c6b601086c04 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> > +++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
> > @@ -13,6 +13,71 @@
> >  =

> >  #define RK_CRYPTO_DEC			BIT(0)
> >  =

> > +static int rk_cipher_need_fallback(struct skcipher_request *req)
> > +{
> > +	struct scatterlist *sgs, *sgd;
> > +	unsigned int todo, len;
> > +	unsigned int bs =3D crypto_skcipher_blocksize(tfm);
> > +
> > +	if (!req->cryptlen)
> > +		return true;
> > +
> > +	len =3D req->cryptlen;
> > +	sgs =3D req->src;
> > +	while (sgs) {
> > +		if (!IS_ALIGNED(sgs->offset, sizeof(u32))) {
> > +			return true;
> > +		}
> > +		todo =3D min(len, sgs->length);
> > +		if (todo % bs) {
> > +			return true;
> > +		}
> > +		len -=3D todo;
> > +		sgs =3D sg_next(sgs);
> > +	}
> > +	len =3D req->cryptlen;
> > +	sgd =3D req->dst;
> > +	while (sgd) {
> > +		if (!IS_ALIGNED(sgd->offset, sizeof(u32))) {
> > +			return true;
> > +		}
> > +		todo =3D min(len, sgd->length);
> > +		if (todo % bs) {
> > +			return true;
> > +		}
> > +		len -=3D todo;
> > +		sgd =3D sg_next(sgd);
> > +	}
> > +	sgs =3D req->src;
> > +	sgd =3D req->dst;
> > +	while (sgs && sgd) {
> > +		if (sgs->length !=3D sgd->length)
> =

> This check still seems to be triggering the fallback when it is not
> needed.
> =

> I've done some testing with fscrypt and the series is working great, but
> the stats show the fallback triggering more than I'd expect.  With some
> extra logging here I see output like:
> =

> 	sgs->length=3D32 sgd->length=3D255 req->cryptlen=3D16
> =

> In this case sgs and sgd are both the first (and only) entries in the
> list.  Should this take account of req->cryptlen as well?
> =

> In fact, can't this whole function be folded into one loop over src and
> dst at the same time, since all the checks must be the same?  Something
> like this (untested):
> =

> 	while (sgs && sgd) {
> 		if (!IS_ALIGNED(sgs->offset, sizeof(u32)) ||
> 		    !IS_ALIGNED(sgd->offset, sizeof(u32)))
> 			return true;
> =

> 		todo =3D min(len, sgs->length);
> 		if (todo % bs)
> 			return true;
> =

> 		if (sgd->length < todo)
> 			return true;
> =

> 		len -=3D todo;
> 		sgs =3D sg_next(sgs);
> 		sgd =3D sg_next(sgd);
> 	}
> =

> 	if (len)
> 		return true;
> =


Thanks, for this hint, I will use it.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
