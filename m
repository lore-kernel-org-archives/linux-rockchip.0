Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DA56C07E9D
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Sep 2022 07:34:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0samIvTDfkbGFp+AT55BD5cuS+/MZAjP0JviijOIVj4=; b=xFPOFuZwF/KDxt
	4RByfLg1VQNUYP/K6pwhnjXRGaaIT9Ypt12ox8k4DOtqepLb5wo3uTZSyh6hq4D5g28SpOS4EpHHP
	r8I3uO8OhsZw4WwBvWVK9uafXqdW97pugOuq4NKRq/95HcHdz5pweE7StLDSeHuEFKzDfnY9GFCd4
	i+PhmpQMTSE++eSPCMwJDUvr/pq0VOUGa9ULieHv5yY/6T9g2xasCPokpiMRosMvZN/q9Kv7PwdB1
	ZSDaoPBwIl92xsQGz0pnUxtHq6QYmJA62uCk+V630UKc/WlimUX4t4ixxu6u11xHpeCSm8RQnuhV7
	1HvznKetjUa/JsJ2zdlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odo3h-001aZk-7T; Thu, 29 Sep 2022 07:34:13 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odo3U-001aTu-80
	for linux-rockchip@lists.infradead.org; Thu, 29 Sep 2022 07:34:01 +0000
Received: by mail-wr1-x42b.google.com with SMTP id l18so752186wrw.9
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Sep 2022 00:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date:from:to:cc
         :subject:date;
        bh=LGdaK3qy/JDlMc+f4v0ZcsQhNJbfdJpMi5Ol3/wPCKk=;
        b=C7DW5l8OpKHmP6J6V6XnyMd4ELBO9nXmcVuh5O1Tuu/qJBKYpPWLDR1M36CCeg4kE2
         jIMR3bON6AWvtvM3IRfICLSGx5mlYuHx/J1UOXL9MlX9qz6d1R7H9lx8yPn4Aqxqb/Un
         ADycgQ1eJAkEd9cKoaSfQEqYPVMvNqCi7HVSN/efOIPDueo98/JjqZTSXcVHQ6BN9Rf7
         93OkTEt2AzzGXOsKy67rKmC5iZyQifgAQQWVnuH18mZlFiG/8Ru/Pq/uUrWwMqJqTtUO
         D6xd5InM5To3jRdClbT7qDwwTNEhTEgksZedemh4SG63you8vtotU5UhyiWZYZawaVsP
         1+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date;
        bh=LGdaK3qy/JDlMc+f4v0ZcsQhNJbfdJpMi5Ol3/wPCKk=;
        b=5jlTYshR626ActePKwAva/6LxkgbxP6ReVhzfIbINxkUWLZroZrbVKnNbYKudstpME
         mM0vsBOaz9F7yiXm7ehRLE66NiI/CIYjHCUUq+YonSXrG4WxZhAJ7U0d7qNE2pirMY6K
         Oo7ZKOkqtb4JdOnZNELasfbofBJbYT3P4rqOFs3TN8wj95uLB8Vssa9WY3snXA7mrEeU
         VUXQz+g5R/n69HZDLDBNW0PpDMc+vUUvwOJJkIyiXjcJY+OZ3cx3B9aKTxV6QPb3hPSp
         slkjiMk6vqj5KJLRHNmT8amkf+woW5jkmtQEWVFZiWtI2R5G4ogZlRYXqO8PuENTRGYD
         XGAw==
X-Gm-Message-State: ACrzQf2RnT6iA22Hg1Fy8h+ITqeYFibgL4aEY8vgZAUNO+vpXTCbMjP0
	As6bytNy6AtbbajiI8KjA+IflA==
X-Google-Smtp-Source: AMsMyM5HRXn6gLFEWsR4ZbAKJk9UifyyzLeCViBeeY4ueRh0LWXfbwVjiHlK38vaupC9+JIMdHfUEA==
X-Received: by 2002:a05:6000:1d94:b0:22c:c4d1:3622 with SMTP id bk20-20020a0560001d9400b0022cc4d13622mr1095415wrb.63.1664436835053;
        Thu, 29 Sep 2022 00:33:55 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id x12-20020a05600c2d0c00b003b51369fbbbsm3856730wmf.4.2022.09.29.00.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 00:33:54 -0700 (PDT)
Date: Thu, 29 Sep 2022 09:33:53 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFT 4/5] crypto: rockchip: support the new crypto IP for
 rk3568/rk3588
Message-ID: <YzVKYWknb6EGEgyr@Red>
References: <20220927080048.3151911-1-clabbe@baylibre.com>
 <20220927080048.3151911-5-clabbe@baylibre.com>
 <YzNtkiR/dD0aEZrv@aurel32.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YzNtkiR/dD0aEZrv@aurel32.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220929_003400_315281_B2031B9F 
X-CRM114-Status: GOOD (  16.38  )
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

Le Tue, Sep 27, 2022 at 11:39:30PM +0200, Aurelien Jarno a =E9crit :
> On 2022-09-27 08:00, Corentin Labbe wrote:
> > Rockchip rk3568 and rk3588 have a common crypto offloader IP.
> > This driver adds support for it.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/rockchip/Kconfig               |  28 +
> >  drivers/crypto/rockchip/Makefile              |   5 +
> >  drivers/crypto/rockchip/rk3588_crypto.c       | 646 ++++++++++++++++++
> >  drivers/crypto/rockchip/rk3588_crypto.h       | 221 ++++++
> >  drivers/crypto/rockchip/rk3588_crypto_ahash.c | 346 ++++++++++
> >  .../crypto/rockchip/rk3588_crypto_skcipher.c  | 340 +++++++++
> >  6 files changed, 1586 insertions(+)
> >  create mode 100644 drivers/crypto/rockchip/rk3588_crypto.c
> >  create mode 100644 drivers/crypto/rockchip/rk3588_crypto.h
> >  create mode 100644 drivers/crypto/rockchip/rk3588_crypto_ahash.c
> >  create mode 100644 drivers/crypto/rockchip/rk3588_crypto_skcipher.c
> > =

> > diff --git a/drivers/crypto/rockchip/Kconfig b/drivers/crypto/rockchip/=
Kconfig
> > index 1010d897d9ef..84ca1081fd0c 100644
> > --- a/drivers/crypto/rockchip/Kconfig
> > +++ b/drivers/crypto/rockchip/Kconfig
> > @@ -26,3 +26,31 @@ config CRYPTO_DEV_ROCKCHIP_DEBUG
> >  	  Say y to enable Rockchip crypto debug stats.
> >  	  This will create /sys/kernel/debug/rk3288_crypto/stats for displayi=
ng
> >  	  the number of requests per algorithm and other internal stats.
> > +
> > +config CRYPTO_DEV_ROCKCHIP2
> > +	tristate "Rockchip's cryptographic offloader V2"
> > +	depends on OF && ARCH_ROCKCHIP
> > +	depends on PM
> > +	select CRYPTO_ECB
> > +	select CRYPTO_CBC
> > +	select CRYPTO_AES
> > +	select CRYPTO_MD5
> > +	select CRYPTO_SHA1
> > +	select CRYPTO_SHA256
> > +	select CRYPTO_SM3
> =

> That should be CRYPTO_SM3_GENERIC

Thanks I will fix it.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
