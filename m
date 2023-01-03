Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7FF8C3DA7D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 19:24:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cynRuy2DzJZWb6+oJpL/pYeOUMWwAQOOKKtBRZsbLn4=; b=3tZCYkdkCSgvFe
	o5qmicqhQxBlciqV1iIzX0Mn3LC7K2COzVm13I+y/aPioIzNwhQM0NEgY30NFCWykSmhraqVTtAN1
	XM2xpxi4hsdHExNLit8ViNf6WIDe+MNtPZCS+SwVGWUO26GBTdPhuVlx7crxzLTiDe0rEj9JxeTFz
	h+CRnCHtYrTrQ8sCbtSifmEvmzP5znaUi4ZQBMpK8vBEbhOhKZoG7aIRVdvzt9xP7pNlUjwiU2OIm
	O1deTSD/YOpyO75XoLxIU7HEFPGekthOjF1YtH7ltZ9IeMNgT/zjogjuzbb+rQxqarfVvupyzEVNw
	+sig3U77p/YbF2LcMajw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmt5-004MkG-Gd; Tue, 03 Jan 2023 19:23:51 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmVF-004918-2P; Tue, 03 Jan 2023 18:59:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2AF3AB80FEE;
	Tue,  3 Jan 2023 18:59:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE05DC433D2;
	Tue,  3 Jan 2023 18:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672772349;
	bh=+CJk9OwSCEk1H/q4t+TF4/vkdk8PvOEpM8L7jWrZOjY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HXhSvzMTqih359QbIxXdEIubg8JzAxZNkH/B6vmJPb2c83zUxlSbv05qAAdM3AqFZ
	 RNsw6Yld/pCkKtNLx7J8sbT9vAoum/XkGKT8FtL6pHR70wr9pB+i9bhplgbtXK+W2A
	 W9lIh+rQhP15L28U8ETt5QyyWUDYPgpWTZa3yWY0vvACcRqQmO9V24itMM6Hr/u0Xe
	 uBH5pAUtuv09Lr0709haFcc9JlmebobKwechcad7RbIzxxXwt8o0KK+c4yw79wIwAq
	 4GL3DEJ3pVlHF+y2YoTM4zdUDx9z4qMF66Z1AjQP5gKeoA785mZp0Mb20u64PiHzke
	 RrezfG9sGho/g==
Received: by mail-vs1-f45.google.com with SMTP id m129so26917447vsc.11;
        Tue, 03 Jan 2023 10:59:09 -0800 (PST)
X-Gm-Message-State: AFqh2kpnAyCdRl9zTTU9WpYkB8eTOt5D5WJVnaG7y5cTKDaiQkMvFPR9
	Iio9J+yZxONdG/na6AT0WLrPmQsHHfDzLQlZrw==
X-Google-Smtp-Source: AMrXdXt30e7MO4nUMxWQHE6eLMPSl7qMY4TL2xhtIPpuWB6pfg5JetNnhvd0qb+pRf12HhvnIWpNMXq7DfSUX1oyzqI=
X-Received: by 2002:a05:6102:3546:b0:3c8:a6ed:faa8 with SMTP id
 e6-20020a056102354600b003c8a6edfaa8mr3777310vss.85.1672772348793; Tue, 03 Jan
 2023 10:59:08 -0800 (PST)
MIME-Version: 1.0
References: <20221219191038.1973807-1-robh@kernel.org> <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
 <87o7rlffi7.fsf@balbi.sh> <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
 <87k028g6ol.fsf@balbi.sh>
In-Reply-To: <87k028g6ol.fsf@balbi.sh>
From: Rob Herring <robh@kernel.org>
Date: Tue, 3 Jan 2023 12:58:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKjrXsz6hak2rG3GMKaOot4azDWpYCOsQmdVtmszN1WQw@mail.gmail.com>
Message-ID: <CAL_JsqKjrXsz6hak2rG3GMKaOot4azDWpYCOsQmdVtmszN1WQw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains property
To: Felipe Balbi <balbi@kernel.org>
Cc: Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Heiko Stuebner <heiko@sntech.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Johan Jonker <jbx6244@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_105914_059857_13451D0A 
X-CRM114-Status: GOOD (  31.31  )
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

On Fri, Dec 30, 2022 at 11:09 AM Felipe Balbi <balbi@kernel.org> wrote:
>
>
> Hi,
>
> Rob Herring <robh@kernel.org> writes:
> >> >> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> >> >> > >> >  1 file changed, 3 insertions(+)
> >> >> > >> >
> >> >> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> >> >> > >> > index 6d78048c4613..bcefd1c2410a 100644
> >> >> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> >> >> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> >> >> > >> > @@ -91,6 +91,9 @@ properties:
> >> >> > >> >          - usb2-phy
> >> >> > >> >          - usb3-phy
> >> >> > >> >
> >> >> > >> > +  power-domains:
> >> >> > >> > +    maxItems: 1
> >> >> > >>
> >> >> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> >> >> > >> maintainer to get comments.
> >> >>
> >> >> Felipe is correct. We have 2 power-domains: Core domain and PMU.
> >> >
> >> > Power management unit? Performance management unit?
> >> >
> >> > That doesn't change that the rk3399 is 1 and we're stuck with it. So I
> >> > can say 1 or 2 domains, or we add the 2nd domain when someone needs
> >> > it.
> >>
> >> Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
> >> the world? In that case, dwc3 expects 2 power domains. It just so
> >> happens that in rk3399 they are fed from the same power supply, but
> >> dwc3' still thinks there are two of them. No?
> >
> > Yes. That is how bindings *should* be. However, RK3399 defined one PD
> > long ago and it's an ABI. So we are stuck with it. Everyone else put
>
> Are you confusing things, perhaps? DWC3, the block Synopsys licenses,
> has, as Thinh confirmed, 2 internal power domains. How OEMs (TI, Intel,
> Rockchip, Allwinner, etc) decide to integrate the IP into their systems
> is something different. That is part of the (so-called)
> wrapper. Different integrators will wrap Synopsys IP however they see
> fit, as long as they can provide a suitable translation layer between
> Synopsys own view of the world (its own interconnect implementation, of
> which there are 3 to choose from, IIRC) and the rest of the SoC.
>
> Perhaps what RK3399 did was provide a single power domain at the wrapper
> level that feeds both of DWC3's own power domains, but DWC3 itself still
> has 2 power domains, that's not something rockchip can change without
> risking the loss of support from Synopsys, as it would not be Synopsys
> IP anymore.

Again, none of this matters. I'm documenting what is already in use
and an ABI, not what is correct. The time for correctness was when
this binding was added.

To move forward, how about something like this:

power-domains:
  description: Really there are 2 PDs, but some implementations
defined a single PD.
  minItems: 1
  items:
    - description: core
    - description: PMU

We unfortunately can't constrain this to Rockchip in the schema
because that specific information is in the parent node.

(kind of crappy descriptions too, but that's the amount of information I have.)

> > power-domains in the parent because obviously the DWC3 has 0
> > power-domains.
>
> How did you come to this conclusion?

By testing the schema against the in tree .dts files. To date, no one
other than Rockchip has power-domains in the DWC3 node.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
