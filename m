Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FF78C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Dec 2021 22:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSvqGjQk/uHLVy8VEcp2Be1bjiaW02KqSp0LKgHb4+E=; b=dNJafzFvR2oKwx
	6I5Lj7lcKmdkssO+Vg0ouxHLoeCUZlEBpBHAFqk9HwwoR09TA5izFsvi80n8rij1/UiTR3urSpzTb
	PTci3Va+ltcsvdizndb7R79/ep/Y7VhtSOR0znY1H1hKljqZbo31oD96V1lT9SilUC2Oik6+w6g/D
	jOXzkuLCsjXPy/7/MUIfvA7QjKz6YbQm4eGyVGbjlcVyt+UZE0X6rVcPIVfj9yrcouVAODJvHmEml
	NnxCBKMmXx3sdKbRtpqDAfSxw8MNIK75dshRBUDg8fJwB5Kcd1/gO3IIxjFgRRBMrORENXz25pQgm
	FWHUX42DoZoek9LFDEhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwuHT-00BtaK-Oo; Mon, 13 Dec 2021 22:58:51 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwu9z-00Brox-Oh; Mon, 13 Dec 2021 22:51:09 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 x19-20020a9d7053000000b0055c8b39420bso19090746otj.1; 
 Mon, 13 Dec 2021 14:51:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=TXNuhThSZzYh5dHlQEsy87eUYOOCcMvcopbthlMlzi0=;
 b=G2jaFwGbAO5ctRjdNDGHY4nWPR1dWjEuNrBheC2I7/3GUNkz/GsHxp9W3osnxCSDUR
 FnQbBg9lHjuDWCGvvtqyJasijR2wjVqHPJdLIoxOapG1KOrsOi6ijUpSBd2znTRupTuv
 wQvjDE52ZfzcYWINuRXjeyRgxc7JBPhXdGekcXrP8mVMtiaJ6WjGP46FEJZJ4ZNNyOjN
 xl/UsLz30lp5Kn6MJAECJcH63e0VagfuFLVzX/hPCTJQgJ7q+2bhcBdAajO2Yvo7Mm1j
 aac3QWglroOh/mb0Z9kSSAlRGz80gfJP97eLBlr5JAkHcW+4/0mRCBpWCQrVyRgymPfH
 aD4g==
X-Gm-Message-State: AOAM531EIAmzEvIKk6JlHOJLc4HTGncYBdk7y/cW+5CBW+efAgvwUcYd
 36yewyxdc68Jo3X1cRYO3w==
X-Google-Smtp-Source: ABdhPJxCfZL3SzReunSYLPdv6bxyyePW0yFhigNTzi/mCZehsa7+8nCDGdg/U+lRD5jiU+CUp/zDpg==
X-Received: by 2002:a9d:77d1:: with SMTP id w17mr1156068otl.329.1639435867068; 
 Mon, 13 Dec 2021 14:51:07 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id e4sm1490630oiy.12.2021.12.13.14.51.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Dec 2021 14:51:06 -0800 (PST)
Received: (nullmailer pid 1725465 invoked by uid 1000);
 Mon, 13 Dec 2021 22:51:05 -0000
Date: Mon, 13 Dec 2021 16:51:05 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, - <opensource@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, ~okias/devicetree@lists.sr.ht,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: convert power domain node for rockchip DW
 MIPI DSI
Message-ID: <YbfOWXZJAZDuEU1V@robh.at.kernel.org>
References: <20211206212651.126405-1-david@ixit.cz> <26502781.jAYDHVeSjN@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <26502781.jAYDHVeSjN@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_145107_856350_8D7144DB 
X-CRM114-Status: GOOD (  17.30  )
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

On Sat, Dec 11, 2021 at 11:55:58AM +0100, Heiko St=FCbner wrote:
> Hi David,
> =

> Am Montag, 6. Dezember 2021, 22:26:50 CET schrieb David Heidelberg:
> > Convert into YAML format into format, which can be validated.
> > =

> > Changes:
> >  - drop panel from example
> =

> the patch subject is strange, talking about a "power domain node".
> That needs a fix.
> =

> Some more things below.
> =

> =

> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - rockchip,px30-mipi-dsi
> > +              - rockchip,rk3288-mipi-dsi
> > +              - rockchip,rk3399-mipi-dsi
> > +          - const: snps,dw-mipi-dsi
> =

> > +      - items:
> > +          - const: rockchip,px30-mipi-dsi
> > +      - items:
> > +          - const: rockchip,rk3288-mipi-dsi
> > +      - items:
> > +          - const: rockchip,rk3399-mipi-dsi
> =

> what are these for?
> =

> I see that px30 uses the dsi without the snps part, but you
> can also just add a patch adding that second compatible to px30.dtsi

Or drop snps,dw-mipi-dsi as it doesn't seem to be all that meaningful. =

But I guess that's more invasive so maybe stick with changing px30.

> =

> I don't think we need to support both ways.

Agreed.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
