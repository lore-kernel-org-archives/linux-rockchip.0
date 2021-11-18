Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7884BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 13:24:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3034261401
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 13:24:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3034261401
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7B6Z/1MvxmynLfjgLKmzzFIZBFlRvJg2kc0z4p+75e4=; b=jrkvzSJe6l2H8P
	YlkOXwz29GWAoXF0eRdrxApkTXbFr+tn+3a+nfZGt1mZeWF/7Bn/08muaeOrkyn+W/MyBefvsV/76
	OveQM96W8hyNecXEfsg9oT3dmd6nKXCmwWXFtfaDUP6n0SIXToT5xmb+nHXFjyZNyc2Yaa1pQKuX0
	/W9UxPooSyLC8FHOHiEJKltLq/Xgo4JMbpVtC76D37I8FLHnmUvY0RLdrl76x6JZRICD/sUFeft3q
	7r/j9un8EQIyGS0wz2uVWlq7aKiL4Cx3X9hBppmujYTXSAwapeeGd1h3Bi2JfSKamIg35tKoAA+ZY
	XWdB2zi+IlQbeOeqnQGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnhOq-007tJH-E2; Thu, 18 Nov 2021 13:24:24 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnhOn-007tGE-1H
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 13:24:22 +0000
Received: by mail-yb1-xb32.google.com with SMTP id u60so17891388ybi.9
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Nov 2021 05:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3CHovZnyFYzL8A4y+oY7gk4d/KIvHf2oXmR6WClb8/s=;
 b=T6WqBHc0TCpshnyXZ0Y0DJ578rZDDMyf1YgWWuXk0Fpnpref3dIG0HDuViic5bsZaO
 pLHoJ0eiaSOqtmuA9Vqz7lX8uC7BW9GcYolNoaStCGDfYFj3NMQ0pmovjvUVZJEtkSLU
 gdu6Ls2fD5r5Kb7bX8FrQraDF9/jK+uZbsr5bZFfSVZZLsN9n0eHS/xCWUkL2ONPo1Yw
 ef+b5XBuooYEblM2ZFxjouFDGhGHi818ivhaxmUTv0vhgnKSCpgaNipGIXoYygx5wU1O
 EtHeCZ7CMAchl1gp4Jibq4butcBqnXKX6GO2T2IwKkGiWoH0TCK9rwNYDRLwBRHqqFHY
 u3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3CHovZnyFYzL8A4y+oY7gk4d/KIvHf2oXmR6WClb8/s=;
 b=D+xPr61wr/mfZOHJvrZd4tWmAC8/JHrYOTUDtgNSdTzK9PzyxJ86fTXhHQ0+H2GzU9
 S8yFleKuiL0X+VTXyv94eDjxnpiFyPH742ApLHXe06dGAfAaY+t2l4Wnko1bGP3KjNle
 SZSKYWn385+qCYyKrJ/dWM9VRTCtpRJIa8+N/40h73Q2jYSsrSbmGaaFvZBnX+ThQsN5
 mVYp9NYIO0fLuQEs4S07NkkGtfEaKsV39myL+VE1xc2bq08bMFM9exi4SMEL8fXO0EZd
 TvjDP9bqq9BQ6gRRD7F95maex6D55j5uo7jFHpYfOycAHnuF0aq3M/g5WkCNA8uxT0yJ
 eyDw==
X-Gm-Message-State: AOAM533na6HoaV0MqUTSGRuqol4+ZjR6etGTLt2hLjEP+7NhYPrkd4WO
 nN0JandS8xMR8eUWrToq0475x6fRrZ5upAxvwP1elg==
X-Google-Smtp-Source: ABdhPJxQH4DGzX1DsG0B1QVx1lWh1G3G3AkM7oB0/0OrlLqXkWrE2kGjQvi/XY7Qmfbr8Yqc3zf4bpfydzz5bXBUpyw=
X-Received: by 2002:a05:6902:1021:: with SMTP id
 x1mr28021143ybt.43.1637241859608; 
 Thu, 18 Nov 2021 05:24:19 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
 <CAPj87rPNSt7nZX93prAYD3Emf-34RdTZWp_1TOuAybBebObZhQ@mail.gmail.com>
 <fba695b7-863a-c492-0209-41bc07c7baee@rock-chips.com>
 <CAPj87rO86Mom-076Z5QX9hd=0bQi=AQcofkc1fSR4-VV2Zo6aQ@mail.gmail.com>
 <e948ee33-d1ea-cd53-a792-2e044eed1529@rock-chips.com>
In-Reply-To: <e948ee33-d1ea-cd53-a792-2e044eed1529@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 18 Nov 2021 13:24:07 +0000
Message-ID: <CAPj87rOQDAP+=AGizuvHG=cOfOCNFtPhYM_g8V=XMNmJPoz6oQ@mail.gmail.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Kever Yang <kever.yang@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de, 
 linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_052421_180367_DB8B2CB3 
X-CRM114-Status: GOOD (  32.58  )
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

Hi Andy,

On Thu, 18 Nov 2021 at 13:14, Andy Yan <andy.yan@rock-chips.com> wrote:
> On 11/18/21 8:07 PM, Daniel Stone wrote:
> > Technically, the driver cannot be upstreamed as-is. It looks as if it
> > were a pre-atomic driver, that was half-converted to atomic, and then
> > has been half-converted to atomic helpers as well. Things like
> > reference counting and global state are not handled correctly at all.
> > You can see this if you try to run Weston on top of the VOP2 driver:
> > the framerate is decimated because the event handling massively
> > over-synchronises, and the event timestamps which arrive are
> > incorrect. This would be fixed by correctly using the event helpers
> > that we have had in the tree for years (which would also eliminate the
> > unnecessary framebuffer reference handling). It also does not work
> > with the GPU drivers in the tree because it lacks the one-liner to
> > correctly handle dma_resv synchronisation, which makes it both too
> > fast as it displays content which is not ready, and too slow because
> > it can't do it at full frame rate.
>
> We have different team run Android , X11, Weston on rk356x, especially
> for android, we can run at 60 fps.
>
> Our vop2 driver is developed on Linux 4.19, am not sure which version of
> kernel you put our drivers on.

We forward-ported it to a current mainline kernel and started to work
on fixing some of the issues. When we did this, we went back to the
BSP tree posted on GitHub to test using a pure-BSP environment, and
observed the same breakage there.

> > Similarly, on the RK3566 EVB, the DSI does not work unless HDMI is
> > also active, but when HDMI is active at the same time as DSI, it just
>
> I am very sure rk3566 evb DSI can work without HDMI.

I'd love to know how. :) Using the meta-rockchip layer as published on
GitHub, we cannot get working DSI without HDMI, using upstream Weston.
When the HDMI connector is disabled, DSI comes up blank. When the HDMI
connector is enabled, DSI works fine but HDMI is blank.

> But take care that the vop on rk3566 has a special limitation: there are
> three windows(Cluster1/Esmart1/Smart1) that have a mirror lock, that means they
> can't be programed framebuffer address independently , they can only
> share framebuffer address with Cluster0/Esmart0/Smart0. We use these feature
> on Android.
>
> I have comment these limitation in our driver.

Yeah, we noticed this.

> Compared to old vop, vop is strong but a bit complicated, we try very had to
> make it work on as much display framework as possible.
>
> We have upstream plane, but I am really in a rush this year. So sorry
> for the late of upstream, but we glad to work with community.
>
> So Sascha, please feel free to go on with your work.

Great, thanks. If you agree with the plan I posted, then we can all go
forward with that upstream, doing the development work with ourselves
and Sascha. Hopefully Rockchip will be able to support this effort.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
