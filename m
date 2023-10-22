Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E39BCDB474
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Oct 2023 21:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/O2Acgtky/gCns9wyUFTLHXGGWsH+COh9LaVL4IVog=; b=DATBwkN6OGDOYU
	Ngp5f6yX8015kHVeum3LjKETMjpE4WaEsR1ia5ltZ8skcr/brEABX4cFD8GzHQ9MW6RE/UllqwVHo
	5RB6VwBY/Tn4vshesi5niQoXfG2FIl8xj3/57gq+cy/C5wghb9F6YoFzUL+ZK4e+VwPTfUAM92EJC
	qVARWFoaRalH7rM4M7TxpjF+PG8UkwqIsJdzSk/3BKN6kOA6UBPsiD4x1/ZlwZTAcPg62A/QIlZPT
	F4jHopD5iujqqopU5+pFmkHFHn+Iuu2KqVAJgigWP3mzvhR8mLB9xwmUj/JrYFeAMuBqp7tZCvfi7
	iOUk5Y1sZBIGBWeoxArw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qugDK-005xit-0G;
	Sun, 22 Oct 2023 21:42:26 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qugDH-005xiT-1b;
	Sun, 22 Oct 2023 21:42:24 +0000
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3b2e22a4004so2026479b6e.3;
        Sun, 22 Oct 2023 14:42:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698010942; x=1698615742;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XD6hNKWqp4dlOId5gsO4sOaKWKbRB4aMfCpeXMgYAks=;
        b=J982RfVslzELKELJjkoK6qZa8J2ERDsFeWyLPUlkCWfMzcLraiczs6x+YU/RfcK0fV
         DvBy4pGHL4HQvYP5/cZiTKImS58wU4ifPzhOWwHclT9I8VoMZt6OnCUi4em9m4XZuzMq
         8QPMd+EkwAz/4tVhkVSYH2F0jiWYUMInwzSj64EDDPGKFmsO2seiqssfrvzcNDNcAW5d
         dslkicgHkpHx6R4LH262GMYABx+BGiupAU5pQm/AYZbV36Lx2fT6vXAtG4K6yeEDXXat
         ChJlsn6wx0ljdgRoPl0gTGOhOH/MnFlmg8YqkJ4dW8kVbL2ITcWI+kFIxzDFRIsZAdBs
         X12g==
X-Gm-Message-State: AOJu0YyFhEtVIcd3VFgaQdMxGND59/6MYaNxSIuXsU8gscBIX3xdhEwW
	FBPPVfwtIlcGWPOiCBogvA==
X-Google-Smtp-Source: AGHT+IHtnYoRv+W2kAG7aMLEsfhEq8v6lHvAvr7C6bOY3fLoAYpynDcTsoQtDY8VI4Ae+1twkAxDgA==
X-Received: by 2002:a05:6808:222a:b0:3ae:5442:ed11 with SMTP id bd42-20020a056808222a00b003ae5442ed11mr11305393oib.54.1698010941722;
        Sun, 22 Oct 2023 14:42:21 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c1:8e5d:a109:ceb8:bec4:d970])
        by smtp.gmail.com with ESMTPSA id u15-20020a056808150f00b003ae5cb55513sm1229441oiw.38.2023.10.22.14.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 14:42:21 -0700 (PDT)
Received: (nullmailer pid 721245 invoked by uid 1000);
	Sun, 22 Oct 2023 21:42:19 -0000
Date: Sun, 22 Oct 2023 16:42:19 -0500
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Conor Dooley <conor@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v4 1/3] dt-bindings: usb: add rk3588 compatible to
 rockchip,dwc3
Message-ID: <20231022214219.GA706888-robh@kernel.org>
References: <20231020150022.48725-1-sebastian.reichel@collabora.com>
 <20231020150022.48725-2-sebastian.reichel@collabora.com>
 <20231020-shudder-tackle-cc98a82f1cd0@spud>
 <20231020160329.uqgjjr6ubfrcqjkj@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231020160329.uqgjjr6ubfrcqjkj@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231022_144223_536706_8616E980 
X-CRM114-Status: GOOD (  13.60  )
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

On Fri, Oct 20, 2023 at 06:03:29PM +0200, Sebastian Reichel wrote:
> Hi Conor,
> 
> On Fri, Oct 20, 2023 at 04:36:19PM +0100, Conor Dooley wrote:
> > On Fri, Oct 20, 2023 at 04:11:40PM +0200, Sebastian Reichel wrote:
> > > [...]
> > > +allOf:
> > > +  - $ref: snps,dwc3.yaml#
> > > +  - if:
> > > +      properties:
> > > +        compatible:
> > > +          contains:
> > > +            const: rockchip,rk3328-dwc3
> > > +    then:
> > > +      properties:
> > > +        clocks:
> > > +          minItems: 3
> > > +          maxItems: 4
> > > +        clock-names:
> > > +          minItems: 3
> > > +          items:
> > > +            - const: ref_clk
> > > +            - const: suspend_clk
> > > +            - const: bus_clk
> > > +            - const: grf_clk
> > 
> > minItems for clocks and clock-names is already 3, is it not?
> 
> Yes, but the following 'maxItems: 4' implicitly sets it to 4,
> so I had to set it again. The same is true for clock-names -
> providings new 'items:' effectively drops the "minItems: 3"
> from the generic section.

Are you sure? We don't add anything implicit in the if/then schemas. 
Could be a tool issue though.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
