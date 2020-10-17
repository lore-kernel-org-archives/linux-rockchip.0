Return-Path: <SRS0=ENER=DY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8CFB4C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2020 12:08:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F5B02072D
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2020 12:08:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="YO5svDW/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F5B02072D
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/8IlUhHlTs9sFXiYHqI4vJ6BZEDmKC6KFR0uEJZkFAg=; b=YO5svDW/ENpuenyebs0EFo+Zog
	lZ1k+X2oc/CJ2dNsb90IoaIYk/qK+l0wahIKR2KhW0i/XILshOfg+PcG+l5iRevw7tYTyTihS4AAa
	hPOD+Ftq97QZdDU5lrB5BnASfyEAJwoCgi5Ti7Z5jVaQxIEReP90nddKukX8zPA/YV4wBSvypiKps
	rqFbf2NQFaso5STtGXhxYEniwFHXGkS8TfXDvdXo7LSP5TOXgxAYe924uIMNPO7AqhGbqneNHH2kp
	Hv6IvDOW5NjX99gPQoOCy5KUJkrWy+J9gKw+VLOb/XzJ9O23SgPUh9Yb2HZxjunYs3YPID35MDIhL
	GQCTDdVA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kTl0Y-0004VL-8R; Sat, 17 Oct 2020 12:08:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kTl0T-0004Uh-Mh; Sat, 17 Oct 2020 12:08:18 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kTl0H-0008Qe-Kg; Sat, 17 Oct 2020 14:08:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, Vivek Unune <npcomplete13@gmail.com>,
 Alexis Ballier <aballier@gentoo.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Anand Moon <linux.amoon@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 jagan@amarulasolutions.com
Subject: Re: [PATCH v2 1/2] ARM: dts: rk3188: correct interrupt flags
Date: Sat, 17 Oct 2020 14:08:04 +0200
Message-ID: <2926877.yplJhP9KA3@diego>
In-Reply-To: <20201002161128.GB4542@kozik-lap>
References: <20200917185211.5483-1-krzk@kernel.org>
 <20201002161128.GB4542@kozik-lap>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201017_080817_757651_08D4DE71 
X-CRM114-Status: GOOD (  23.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Freitag, 2. Oktober 2020, 18:11:28 CEST schrieb Krzysztof Kozlowski:
> On Thu, Sep 17, 2020 at 08:52:10PM +0200, Krzysztof Kozlowski wrote:
> > GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> > These are simple defines so they could be used in DTS but they will not
> > have the same meaning:
> > 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> > 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> > 
> > Correct the interrupt flags without affecting the code:
> >   ACTIVE_HIGH => IRQ_TYPE_NONE
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Not tested on HW.
> > 
> > Changes since v1:
> > 1. Correct title
> > ---
> >  arch/arm/boot/dts/rk3188-bqedison2qc.dts | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> Hi,
> 
> Any comments/review/testing from Heiko or other Rockchip folks? Shall I
> cc here someone?

I'm actually wondering about this ... I somehow remember writing a response,
but don't see it in my history - so it might have gotten lost before I
actually sent it.

I think the biggest issue I have is that none of that is tested on any
hardware and looking at other brcm wifi drivers in the kernel, the
interrupt polarity seems to be all over the place, some set it high,
some low and I even have seen edge triggers.

As all changes are in regard to (copied) brcm wifi node, it would be
really interesting to actually know what trigger is the right one.

I've Cc'ed Jagan who I think has worked on an affected board,
maybe he can check which trigger is correct.


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
