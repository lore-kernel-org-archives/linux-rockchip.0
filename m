Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B341C54EBD
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 20:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cmsXskIketmSXdghqDfCBPGp48qUzck1WWWNuHKxMo8=; b=4tAILlsDtR37s2
	aIjzam1iiPBZTH3oxVkCNbyXmjpFhaZXKgQ6yCdYqddjRO6UV48GPLMw0zRvDwDOiV47ZsQ22Hq/b
	dtxYhBzY5qHRVxQrXOLeILn6S8xU1gKRXmv7PHxWtJZW93oqLHWEY7l/3AdtTzSO7rpfcsTE8tthT
	vUPFmZvLRUgZKo0kixuCKnjQO9tqWOTSkkshCFq38kotUsYo0Y2AMAcidjpnTk0Ie3s+t571HdoR/
	9Zwek+y25llmLdv0+CGDd8Opilc3AhUd/bT8SVpeaG5wGz2hqA0i6LbLyo9kDekQJW71+u9IODMFJ
	LxNbDHtfq1/8F3MVp+4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyzU-003xMc-F1; Mon, 09 Jan 2023 20:43:32 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEyzB-003xI2-6K; Mon, 09 Jan 2023 20:43:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id CF17CB80FE1;
	Mon,  9 Jan 2023 20:43:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B40AC43398;
	Mon,  9 Jan 2023 20:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673296990;
	bh=8Le0HxyQ1hvS52eAoweCLxxf9X4TqmN17EpbgjPbkhQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=kA3tlsjNZxtuRffwjcyWZjv9MwD9h8wHCPiHmolj/RHcDPDHnqYt6+ABAbYzB5RTR
	 YNkDS8gLFLoQrVaor8JNsPjY2AoxLFZC4WSX3vKL/8jTevgyJTwBKROMeJBls8vxs4
	 mdoKwp5lpylrBMRumvWRvLCcUZzEpwP6V4ivQpSefZEV1HnIVnDWOfSV36aJOMu32U
	 3FUHN8p+IQIBoEcIWGs2BGjKF+J5XOhLBQAKQVlsc9ENbKTcbvmbWSipUY+/LlZP/Z
	 z1oYbz0h4mWlvb21yxG1I7W0tEGvUsZrl/qbKx0x0nidSkScbYNzPzbNa+6lRSgHrs
	 swug+t0xVeVJQ==
Received: by mail-vk1-f172.google.com with SMTP id q141so1973460vkb.13;
        Mon, 09 Jan 2023 12:43:10 -0800 (PST)
X-Gm-Message-State: AFqh2kpMaAf51MY9+wjX+WWh51w3tOFmwczkBPJRvSEu/azgj0XkSw9S
	O3cGy2+CLfqnHGEiAghPrBHIM87ZNI/9tndJbw==
X-Google-Smtp-Source: AMrXdXtKHlPsJVq6VwhjeerV8r1su/+h8wjs3OgcrdF35UE0ccjT3YhB5F0EFrEaRdkuT2b6Ohu5yCwEU52xKhhJ7Bo=
X-Received: by 2002:a1f:1c55:0:b0:3d5:d30f:81c2 with SMTP id
 c82-20020a1f1c55000000b003d5d30f81c2mr3979357vkc.14.1673296989386; Mon, 09
 Jan 2023 12:43:09 -0800 (PST)
MIME-Version: 1.0
References: <20221219191038.1973807-1-robh@kernel.org> <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
 <87o7rlffi7.fsf@balbi.sh> <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
 <87k028g6ol.fsf@balbi.sh> <CAL_JsqKjrXsz6hak2rG3GMKaOot4azDWpYCOsQmdVtmszN1WQw@mail.gmail.com>
 <20230109194004.yqaqslcwnqqywkr3@synopsys.com>
In-Reply-To: <20230109194004.yqaqslcwnqqywkr3@synopsys.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 9 Jan 2023 14:42:57 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLE+v7LkDk_TG_=aT3mUeGb8eVnJmeKLz5w1XmfVPkHeQ@mail.gmail.com>
Message-ID: <CAL_JsqLE+v7LkDk_TG_=aT3mUeGb8eVnJmeKLz5w1XmfVPkHeQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains property
To: Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: Felipe Balbi <balbi@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Johan Jonker <jbx6244@gmail.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_124319_210327_27A00735 
X-CRM114-Status: GOOD (  44.97  )
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

