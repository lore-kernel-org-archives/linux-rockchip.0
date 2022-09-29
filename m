Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97214C04A95
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 07:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjpOmxi6sXWG2iOftjrn3VSZngYH5/7WpYFIUE8JnFY=; b=k59iIeK0GuRYhk
	rlObsnW8N1aocUBDBwJU6ZX4kBcy3nTvfq8exJ0kuC5ZLUrITqXbTCa2p6VuY3lxo6umk9/ygYVGs
	MMsItIqTEfeKMVJlksV5xLWq6kikplbLd7VGnqswM0tvLPMJrVB6ZHyT/61xDZJ7jyOF8Edwm5oBC
	uSjq0PKTDLyo0drXAY42AR5DOLXBzmSdYy32FI5uYkr1Iykg2Wb8nPmrxpMlJAkJ0MjL26L8T6jDo
	9dK+flkix83voExFhwoWPx/qIOFF1NLu8uOY6F5D4W0KMwfwRkWih2PaQf7i7W0qNJxI5KRdijxO7
	MaFePXQU2wUUhFeL+PEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odoEO-001e3p-9k; Thu, 29 Sep 2022 07:45:16 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odoEK-001e2d-SA
	for linux-rockchip@lists.infradead.org; Thu, 29 Sep 2022 07:45:14 +0000
Received: by mail-wr1-x42e.google.com with SMTP id l18so792582wrw.9
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Sep 2022 00:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date;
        bh=guoNLlLK+w+Celq4Xs8AUibS5WLsjCvsO7YfOGTaInU=;
        b=Y+rRU8KWKGamxRVQBlnjssoWflVvUel0TRkBu/ixzRRosKwL3tpkpFu/tlbtGSjABT
         Ap8uEGQIMjaUagsF8Whox/TJN4SPhvMGNQlxdGypGLna4zs4kOMpDsZPHTWCk8Ix2+bK
         6g5UtGpVGAI3sIVza2zjDBqv13XtBGAx9DYqLeELHEtKdw/HQw8Uw9ZXQVK9vFPgCosH
         +4SnNVsqVpnqlrziBgsIB/rkUUXD60nEztCGRwP6SKxMFlFfLnapzGl4bnCddTxBgR7Z
         5+OlEMxcfMwAyLjltlJZBBP6niz/+jniu25Sj46SteH/K5O0FVvsz5fdjHdFxO5bHTar
         9S3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=guoNLlLK+w+Celq4Xs8AUibS5WLsjCvsO7YfOGTaInU=;
        b=6hXBawIH8mJ76C92/n7yRJPgqZD6o5/ziMgU+Z/TVnNTXKupQ5dRB7u1Oax0KLley3
         OaBFmi+vgk3y1WuDre8gKya5EtGYcDy67PUy0aTGPc2sALNRsS2ZKUDc9dGtr+2EOQId
         vErl6VUYAllsmB2579X4ehSvXXCbd7xSg8w1g00cRIWngKag4oTImBOCz/tD9IL+Ezja
         OtCM2apXUvB8b+FgLuph7lz3HKq/yiUahD8j5VkacixAeHsopEggx6M4hfb1OvPAE4Sk
         0TKCujWQDVEd4VVuXPn8YN844aiEaKQLkmdqsVgX+l6yQdFm2LMVOQflvljkS67529kH
         boOA==
X-Gm-Message-State: ACrzQf0dBXgzk2W0EZ6X7fFMVjR/O5bkS/9hJbFV01z159cL9xqv0M6h
	g1Tx6zWpslL+/lDTexVonwCPBQ==
X-Google-Smtp-Source: AMsMyM5qOr+aKl6CXVmJsgvwSPzOsOYlyFFdl+ywgcOSzX9E3l2wuQHCXQIF2AtTfj4K9rQjaguPYA==
X-Received: by 2002:adf:f342:0:b0:22c:c3ea:c6da with SMTP id e2-20020adff342000000b0022cc3eac6damr1151741wrp.567.1664437511407;
        Thu, 29 Sep 2022 00:45:11 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id w1-20020a5d5441000000b0022cc0a2cbecsm5625633wrv.15.2022.09.29.00.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 00:45:11 -0700 (PDT)
Date: Thu, 29 Sep 2022 09:45:09 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Robin Murphy <robin.murphy@arm.com>,
	"Jason A. Donenfeld" <Jason@zx2c4.com>,
	linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Lin Jinhan <troy.lin@rock-chips.com>, wevsty <ty@wevs.org>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>, Lin Huang <hl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <YzVNBcF7TCDldPwF@Red>
References: <20220919210025.2376254-1-Jason@zx2c4.com>
 <32f8797a-4b65-69df-ee8e-7891a6b4f1af@arm.com>
 <YzMm4d3sZBHpitm9@aurel32.net>
 <YzNTB+RQK6yITi7/@Red>
 <YzNthZ0MtfwjIqdH@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzNthZ0MtfwjIqdH@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_004512_933588_A40A96F9 
X-CRM114-Status: GOOD (  26.89  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Tue, Sep 27, 2022 at 11:39:17PM +0200, Aurelien Jarno a =E9crit :
> On 2022-09-27 21:46, LABBE Corentin wrote:
> > Le Tue, Sep 27, 2022 at 06:37:53PM +0200, Aurelien Jarno a =E9crit :
> > > On 2022-09-20 10:35, Robin Murphy wrote:
> > > > On 2022-09-19 22:00, Jason A. Donenfeld wrote:
> > > > > The Rockchip driver has long existed out of tree, but not upstrea=
m.
> > > > > There is support for it upstream in u-boot, but not in Linux prop=
er.
> > > > > This commit imports the GPLv2 driver written by Lin Jinhan, toget=
her
> > > > > with the DTS and config blobs from Wevsty.
> > > > =

> > > > Note that Corentin has a series enabling the full crypto driver for =

> > > > RK3328 and RK3399[1], so it would seem more sensible to add TRNG su=
pport =

> > > > to that. Having confliciting compatibles for the same hardware that =

> > > > force the user to change their DT to choose one functionality or th=
e =

> > > > other isn't good (plus there's also no binding for this one).
> > > =

> > > It might make sense for the cryptov1-rng driver (I haven't checked). =
For
> > > the cryptov2-rng driver, I looked at the RK3568 TRM (I can't find the
> > > RK3588 one), and from what I understand crypto and TRNG are two
> > > different devices, using different address spaces, clock, reset and
> > > interrupts. The vendor kernel uses two different drivers.
> > > =

> > =

> > I confirm that TRNG is not on the same IP on rk3568, something I didnt =
remark when doing my V2 driver. (I need to remove rng clock from rk3568 dt).
> > But the rk3588 crypto IP and the TRNG are in the same device.
> =

> Ok, thanks for confirming about the rk3568. It seems the only one in the
> family with separate devices for TRNG and crypto. Does it means we need
> a separate TRNG driver only for it? Or could we handle it the same way
> than for instance rk3588 anyway?

I just got now the part 1 of rk3588 TRM which I has missing and it show som=
e conflicting information.
rk3588 seems to have both a dedicated TRNG (TRNG_NS/TRNG_S) with dedicated =
address space and a TRNG inside the crypto IP.
But for the moment, the TRNG inside crypto IP seems defective.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
