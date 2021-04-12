Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77269C43460
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 10:33:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 113686121E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 10:33:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 113686121E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kJu3QA/DP3tiUdGYiI/dPjK2o904s/5GT2KsXO+kB9U=; b=MFnKmR19zCxRpp7mUqRFEsao3
	s46pPxA4lrqp7cbmB4PmEt/3fRdOsgsN6waWtuieKCQSMqPd33Sen5rUXP2HKvwLsJfOfh93QyMYz
	ycBRwxVaw8ZzuNah45A5lkzL+gXISjpOBBCdAdBMwgJdVNFXc5xC9HEJ67fj4EOYDVInC77VF99bE
	fCzWvIIPtIpN3Yn066nbFkbBpGKtQfR3CZc9bTesPwIwnqQGo5TGlpfu1n7NwDXNpC0PGAnMIYXww
	8ZxhtlmhZY7COvI092KwWpUgyFHhkQvQsK+R+YyxnrWY7mT3pez89RSImiZVuehPgd8glAYvo8MzD
	DnXsTe+Sw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVtsw-006Rmo-EN; Mon, 12 Apr 2021 10:33:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVtsf-006Rlo-Si; Mon, 12 Apr 2021 10:33:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:Reply-To:In-Reply-To:References:MIME-Version:Sender:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=SR/PxIXoVKr0sQJJrL2BdCG9aZFeEpbl6WMAwf8j2Fg=; b=kP7MfpuIZ7KjUTyw5u7e1Y1Oc8
 BHuyDN0zckHHsN5q7Fg32nEjug+xlBy2BeskddaIFnKlRE0z2WKczrwBY/4fHRWtvSBSviCUhKVeu
 Q7WsCYeCThxw4HBtFovb6waDPXjWMtcMyXwWvn+n51Qy3eCuVLx3iOCGZM1slxBrPJ5ObtgEfu6+z
 mWmXHzaEJgoEDYGsDgNGD9Hr7hXRMjayGGYAMrMBY8P1zPmytcUcCUAral2DeZr4AVYKphjB+uoUc
 pbwdxmHh8+jWQUwAEI1ec2XpR0GdBuGqygaSc1jHuyUKcAZ5DZbECqbMTWxzCdKoYN6Iu6S7JR96U
 K2S5q11Q==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVtsd-0068c6-3N; Mon, 12 Apr 2021 10:33:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 34E0A61288;
 Mon, 12 Apr 2021 10:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618223597;
 bh=DI6Y5IaDG396+b13BKUebb20otLOdsYhFeHZfaDT9V4=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=X7jWGalE6o9E2WtBf29/CWgdQzpRBMTYxl+EbeZ2PjRhAHFbdbilQ48tXTFEzRnLP
 io3b5/xS/UQrSSGZ0uEH4LRw7+wm/iU1USYSmJbGajL71TGEg7ZO/vGl1zsgX8mj9v
 p6RBJDntm/0rpFYQSBjV8yGPZmEAjjt5LGIC2noL4X738OyZuH5UjSYnZ1t+174++H
 uPxyuHpwhH91Q2EFDsDJYeXsWsiE5yi3d81jPKLk1G6W/kU2lg0AJZhaR2Mc1w/EcU
 5F3CtPzWmSDLaO4+vIUk2tHTRoJqe24m0gszc85b5Yq3vQgOBy/TXImag0KzyxLQxC
 yc4uEBdiwzxKA==
Received: by mail-lj1-f170.google.com with SMTP id r22so4025439ljc.5;
 Mon, 12 Apr 2021 03:33:17 -0700 (PDT)
X-Gm-Message-State: AOAM5304sP1i1yWx1ZN+Y8PAV3vmOShy2pqlE+AOHLealXhTtK9OK0YE
 unhYSnx9TP0Et7Y1xm0rnWZuhyizE1kJwlNUfrg=
