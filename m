Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DFC4C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Dec 2022 17:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67CrEwSkhMbvqVdsmUp20PkE5dC13WhDcxkKNda39tw=; b=ws6fd2445MWktL
	hr6tW9zb1VOAW1cZNqStfbx/7KeM0STERRyc9UM815JG8kwJXQGAdQj+WjGSejcM6x1QFknKs+MCf
	Jv0nMt8UVUKvRSm52J5jAVpycL6zM0cVBFZniDhs0lHxGcvOJIDHXFaBH/SXOFKpLCeVZgWqt1eBJ
	XhjS2ReMaBgeqkDLNsNb81aXBFn4+QR9PjjHPRRV7cLOkVWVLa6tNbejVrBiJ15pce4s9Js53KxXr
	3zxX9eEi0eKSJqd31qAI9i1C1uqsZK17sMIVVsEgfh56tmoGt0PATbY46+divSiIkgxtcrW/El4F+
	BgIbmq+ftYu4XgV3IrDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBIln-00BMwf-NK; Fri, 30 Dec 2022 17:02:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBIen-00BJyx-CT; Fri, 30 Dec 2022 16:54:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9300DB81C22;
	Fri, 30 Dec 2022 16:54:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56A4DC433D2;
	Fri, 30 Dec 2022 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672419293;
	bh=wMTbZBZdHwe+AegUDhTrGzJ3+CruNpZA1K+aMuLHyH4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rQH727dt54Q09lqOhW67vBwRfO8K49iotzyqXwdn3v5m3K4METxLA7kJp/ZR/T7NC
	 c70QqxCTzl2UJeZqnAoV4t27DsImVYhBs4OiY9m0P95rcc8IqM/INr7ss7BY7OCt2N
	 angDWLmEc4xLRn6elvWL0Lxm78w9KJgURIdZq2ZhALsxBkcCMt2A7+w9OOXdu/k9CP
	 rZZnu9yVTk7llOxTHbTa7AY5M7eaWIXEoQYDErgMAxX0rYP1ihfyNXzc34WUXkYoTi
	 yUOM+CmiHgzYP9PjkNLJM8kWipxmehvU1et9Ro3ReEoAnjRtxrMVpG7njnimGp49yZ
	 qjjMxhkb81E1g==
Received: by mail-ua1-f46.google.com with SMTP id d14so3439838uak.12;
        Fri, 30 Dec 2022 08:54:53 -0800 (PST)
X-Gm-Message-State: AFqh2kqtaEOM9MmsY3gJwr4+Aj/PGYUcQ0QI5/8yWmGEHJhdBDage3Bo
	zBmXRRKDmM/E7bZMD8vN5TLELmJzYmDv+mkpyA==
X-Google-Smtp-Source: AMrXdXsS7FfVgV0fjTEXH61ZUzuUyw5HxHta/oNb2Sysh5es3t9SjTC8tM9XhPZcne3NYqxR4vguBo8oFXaF7J/5eog=
X-Received: by 2002:ab0:3a8d:0:b0:419:678:cf31 with SMTP id
 r13-20020ab03a8d000000b004190678cf31mr2942324uaw.63.1672419292215; Fri, 30
 Dec 2022 08:54:52 -0800 (PST)
MIME-Version: 1.0
References: <20221219191038.1973807-1-robh@kernel.org> <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
 <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com> <87o7rlffi7.fsf@balbi.sh>
In-Reply-To: <87o7rlffi7.fsf@balbi.sh>
From: Rob Herring <robh@kernel.org>
Date: Fri, 30 Dec 2022 10:54:40 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
Message-ID: <CAL_Jsq+viP_aY3n378WC7WpxZFnsTc-vKjW9Ojvcy0Ef-z09Ng@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20221230_085457_986492_C7C6331F 
X-CRM114-Status: GOOD (  29.84  )
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

On Fri, Dec 30, 2022 at 2:43 AM Felipe Balbi <balbi@kernel.org> wrote:
>
>
> Hi,
>
> Rob Herring <robh@kernel.org> writes:
> > On Fri, Dec 23, 2022 at 5:57 PM Thinh Nguyen <Thinh.Nguyen@synopsys.com> wrote:
> >> > Rob Herring <robh@kernel.org> writes:
> >> > >> > The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
> >> > >> > allowed by the schema:
> >> > >> >
> >> > >> > usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)
> >> > >> >
> >> > >> > Allow DWC3 nodes to have a single power-domains entry. We could instead
> >> > >> > move the power-domains property to the parent wrapper node, but the
> >> > >> > could be an ABI break (Linux shouldn't care). Also, we don't want to
> >> > >> > encourage the pattern of wrapper nodes just to define resources such as
> >> > >> > clocks, resets, power-domains, etc. when not necessary.
> >> > >> >
> >> > >> > Signed-off-by: Rob Herring <robh@kernel.org>
> >> > >> > ---
> >> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> >> > >> >  1 file changed, 3 insertions(+)
> >> > >> >
> >> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> >> > >> > index 6d78048c4613..bcefd1c2410a 100644
> >> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> >> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> >> > >> > @@ -91,6 +91,9 @@ properties:
> >> > >> >          - usb2-phy
> >> > >> >          - usb3-phy
> >> > >> >
> >> > >> > +  power-domains:
> >> > >> > +    maxItems: 1
> >> > >>
> >> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> >> > >> maintainer to get comments.
> >>
> >> Felipe is correct. We have 2 power-domains: Core domain and PMU.
> >
> > Power management unit? Performance management unit?
> >
> > That doesn't change that the rk3399 is 1 and we're stuck with it. So I
> > can say 1 or 2 domains, or we add the 2nd domain when someone needs
> > it.
>
> Isn't the snps,dwc3.yaml document supposed to document dwc3's view of
> the world? In that case, dwc3 expects 2 power domains. It just so
> happens that in rk3399 they are fed from the same power supply, but
> dwc3' still thinks there are two of them. No?

Yes. That is how bindings *should* be. However, RK3399 defined one PD
long ago and it's an ABI. So we are stuck with it. Everyone else put
power-domains in the parent because obviously the DWC3 has 0
power-domains.

> It's a similar situation when you have multiple clock domains with the
> same parent clock.

Yes, that's a common problem in clock bindings too. Not really
anything we can do about that other than require a detailed reference
manual with every binding and someone (me) reviewing the manual
against the binding. Neither of those are going to happen. Even on Arm
Primecell blocks which clearly (and publicly) document the clocks,
we've gotten these wrong (or .dts authors just didn't follow the
binding).

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
