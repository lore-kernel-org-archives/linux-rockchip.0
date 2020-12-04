Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 596C5C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 17:53:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6E2E22AAD
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 17:53:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6E2E22AAD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K/eH5ci8EaZa7zNMxsjxYixXmM1s6qVxevp6N0tlScg=; b=Wjn75DYqZ8fa8zTdzrOuBTw3e
	fqCPQijc9jxuMrW+sYrqhBe+kRbkWZXschiZouHWfDd4DXOKY+8+Be9J7yIt2qSNENYpcQ7yTr7pf
	yVkxuIFO7U6bniyqf+8jWBovvieKcIio3ZJkuzEh+5Hm842s1b4fLY+USlOWDc49W+80Ysv5Q2DsL
	UT3XpUEgV0KSjcP9Je1xKHE6+OiJYPxJ4nvvDGrofLUgPtcgXTMQE2U+p+zr0PTfKS6oHDtTccBBJ
	u8DK4rFYpWUa7nKy2EM8Nb1ATaYWo7+FaEsHLwqZev8gpTapbeafRJ4Z5cp5iKarEx27YhT3ZGh5t
	KHNFPrpaw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1klFGn-0006Jj-5X; Fri, 04 Dec 2020 17:53:25 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1klFGj-0006Ie-Se
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 17:53:22 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i62so1450353vkb.7
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Dec 2020 09:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BqihWCBkMsBsCD9BeoyI1g9VVkUVEnrNjSab8rvd76o=;
 b=Iav/LhPXwbicYbZPRxVD6NYEjmYhGak6V34EoZ/WJvkg0xce6/p+Tzgr9f1pVdXyuv
 2Wd/hwDPiRI0QCmE4Vv2pqVkVil4Ijop7o2B0NuKjxgc2GfiXvVDO+mq3ujHaC1+50Qw
 ba/It1cBhsW6uQb3pXoFWquTuibR4uZTXfGk8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BqihWCBkMsBsCD9BeoyI1g9VVkUVEnrNjSab8rvd76o=;
 b=grcfU32kx2HkKIfDhRUOBtXguvlSsHtGtQnuJJRnsPIM56SoNMgd2dNBGpcvNflYOl
 sxEru9arO4ApA7y6GxkwMr+V47aq428nJ98GyxnA8gy3mRl9ckBbkiWVoaZtCQHEQ2yf
 zfbxONmAVIkW6vso3DQs5jX1XUHzhnC+fAmZE35k7C6jAcJJwfwal/FkW/6wc3pKdT+d
 wI9+hwiIjDgaOTxbzVsakK8QPgN2OVppjFNlLJRz3J6pwGXU9CZc+4B4v9eryz1OXKXH
 yv81Ae49zQwoWKS8QYWePAw4yUE4485Xpm8846+dJy4l+AmH+B6vXeDV68GTVY93kktK
 3hQg==
X-Gm-Message-State: AOAM530yPrjQIBwB2bkOgRahAraFi4Gr9c7+T7k2T/pIjpA7Yhyr0qoj
 B0se6I/1CzOlwKv2JBV6piKkuss4D407Ow==
X-Google-Smtp-Source: ABdhPJyhvCbz74GL8iuPZ9SNKeWnSMuh9yVzqRYwSzpWzDtacPD9bfPk/1i+yjB/xpSZIPlOfBW3bg==
X-Received: by 2002:ac5:c54a:: with SMTP id d10mr4946271vkl.12.1607104395446; 
 Fri, 04 Dec 2020 09:53:15 -0800 (PST)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44])
 by smtp.gmail.com with ESMTPSA id 12sm380396uae.3.2020.12.04.09.53.14
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Dec 2020 09:53:14 -0800 (PST)
Received: by mail-vs1-f44.google.com with SMTP id u7so20968vsg.11
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Dec 2020 09:53:14 -0800 (PST)
X-Received: by 2002:a67:4242:: with SMTP id p63mr5089432vsa.34.1607104394170; 
 Fri, 04 Dec 2020 09:53:14 -0800 (PST)
MIME-Version: 1.0
References: <20201201031015.23314-1-chris.ruehl@gtsys.com.hk>
 <CAD=FV=Wyk9BYR3cnfm=9tBh=XBxEP=udMTeaEYPzAqa5m8x=yg@mail.gmail.com>
 <f8a21465-91d0-9967-e559-d8f91f795028@gtsys.com.hk>
 <e6d351f9-232c-ebab-2f4e-bf2ff4dc8238@gtsys.com.hk>
