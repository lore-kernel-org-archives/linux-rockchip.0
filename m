Return-Path: <SRS0=qLnh=NI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88032C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 21:44:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 478F16102A
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Aug 2021 21:44:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 478F16102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCvxmVTp9FEbCIKJdHDobJfSGCEbgTE+fhkNza4bQis=; b=CanIN8Dj28k8lp
	HgckLLHRSikM0rwve5PoAE8r/DcSCGmTXYBBNRfaE+lRJBQKkitBeAWyR5/HW9onqgiAgtS7QZcrb
	0kuXX0hQX05mQ75bxQZ6zRHBjg3ZVZI/jilzu05D503kg/EBV4taeho7MMUWCuhooqnY5i2V1lVEU
	/QhBmnw2FXnMDF4gaeFc94c/qeDNti+E98vH96wr2REYYwQzsuPb3DpgCHAvEy8UoUkvO5iXP+7wD
	nbcWncNaNmGchkfa/i8mVxixlgtw6xzjC5lVXH7vAbe6XsRxJg9hpGC1O0d60Z1XHQd85afj9NbqY
	t6J4jqv+bHLoJnvznOrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mG6sa-003ZkN-0U; Tue, 17 Aug 2021 21:44:16 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mG6sM-003Zj7-Ea; Tue, 17 Aug 2021 21:44:03 +0000
Received: by mail-oi1-f178.google.com with SMTP id n27so1412653oij.0;
 Tue, 17 Aug 2021 14:44:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hZMyVTSz00omtED+yJU35WSO6/6GKOSZju3UYtA2Jto=;
 b=R1iTLMqngQP8f/b3bOXbQLVFQRN64PHNDDCXK2ILhBFfZN1yphebVoPZQXGs2tnp4q
 QcVE2bDhalJR9rEJQOEckoBDBJk8yPuENU3dHDo6cJrqfFLGFqFY7j8II5umHbEb4UX8
 /jf5kqRBCUgFbrzMZv8ZUbE3SP+5l/3Ci7IWh7BqdqHnubbUbgpuCpRkZ2vvVSPCdv4S
 00ZpiYytaNzISaYLwI3gAln6LBqySYE2Vkwf4xnZOLXPhrQ9Xd3ZfHaVOkQ4xQgUV4sN
 Lei/TIM0TK8rQWdlzHYbQoc/1/LeeW8RBUMw3oRL7HGwWqSKiQKH0d2ptGDyqBRumLk0
 Lmhw==
X-Gm-Message-State: AOAM532UwOgVKUZKZZrvf7nYPv+CFWeGRW+Tl1RfnG/6Sk9DwE7ykc4y
 MB0itVyCEkmLQ6NJ3tRyKA==
X-Google-Smtp-Source: ABdhPJz4Jz497LdrZ1zW7H9CD5rs1AWEeBLYA9sSHle3vr/l2xc8jj1U1zg7qlDuXt5XaVqNe/gL6A==
X-Received: by 2002:a05:6808:bd3:: with SMTP id
 o19mr4201525oik.10.1629236641847; 
 Tue, 17 Aug 2021 14:44:01 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y16sm612500otq.1.2021.08.17.14.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 14:44:00 -0700 (PDT)
Received: (nullmailer pid 893186 invoked by uid 1000);
 Tue, 17 Aug 2021 21:43:59 -0000
Date: Tue, 17 Aug 2021 16:43:59 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/8] dt-bindings: phy: phy-rockchip-inno-usb2: add
 rk3568 documentation
Message-ID: <YRwtnxucxIeq+ayx@robh.at.kernel.org>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
 <20210812204116.2303617-3-pgwipeout@gmail.com>
 <c7ff9234-cc3b-3679-bc63-73c5eb825269@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7ff9234-cc3b-3679-bc63-73c5eb825269@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_144402_541609_CA3A2687 
X-CRM114-Status: GOOD (  25.85  )
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