X-Google-Smtp-Source: ABdhPJw4UvUUAcyRG4ixDjCJyFywXgHnShAa8N99RTa/8dJVp4vWCnF3DoBG5ylB2oKBUZnkwGZr8tJLGWeZ5bxiQks=
X-Received: by 2002:a2e:7d04:: with SMTP id y4mr18002872ljc.94.1618223595500; 
 Mon, 12 Apr 2021 03:33:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210411131007.21757-3-jbx6244@gmail.com>
 <CAGb2v67s7a4GARfAnROKS40kaYQpdW_qWX=HX6GU09jV9wrbXw@mail.gmail.com>
 <31b5ff50-afe5-b446-7d3c-943d148814d8@gmail.com>
In-Reply-To: <31b5ff50-afe5-b446-7d3c-943d148814d8@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Apr 2021 18:33:03 +0800
X-Gmail-Original-Message-ID: <CAGb2v65+A402jCPVRJdDBdxqAEYOJmFTkKB4LJCvnW89hXb8QA@mail.gmail.com>
Message-ID: <CAGb2v65+A402jCPVRJdDBdxqAEYOJmFTkKB4LJCvnW89hXb8QA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] ARM: dts: rockchip: remove interrupts properties
 from pwm nodes rv1108.dtsi
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Lee Jones <lee.jones@linaro.org>, linux-pwm@vger.kernel.org, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_033319_216431_E6E54E9B 
X-CRM114-Status: GOOD (  29.96  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Apr 12, 2021 at 6:03 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> On 4/12/21 5:15 AM, Chen-Yu Tsai wrote:
> > On Sun, Apr 11, 2021 at 9:11 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
> >> A test with the command below gives this error:
> >>
> >> /arch/arm/boot/dts/rv1108-evb.dt.yaml:
> >> pwm@10280000: 'interrupts' does not match any of the regexes:
> >> 'pinctrl-[0-9]+'
> >>
> >> "interrupts" is an undocumented property, so remove them
> >> from pwm nodes in rv1108.dtsi.
> >>
> >> make ARCH=arm dtbs_check
> >> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
> >>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >
> > Given that the interrupts were specified, meaning they are wired up in hardware,
> > shouldn't the solution be to add the interrupts property to the binding instead?
> >
> > After all, the device tree describes the actual hardware, not just what the
> > implementations need.
> >
> > ChenYu
> >
>
> Hi,
>
> The question of what to do with it was asked in version 1, but no answer
> was given, so I made a proposal.
> The device tree description should be complete, but also as lean as
> possible. If someone manages to sneak in undocumented properties without
> reason then the ultimate consequence should be removal I think.
>
> Not sure about the (missing?) rv1108 TRM, but for rk3328 the interrupt
> is used for:
>
> PWM_INTSTS 0x0040 W 0x00000000 Interrupt Status Register
>   Channel Interrupt Polarity Flag
>     This bit is used in capture mode in order to identify the
>     transition of the input waveform when interrupt is generated.
>   Channel Interrupt Status
>     Interrupt generated
>
> PWM_INT_EN 0x0044 W 0x00000000 Interrupt Enable Register
>   Channel Interrupt Enable
>
> Is there any current realistic use/setup for it to convince rob+dt this
> should be added to pwm-rockchip.yaml?

Well, the PWM core has capture support, and pwm-sti implements it with
interrupt support, so I guess there's at least a legitimate case for
adding that to the binding. Whether someone has an actual use case for
it and adds code to implement it is another story.

> The rk3328 interrupt rkpwm_int seems shared between channels, but only
> included to pwm3. What is the proper way for that?

I guess the bigger question is why was the PWM controller split into
four device nodes, instead of just one encompassing the whole block.
Now we'd have to introduce a new binding to support capture mode and
interrupts.

In that case I agree with dropping the interrupts for now, as it just
won't fit. But I would add this additional information to the commit
message.


Regards
ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
