Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3FDFC54E76
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 12:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odh9rOZvyTvE1JYSqNf22R3TKOgsdAFoSruueYegOLI=; b=c0m4pmA0Iootcd
	iqrlpFeJGxqI/Y5sc8/kM4VQz73oABBciPHABOwSIQfI0xVZSngva8ez9eryHMsve4+rpM+gn5IW2
	p/y2tJrBFzZreR+w5fY1zRxLGhYG5cYgFkQANnn0Q5GdMgckPiF0/3SMe7sLidKC9z8Y0Mo61ZApD
	a8XjEeYJp/o2Fl517LsFkUvERezNXueD/gJ1I1gjJCvJObOyLzUkq8r91aSE801oOYRM4wlyB5qN5
	uZUMTB2uU/Wr8t+wiD1ZECbPs518Oa6EkMiracipaWEvr8q8k2D7vpeQKTny4lzNXWt7JT36YMEWc
	8ZzQLB8Dr3V8AMCgvgJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r53hY-00C3DV-01;
	Mon, 20 Nov 2023 12:48:32 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53hO-00C3CA-22
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 12:48:30 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4083dbc43cfso12842535e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 04:48:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700484499; x=1701089299; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iULhMJEvBuZulS3R6eM6+QPD3+upNpla2MgygEvT0Sk=;
        b=utTA1ogH++QPEaG/LG1m268X9a8v+NK1P1Cs5RcAWlJqqBJ+p9qnANXQFa66wsFsxw
         HyAVRSgNHcYcvJpI/n3uaIS6IK7SAvheB2IfxpybSq7kof3uUYyQ64qpADcUVujSyXqs
         vB2QSJH+l6eUQuCePr3fc+PKpYDW0J61fybu5LSBIoVnIk6oZpKP3p7CzP7dqvXeK7v9
         T1jrUPBe++mF89HtjlzcM1zrlg8E9R4zha0/nNmXvJ0sG7B5ufCWtwge4XJIBvfvF9+P
         qbM8Rl9XJZcItuQfg9CZ6e/ZO5m4EX57uvMEaoIWrkujboUZf8RfDWyTYPY1gvtNyE1d
         AGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700484499; x=1701089299;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iULhMJEvBuZulS3R6eM6+QPD3+upNpla2MgygEvT0Sk=;
        b=T68p/2MLhwR4vn/cSMPM91gd+FkmCQP2aPm2d73T2fUek/bKTw+fYSKNY7dkN67+TT
         kyhesDP46KjSJ0/d5Fhl7WM6DnaAU/eeSGr41xw8X/lR3+1XE8bxHVFU4vmPn1PaOmKi
         vuO8ehzUOAkPLykYI2HqNH30PeJf9vVa2nIIHr8bWmGjWwBKiJI+E50ql6grvTDFjqyP
         cFTfidm/gBkUfjHPz2+htYPIOexT1TSPi4GXXu9QJ3E+3BnBhoMOGxl9ALqq5yTYT2jr
         rsEQqnYmf56fPHoehzV8EQzfT60BAyUps816JL0qR9WzqhzCv3CRc6CLsMl7CQ7eE/bX
         TBlw==
X-Gm-Message-State: AOJu0Yz5MLQvXO6lwrsxd2WYWryTuXtrchxe9Ov2d53M336DvLpKJSkZ
	tlIUP7W7glrkHw909rtxDtAS9Q==
X-Google-Smtp-Source: AGHT+IEcj8eyEIw+EleLn28+Gu2Rxb9D5+njypV1+ljFqUelDha0PRwFdE+Tw+weAoFpUecO1dSWNA==
X-Received: by 2002:a05:600c:354a:b0:40a:3e41:7d6f with SMTP id i10-20020a05600c354a00b0040a3e417d6fmr5908383wmq.32.1700484498651;
        Mon, 20 Nov 2023 04:48:18 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id je12-20020a05600c1f8c00b0040839fcb217sm13392102wmb.8.2023.11.20.04.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:48:18 -0800 (PST)
Date: Mon, 20 Nov 2023 13:48:16 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: Aw: [PATCH 6/6] crypto: rockchip: add rk3588 driver
Message-ID: <ZVtVkACNHTcCjqGp@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-7-clabbe@baylibre.com>
 <trinity-a0ee3146-f23d-4f6c-b29c-5fe446c4d4ad-1699797868421@3c-app-gmx-bs50>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <trinity-a0ee3146-f23d-4f6c-b29c-5fe446c4d4ad-1699797868421@3c-app-gmx-bs50>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_044822_882705_0CF673D2 
X-CRM114-Status: GOOD (  28.59  )
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

