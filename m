Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 550CDC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Dec 2022 18:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2KGi7DmNxNlnFkTRTq1yQ/bUD0IulvdWifHx/6bErw=; b=PCsiioW0KSBRT8
	Wdb65p7JoLt7BILGvxcS/UH3XvfmkLXoh3t2YEwoW3o/F4KmR6M2SyUEQIHI5jQBjROx5dmEMhs+e
	cU2kEVEUICBcegqVlJYTnYzdrQLK5fb++9ds5oONcTMN5383DcUEbHmCh/7kkaF4L3fd3bVNrvHbz
	gTWiRBZGalE5diEGe+H1yZOCTPhRs8CuVnRf+KrA1V9yXhvVbHEYbu4eHH1DiafqUrhPH4rMZpZB5
	IOk5tY+FCLeWxLT59+STPjlIHgt7dhoeZGww6pkMupMWnU/DEjrDcPr8VC4c8NJgzplmHwSrEOcEU
	4lDqViiIAdJm0J3UwWFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p99gI-002WUk-Gs; Sat, 24 Dec 2022 18:55:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p98T5-0025Qs-ST; Sat, 24 Dec 2022 17:38:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BFDFC609E9;
	Sat, 24 Dec 2022 17:37:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 198B2C433D2;
	Sat, 24 Dec 2022 17:37:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671903468;
	bh=nYcWuSjcESsZ5VXztzLbQ7LJL41H+JOcVMbwnylZLtg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=I0oe+9V1xS1zeEMkIdc2aXawFTFIA/31l/cmCGZJvHg+mQAP97w/P+vTQ0yGyZ2Dx
	 mPsYePJweuwyrz44F+JqAYl9K6Vvnlx7K7U5TMbOZDQQ7ZGAa3jeoL7i90Sj4VlQE1
	 CXGK/8PJzpw3hRmZG/pTvbkGpD8Qw6UTzaV6q0A8QvuI27X4eRs2mgTQqG1rwIR54O
	 dFf2iwhA25N62OG0W/1HAwrWVNmOuyQiVe8YsqkMDo8M/Uwa9ALxmKM8BKWlLOCUrX
	 xjdx0aqODD0RuqhjeLh3TsPeoXgyCleLJDryf9paD+n0Rv/OMJMUHeD31gDfA7e6rh
	 JcY+sioFWx60g==
Received: by mail-vs1-f41.google.com with SMTP id 128so7079396vsz.12;
        Sat, 24 Dec 2022 09:37:48 -0800 (PST)
X-Gm-Message-State: AFqh2ko3XA8EbqzMk5LhdOW3uDUWQ7sVpzf0HWiffE997ZTj/2bwUrgj
	qbI0W+NyQnh6ebXIaKBh7Hzl/joDG/9JddMa4Q==
X-Google-Smtp-Source: AMrXdXtKXEUztiMvfY6flDDIpwstBFgjPj+zjwH0rvgfz8ANqanfZUsuih29ncY94VFNBjWNBmT9Hf2nN/vuKoASosc=
X-Received: by 2002:a67:fb05:0:b0:3bf:754b:15c5 with SMTP id
 d5-20020a67fb05000000b003bf754b15c5mr1661989vsr.85.1671903467016; Sat, 24 Dec
 2022 09:37:47 -0800 (PST)
MIME-Version: 1.0
References: <20221219191038.1973807-1-robh@kernel.org> <87edsua5q4.fsf@balbi.sh>
 <CAL_JsqKgGWN93QJ=V34=X3hC2bgdcd3vwO0Mne-8z8HOfVDz-g@mail.gmail.com>
 <878riy9ztm.fsf@balbi.sh> <20221223235712.h54lggnjjuu3weol@synopsys.com>
In-Reply-To: <20221223235712.h54lggnjjuu3weol@synopsys.com>
From: Rob Herring <robh@kernel.org>
Date: Sat, 24 Dec 2022 11:37:35 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
Message-ID: <CAL_Jsq+gCi8g0jY2ic1tJebc_JijMU-GntWQg09q+X41O3=1RA@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20221224_093756_094933_8A32916C 
X-CRM114-Status: GOOD (  24.72  )
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

On Fri, Dec 23, 2022 at 5:57 PM Thinh Nguyen <Thinh.Nguyen@synopsys.com> wrote:
>
> Hi,
>
> On Fri, Dec 23, 2022, Felipe Balbi wrote:
> >
> > Hi,
> >
> > Rob Herring <robh@kernel.org> writes:
> > >> > The Rockchip RK3399 DWC3 node has 'power-domain' property which isn't
> > >> > allowed by the schema:
> > >> >
> > >> > usb@fe900000: Unevaluated properties are not allowed ('power-domains' was unexpected)
> > >> >
> > >> > Allow DWC3 nodes to have a single power-domains entry. We could instead
> > >> > move the power-domains property to the parent wrapper node, but the
> > >> > could be an ABI break (Linux shouldn't care). Also, we don't want to
> > >> > encourage the pattern of wrapper nodes just to define resources such as
> > >> > clocks, resets, power-domains, etc. when not necessary.
> > >> >
> > >> > Signed-off-by: Rob Herring <robh@kernel.org>
> > >> > ---
> > >> >  Documentation/devicetree/bindings/usb/snps,dwc3.yaml | 3 +++
> > >> >  1 file changed, 3 insertions(+)
> > >> >
> > >> > diff --git a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > >> > index 6d78048c4613..bcefd1c2410a 100644
> > >> > --- a/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > >> > +++ b/Documentation/devicetree/bindings/usb/snps,dwc3.yaml
> > >> > @@ -91,6 +91,9 @@ properties:
> > >> >          - usb2-phy
> > >> >          - usb3-phy
> > >> >
> > >> > +  power-domains:
> > >> > +    maxItems: 1
> > >>
> > >> AFAICT this can be incorrect. Also, you could have Cc the dwc3
> > >> maintainer to get comments.
>
> Felipe is correct. We have 2 power-domains: Core domain and PMU.

Power management unit? Performance management unit?

That doesn't change that the rk3399 is 1 and we're stuck with it. So I
can say 1 or 2 domains, or we add the 2nd domain when someone needs
it.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
