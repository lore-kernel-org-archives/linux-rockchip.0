Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69082C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 14:11:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jLfPcH6Kw0a/OdAN5qIoZCDaEIHWCqPADBB3Yhawrq0=; b=HxDssMJP1hEfrMDoyhSZ4DRlqS
	VnfeVjVdwjis0euziS0CIG3qrF5L3gcSu5MAFgD5K5mJkiEd9NwZqqrqLeWsDS4azREvtG3cwHQ6j
	hbCrmCndd7+UZ/G2d+V9ULRDFM5f+snbhfyU0HxpxndvDvcUGsPIG7O5ggxeLsNm0vEqkwhHaSq0W
	uAISCB7QmJr/i5WiKG2qdD/lg7YQLwNVmst4Mqh2lm34LV2QWCMJbfp5Lh2CN+YKW1pQ73ncGDt/w
	De5CJfhUjcZgnGtG7fkS2YpxKB+EFgFAzTnjzvWnxNbyXdEgNSEHB66+p1ua/bt4miv1JHvbML+tk
	zARXzuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLNwA-0000000EAF2-0hxs;
	Sun, 23 Jun 2024 14:11:22 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLNw2-0000000EADr-3b1r;
	Sun, 23 Jun 2024 14:11:16 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-25d0d16e38eso194903fac.2;
        Sun, 23 Jun 2024 07:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719151873; x=1719756673; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mydsSOgs1yRkpysFjrBR5qnlOOLUTfBZ21Jz7PUY9KI=;
        b=IhVbG1bNUBeq5li0QK7aVQqw9pqOYER/ZnDjSg+YaJa8tCv0GqF3q+4aqLc7BjS1Df
         tuZmNR1e4F7l5PbIApFo7h2BxCvzHM4br4u8Lpowp46n+E2LSvnSzEJZK67c6j26uXhD
         iCHKmef64vb+uiMFPakQ2pp4GC0+uR0W+TXyfHrh8JpystFT1tIOVTrdkLZIEMra8+tL
         kd3IdRFBuy+N6AJ9E4dBDvVjGU+iaZ9lSjQM78JXJG2z1dNiXcWn+4YblPeAiQ2vPe52
         4z3GL8WkId3xqcUAQ6eADWcXUkohDXlgDXxF2F407/Q2QifT6EsL8fcsc380JCcFS8F9
         qRYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719151873; x=1719756673;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mydsSOgs1yRkpysFjrBR5qnlOOLUTfBZ21Jz7PUY9KI=;
        b=T85K1ivJWhN6clJoLsSwBp9xHgB92tFXzhdRqX8hcwguS8NnXpwfuflMU9XVF/Dfc4
         Q4ql+GJmKXC6ABoSMhuq8uGNidETsBqPk+PhUjHnBsE/pdtbV4+gvpwqCz0r2j3G5WkY
         C3ODFY2cTC9aK1Ae3ZHQcQkjbODDcl6WKmOwtyKPcNUy3codVwsqtyMfqgS6PZS+HxdO
         G5wyVx/6djK/KxnVllXh/p1xqrk8jqC63eIQRfTdhAwXZ+8QAthQBfOqpM7Z72QMymGR
         g3fXmBywgh9czuFsk2fSSTrE59BZc9EzlgrNpLuZwBv5ER+rNORg6Q882dMNp8sF9bsp
         2gPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgNXAZUh+pEIra7IG82OgM+9HHlDgJKBIj6A7k0CTQ4Nagq61wFSkrHzPrWQX8rUKOtgRoi4QTfp3M1NzRUsVWnfLO6Xg8hco5s1DgIP3fHSOqmXdx3LvuImdUWXqgb88ed81Z0l/dl9NPYP7lfTAgCeXbuS6beTc=
X-Gm-Message-State: AOJu0YwUoZ1YYwEzpGLJsvUGK+av13O0DGQ7q77k1wJtkFhCrhQ/6eCV
	WLtK2wmI4y88bcjvCs+uz0u35UdMC3JJwHYyQLVPXHaqdQVF8dKGJGwz4La0bY2MvFshQY67m34
	+YA7Vr0RJ9vopf/KBfjEgMKJ8fiQ=
