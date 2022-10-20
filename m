Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B1DC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 12:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PWUygPQeohHV0ixXxjEb3sE3q73r4F+SdwiCiHKzHJ0=; b=pTOHUJe5i8vQwW
	ZrQyEEo3os6ZMEFgIoIUuTPZ2eQoCptBbcBy7uIGXq0j/OYzpns3EyWcCCNS2AwE8atq8czWOc1VV
	F+qrIEt61gs6wtjmCMoVigKNK6yF/aXNAQz04ZUevgh8JhVTCTrIQ4x3aptq1J2vSRJhPgQaqqTzg
	karf3O4082um9PaMD2vhoDmu6yjUJbBoZ+8zdPGy4C0AHBCrB0nPKrDDE1M3xqxeHPR/LGf7ilKIR
	YdAE/HaX+ZQlQ7UcC5MFXkn9nDwAq3jDc//TFZMQP0+0rN9EagMOU9cq//ztddR6kjzNxdlNTgag4
	vvPBa6xjQnjA8hdIZaRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olUTq-00Edy7-4f; Thu, 20 Oct 2022 12:16:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olTf0-00E2iI-FQ; Thu, 20 Oct 2022 11:24:28 +0000
Received: from p57b7734d.dip0.t-ipconnect.de ([87.183.115.77] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1olTev-00062S-61; Thu, 20 Oct 2022 13:24:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michele =?ISO-8859-1?Q?Zuccal=E0?= <ardutu@gmail.com>
Cc: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Alex Bee <knaerzche@gmail.com>, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
Date: Thu, 20 Oct 2022 13:24:20 +0200
Message-ID: <5768534.MhkbZ0Pkbq@phil>
In-Reply-To: <CAK1Nf75B-4wzM3pafaOVHCD9WugT3YPjphbEq25-WLRGh3Jhbw@mail.gmail.com>
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <9009700.CDJkKcVGEf@phil> <CAK1Nf75B-4wzM3pafaOVHCD9WugT3YPjphbEq25-WLRGh3Jhbw@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_042426_564149_BA1D37BF 
X-CRM114-Status: GOOD (  18.50  )
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

Hi Michele,

Am Donnerstag, 20. Oktober 2022, 13:13:10 CEST schrieb Michele Zuccal=E0:
> > no worries, we'll get you through it :-)
> >
> =

> thank you
> =

> >
> > actually you want to go the following route:
> >
> > (1) pick up
> > - https://lore.kernel.org/all/20220927075511.3147847-25-clabbe@baylibre=
.com/
> > - https://lore.kernel.org/all/20220927075511.3147847-26-clabbe@baylibre=
.com/
> > as a base to work on
> >
> > (2) create a patch to add your compatible.
> > I _think_ after that, the compatible block should looks
> > something like:
> >
> >   compatible:
> >     oneOf:
> >       - const: rockchip,rk3288-crypto
> >       - const: rockchip,rk3328-crypto
> >       - const: rockchip,rk3399-crypto
> >       - items:
> >           - const: rockchip,rk3228-crypto
> >           - const: rockchip,rk3288-crypto
> >
> > to handle the new dual element compatible.
> >         make dt_binding_check
> > should tell you about a wrong format.
> >
> > (3) modify your dts patch to use the two compatibles
> > (4) export patches by
> >         git format-patch -2 --cover-letter
> > and mention in the cover-letter the dependency on the
> > yaml conversion.
> =

> very clear. But excuse the stupid question, this way it becomes a new pat=
chset
> and not the v2 of this patch, right?! Will this patch be automatically
> ignored ?!

The new patchset still should become v2, as it still addresses
your overall goal of adding crypto support for the rk3228.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