In-Reply-To: <e6d351f9-232c-ebab-2f4e-bf2ff4dc8238@gtsys.com.hk>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 4 Dec 2020 09:53:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UjwK7qz-SOJNpZbq4bABWgDunZ0Yjk+Z9zs=wSH=sy-A@mail.gmail.com>
Message-ID: <CAD=FV=UjwK7qz-SOJNpZbq4bABWgDunZ0Yjk+Z9zs=wSH=sy-A@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-emmc: emmc_phy_init() always return 0
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_125322_006788_874A731F 
X-CRM114-Status: GOOD (  36.24  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Thu, Dec 3, 2020 at 7:01 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>
> Hi,
>
> On 2/12/2020 4:36 pm, Chris Ruehl wrote:
> >
> > On 2/12/2020 12:05 am, Doug Anderson wrote:
> >> Hi,
> >>
> >> On Mon, Nov 30, 2020 at 7:10 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
> >>>
> >>> rockchip_emmc_phy_init() return variable is not set with the error value
> >>> if clk_get() failed. The debug message print 0 on error and the function
> >>> always return 0.
> >>> Fix it using PTR_ERR().
> >>>
> >>> Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock
> >>>
> >>> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> >>> ---
> >>>   drivers/phy/rockchip/phy-rockchip-emmc.c | 1 +
> >>>   1 file changed, 1 insertion(+)
> >>>
> >>> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c
> >>> b/drivers/phy/rockchip/phy-rockchip-emmc.c
> >>> index 48e2d75b1004..75faee5c0d27 100644
> >>> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> >>> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> >>> @@ -253,6 +253,7 @@ static int rockchip_emmc_phy_init(struct phy *phy)
> >>>           */
> >>>          rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
> >>>          if (IS_ERR(rk_phy->emmcclk)) {
> >>> +               ret = PTR_ERR(rk_phy->emmcclk);
> >>
> >> I'm pretty sure your patch isn't correct and it would break use cases.
> >> Is it fixing some bug that you're aware of, or you found it via code
> >> inspection?
> >>
> >> Specifically:
> >>
> >> * The big comment block in this function says that the clock is
> >> optional and that we're ignoring errors.
> >>
> >> * The printout in this function is "dbg" level, which is an extra
> >> indication that we aren't concerned with these errors.
> >>
> >> Arguably the code could be made better.  If you want to improve it,
> >> you could check for just the error we expect if the clock isn't
> >> specified (probably -ENODEV, but you should check) and treat all other
> >> failures as real errors.
> >>
> >>
> >> -Doug
> >>
> >
> > Hi Doug,
> >   I reviewed the code while hunting behind an other bug, with hs400
> > and yes I saw the comment that they don't care about the problem
> > if the clk_get() return an error, and set the rk_phy->emmcclk = NULL
> > regardless, not using the ret variable but define it isn't useful.
> >
> > If return a error code break something on the other hand, better it
> > hit it rather then suppress it in IMHO.
> >
> > Let me follow the caller of the function and see how they treat the
> > err != 0.
> >
> > If something is in danger, I will be effected with my rk3399 rollout :)
> >
> > Chris
> >
>
> I check my case, the dts properties emmcclk is defined for the rk3399.
> (checked it I do not have an error, clk_get() works)
> If clk_get() failed and we propagate error<0 to the phy-core.c which then
> not increase the phy->init_count, but throw error message that something goes
> wrong.
>
> Someone should explain to me, why we should cover up an error.

If you want to change this I'd guess you'd want to change the bindings
in a backward-incompatible way.  The bindings
(Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt) say:

 - clock-names: Should contain "emmcclk".  Although this is listed as optional
                (because most boards can get basic functionality without having
                access to it), it is strongly suggested.

Since it's officially listed as optional then the driver needs to
function without it.  It was a long time ago, but my guess about why I
needed to list it as optional was for the whole "device tree purity"
reasons.  In other words the goal is always that old device trees
should continue to work, so if you're adding new properties they need
to be optional.

It seems highly unlikely anyone actually has a device tree that
doesn't specify this clock, though.  If you want to cleanly go through
and mark this as required everywhere I won't personally object.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
