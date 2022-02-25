Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80CA1C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 18:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qhZFRdrOSGDilBDx7g/ePeXzw61jjkDIbG9gg0acbLU=; b=s/0MsXosBN9DiW
	DYTIek99n7/Tjm9I7iJGCBTeDihQJfJb7FCcWLOdAun68qVkgMiZNFLJGtXe8oLtZjwYkit7OKpCA
	mZW5EUSeOJW0y5Q2pzrpq62o5m9MdHQSIOSGX7/rmGoPJxE3grJWE56cCFc1ZO9+oOXBFEXfrJOYE
	gcpPJU/hJOrovgXANmqXDpvRyRYscVS2GE6GsdNnD/eVkrXOZH2QVozBBMs4oG9M3yTl/ogLvKbHj
	I0nkFqCypHh7zKfWJHPxN4AkCtFy8wQBoMFnaOQsLwGkMbolD5oxLCjEp3bJrpwpXvcr54K1Tykw0
	RRCMaO86K8HkCcDd3NdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNfGu-006a0h-Jv; Fri, 25 Feb 2022 18:24:52 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNex5-006RnQ-9N; Fri, 25 Feb 2022 18:04:25 +0000
Received: by mail-yb1-xb31.google.com with SMTP id j12so7405704ybh.8;
 Fri, 25 Feb 2022 10:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KojlstE2lgoa7NRwY6/3wf4IDjFuyhSCMnLIbiB/VXw=;
 b=YsJOaByGxkVsWmlo3S060z6DNQE5Lpo0T52+WHe1QFVq1Np/PzH3I0i2xuV7aTMy/u
 Q1kmPlvlBiL69lnqJu3XUV9IHW/Y6GcTXKhgAM1qqT6wqsIj5rTBMmRmp21nuQFG5MpD
 iNDjQwEKh+b1yixh5b2jucpDw07D4LnYEuF4EtPK1iwjS7YEAgim+pnTWQT4rzvu5NL8
 bCGymTsqjS6dXsUCatOsKzhYDnZN9c/0eSSoQEMulK5c5H8EhwhsC1SKteesQcz9uWMN
 vazLu5uvqbP7OcmwtOu9xS+UARj3g9EIIvGU+mCXuoaLWkhMFQXOoBhGr1GnHmDWLZHl
 qXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KojlstE2lgoa7NRwY6/3wf4IDjFuyhSCMnLIbiB/VXw=;
 b=K1mB5CIGFWqbKhEbQo1eL3fL4MB5Q9eggHLMf7WkAseidIeClugg68zZHsvnW1zfCj
 IR3OX83fRoxySVsILUta9Z43ZFbfO2H1TvN2M0n1vvrozBeDL3fT6vYSVW5S9xgSp0Vf
 3QvtzxeynJdfALsz0b6VCqQ5CXliTkuM+GCHMTB2CH6wwfYBGQoHOepdteiFVdZGSOB3
 B2W6tHejVvkow/0OEu8Ptr/I9nZbhcTyw7S5c8Ve5BsCN6qTiJPtHskjtjjs+FNaCQOj
 Pz2QKWLyXgkKb95nUyu+nmLqxoGN+HQRnj5cypJo42JIo6lVZ0m5QA2zZ7fgbp3WygK5
 dt1A==
X-Gm-Message-State: AOAM530S6ZlmEZcVvQ5ogYtP4i4Q5VXVFWA8IRYCV4EjxXih/amSnatP
 JmjDhaOju+f3/O6v6NdXAvSnH1Pi6nQmSFWqNCs=
X-Google-Smtp-Source: ABdhPJyqs/M2Em3/HU+NEY5CE3n65PJxyF06pbxASaTFZx+ohua2HRsbXo6S+rdEcQ6h3e4hUCuCMghFj0B5Kj/71MA=
X-Received: by 2002:a25:5d0:0:b0:61d:932b:6fc0 with SMTP id
 199-20020a2505d0000000b0061d932b6fc0mr8506142ybf.585.1645812261673; Fri, 25
 Feb 2022 10:04:21 -0800 (PST)
MIME-Version: 1.0
References: <20220225145432.422130-1-pgwipeout@gmail.com>
 <20220225145432.422130-3-pgwipeout@gmail.com>
 <5cca79dc-619c-a162-e850-b3efd4dc746d@gmail.com>
In-Reply-To: <5cca79dc-619c-a162-e850-b3efd4dc746d@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 25 Feb 2022 13:04:10 -0500
Message-ID: <CAMdYzYo81L5YnLr=whBbqde--e_DSuSwSPaXuDwtzeXN7pLMwQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] dt-bindings: usb: dwc3: add description for rk3568
To: Johan Jonker <jbx6244@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 linux-usb@vger.kernel.org, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_100423_380158_78EE7F07 
X-CRM114-Status: GOOD (  28.09  )
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

On Fri, Feb 25, 2022 at 11:07 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Peter,
>
> Lots of USB series all of a sudden.
> Combine possible?
>
> On 2/25/22 15:54, Peter Geis wrote:
> > The rk3568 dwc3 controllers are backwards compatible with the rk3399.
> > Add the device tree description for it.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > index 04077f2d7faf..e3044e81cc72 100644
> > --- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > +++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
> > @@ -30,6 +30,7 @@ select:
> >          enum:
> >            - rockchip,rk3328-dwc3
> >            - rockchip,rk3399-dwc3
> > +          - rockchip,rk3568-dwc3
> >    required:
> >      - compatible
> >
> > @@ -39,6 +40,7 @@ properties:
> >        - enum:
> >            - rockchip,rk3328-dwc3
> >            - rockchip,rk3399-dwc3
> > +          - rockchip,rk3568-dwc3
> >        - const: snps,dwc3
> >
> >    reg:
> > @@ -75,7 +77,10 @@ properties:
> >      maxItems: 1
> >
> he
> >    reset-names:
> > -    const: usb3-otg
> > +    items:
> > +      - enum:
> > +          - usb3-otg
> > +          - usb3-host
>
> The use of reset-names is "sort of" only related to the rk3399 legacy
> node. Still using this sub node DT to not to break older existing boot
> loaders.
>
> https://github.com/torvalds/linux/search?q=usb3-otg
>
> It's only mentioned as comment in dwc3-of-simple.c but not used:
>
>         simple->resets = of_reset_control_array_get(np, false, true,
>                                                     true);
> core.c uses something similar.
>
>         dwc->reset = devm_reset_control_array_get_optional_shared(dev);
>         if (IS_ERR(dwc->reset))
>                 return PTR_ERR(dwc->reset);
>
>
> Up to the maintainers, but I wouldn't add another variant/name for the
> same thing as it also optional(= not required) and no longer needed.

I left these named separately since they are different reset signals,
but if it isn't an issue I don't mind having them both be usb3-otg.

>
> Johan
>
> ===
>
> Maybe drop PCLK_PIPE as well to reduce notifications.

I'll be conducting testing to determine if we need PCLK_PIPE here, and
as long as it isn't working simply because it's enabled by someone
else I'll drop it.
Ideally, it would be nice to have a proper clock map for these chips,
but currently that's not in the TRM.

>
> See example:
> https://lore.kernel.org/linux-rockchip/20220225131602.2283499-4-michael.riesch@wolfvision.net/T/#u
>
> >
> >  unevaluatedProperties: false
> >

Thanks for the review!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
