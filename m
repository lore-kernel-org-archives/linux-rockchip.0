Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03A34C4708C
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 11:20:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3DF8613D1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 11:20:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B3DF8613D1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pROksSsNxFxQTeKPuzjiwC2pUtfNZopu9C3qZbZXCtA=; b=1WuEBefBRnXgHh
	cm2Gk266nyNFfxvfydS1XqfYPFh8l6RK0Hrt5X0Uz831j5ngV4ss7iGePNDYRbJ04e+d3Bwb2vmXn
	YkuoyEzEFnfYyJeqfhv115LToWREZ0D6C/lm4ND1Vj1KE9PKGIPqJw60s5AYc5feQp+jAJ0ZfAToo
	j6Lq3leHGhpVA39p5Q+RSPSU2X+ys2laYIw6vsKotbsdYIQBnqgOg/ItyWvQzun9CJ7zGLZ2Bp2hd
	mOpoKf+FTK7bvELTjt/1NCubzT/nfScPAXKvwMjgleLngvIEy2KpKjlUFC1+xJ4EaxFuFA1p8ahIW
	tEBxMvE858T7c3CIISqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmaXp-00Elj0-QK; Fri, 28 May 2021 11:20:49 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmZiZ-00ENhj-Ju
 for linux-rockchip@lists.infradead.org; Fri, 28 May 2021 10:27:52 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 v13-20020a17090abb8db029015f9f7d7290so7038892pjr.0
 for <linux-rockchip@lists.infradead.org>; Fri, 28 May 2021 03:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hcEHP5lbyUaIDoAJdZRGuAuvH9SN0j6HsI/OD+kTgf8=;
 b=Ern2TC5DD/zOgm1HTsmKET7+vQygjHf+XZmiWrvA3JZWIP3Gal6cQiZBInx3/enbTB
 yWRcq0jwzlWK5BS8LBAECwZ9+AH5TJY9l1Z5BeqiLRTdd96BaPkkv6pw7qPw5obglH9A
 zPaifVDJqu0OlnEt2vciqn7HOESVDgpaefUSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hcEHP5lbyUaIDoAJdZRGuAuvH9SN0j6HsI/OD+kTgf8=;
 b=CIgO9NnGFC/EIA6m4nAJhnbn3VHed01wdNcGsMY6R0xBWVhFbon8H4gvnyf4JiAytV
 R3N6omGrF9MISaNmDK/SnQ8ZYpkCkyGpkBqh9AICOLaOIAXNF9tnn0fpIBdJifPkdb+Y
 4M+hqxJ/iTk9Yo0UCzYwETfRhdNAx4yDKbQP7NSdRJI0HETQOV3qv1d7D1lujTeAD9Dy
 UFCT87ewc7fU64WhcGWzswl3I0LPR321N4wuzreoTj9wE+85nU9pYe74kZEAAwcww1aN
 RWB8h4z5G/SqMqk1Rf5nHtI/gHmtvRdqTyERn2ppBhxRXrF36FQI1rfz7cntEunbVqkf
 s7yg==
X-Gm-Message-State: AOAM5338OW121gMAXe0TLgjwWaINy670SOnVSXypbNLWQUksZf3dDDtN
 MywvEF5ie5sVrAPGhSRGKgR8QQ==
X-Google-Smtp-Source: ABdhPJyrvHQGd03xFvYWWLFEZL7c/6jXwPw7GphxisL5MQyYC79GqmhFLOh0ltDvn6Y6bGidAy+NMA==
X-Received: by 2002:a17:90a:5b17:: with SMTP id
 o23mr3578804pji.14.1622197668237; 
 Fri, 28 May 2021 03:27:48 -0700 (PDT)
Received: from 96e513df87d1 ([124.170.34.40])
 by smtp.gmail.com with ESMTPSA id c16sm3965550pfd.206.2021.05.28.03.27.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 May 2021 03:27:47 -0700 (PDT)
Date: Fri, 28 May 2021 10:27:41 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: Mark Brown <broonie@kernel.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 chenjh@rock-chips.com
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <20210528102737.GA418788@96e513df87d1>
References: <20210526162342.GA20@8bbba9ba63a4>
 <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
 <20210527105943.GA441@7698f5da3a10>
 <462b8d80447efb6c00e93704914169bceb5adc4d.camel@collabora.com>
 <YK+ZMdD+7uqQwCow@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YK+ZMdD+7uqQwCow@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_032751_723874_B26D412A 
X-CRM114-Status: GOOD (  20.92  )
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

Hi Mark,

I have submiited the v2 patch. Thanks for the feedback too.

On Thu, May 27, 2021 at 02:05:53PM +0100, Mark Brown wrote:
> On Thu, May 27, 2021 at 08:51:27AM -0300, Ezequiel Garcia wrote:
> > On Thu, 2021-05-27 at 10:59 +0000, Rudi Heitbaum wrote:

> > > +       /delete-property/ operating-points-v2;

> > Removal of the operating points kind of makes the gpu regulator moot,
> > don't you think?

> It's still better to say what the supply is even if it can't be
> changed - that stops you getting warnings about substituting in a
> dummy regulator and allows the consumer to read the current state
> of the regulator in case that's useful.

I'll look into this.
Thank you all for the feedback and direction on the dts.

> > > +???????????????regulator-compatible = "fan53555-reg";
> 
> > I can be wrong, but I think regulator-compatible is deprecated.
> 
> Yes.

will action

> > > +???????????????regulator-boot-on;
> 
> > Just out of curiosity, is regulator-boot-on really needed for the GPU?
> 
> It should only be used if it's not possible to read the state of
> the regulator enable from the hardware.

will do further testing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