On Tue, Aug 17, 2021 at 06:52:15PM +0200, Johan Jonker wrote:
> Hi Peter,
> 
> Some comments. Have a look if it's useful.
> 
> On 8/12/21 10:41 PM, Peter Geis wrote:
> > The rk3568 usb2phy node is a standalone node with a single muxed
> > interrupt.
> > Add documentation for it to phy-rockchip-inno-usb2.
> > 
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  .../bindings/phy/phy-rockchip-inno-usb2.yaml  | 31 ++++++++++++++++---
> >  1 file changed, 27 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > index 5bebd86bf8b6..d2a749c3f9a3 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.yaml
> > @@ -18,6 +18,7 @@ properties:
> >        - rockchip,rk3328-usb2phy
> >        - rockchip,rk3366-usb2phy
> >        - rockchip,rk3399-usb2phy
> > +      - rockchip,rk3568-usb2phy
> >        - rockchip,rv1108-usb2phy
> >  
> >    reg:
> > @@ -50,6 +51,9 @@ properties:
> >      description:
> >        Phandle to the extcon device providing the cable state for the otg phy.
> >  
> 
> > +  interrupts:
> > +    description: Muxed interrupt for both ports
> > +
> 
> This allows every Rockchip SoC dtsi to add an interrupt here.
> You have only restricted the requirements.
> The goal is to restrict things and filter bogus properties.
> If it was done because it doesn't compile, maybe could you try/test/use
> something like the rockchip-io-domain.yaml $defs format.

Don't use $defs unless there's more than 1 copy needed of something. If 
it happens to bypass some checks, it's only a matter of time til I fix 
that.

This may be better solved with another schema file rather than a long 
if/then schema. It's a judgement call.

> 
> ===
> 
> unevaluatedProperties: false
> 
> allOf:
>   - $ref: "#/$defs/rk3568"
> 
> $defs:
>   rk3568:
>     if:
>       properties:
>         compatible:
>           contains:
>             const: rockchip,rk3568-usb2phy
> 
>     then:
>       properties:
>         interrupts:
>           maxItems: 1
> 
>       required:
>         - interrupts
> 
>     else:
>       properties:
>         host-port:
>           properties:
>             interrupts:
>               description: host linestate interrupt
> 
>             interrupt-names:
>               const: linestate
> 
>           required:
>             - interrupts
>             - interrupt-names
> 
>         otg-port:
>           properties:
> 
>            interrupts:
>              minItems: 1
>              maxItems: 3
> 
>            interrupt-names:
>              oneOf:
>                - const: linestate
>                - const: otg-mux
>                - items:
>                    - const: otg-bvalid
>                    - const: otg-id
>                    - const: linestate
> 
>           required:
>             - interrupts
>             - interrupt-names
> 
> >    rockchip,usbgrf:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >      description:
> > @@ -78,8 +82,6 @@ properties:
> >  
> >      required:
> >        - "#phy-cells"
> 
> > -      - interrupts
> > -      - interrupt-names
> 
> Also remove them as properties in this part when a separate $defs is used.
> 
> >  
> >    otg-port:
> >      type: object
> > @@ -109,8 +111,6 @@ properties:
> >  
> >      required:
> >        - "#phy-cells"
> 
> > -      - interrupts
> > -      - interrupt-names
> 
> dito
> 
> >  
> >  required:
> >    - compatible
> > @@ -120,6 +120,29 @@ required:
> >    - host-port
> >    - otg-port
> >  
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: rockchip,rk3568-usb2phy
> 
> > +      then:
> 
> Test "if then else" alignment with yamllint

yamllint is not going to help there. What's needed is a meta-schema that 
adds the dependencies.

> 
> > +        properties:
> > +          interrupts:
> > +            maxItems: 1
> > +        required:
> > +          - interrupts
> 
> > +      else:
> 
> alignment
> 
> > +        properties:
> > +          host-port:
> > +            required:
> > +              - interrupts
> > +              - interrupt-names
> > +          otg-port:
> > +            required:
> > +              - interrupts
> > +              - interrupt-names
> > +
> 
> >  additionalProperties: false
> 
> additionalProperties does workn't with allOf: - $ref. Use
> unevaluatedProperties.
> 
> >  
> >  examples:
> > 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
