Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 636C6C10F1E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 14:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F5PxA4rhXInBG2WK3ZNr5i8fkx4kAsNX12HRdJei0cI=; b=gQsQxF6PQaLzXN
	UgkleTCdRFJKBeMhWpIOmeJoA/yWMufcAe/to+xcDMZrKYrjWO/p4JhfdInYIiz+4ZUMYLjHNZn0u
	y08S6VQwXlIgeV6/Kc5J4wF4RR7g7g0VPIx/lZSTDECfUObIgSrTY8FihJIsru6PrCh8t+SflRIzx
	ARb4iiicwOZ9isNPiSErgOhhob11cLXQGza3xSUeZN/di4ebw1mhos37QMwMTeKwvMm/i7iNBhGk6
	exQChkOWO1YFffn8chwOEbEaaQj/AhhaNgrzbZpLPnomzA/wd1cYPANlckpZPefSQBOv+mgdM30D2
	Sk2o7GiSz3ymfXmpfrFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dF3-00GRgp-1m; Tue, 20 Dec 2022 14:05:13 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7dEf-00GROP-I6; Tue, 20 Dec 2022 14:04:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D19E9B811A0;
	Tue, 20 Dec 2022 14:04:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14C12C4339E;
	Tue, 20 Dec 2022 14:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671545086;
	bh=W7Nt9CNlbNQTRtOJ+Ou9FJetWciHdrJoIDblv/IyaxY=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=W8gBo7DlbzbFGiVxqKnDzbddmVtiUu8dnjSgUzI+ahxBpvXYwtq03/lVGFBHCkM8x
	 Ew23AGP8R8/4yhwY8AIc5canf3OnsMpb4HGycC52evWSth/oto9lNDQJ6e+AbJOX9T
	 XfLpWRg1nYU5Z5/eq2q9D5RbS9eV7/Vh6p9b9xcuqXTGg+QabVGlY2L61Oh0p91p0U
	 KH+n6D2u3hlI8nCxMzVSf86uWUY883tQ8XWBGTPnUXI9Q30chZOUDV9+nKFa2oKUH9
	 gjbghHg0obc79L6a5B6sy7484gqrRy61FQQeVbtczHNUN6ljhmoQRKa7fnxG3VKUk/
	 j5XjgQ312VTRA==
Received: by mail-vs1-f42.google.com with SMTP id f189so11819579vsc.11;
        Tue, 20 Dec 2022 06:04:46 -0800 (PST)
X-Gm-Message-State: ANoB5pky3BmJ44a4I951UuWI/eYlPOyCjUupYZkC48qPCT+N2SiEO4ov
	0GHJyH7sufEpxuqSb9/W0RbC+gvTCxsxcJ6bNg==
X-Google-Smtp-Source: AA0mqf4hj49Vys16ZOKgDVRoRCT4+rE3ssmiSoKl4jx+LV2S2QRh6yunp4wCQEs0sr9wyCLBw8uplqiATyBk5IpMnAk=
X-Received: by 2002:a67:af07:0:b0:3b1:1713:ba12 with SMTP id
 v7-20020a67af07000000b003b11713ba12mr18042140vsl.6.1671545084970; Tue, 20 Dec
 2022 06:04:44 -0800 (PST)
MIME-Version: 1.0
References: <20221219191038.1973807-1-robh@kernel.org> <87edsua5q4.fsf@balbi.sh>
In-Reply-To: <87edsua5q4.fsf@balbi.sh>
From: Rob Herring <robh@kernel.org>
Date: Tue, 20 Dec 2022 08:04:33 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
Message-ID: <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: usb: snps,dwc3: Allow power-domains property
To: Felipe Balbi <balbi@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>, linux-rockchip@lists.infradead.org, 
	Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_060449_968233_3FFE207A 
X-CRM114-Status: GOOD (  22.22  )
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

On Tue, Dec 20, 2022 at 1:34 AM Felipe Balbi <balbi@kernel.org> wrote:
>
>
> Hi,
>
> Rob Herring <robh@kernel.org> writes:
>
> > The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
> > allowed by the schema:
> >
> > usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)
> >
> > Allow DWC3 nodes to have a single power-domains entry. We could instead
> > move the power-domains property to the parent wrapper node, but the
> > could be an ABI break (Linux shouldn't care). Also, we don't want to
> > encourage the pattern of wrapper nodes just to define resources such as
> > clocks, resets, power-domains, etc. when not necessary.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > index 6d78048c4613..bcefd1c2410a 100644
> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > @@ -91,6 +91,9 @@ properties:
> >          - usb2-phy
> >          - usb3-phy
> >
> > +  power-domains:
> > +    maxItems: 1
>
> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> maintainer to get comments.

When we have a user with more and know what each one is, then we can
extend it. All the other users (upstream), put 'power-domains' in the
wrapper node. But this is what we need now for RK3399.

I used get_maintainers.pl. If that's the wrong output, fix it please.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
