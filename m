Return-Path: <SRS0=wP8P=PD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 760ECC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:33:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 310B260EE2
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Oct 2021 21:33:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 310B260EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXmVjhTU9v7UM2Ly4Xh81BsNYjbA+ik1QVVOiqfnCyo=; b=TxErx1RsvHFasM
	qW+1di/y0y1xlQZ4Sm2HgkH+pwQ64i3vEnYqxKnjgfzdqwW2f5M0xh6TE0ZJ5DBwkHxZbwIh4Noc4
	R0C8H5S8/GhRhOHbBUbieTiqmmj8cUUdFRgx7Cy3t3f5UsjRYpLeWwGafUASUK1kgcF/f9z2a38Gt
	dTJKjreEmiXTvusNheysZVvsqWJgDzOGouL+f4cB98FrRQNaQ/VM6uucn75GH7HoXCF40RlQF0Vst
	azM7jj2Fkk42U1SEK7fiuDFPJ2KOCODlL3/bQQcDFln9a+FxBQEVV6lqqQGubTTPI6WIsp8Vq0aOb
	hmuJy1R/y3Nt/TLbpq1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbUpk-008pRC-Ut; Fri, 15 Oct 2021 21:33:44 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbUpi-008pOp-6x; Fri, 15 Oct 2021 21:33:43 +0000
Received: by mail-lf1-x130.google.com with SMTP id x27so47346335lfu.5;
 Fri, 15 Oct 2021 14:33:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gix2t0OaFc3liLwqh7FD+UgpYjMWRC2yF5wlNLCRBI8=;
 b=qis8HY5aJowC4EqJFx3MOPhEGhcXjXhZTpVf0O0ZaJ8dAFgGw91o/hVODkU7FRxcw6
 AZU8vc1BfB4zTjM1P62wns5tOI3qN2C+s4pQ1Wsy7bv7gKL7jKc2hWKLs86XVr4W4TUT
 h5GijvI+PE96P1JI/y2GSZq49aFy6a6+/4SPzO/ECa11w6Y/Kv6VmU9qceSy5gDjzk8o
 pnepTbIkXzhYSl8fZ83W2Z3QQXtAUBpmlgoDMhpCXuKK0p9NHv69rY9hNa2BbT6Eg8it
 MsEqAMGICMa6VJqyKAXdLuPQ4xTTE1dI1LqDGKMGRp/pg/8J7tVBDb3taihP7FUws+6E
 ilHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gix2t0OaFc3liLwqh7FD+UgpYjMWRC2yF5wlNLCRBI8=;
 b=vUmvW0HWK/RQcPAOPBYmM/tbFOdDBFtMSox18snhPr51aq/C4H8bqPf4nXf1GhbI2C
 GhaL5TZjJ6FHS9bFwfnnjSv+hESWBV82dtxYDGph59cROlTlfwsiRw9WNkihg6NBSP6+
 EXYcLr0Ht09p86nNAtQea+kce4ztNsCDqx+OT4C2FBGV2tCMxHJG5G+JqwT+FZt7u6V4
 pi3zLsgZrDWDDAb9GidvPhrKcDdinlieP9I2tvdZGDuTwo3Fw+E78isq9wJjuKEozP9w
 A4BVSYSTsaYK61RrawL0NQIAbhal5uOtjXDoStj57iAbVqDyplaDv12WvOp8rJVYSQzV
 TJew==
X-Gm-Message-State: AOAM5312e8nlPSayrszN9AHcuBK7gGm1LUOPUwXPLbXnlkvC9I0s7u3A
 WRhTQ+Y69pbNTC/DhM8VbVY=
X-Google-Smtp-Source: ABdhPJyGE7Et43k/hdPxjdpBoYE8kfL5iTjenGOdjS4PvWxGzZHpGXrxlrYYk3a+u1/JkqbbVxvBCQ==
X-Received: by 2002:a05:6512:3b94:: with SMTP id
 g20mr13375031lfv.77.1634333616241; 
 Fri, 15 Oct 2021 14:33:36 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id f23sm689425ljn.110.2021.10.15.14.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Oct 2021 14:33:35 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Robin Murphy <robin.murphy@arm.com>
Cc: Rob Herring <robh@kernel.org>, linux-rockchip@lists.infradead.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip: i2s-tdm: fix rockchip,
 cru requirement
Date: Fri, 15 Oct 2021 23:33:34 +0200
Message-ID: <2236749.301RoY5kYM@archbook>
In-Reply-To: <8553b0cd-95e4-c3db-c75a-d3b28e99f131@arm.com>
References: <20211015143115.1445707-1-frattaroli.nicolas@gmail.com>
 <8553b0cd-95e4-c3db-c75a-d3b28e99f131@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211015_143342_312393_DDDDA24F 
X-CRM114-Status: GOOD (  24.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Freitag, 15. Oktober 2021 19:44:56 CEST Robin Murphy wrote:
> On 2021-10-15 15:31, Nicolas Frattaroli wrote:
> > The behaviour described in the bindings is exactly the opposite
> > of what it should be, so this patch fixes the description and
> > adjusts the if conditions for adding rockchip,cru to required.
> > 
> > Fixes: 510f1c133aed ("ASoC: dt-bindings: rockchip: add i2s-tdm bindings")
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> > 
> >   .../devicetree/bindings/sound/rockchip,i2s-tdm.yaml   | 11 ++++++++---
> >   1 file changed, 8 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> > b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml index
> > ce3e18b50230..93f5221e9381 100644
> > --- a/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> > +++ b/Documentation/devicetree/bindings/sound/rockchip,i2s-tdm.yaml
> > 
> > @@ -86,7 +86,7 @@ properties:
> >       $ref: /schemas/types.yaml#/definitions/phandle
> >       
> >       description:
> >         The phandle of the cru.
> > 
> > -      Required if neither trcm-sync-tx-only nor trcm-sync-rx-only are
> > specified. +      Required if either trcm-sync-tx-only or
> > trcm-sync-rx-only are specified.> 
> >     rockchip,grf:
> >       $ref: /schemas/types.yaml#/definitions/phandle
> > 
> > @@ -147,8 +147,13 @@ required:
> >   allOf:
> >     - if:
> >         properties:
> > -        rockchip,trcm-sync-tx-only: false
> > -        rockchip,trcm-sync-rx-only: false
> > +        rockchip,trcm-sync-tx-only: true
> > +    then:
> > +      required:
> > +        - rockchip,cru
> > +  - if:
> > +      properties:
> > +        rockchip,trcm-sync-rx-only: true
> 
> FWIW, isn't this just a long-winded way to say
> 
>    if:
>      anyOf:
>        - properties:
>            rockchip,trcm-sync-tx-only: true
>        - properties:
>            rockchip,trcm-sync-rx-only: true
> 
> which itself could still be more concisely
> 
>    if:
>      not:
>        properties:
>          rockchip,trcm-sync-tx-only: false
>          rockchip,trcm-sync-rx-only: false
> 
> ?

Hi Robin,

you are absolutely correct. I'm not very familiar with dtschema yet,
so I mostly just did what I know would work, as I didn't know about
"not" or "anyOf" in this context.

However I don't think this patch is going to get a V2 because I may
have found a way to easily get rid of the CRU property altogether,
making this patch sort of obsolete in the very near future.

Thank you for your review nonetheless, I learned some more dtschema
today thanks to it. :)

> 
> Robin.
> 
> >       then:
> >         required:
> >           - rockchip,cru

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
