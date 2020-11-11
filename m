Return-Path: <SRS0=RWH0=ER=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B40C388F9
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 08:00:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E48C2072C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2020 08:00:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="f1oNn1Nv";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l5NnLaP9"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E48C2072C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y0GSOg/9BA24eyJq6CHKgEmidFPQtYc6qUZSrMYrbeQ=; b=f1oNn1NvdGhXL66MXRl5YJsDb
	8uqoRbViv5T/gLO4GkZK/TNJ93zqiWZd5JtZcmsQE7BkJxWJtW+dKACDGUsBOfrS3+eVU3lVR0ycF
	EPm6oJtvP+eqANWBVi+Au/XxZT406XNL3dRtwprezJTk4kYS4SQGEQvfcU/ZtpCFgxLO0V/3jh2xZ
	/zjNAsNBI785JzGScPmGv8bkoOxbAwJ4SArFjesNfMnYVdAfU292ye8Wz/VP6YutIsgIOhwUCVyz0
	dUChOQopPJtJ68IOZbKGCL9OGnjPGSoTFdJU/So341z81TqAtOcQupRh9y/owJKj9ir+ATiUckk0M
	9BVhlYMxg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcl35-0000Tr-O8; Wed, 11 Nov 2020 08:00:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcl33-0000Sm-5c; Wed, 11 Nov 2020 08:00:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id f21so570475plr.5;
 Wed, 11 Nov 2020 00:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d02g+zhQMhpaDvTn0zDbRhRDWrRC5B6qJJz7rxHmhvk=;
 b=l5NnLaP9K1JapsaAQXaB8IUPWmIzvVVjxOPXTnY4LAqfJpynKxsQ6wRuVs4BGucwEm
 aJ/ngYVDWQAtA8Rq2D/hfXXkXPJZ+uo1BctGZDFkjngmYPuMN6XIO80nHLEJ0fdzI0t+
 W1XOaDqKDIU9ubq52Ej0H6b96FVSgLmVTPEfEbOu9fCBcTq4+AfG2/WC+vzLq5b+G6Oa
 HgngwLyIdV0hoh+lq32G0nGS9sohC4aZCzV1oSrdT/gC0oNsyZIQ7JLCqzWI3WfVln0I
 5Ru+8iA12FIn8Q+AkEOsNACkUKEEl67indYrhif1z4ZlrHNitQLSGo4mlqXqZ+pAPW1F
 pnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d02g+zhQMhpaDvTn0zDbRhRDWrRC5B6qJJz7rxHmhvk=;
 b=T2TPibZNgFCSHoai0IxQ3Ruz24pWgRAeyPGgKKbKDEvlEsuJAsaXzG2C8lQEzUGhFb
 2agWYLKkZ+J0ndcQ/thWga2TMqWfBnFluBUYiue1Oz+iFRB9APgCyi+rUE38klwhmutK
 l85PJTBC4UNB9GHhikpkAF4pnBJ5o2/igaeyvhXgadcmkeKslhS4xHTw05zyvHQnWY8n
 htQoHZxxzbbqJ0u538oynpojk9SWo/6X6v5Rgh1B/jWiIW2Usp56eokvPWBxIVYW6iuB
 6W41rrpAzhLgNwTQjl2BMPFdNs2/Sp+1XCVRcP2rSTgELjNNtlw2dXZj5GMq+GARKsw3
 cMhw==
X-Gm-Message-State: AOAM5331qYLBU1dVXX0/SOWiWT7rPFJai/VArlvdDJmEkxNR8DZhRqHU
 dzmBdGOR2TY4swC1j2iv8Rx6pj8IxA8SHawnwW0=
X-Google-Smtp-Source: ABdhPJwaR2ZBgrMvFOCxPmERr/GODcyDwdLR8u4nldVHHcxLvDF36BYKAQef57Eysm+cYSwP4/y/Y/h+8VIhT0McGss=
X-Received: by 2002:a17:902:d3ca:b029:d7:e0f9:b9c with SMTP id
 w10-20020a170902d3cab02900d7e0f90b9cmr11696040plb.2.1605081605125; Wed, 11
 Nov 2020 00:00:05 -0800 (PST)
MIME-Version: 1.0
References: <20201031081747.372599-1-net147@gmail.com>
 <20201108095322.GA1129714@ravnborg.org>
 <20201108095724.GW1551@shell.armlinux.org.uk>
 <20201108104742.GA1161483@ravnborg.org>
In-Reply-To: <20201108104742.GA1161483@ravnborg.org>
From: Jonathan Liu <net147@gmail.com>
Date: Wed, 11 Nov 2020 18:59:49 +1100
Message-ID: <CANwerB0NGbtGna2c4+XNeGPUvNL1vfpAeiNTQEyEo-u+wM+Piw@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: Avoid resetting force in the detect
 function
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201111_030009_278000_BAB6077F 
X-CRM114-Status: GOOD (  24.20  )
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
Cc: Fabio Estevam <fabio.estevam@freescale.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Jonas Karlman <jonas@kwiboo.se>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, Liu Ying <victor.liu@nxp.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sam,

On Sun, 8 Nov 2020 at 21:47, Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Russell,
>
> On Sun, Nov 08, 2020 at 09:57:25AM +0000, Russell King - ARM Linux admin wrote:
> > On Sun, Nov 08, 2020 at 10:53:22AM +0100, Sam Ravnborg wrote:
> > > Russell,
> > >
> > > On Sat, Oct 31, 2020 at 07:17:47PM +1100, Jonathan Liu wrote:
> > > > It has been observed that resetting force in the detect function can
> > > > result in the PHY being powered down in response to hot-plug detect
> > > > being asserted, even when the HDMI connector is forced on.
> > > >
> > > > Enabling debug messages and adding a call to dump_stack() in
> > > > dw_hdmi_phy_power_off() shows the following in dmesg:
> > > > [  160.637413] dwhdmi-rockchip ff940000.hdmi: EVENT=plugin
> > > > [  160.637433] dwhdmi-rockchip ff940000.hdmi: PHY powered down in 0 iterations
> > > >
> > > > Call trace:
> > > > dw_hdmi_phy_power_off
> > > > dw_hdmi_phy_disable
> > > > dw_hdmi_update_power
> > > > dw_hdmi_detect
> > > > dw_hdmi_connector_detect
> > > > drm_helper_probe_detect_ctx
> > > > drm_helper_hpd_irq_event
> > > > dw_hdmi_irq
> > > > irq_thread_fn
> > > > irq_thread
> > > > kthread
> > > > ret_from_fork
> > > >
> > > > Fixes: 381f05a7a842 ("drm: bridge/dw_hdmi: add connector mode forcing")
> > > > Signed-off-by: Jonathan Liu <net147@gmail.com>
> > >
> > > you are the original author of this code - any comments on this patch?
> >
> > No further comments beyond what has already been discussed, and the
> > long and short of it is it's been so long that I don't remember why
> > that code was there. Given that, I'm not even in a position to ack
> > the change. Sorry.
> Thanks for the quick reply.
>
> Given that this fixes a problem for Jonathan I will apply this to -fixes
> if there is no other feedback the next couple of days.
> If it introduces regression we can take it from there.
>
> Jonathan - please ping me if I forget.
>
>         Sam

Ping.

Regards,
Jonathan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