On Mon, Jan 9, 2023 at 1:40 PM Thinh Nguyen <Thinh.Nguyen@synopsys.com> wrote:
>
> On Tue, Jan 03, 2023, Rob Herring wrote:
> > On Fri, Dec 30, 2022 at 11:09 AM Felipe Balbi <balbi@kernel.org> wrote:
> > >
> > >
> > > Hi,
> > >
> > > Rob Herring <robh@kernel.org> writes:
> > > >> >> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> > > >> >> > >> >  1 file changed, 3 insertions(+)
> > > >> >> > >> >
> > > >> >> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > > >> >> > >> > index 6d78048c4613..bcefd1c2410a 100644
> > > >> >> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > > >> >> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > > >> >> > >> > @@ -91,6 +91,9 @@ properties:
> > > >> >> > >> >          - usb2-phy
> > > >> >> > >> >          - usb3-phy
> > > >> >> > >> >
> > > >> >> > >> > +  power-domains:
> > > >> >> > >> > +    maxItems: 1
> > > >> >> > >>
> > > >> >> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> > > >> >> > >> maintainer to get comments.
> > > >> >>
> > > >> >> Felipe is correct. We have 2 power-domains: Core domain and PMU.
> > > >> >
> > > >> > Power management unit? Performance management unit?
> > > >> >
> > > >> > That doesn't change that the rk3399 is 1 and we're stuck with it. So I
> > > >> > can say 1 or 2 domains, or we add the 2nd domain when someone needs
> > > >> > it.
> > > >>
> > > >> Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
> > > >> the world? In that case, dwc3 expects 2 power domains. It just so
> > > >> happens that in rk3399 they are fed from the same power supply, but
> > > >> dwc3' still thinks there are two of them. No?
> > > >
> > > > Yes. That is how bindings *should* be. However, RK3399 defined one PD
> > > > long ago and it's an ABI. So we are stuck with it. Everyone else put
> > >
> > > Are you confusing things, perhaps? DWC3, the block Synopsys licenses,
> > > has, as Thinh confirmed, 2 internal power domains. How OEMs (TI, Intel,
> > > Rockchip, Allwinner, etc) decide to integrate the IP into their systems
> > > is something different. That is part of the (so-called)
> > > wrapper. Different integrators will wrap Synopsys IP however they see
> > > fit, as long as they can provide a suitable translation layer between
> > > Synopsys own view of the world (its own interconnect implementation, of
> > > which there are 3 to choose from, IIRC) and the rest of the SoC.
> > >
> > > Perhaps what RK3399 did was provide a single power domain at the wrapper
> > > level that feeds both of DWC3's own power domains, but DWC3 itself still
>
> Just for some additional context/use case, the power to the PMU (power
> management unit) must always be on. If the device supports hibernation,
> in hibernation, the power supply to the core can be turned off.

Things in an always-on PD may or may not be described in
'power-domains', so from a DT perspective I would say 1 domain is
perfectly valid here.

I suppose the PMU could be in a PD which can be gated off, but any
hibernation features would be lost.

> > > has 2 power domains, that's not something rockchip can change without
> > > risking the loss of support from Synopsys, as it would not be Synopsys
> > > IP anymore.
> >
> > Again, none of this matters. I'm documenting what is already in use
> > and an ABI, not what is correct. The time for correctness was when
> > this binding was added.
>
> That's unfortunate. That makes this very difficult to maintain if we
> can't rectify a mistake.

Shrug. What's unfortunate is only a limited number of people can
review bindings to be correct in this aspect. And I'm not one of them.

We deal with this all the time already. It's just amplified when it is
shared IP. Would I like less variation? Yes, but it's not a
showstopper.

> > To move forward, how about something like this:
> >
> > power-domains:
> >   description: Really there are 2 PDs, but some implementations
> > defined a single PD.
> >   minItems: 1
> >   items:
> >     - description: core
> >     - description: PMU
> >
> > We unfortunately can't constrain this to Rockchip in the schema
> > because that specific information is in the parent node.
> >
> > (kind of crappy descriptions too, but that's the amount of information I have.)
>
> Can we omit mentioning min or maxItems? While it may not be desired,
> it's not a hard requirement right? This can help avoid some confusion
> with devicetree documentation and dwc3 databook.

Why? Don't you want to catch someone defining 3 domains?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
