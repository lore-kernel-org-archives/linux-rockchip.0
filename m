Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2106BC43461
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 14:51:02 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4D7920722
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 14:51:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YI9QK5em";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="y95wpCM5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4D7920722
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5YGCQni3Y2+/cfl5F61eZ0LCyQRFSmzRvkE12pctc40=; b=YI9QK5emVbs01NyzLMv38tima
	pF75Wj0vw7dLP07Zq/tsA1iWUXMTW92K+FUBC+26bBAIPmyzGU41JwF9iI3RP40oDOSSzIclDAuj5
	2a6ZXIvUsYl92mVkR4ujsFONo9PAoxbZhz8BAzV9eMQbHnIuuvC0poZr0ueV9Nutily+8KBzLj8t5
	J4X48TvJk/nLZFgR4e5de+7tPtb2rJwtdgORpsTHekVLs8Qt40qrrVxjoR0ibdqEcfb1CzSk9IdC+
	lMlx4lqNbvdIkwTmtAezBnR37WPNlpmPeZqrgKt/buRgQ8gc+PvBtpt9X+LM9fCLChhJpwoN+yLrf
	i/9M+Eexw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kED3G-0007VO-VT; Fri, 04 Sep 2020 14:50:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kED3C-0007UI-UO; Fri, 04 Sep 2020 14:50:51 +0000
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
 [209.85.167.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4B4662074D;
 Fri,  4 Sep 2020 14:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599231049;
 bh=V8Yz+V8W8NYZRo8VeY1JNSeQmYJkrgRoqjg3jR2PUvI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=y95wpCM5PSO2ORRxz7Fe2lB1/nleDYKLCXyVJKIPxrzD+Cm2FcpGKTQr4ABNk7WpN
 bs6iwoF36owHKD+TV2gjIM5KxNDth/QiqjlfBQU4nh6VtSPWEcuPgTEmzMxbSHhu4w
 /VXGhZdFqNdK0ZtYbaasyscn4/ZK6pIUXUcs3x9s=
Received: by mail-oi1-f169.google.com with SMTP id x14so6733751oic.9;
 Fri, 04 Sep 2020 07:50:49 -0700 (PDT)
X-Gm-Message-State: AOAM530DcBfA7AHnsO97FSkdVIFbC7srQavXtQiCub/BjUUMa34o3v4S
 EnF42scDYAWvka/xhSVaPz4pqnkdG30HqyRTaA==
X-Google-Smtp-Source: ABdhPJwwwgfM98sa3ThHsK9hFVILmKXcNAGTT6BvEX3rCBp0yuXzXiuMVee8h3wm41S3eOKWbUIm60zQEIEq/uvqGGE=
X-Received: by 2002:aca:4cc7:: with SMTP id z190mr5643642oia.147.1599231048667; 
 Fri, 04 Sep 2020 07:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
 <20200831082917.17117-6-jagan@amarulasolutions.com>
 <20200903162550.GA2896127@bogus>
 <CAMty3ZCXV9=VzVKiKJ740RcR+uYA7CHUzjrDL0vwQ1NOw9n4FQ@mail.gmail.com>
In-Reply-To: <CAMty3ZCXV9=VzVKiKJ740RcR+uYA7CHUzjrDL0vwQ1NOw9n4FQ@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 4 Sep 2020 08:50:36 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJUOO5Ou+BAS6AC4dfZ4kv5sncq_PGG+1+sHhpWByCWhA@mail.gmail.com>
Message-ID: <CAL_JsqJUOO5Ou+BAS6AC4dfZ4kv5sncq_PGG+1+sHhpWByCWhA@mail.gmail.com>
Subject: Re: [PATCH v3 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 C.TOUCH 2.0
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_105051_171915_82D5DA79 
X-CRM114-Status: GOOD (  24.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 3, 2020 at 10:47 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Thu, Sep 3, 2020 at 9:55 PM Rob Herring <robh@kernel.org> wrote:
> >
> > On Mon, 31 Aug 2020 13:59:15 +0530, Jagan Teki wrote:
> > > PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> > >
> > > C.TOUCH 2.0 is a general purpose carrier board with capacitive
> > > touch interface support.
> > >
> > > PX30.Core needs to mount on top of this Carrier board for creating
> > > complete PX30.Core C.TOUCH 2.0 board.
> > >
> > > Add bindings for it.
> > >
> > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > ---
> > > Changes for v3:
> > > - none
> > > Changes for v2:
> > > - new patch
> > >
> > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> >
> >
> > Please add Acked-by/Reviewed-by tags when posting new versions. However,
> > there's no need to repost patches *only* to add the tags. The upstream
> > maintainer will do that for acks received on the version they apply.
> >
> > If a tag was not added on purpose, please state why and what changed.
>
> Yes, it's on purpose. The previous binding was about C.TOUCH with LVDS
> board and this one is C.TOUCH carrier only. ie the main reason I have
> not included. I did mention in the cover-letter saying previous one
> dropped and the C.TOUCH carrier added.

The changelog here says no changes...

Anyways,

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