Le Sun, Nov 12, 2023 at 03:04:28PM +0100, Frank Wunderlich a =E9crit :
> Hi Corentin
> =

> thanks for working on it
> =

> > Gesendet: Dienstag, 07. November 2023 um 16:55 Uhr
> > Von: "Corentin Labbe" <clabbe@baylibre.com>
> > An: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au, =
krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, p.zabel@pengutr=
onix.de, robh+dt@kernel.org, sboyd@kernel.org
> > Cc: ricardo@pardini.net, devicetree@vger.kernel.org, linux-arm-kernel@l=
ists.infradead.org, linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org=
, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Corent=
in Labbe" <clabbe@baylibre.com>
> > Betreff: [PATCH 6/6] crypto: rockchip: add rk3588 driver
> >
> > RK3588 have a new crypto IP, this patch adds basic support for it.
> > Only hashes and cipher are handled for the moment.
> >
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/crypto/Kconfig                        |  29 +
> >  drivers/crypto/rockchip/Makefile              |   5 +
> >  drivers/crypto/rockchip/rk2_crypto.c          | 739 ++++++++++++++++++
> >  drivers/crypto/rockchip/rk2_crypto.h          | 246 ++++++
> >  drivers/crypto/rockchip/rk2_crypto_ahash.c    | 344 ++++++++
> >  drivers/crypto/rockchip/rk2_crypto_skcipher.c | 576 ++++++++++++++
> >  6 files changed, 1939 insertions(+)
> >  create mode 100644 drivers/crypto/rockchip/rk2_crypto.c
> >  create mode 100644 drivers/crypto/rockchip/rk2_crypto.h
> >  create mode 100644 drivers/crypto/rockchip/rk2_crypto_ahash.c
> >  create mode 100644 drivers/crypto/rockchip/rk2_crypto_skcipher.c
> >
> > diff --git a/drivers/crypto/Kconfig b/drivers/crypto/Kconfig
> > index 79c3bb9c99c3..b6a2027b1f9a 100644
> > --- a/drivers/crypto/Kconfig
> > +++ b/drivers/crypto/Kconfig
> > @@ -660,6 +660,35 @@ config CRYPTO_DEV_ROCKCHIP_DEBUG
> >  	  the number of requests per algorithm and other internal stats.
> >
> >
> > +config CRYPTO_DEV_ROCKCHIP2
> > +	tristate "Rockchip's cryptographic offloader V2"
> > +	depends on OF && ARCH_ROCKCHIP
> > +	depends on PM
> =

> it should depend on CONFIG_CRYPTO_DEV_ROCKCHIP as rockchip folder is not =
included without it
> =

> drivers/crypto/Makefile
> obj-$(CONFIG_CRYPTO_DEV_ROCKCHIP) +=3D rockchip/
> =


Hello

I will move all rockchip kconfig in the rockchip directory like I did for A=
llwinner, this will fix this.

> > +	select CRYPTO_ECB
> > +	select CRYPTO_CBC
> > +	select CRYPTO_AES
> > +	select CRYPTO_MD5
> > +	select CRYPTO_SHA1
> > +	select CRYPTO_SHA256
> > +	select CRYPTO_SHA512
> > +	select CRYPTO_SM3_GENERIC
> > +	select CRYPTO_HASH
> > +	select CRYPTO_SKCIPHER
> > +	select CRYPTO_ENGINE
> > +
> > +	help
> > +	  This driver interfaces with the hardware crypto offloader present
> > +	  on RK3566, RK3568 and RK3588.
> > +
> > +config CRYPTO_DEV_ROCKCHIP2_DEBUG
> > +	bool "Enable Rockchip V2 crypto stats"
> > +	depends on CRYPTO_DEV_ROCKCHIP2
> > +	depends on DEBUG_FS
> > +	help
> > +	  Say y to enable Rockchip crypto debug stats.
> > +	  This will create /sys/kernel/debug/rk3588_crypto/stats for displayi=
ng
> > +	  the number of requests per algorithm and other internal stats.
> > +
> >  config CRYPTO_DEV_ZYNQMP_AES
> >  	tristate "Support for Xilinx ZynqMP AES hw accelerator"
> >  	depends on ZYNQMP_FIRMWARE || COMPILE_TEST
> > diff --git a/drivers/crypto/rockchip/Makefile b/drivers/crypto/rockchip=
/Makefile
> > index 785277aca71e..452a12ff6538 100644
> =

> else i did some tests, but it does not seem that the offloader is used (r=
equests stay at initial value after the bootup test)
> =

