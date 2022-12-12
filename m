Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1459C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Dec 2022 12:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CEz4OwfyEA1ArcUZhxqJvZih/l6LNVDAcJWMQiTqTsM=; b=LEs8kNWOYKqDK8
	FCBsxOKf/OHhezvI4cEq9LU3zEU3jzgBlnSKSOgHLld/uI/nYJRyLTKVXOe1/JScM7z7jrkzEukiZ
	kFU4mxuMEIq2rSnEu5I0ZzwQ0/9tDw3GSzjfm+h9KWwhckoSZw7kZQ38C2+tQSLY43K57hzHdn26J
	IRCkEdFCcQoIkHqpzc1Fse439vWkHbLo9ePvEj5gQxCGmW9rJSN2aJLt8WVeGg7v/XsOWZzxNHecA
	+PW/Wm9VFPsnaBXAtbsOotUeJohdiMdc6mGXFZjtOWbDQ7ijfe7hWQIp7+2L69yJGtyQNLgN8E9PP
	ty14j86hpmU1gFTzPbgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4iAZ-00FnPD-T2; Mon, 12 Dec 2022 12:44:31 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4iAN-00Fn1r-Oq
	for linux-rockchip@lists.infradead.org; Mon, 12 Dec 2022 12:44:22 +0000
Received: by mail-wm1-x32e.google.com with SMTP id p13-20020a05600c468d00b003cf8859ed1bso5027586wmo.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Dec 2022 04:44:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=n7ey5OE4WbD1JahXkqzMDy7rEZ6qWxzQ6t8f0HPSRNs=;
        b=qUTeXZxuhuYycyobAALAsMsiPtMXWTK0cbENHii/uMQzfin6RsG6UXWghBAnEMZbX9
         pLTDHrCfmf+gaM4wx+Z3w+++qqLWsUHw2TiVPC+gX5u0WCqV/oBny6cbQDTjmibNQ/0L
         J2VSja4ME/RDtxUoM2MrSDnRXuqGITyuxog8Nc5kp+WrslUqLFD/0EizAilSrVAt9Nwr
         b+E6Ts0aE7K07sTpFRlyxkwNHxj3RTOJy3YVPY4whhl14QrkZsIUps3ML6uX2g/LmheS
         5gUiQg5x478OLPYtDTZ2U6RAJIKX7zrCS+HVXoTsDXHsfhgMWlVt3V4rxxTdZHsLYC36
         qM2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n7ey5OE4WbD1JahXkqzMDy7rEZ6qWxzQ6t8f0HPSRNs=;
        b=IJvGrcuC3YR4KM4Ap2tQgxTRMP73RjZG+Z6sHi6afgzzGUq2kQHOZb+bkh4LTJsE7i
         ArRicnkGjW3896kZGN8lQKwqdsNvSewYBb0V8Mjmepo4wnS6q//NP3s6vCUHOgEP9GH6
         8TFlTaGpMR4R9N5FGZv6ILJYFHU1pmq5Xk1COxIGcjR+cHjQyJuREBUE7hpqbtdC9avJ
         WJDGQvrgpfp0AK9hGsu+eOQ6s5snDL0N4E6ieBNfv1XjhcTOW3Am9WB1zFo8jkkfGjSy
         48dLuIK0+SfWqMG+rImqoYU+depsza400rh4PwJegDVTMOxjR0JQ747tLfShjEOEAcNl
         w3Zw==
X-Gm-Message-State: ANoB5pmUywpbFYThopbn1jKzF5WOkKR+GAKrmLTmJQGblokydZNpPVBy
	GktsmJJ1x00poQCEQNp+V49uwA==
X-Google-Smtp-Source: AA0mqf5LTY9uPSvi1G6cqxJF3CcL4A+t/hPjYQhFazq21Aj9/MjvP9uQfiQ6LD0UD5sXSAcK4yzQGw==
X-Received: by 2002:a05:600c:4691:b0:3d0:5254:8a43 with SMTP id p17-20020a05600c469100b003d052548a43mr15351923wmo.38.1670849057277;
        Mon, 12 Dec 2022 04:44:17 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id c1-20020a05600c0a4100b003d1e3b1624dsm10251490wmq.2.2022.12.12.04.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 04:44:16 -0800 (PST)
Date: Mon, 12 Dec 2022 13:44:13 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Rob Herring <robh+dt@kernel.org>
Cc: heiko@sntech.de, ardb@kernel.org, davem@davemloft.net,
	herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, sboyd@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 28/33] arm64: dts: rockchip: rk3399: add crypto node
Message-ID: <Y5ciHdLeB5rpnPqj@Red>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
 <20220927075511.3147847-29-clabbe@baylibre.com>
 <CAL_JsqJkHR+iccEf=5SU40Qq+cQpGZRq26TLzec-_Nr-Buu2KQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqJkHR+iccEf=5SU40Qq+cQpGZRq26TLzec-_Nr-Buu2KQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_044419_812897_655F07E5 
X-CRM114-Status: GOOD (  17.02  )
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

Le Sun, Dec 11, 2022 at 09:51:42AM -0600, Rob Herring a =E9crit :
> On Tue, Sep 27, 2022 at 2:56 AM Corentin Labbe <clabbe@baylibre.com> wrot=
e:
> >
> > The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
> > node for it.
> >
> > Tested-by Diederik de Haas <didi.debian@cknow.org>
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot=
/dts/rockchip/rk3399.dtsi
> > index 92c2207e686c..4391aea25984 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> > @@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
> >                 status =3D "disabled";
> >         };
> >
> > +       crypto0: crypto@ff8b0000 {
> > +               compatible =3D "rockchip,rk3399-crypto";
> > +               reg =3D <0x0 0xff8b0000 0x0 0x4000>;
> > +               interrupts =3D <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
> > +               clocks =3D <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>=
, <&cru SCLK_CRYPTO0>;
> > +               clock-names =3D "hclk_master", "hclk_slave", "sclk";
> > +               resets =3D <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, =
<&cru SRST_CRYPTO0_M>;
> > +               reset-names =3D "master", "lave", "crypto";
> =

> This doesn't match the binding:
> =

> crypto@ff8b8000: reset-names:2: 'crypto-rst' was expected
> crypto@ff8b0000: reset-names:2: 'crypto-rst' was expected
> crypto@ff8b0000: reset-names:1: 'slave' was expected
> =


Hello

I will send a patch to fix that

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
