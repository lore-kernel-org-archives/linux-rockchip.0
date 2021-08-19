Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32A88C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 17:04:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA86060FE6
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 17:04:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DA86060FE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpTE3RJyJ0GHAtob0CAyLcO92zSCorPrxWuGS5UrbKA=; b=Och0gNIjUbra/j
	k+/PXdPDLxjQahlIpk0GGKjxYLUCkfc25exvBtN9drLKbqoVlbMIfh283nhq5O2DDEItfONKfKhfJ
	YncW9CdOznGOFLx7e3IXDWyckLVSlGhi4yALxgb5qSWbiNtq0YEWSYDK07z6V7SacJjNh6Nw18y6D
	pmGIV/cUZBlKi61FdZB2Z9gYC+PuUmPlft71XN3QUPfgT6itxP6xn4akZYsH1iRPSJHmR8bIwx10W
	BlUQpBe19m4qCnQWB5endY/vSk1lV+6S/NQK8b1Pj4q2jDwe3MlwFot7CSDlfgKHHaQ7SmfuhIg4A
	wqceW9tfUQ7fOOcdwGRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGlSb-0092qQ-FS; Thu, 19 Aug 2021 17:04:09 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGlQ1-0091wc-La; Thu, 19 Aug 2021 17:01:32 +0000
Received: by mail-ej1-x629.google.com with SMTP id b15so14231365ejg.10;
 Thu, 19 Aug 2021 10:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HOnBGLFQ/RPkWyVebKZOihfXyP1VfPHshsIs+J3gUi4=;
 b=gtjctdvwMmR+KSoAu9WPHrM3VQ1bojXNADyhNT5C/CWdI8eqrxzXML8ywRkuk+hlfz
 PprjBPzk510Gbr3qulBKAN51iG1gZxzii91z5gVuaUKxQqWsuboVjsJOupWDhCebGfxo
 wlPv3URrKTYZyCy0MMU9x7fOoPcxQWawlhwrh7LtfJhK4mHo3tlmpGyFr0kyxb0g6VHX
 OVoFeCsjuRwezH3VmWztgW2hSuMj/1Fjw8N0DLu3HAa2he1INBu9ybJw1o/Spe6kHhGS
 3O4RBHvAT7BTA/GkzpOi20MjfjCQf9YjRh0ehoCd1Q2TGuwUJla1eCGY7Ldp1eb8vhhK
 AQ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HOnBGLFQ/RPkWyVebKZOihfXyP1VfPHshsIs+J3gUi4=;
 b=qLQA00UhqJ2YsjMLSbYMjKTovKbOheeIyVXHHR8zoEpcEB3/zHsOTQI8aMTN4DEh15
 lsBQO8klGEszv8MXNiaDLQq2xvyIIZP6cXDaLTohw9fJnpdseRjLhgGNJ1kOivq6zV6c
 EqtGI/MrUawrkmgQpWMCubQAfgaEJBVi6eYDGNX8XvJPTEdJoszprK1EZ6aL4Ck4J26w
 M1CpfqguFEvqFZkUIhPL856wiSMZeMVc8w+PZzoadDd4tRGJHktJoUM4z+BmzPKL0oh5
 jVp+658gMPsl/nxp7YjydpUQBdhcEtMMJttUXFXEPgwLLb3Lg+P8Y0cS5QNDkHmdvS1x
 BWrg==
X-Gm-Message-State: AOAM530DfWXbCVB1mi8Q3Fr1dQQSUVyVf6+9UrMkP/YvhJBc9MMgZ1O8
 FQjQgvLru5ucsxnlPlpjdUY=
X-Google-Smtp-Source: ABdhPJyWDs5yB6T1OuTS+UOyjwaJiM6R+2uqmgtC45avvP1J/qktmzyKNhL1VibEzRQtpC1IDes4vg==
X-Received: by 2002:a17:906:b787:: with SMTP id
 dt7mr17258690ejb.111.1629392488064; 
 Thu, 19 Aug 2021 10:01:28 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id n23sm2090257eds.41.2021.08.19.10.01.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 10:01:27 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Robin Murphy <robin.murphy@arm.com>,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Date: Thu, 19 Aug 2021 19:01:25 +0200
Message-ID: <1870492.5CqhBlFY90@archbook>
In-Reply-To: <20210819141617.GM4177@sirena.org.uk>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
 <2412250.zZEsDtmPgG@archbook> <20210819141617.GM4177@sirena.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_100129_818113_2CD30B13 
X-CRM114-Status: GOOD (  37.23  )
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

On Donnerstag, 19. August 2021 16:16:17 CEST Mark Brown wrote:
> On Thu, Aug 19, 2021 at 03:52:55PM +0200, Nicolas Frattaroli wrote:
> > On Donnerstag, 19. August 2021 14:08:36 CEST Robin Murphy wrote:
> > > > +  rockchip,no-dmaengine:
> > > > +    description:
> > > > +      If present, driver will not register a pcm dmaengine, only the
> > > > dai.
> > > > +      If the dai is part of multi-dais, the property should be
> > > > present.
> > > > +    type: boolean
> > > 
> > > That sounds a lot more like a policy decision specific to the Linux
> > > driver implementation, than something which really belongs in DT as a
> > > description of the platform.
> > 
> > I agree. Should I be refactoring this into a module parameter or
> > something along those lines? I'm unsure of where this goes.
> 
> Why is this even required?  What is "multi-dais" and why would
> registering the DMA stuff cause a problem?

After some research, it appears that multi-dais is a special driver that
downstream uses to allow multiple sub-DAIs to be combined into one DAI
that has all the channels of the sub-DAIs. This does not seem like
something that should be done at that level to me, because it seems
like it's pushing a sound driver configuration into the realm of
hardware description.

In retrospect, I should have stripped this out before submitting it,
because I should not be submitting things I don't understand completely.
I apologise.

> > The particular configuration may even vary per-board; an I2S/TDM
> > controller may be connected to an external codec which does not
> > support capture, whereas on another board it may be connected to
> > one that does.
> 
> If the external device doesn't support both directions then why does the
> driver for the I2S controller in the CPU care?  The constraint handling
> code in the core will ensure that nothing tries to start something that
> isn't supported

I went over the downstream text binding description again and from that
it appears that the playback/capture-only capability is something
specific to the controller, not to any device connected to it.

The downstream device tree for the rk3568 specifies playback-only for
I2S0, a.k.a. the one connected to the HDMI that I can't test because
we currently don't have a video clock. Another downstream device tree,
specific to what appears to be a robot demo for the px30 SoC, uses this
property on i2s1, which tells me that this is not an actual description
of the controller hardware but just a description of the application.

While not relevant to the device tree schema, the driver reacts to these
properties by setting the opposite directions _minimum_ channel number
to 0 (from the default of 2.)

My conclusion from this is that this reeks of nonsense and I will look
into what happens when I simply remove these properties and lower the
channels_min to 0 in the driver. If it turns out that on some SoC for
some I2S/TDM controller instance there is a limitation where specifying
that the controller only handles either capture or playback does make
sense, we can always add it later.

Thank you for your comments,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