> i wonder about the last 3 lines in dmesg (fallback), seems i miss somethi=
ng for these.
> =

> root@bpi-r2pro:~# dmesg | grep crypto
> [    0.150643] alg: extra crypto tests enabled.  This is intended for dev=
eloper use only.
> [    2.718110] rk2-crypto fe380000.crypto: will run requests pump with re=
altime priority
> [    2.720605] rk2-crypto fe380000.crypto: Registers crypto algos
> [    2.721910] rk2-crypto fe380000.crypto: Register ecb(aes) as ecb-aes-r=
k2
> [    2.724435] rk2-crypto fe380000.crypto: Register cbc(aes) as cbc-aes-r=
k2
> [    2.725072] rk2-crypto fe380000.crypto: Register xts(aes) as xts-aes-r=
k2
> [    2.725731] rk2-crypto fe380000.crypto: Register md5 as rk2-md5 3
> [    2.726310] rk2-crypto fe380000.crypto: Register sha1 as rk2-sha1 4
> [    2.726901] rk2-crypto fe380000.crypto: Register sha256 as rk2-sha256 5
> [    2.727521] rk2-crypto fe380000.crypto: Register sha384 as rk2-sha384 6
> [    2.728142] rk2-crypto fe380000.crypto: Register sha512 as rk2-sha512 7
> [    2.728763] rk2-crypto fe380000.crypto: Register sm3 as rk2-sm3 8
> [    3.502442] rk2-crypto fe380000.crypto: Fallback for xts-aes-rk2 is xt=
s-aes-ce
> [    3.770678] rk2-crypto fe380000.crypto: Fallback for cbc-aes-rk2 is cb=
c-aes-ce
> [    3.939055] rk2-crypto fe380000.crypto: Fallback for ecb-aes-rk2 is ec=
b-aes-ce
> =

> root@bpi-r2pro:~# cat /sys/kernel/debug/rk2_crypto/stats
> rk2-crypto fe380000.crypto requests: 581
> ecb-aes-rk2 ecb(aes) reqs=3D132 fallback=3D1994
>         fallback due to length: 342
>         fallback due to alignment: 1648
>         fallback due to SGs: 0
> cbc-aes-rk2 cbc(aes) reqs=3D156 fallback=3D2182
>         fallback due to length: 329
>         fallback due to alignment: 1841
>         fallback due to SGs: 6
> xts-aes-rk2 xts(aes) reqs=3D137 fallback=3D2143
>         fallback due to length: 116
>         fallback due to alignment: 739
>         fallback due to SGs: 0
> rk2-md5 md5 reqs=3D14 fallback=3D739
> rk2-sha1 sha1 reqs=3D28 fallback=3D716
> rk2-sha256 sha256 reqs=3D25 fallback=3D654
> rk2-sha384 sha384 reqs=3D32 fallback=3D656
> rk2-sha512 sha512 reqs=3D34 fallback=3D638
> rk2-sm3 sm3 reqs=3D23 fallback=3D712
> root@bpi-r2pro:~# kcapi-rng -b 512 > rng.bin
> root@bpi-r2pro:~# cat /sys/kernel/debug/rk2_crypto/stats
> rk2-crypto fe380000.crypto requests: 581
> ecb-aes-rk2 ecb(aes) reqs=3D132 fallback=3D1994
>         fallback due to length: 342
>         fallback due to alignment: 1648
>         fallback due to SGs: 0
> cbc-aes-rk2 cbc(aes) reqs=3D156 fallback=3D2182
>         fallback due to length: 329
>         fallback due to alignment: 1841
>         fallback due to SGs: 6
> xts-aes-rk2 xts(aes) reqs=3D137 fallback=3D2143
>         fallback due to length: 116
>         fallback due to alignment: 739
>         fallback due to SGs: 0
> rk2-md5 md5 reqs=3D14 fallback=3D739
> rk2-sha1 sha1 reqs=3D28 fallback=3D716
> rk2-sha256 sha256 reqs=3D25 fallback=3D654
> rk2-sha384 sha384 reqs=3D32 fallback=3D656
> rk2-sha512 sha512 reqs=3D34 fallback=3D638
> rk2-sm3 sm3 reqs=3D23 fallback=3D712
> root@bpi-r2pro:~#
> =

> if needed this is my current defconfig/tree:
> =

> https://github.com/frank-w/BPI-Router-Linux/blob/6.6-r2pro2/arch/arm64/co=
nfigs/quartz64_defconfig#L924
> =


You are using kcapi-rng but the driver do not support RNG yet. (and probabl=
y never if I continue to fail having good results with it).
So it is normal values does not change.

Thanks for your test
Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
