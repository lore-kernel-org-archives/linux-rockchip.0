Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 441E2CF9C7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 15:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LBc5KTExcUA3ICzaEKOmOxmv9QGjXPipdiJhrwWOlU=; b=SPnCdgNp5pv4YF
	Wx/fJ6n7OqvQaTw8sD27i0dTkG+87qMh7xQzDpEqx2qFP8MXskKu33bawFDXv5UGpRTXSGF6in3Zg
	88j5lB8LBuAIqWXJIBEJSb1PuyTdwkwDpRB1UbzPSF1vI/Dre74C5kxODWBFLCY8p/BsYiYOpapdD
	oZa3voi5EYJYHCVspt0aqGQnWA7pnK8GN461YcpaoJnRMbdedW/+Vwm2cqoshTeunq1LNKmyEAtcx
	6pBWEXjvCQJS6DM+BgAtv5P6kZ52hs5UfVrCSVfH+LTHNa7x11NinnEAujARsG1G80ADJWadabn29
	SgUOFjeDsQVFivnpzqaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stTZM-00000005mKy-02Wl;
	Wed, 25 Sep 2024 15:04:44 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stTWZ-00000005l7o-11qr
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Sep 2024 15:01:53 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-378f90ad32dso4383949f8f.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Sep 2024 08:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727276508; x=1727881308; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=a+DIs+cjfT3JD55mRAd2TBTt3EC9HtAmYb81V/vRFFU=;
        b=0wmgo6zTyTJ7KVEA2BHI7KNv9ScY7kCdbl0B7+nQSj/c4jZOMudTWAodaYsuH0LQIk
         SzJVo6dBxb+k8IM0CyiSYQGbGYuBSaF6k0z9O6eBXpZQ4eH9W23Q539JfKWCUxDq/HS8
         r0fM4fwuCTsYPJjwqRxfyT9mu32Ih55n1y67anoplCPC9HkVLLIzaYORmGmzA/te4CyB
         Nbi/K7J2O8S+CTE17NxKU49Z2Zz0WbcNBrw16GDmv/pkxE7Wu5Qo2QpPUQaP1fBLF6hz
         IQRSRJQdaO2OYke1n0SyNe2SZwCqt/i8Tpi9mTBdcPt6hce2oiuzVlc4cog939LVLSP9
         Kc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727276508; x=1727881308;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a+DIs+cjfT3JD55mRAd2TBTt3EC9HtAmYb81V/vRFFU=;
        b=iv8N/Y8y64ibts1mtcHirNrsvpV2pLzUTMym8IaY3dakAiC8LKZPj7DgyI6RxfEDSF
         gg5uTFYOGolXMyJp7kOVVRWbFnyAxlL/Ev1qI2dRS2msioUNchCqfKY50wlWXwMCz+cN
         NUjt5ulQ3runKI0IXz6cqwdvauApODbrmireMmPYjtdfEGdATIzSgeblkmrne3XiRkr7
         m12TdAvF2c9fkjECsGfvXcRTmdjqDdbeuqMGHnGI3dhhpt3HMs6K56uENIlxBYK66Myo
         8UYakaD3AkHk01TeSZmx8TKrtf77ibZtWaENbKLiOsVrsPRpw53JTSAVmFUMfv4FdBib
         F2Nw==
X-Forwarded-Encrypted: i=1; AJvYcCWHQirC1l69a6e9qA3YaZYGYPgUDGrsSBidhOowvBYmDxqnDkr+45ppDNIegh/Wif9pI7hYSdxJ3hwmQ6mFAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7B3GpqWZcwQfg3iWd/w49gPDDAwuLQ+Z1qsxlH9cpboYnLvrF
	OS6x65+3rg/LgihCswct2pnE4PUzW2itAz6LJGhouRmuQGf4SJTh8YipqxtL3SY=
X-Google-Smtp-Source: AGHT+IHfbzpphdy6WAUwhQp1pcPNJKsRYShLsVQDedS0f/0PBeU1GtCFcb/lDjITm8qpA3o3J6cTfg==
X-Received: by 2002:adf:f5d2:0:b0:374:c56e:1d44 with SMTP id ffacd0b85a97d-37cc24c9fd3mr2148358f8f.48.1727276508205;
        Wed, 25 Sep 2024 08:01:48 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d3:3500:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-37cbc2c1eb8sm4233697f8f.42.2024.09.25.08.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 08:01:47 -0700 (PDT)