X-Google-Smtp-Source: AGHT+IFu3aSUk0WZAqXIaA214WhWGBp4bx8gFFfbGd9/AyNmFvmqYuPGQ3DfZ2eD+IxbM3Ci6RQ5K2LGLu7tVyFPy18=
X-Received: by 2002:a05:6870:a714:b0:254:d05e:4cd5 with SMTP id
 586e51a60fabf-25d06e3790cmr2478953fac.38.1719151873186; Sun, 23 Jun 2024
 07:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1719106472.git.daniel@makrotopia.org> <240db6e0ab07e8e2a86da99b0fc085eabaf9f0cc.1719106472.git.daniel@makrotopia.org>
 <612bd49c-c44a-41f2-89e9-c96e62e52a0a@kernel.org> <Znf8JeBA4mzVa0V1@aurel32.net>
In-Reply-To: <Znf8JeBA4mzVa0V1@aurel32.net>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 23 Jun 2024 19:40:58 +0530
Message-ID: <CANAwSgTt5MSRkpR9tiZuGRQjdisuKUzoeG6_+8MqLVqKp6pKQg@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] hwrng: add Rockchip SoC hwrng driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Daniel Golle <daniel@makrotopia.org>, 
	Olivia Mackall <olivia@selenic.com>, Herbert Xu <herbert@gondor.apana.org.au>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Dragan Simic <dsimic@manjaro.org>, Martin Kaiser <martin@kaiser.cx>, Ard Biesheuvel <ardb@kernel.org>, 
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_071114_938223_B02B405A 
X-CRM114-Status: GOOD (  27.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Sun, 23 Jun 2024 at 16:13, Aurelien Jarno <aurelien@aurel32.net> wrote:
>
> Hi,
>
> On 2024-06-23 09:00, Krzysztof Kozlowski wrote:
> > On 23/06/2024 05:33, Daniel Golle wrote:
> > > +
> > > +   rk_rng->rng.name = dev_driver_string(dev);
> > > +#ifndef CONFIG_PM
> > > +   rk_rng->rng.init = rk_rng_init;
> > > +   rk_rng->rng.cleanup = rk_rng_cleanup;
> > > +#endif
> > > +   rk_rng->rng.read = rk_rng_read;
> > > +   rk_rng->rng.priv = (unsigned long) dev;
> > > +   rk_rng->rng.quality = 900;
> >
> > I doubt in this value. Usually SoC vendors do not provide datasheet with
> > any reliable and verifiable (so one which could be proven by 3rd party)
> > information. Can you provide a source? (and vendor downstream tree does
> > not really count)
>
> As the original author of the patch, I am the one who have chosen the
> value. I did it as explained in the commit message:
>
> | The TRNG device does not seem to have a signal conditionner and the FIPS
> | 140-2 test returns a lot of failures. They can be reduced by increasing
> | RK_RNG_SAMPLE_CNT, in a tradeoff between quality and speed. This value
> | has been adjusted to get ~90% of successes and the quality value has
> | been set accordingly.
>
> It is also explained, admittedly more briefly, above the
> RK_RNG_SAMPLE_CNT #define, as the commit messages are not really
> relevant anymore once the patches are accepted:
>
> | * TRNG collects osc ring output bit every RK_RNG_SAMPLE_CNT time. The value is
> | * a tradeoff between speed and quality and has been adjusted to get a quality
> | * of ~900 (~90% of FIPS 140-2 successes).
> | */
>
> The decision to adjust RK_RNG_SAMPLE_CNT to reach ~90% of FIPS 140-2
> successes was based on the quality chosen by most hw_random drivers
> currently in the kernel sources. The FIPS 140-2 tests were performed
> using rngtest from the rng-tools project.
>
> All that said, I am not an expert in that domain, so feel free to point
> to the documentation or provide the correct method to determine the
> quality.
>
> Regards
> Aurelien
>
> [1] https://git.kernel.org/pub/scm/utils/kernel/rng-tools/rng-tools.git/

This is an old repository, the latest can be found below
[1] https://github.com/nhorman/rng-tools

However, I could not find the support from ARM and ARM64 in the repository below
because all the assembly is written for the X86 arch.

Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
