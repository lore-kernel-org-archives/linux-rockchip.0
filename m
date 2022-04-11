Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 834ABC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Apr 2022 08:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsLtgXaV3Zg4KKja0gI+nEQ1QmadRRGz2/gdQ1Qcp6c=; b=2kv+rOASmoni20
	1clk50R+8w3vqd2Sso7m0b3EtHfjPNc9/2+Mp2XNVAQzhEPKb8ZmTwnPRCCeIzrp74SDhlQnQ7cDd
	eZHdEefn4/OSSkou3gtNJPun45LLQVYLTZrThkxQFtOKbeiP7Wl4jnMTMzeIVkY86xcB72JlhWinN
	eRtjiFj36qH3EQEI+t68JDoN2Cr/+ZRO8NVTR7beBXljFKDoybkai7e5qynmxyZOjrdvxT9OzeTnm
	3zyT3gvqih/jy4qf8Foxegwv6Wa30kJPfSgCXbfCbJi3Am+nBe0b7kpWu2A+/XExzvEx8B92B4l1x
	mi/YIH4LDpd8M6ra8aTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndpUV-007Zd7-C6; Mon, 11 Apr 2022 08:33:43 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndpUH-007Za5-EK
 for linux-rockchip@lists.infradead.org; Mon, 11 Apr 2022 08:33:31 +0000
Received: by mail-wr1-x431.google.com with SMTP id u3so21880490wrg.3
 for <linux-rockchip@lists.infradead.org>; Mon, 11 Apr 2022 01:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=27lr1TeRoTWAFLVF9iWjZf9oxGgkBi1ijJ2WmnDVaWw=;
 b=FCiOpWwMz1l33QbeB+Jtt4vgr1FQhMBvYuXg9CwxMEZsIcuVknweKFjUN7iW+2i9cK
 6icNeAlKmv9KMrFKBYTeJzTuTaLQrqAz87rGMry1dWZXm4WaTRZD8qkPhMoBRQIgboJq
 gkDMBZ4Iywc5c8AWFqttqw8Mf9H62DLQn1ShJ5V1P9YTxEyxOqX6P+22Zz2p+H8QQk7b
 72SKN7Xp2UiqKy1gotmgGVAH985FbXgT7oZ+HcB5XzDQ6YLW+zqHRxDP9MiZ9FTJ2hbG
 /qFhqT7Bdal9IeLusenPQiG3Pw7Ma5BF2J+9ynOn0iiNwFlEPSEVFRAdzuuhc8ZgZNrz
 60Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=27lr1TeRoTWAFLVF9iWjZf9oxGgkBi1ijJ2WmnDVaWw=;
 b=f+p5pBfBpNoOo8mr6wd9+36EfNHvQzHnE0/ftbHSMLppSqnvqycofEPrQkTL60ZlTc
 kopXvANDTcg9R391wZPDHKYnZmnZibt8h7RouNiNeEPUwmiCPtxbr5SHZKY3bp/i4HO0
 fCfAGcG/EedY/l5cgI2pJ6rjy2Sx85cvNWEcXrmhAwboOSM9ROzoLgCrSKCvPNPfYFCy
 nOR/NEeEyLHuSaBJyppOJQ0KTpnfvbHydLFRQmVMUKIfypC85jTvIOetTAtGq/0BR8P5
 rpnG/LSf6+fbcZmPAVWXVSF7EaCAxHmeNqtTb61A2jvaMybgLfc3kkaZ/7hxr/IALMtx
 6TCg==
X-Gm-Message-State: AOAM533HnLQTH9IMf3Td/PQR9RLIyTbsiXx2v0RzSEJiSY/Tu2EE2LYY
 kaE/UAxj45I1aqFU5wLdHsKA4g==
X-Google-Smtp-Source: ABdhPJyMduce5eskJ2Cz9CC/3y6wawMSFNfIrfesrt3XjKQQPdmm+A6C+5gLz1aqtTxhi5MfzzLSUg==
X-Received: by 2002:a05:6000:1c14:b0:207:9988:2af0 with SMTP id
 ba20-20020a0560001c1400b0020799882af0mr11267923wrb.324.1649666005486; 
 Mon, 11 Apr 2022 01:33:25 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 z5-20020a05600c0a0500b0037fa93193a8sm20206956wmp.44.2022.04.11.01.33.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 01:33:24 -0700 (PDT)
Date: Mon, 11 Apr 2022 10:33:22 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 17/33] crypto: rockchip: use read_poll_timeout
Message-ID: <YlPn0nevX6zdYWwG@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-18-clabbe@baylibre.com>
 <YkrYs87bgWs7+tOm@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkrYs87bgWs7+tOm@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_013329_507284_F4FD369B 
X-CRM114-Status: GOOD (  19.14  )
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

Le Mon, Apr 04, 2022 at 12:38:27PM +0100, John Keeping a =E9crit :
> On Fri, Apr 01, 2022 at 08:17:48PM +0000, Corentin Labbe wrote:
> > Use read_poll_timeout instead of open coding it
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/rk3288_crypto_ahash.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/cr=
ypto/rockchip/rk3288_crypto_ahash.c
> > index 137013bd4410..21c9a0327ddf 100644
> > --- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
> > +++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
> > @@ -10,6 +10,7 @@
> >   */
> >  #include <linux/device.h>
> >  #include <asm/unaligned.h>
> > +#include <linux/iopoll.h>
> >  #include "rk3288_crypto.h"
> >  =

> >  /*
> > @@ -305,8 +306,8 @@ static int rk_hash_run(struct crypto_engine *engine=
, void *breq)
> >  		 * efficiency, and make it response quickly when dma
> >  		 * complete.
> >  		 */
> > -	while (!CRYPTO_READ(tctx->dev, RK_CRYPTO_HASH_STS))
> > -		udelay(10);
> > +	read_poll_timeout(readl, v, v =3D=3D 0, 10, 1000, false,
> > +			  tctx->dev->dev + RK_CRYPTO_HASH_STS);
> =

> This can be simplified to:
> =

> 	readl_poll_timeout(tctx->dev->dev + RK_CRYPTO_HASH_STS,
> 			   v, v =3D=3D 0, 10, 1000);

Thanks, this is better.

> =

> But shouldn't this be tctx->dev->reg ?!

Yes, I will fix it.

Thanks
Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
