Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 34C5AC47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 12:29:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DD5F2613C3
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 12:29:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DD5F2613C3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TgvZwxwGqGpnrjMHrqIgnfvEht8CtV0W3g1yl5f1eY=; b=MVzHh/0nWMUpMf
	BcTbrv1xeGgx9sFdkJoBgpJf05ojA7yn94GjQKXksLSV4nxD3PorjOGz7+wsgTe1WoDpaHKGNi2MB
	gUN21iaTk4/hSqa+qN5HI7CUgxyLf6YrD3krF8ti0m7ghIHl7R+Emdm2n0tqtw5GfBwYjEe9Me8TN
	nEa67s9Bwlsb4OsQTjaxxWmf9FcWJcFFlB+d1aZwx3dHp5+2IwvifiRgDA5nxDxQvUv+PymJKZGrp
	1a7JjLe882EJNUJCpCk4lAu9de4cNKRjwjy6Z3tqTWOLuKxMWMVHqXmqKcSpdBAQ0NlJm+IJ5VbOX
	2/anOY0Ml6dLglP1xUlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmF8o-005l6k-0W; Thu, 27 May 2021 12:29:34 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmF8j-005l1S-Vm
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 12:29:32 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 27so3586447pgy.3
 for <linux-rockchip@lists.infradead.org>; Thu, 27 May 2021 05:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lzggwkwLPsGkqROCQrFoMo/EvgYIJci/zbm9PeGjIk0=;
 b=EYmigkpQTz9NSx6So1qYsm7RWFpAJD9ork/TZ4owbGAgWg/9D7pft/OiwioWRV1UY/
 4Pg1cmCoaaqMEPnMB5xnJxM+VImS9+YJqEXgohfTEPseh5vy11mnubEVGyYo5kieIuYF
 JHMW+qzqun0WFNX0q15+sphLQq/NCObdjEM5k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lzggwkwLPsGkqROCQrFoMo/EvgYIJci/zbm9PeGjIk0=;
 b=WxCt5Kb4ebwr/FnjLKdNnAg4yfpV9+DmvsVEVumaFDY5da39PbHHTF2KgXp3sygWAF
 uLNaxVCUcAHbYD4CGYWpaOt7UCsPSJuVWdgP16h2PX+irs9LszwNXvYIQ5w2AF7AT8oQ
 9VGwVK+Rhceh8UvRPj9OOWGbWC64IG1M60XJ/hYE8wBi0FVldpx7D6OpozHO0xik0Xul
 CxjNAmI5Cf7uXAvACffCoECxPakrHSrlZrYZNOBBRSxJhyYc4AMv+UQTanPDnq4C+qO+
 7fgeG8rhdmSIo51iWCuFMDZkVcSI3YZdgApPkHiLH4hbRdF9ANt2LCccYZGyRI5WFmLP
 24EA==
X-Gm-Message-State: AOAM53241YCxlfDP7HjJjQClmC66Srv2B5ssmZeHZZPxhMQkV0qEBpzK
 FbMdpNdp4EKKmhfM4ltF4l3wPA==
X-Google-Smtp-Source: ABdhPJxHlrGNoVThzD9jXDunpAOOoUVlqmsHj782bf3WpYVZpsXhZsPr8L6VnGUc3ZUFw5LcKkXdEw==
X-Received: by 2002:a05:6a00:1a0f:b029:2dd:823b:3dce with SMTP id
 g15-20020a056a001a0fb02902dd823b3dcemr3487042pfv.35.1622118562288; 
 Thu, 27 May 2021 05:29:22 -0700 (PDT)
Received: from 7698f5da3a10 ([124.170.34.40])
 by smtp.gmail.com with ESMTPSA id h26sm1946892pfk.19.2021.05.27.05.29.18
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 May 2021 05:29:21 -0700 (PDT)
Date: Thu, 27 May 2021 12:29:15 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, chenjh@rock-chips.com
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <20210527122911.GA1640@7698f5da3a10>
References: <20210526162342.GA20@8bbba9ba63a4>
 <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
 <20210527105943.GA441@7698f5da3a10>
 <462b8d80447efb6c00e93704914169bceb5adc4d.camel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <462b8d80447efb6c00e93704914169bceb5adc4d.camel@collabora.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_052930_091453_A935CBE3 
X-CRM114-Status: GOOD (  29.06  )
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

Hi Ezequiel and Peter,

Thanks for the feedback.

On Thu, May 27, 2021 at 08:51:27AM -0300, Ezequiel Garcia wrote:
> Hi Rudi,
> 
> Thanks for the patch.
> 
> On Thu, 2021-05-27 at 10:59 +0000, Rudi Heitbaum wrote:
> > On Wed, May 26, 2021 at 02:41:00PM -0400, Peter Geis wrote:
> > > On Wed, May 26, 2021 at 12:23 PM Rudi Heitbaum <rudi@heitbaum.com> wrote:

...

> > I chose to follow the example of silergy,syr827 and silergy,syr828 for
> > tcs4526 (given I made the mistake in assuming that support for tcs4525
> > meant support for tcs4525.) This would maintain consistency of naming
> > of
> > tcs4526 throughout the source. Is that ok?
> 
> It's fine to have both compatibles (and avoids confusion in
> device-trees), just remember to update the dt-bindings as well.
> It's funny to see drivers with both schemes, so we really have to
> decide which path we want to go down.
> Considering the syr827/syr828 as convention, we should probably just
> go down that route for consistency within the driver.

Thanks Peter - I will resubmit the tcs4526 patch along these lines.

> > Removal of the operating points kind of makes the gpu regulator
> > moot, don't you think?

> As Peter rightly said, this will prevent gpu devfreq from working.

This is the draft that I have been working on within LibreELEC10, still
a ways to go I'm afraid. Having decided to getting the SBC to run
mainline kernel and u-boot. The regulator and subsequent regulator fix
will hopefully address https://bugzilla.kernel.org/show_bug.cgi?id=212917 
too. As you have identified - it is not ready for upstreaming :-)

Thank you both for the direction and pointers on the dts. I will get the
v2 patch going first.

> Out of curiosity, why disabling the little VOP?

Only disabled within my WIP dts so as to focus my attention on successful 
running of LE10 on the rk3399pro, before I move to attempting to enable 
the NPU and the other nodes.

> I can be wrong, but I think regulator-compatible is deprecated.

I will look it to this. 

Now with the addition of the regulator and Peter's fix I will start
qualifing each of the dts nodes and the correct options against the
schematic.

> > +??????????????????????????????vsel-gpios = <&gpio1 RK_PC1 GPIO_ACTIVE_HIGH>;
> 
> Is vsel-gpios ever used in the mainline driver?
>
> > +??????????????????????????????regulator-compatible = "fan53555-reg";
> 
> Ditto.
>
> > +??????????????????????????????vsel-gpios = <&gpio1 RK_PB6 GPIO_ACTIVE_HIGH>;
> 
> Ditto.
>
> > +??????????????????????????????regulator-boot-on;
> 
> Just out of curiosity, is regulator-boot-on really needed for the GPU?

Will check.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