Date: Wed, 25 Sep 2024 17:01:42 +0200
From: Corentin LABBE <clabbe@baylibre.com>
To: Janpieter Sollie <janpieter.sollie@kabelmail.de>
Cc: linux.amoon@gmail.com, Jason@zx2c4.com, heiko@sntech.de,
	herbert@gondor.apana.org.au, hl@rock-chips.com,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, mike.rudenko@gmail.com,
	robin.murphy@arm.com, shawn.lin@rock-chips.com,
	troy.lin@rock-chips.com, ty@wevs.org
Subject: Re: [PATCH] hw_random: rockchip: import driver from vendor tree
Message-ID: <ZvQl1i2TfA6JYUDH@Red>
References: <CANAwSgTTzZOwBaR9zjJ5VMpxm5BydtW6rB2S7jg+dnoX8hAoWg@mail.gmail.com>
 <ef2f6e41-bf9e-470e-a416-fda7ce5d8a51@kabelmail.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ef2f6e41-bf9e-470e-a416-fda7ce5d8a51@kabelmail.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_080151_321519_E2C04706 
X-CRM114-Status: GOOD (  21.80  )
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

Le Mon, Sep 23, 2024 at 09:48:54AM +0200, Janpieter Sollie a =E9crit :
> =

> Hi everybody,
> =

> Is there any chance this random driver will be upstreamed?
> I'm using it instead of the built-in crypto driver (rk3328-crypto), as th=
is crypto driver showed =

> the following:
> =

> > [  =A0=A0=A09.270549] rk3288-crypto ff060000.crypto: will run requests =
pump with realtime priority
> > [  =A0=A0=A09.270687] rk3288-crypto ff060000.crypto: Register ecb(aes) =
as ecb-aes-rk
> > [  =A0=A0=A09.270808] rk3288-crypto ff060000.crypto: Register cbc(aes) =
as cbc-aes-rk
> > [  =A0=A0=A09.270831] rk3288-crypto ff060000.crypto: Register ecb(des) =
as ecb-des-rk
> > [  =A0=A0=A09.270848] rk3288-crypto ff060000.crypto: Register cbc(des) =
as cbc-des-rk
> > [  =A0=A0=A09.270864] rk3288-crypto ff060000.crypto: Register ecb(des3_=
ede) as ecb-des3-ede-rk
> > [  =A0=A0=A09.270880] rk3288-crypto ff060000.crypto: Register cbc(des3_=
ede) as cbc-des3-ede-rk
> > [  =A0=A0=A09.270896] rk3288-crypto ff060000.crypto: Register sha1 as r=
k-sha1
> > [  =A0=A0=A09.270915] rk3288-crypto ff060000.crypto: Register sha256 as=
 rk-sha256
> > [  =A0=A0=A09.270932] rk3288-crypto ff060000.crypto: Register md5 as rk=
-md5
> =

> so the options here are pretty useless:
> standard tls / ssh (ktls anyone?) almost never uses ecb or cbc ciphers, a=
nd about des ... yeah, =

> won't dig into that one.
> I think a rk3328 device will actually benefit more from a entropy source =
(even if it's not =

> high-quality) than from sha1/256 which are almost always covered by armv8=
 crypto extensions.
> I tried this patch (and disabled the crypto device in dts), it works.
> Off course there are FIPS failures, but the user employing a rk3328 board=
 probably knows this is =

> not a high-security device.
> =

> Any chances here? applying the patch on 6.6.48 (even with clang thinLTO) =
works flawlessly.
> =

> kind regards,
> =

> Janpieter Sollie

Did you test if it really works by testing entropy output QUALITY ?

I asked how the serie was tested and the sender never answered raising a bi=
g red flag.
If you check the thread, someone tested and the quality bringed by the vend=
or driver is really BAD.
This is due to the fact that their sample value was really too short.
So as-is, this serie is a security issue to the randomness quality.

I need to regrab some time finishing, my patch adding support for it on int=
ree crypto driver.
I found an old tree that I push here https://github.com/montjoie/linux/tree=
/rk3288-trng
This is not a final patch, but it could help finding a correct value of sam=
ple via the debugfs.
I dont remember which value of sample was necessary to obtain a minimal qua=
lity. (perhaps 500 since it seems the default in my patch).

Unfortunatly, I cannot test it immediatly, as my CI controller got some HW =
issue, and I need to fix them.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
