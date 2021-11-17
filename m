Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED4A1C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 20:56:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9D2D461AFD
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 20:56:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9D2D461AFD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ht1a5UwnZSYCMh3XbGI6n0/igykzruP4Gizvbxc0Bh0=; b=Bm4hgm8h/CIMh0
	TmP6uG1D1LWM2kDWxKQYAqMxNORC5NGdHbw0jptcK8kS7kzD30nCGQQL9oZzJ4KZ5cf9Lhe4bnOhU
	OgnF0wQn+NTOFV3rUhT0EXo0DMrlBhIckMhgat7fbn+Dp5qmUUK37Fo7r7FVhv9VSDi9nuf4divn0
	SdXAx2LQPx48qIGj36rA/AJCJgZpLuGrhFM6vdonIhjqNsw0FuHhXUmYbse8hWzt3D8doZ/KE0kxx
	/7LUBmBg5QdVUXkQ1VPXV45hlvrJsMbkv4HDep/VNU98TpFfUozVSNAFae9lgffMzUnvQ1tI/4D4p
	jq2wOPN0dGKMx/3mYqnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnRyz-006GQH-FA; Wed, 17 Nov 2021 20:56:41 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnRyw-006GPX-50
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 20:56:39 +0000
Received: by mail-il1-x132.google.com with SMTP id m11so4174064ilh.5
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 12:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GrJlquQSFqb7ld9Q1DR8e4oNe3prEb84z5HAh4ed2AM=;
 b=afsCAKBCIKIWX+vyZFbo/xeVsnQkBNdGAnYp5lte88IGZuNV1unaZOpAeDtT+h0+Ej
 Tq3pI2l1Pe+Hgk3/TKgpj3VlGYqS2WMGNugnCJXykWAKETOQrPFvP1Fhd5M02xckbaNe
 ym0nvf2IhGcGdrO251KeqW+vtjto4q1Rvc8fA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GrJlquQSFqb7ld9Q1DR8e4oNe3prEb84z5HAh4ed2AM=;
 b=vd3gKXhPw+WFrn7bnfExO3mkxzhObX/bdqbk3TwnOagH2dUt0rjlurG9w0xtmzx8BF
 BP0gWXIcTI7axoRSXIM0Cb1IIaDItWyp4L4F8oCSNTfhP1PsHC2UtJGayrZbHQdqz8XQ
 tSuMJ+2ChAjVDN1knNN0+ihuf8ognbZvpcNo5/WknPhm//6ZlZ4omRW3vQRM/3Q8W0Zg
 KGivmZrkHCkbGuU4LcUpYtbhQLPGKqtVWYsHJWE9EVLuO1vCp2YroIi/qpwH1StH3Tly
 vBynFsWYgjiO9I42ATbzck9UvXAVqG9exs3ZTyVHG2fyX8kVIHhHIWRmrvcZLRUDz6pI
 sKVg==
X-Gm-Message-State: AOAM533QQ4l8etPsvrJscoZzJJ0qH2OPlz9MzJs9vlLi7TVuNmPB3Ffc
 9vlOSR/09VFD0A+aKIhA0cKX9JmVjP79CA==
X-Google-Smtp-Source: ABdhPJx0Z9J7RGYmN8tbyr1qQt8FYNiN8vc653V9sFXgySLVbpg8MwzKBIvgzKVrfWEYUdxkElLtZQ==
X-Received: by 2002:a05:6e02:b2f:: with SMTP id
 e15mr10334093ilu.167.1637182595051; 
 Wed, 17 Nov 2021 12:56:35 -0800 (PST)
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com.
 [209.85.166.182])
 by smtp.gmail.com with ESMTPSA id z6sm850326ioq.35.2021.11.17.12.56.34
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 12:56:34 -0800 (PST)
Received: by mail-il1-f182.google.com with SMTP id i11so4113430ilv.13
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 12:56:34 -0800 (PST)
X-Received: by 2002:a05:6e02:18ce:: with SMTP id
 s14mr11662640ilu.142.1637182593782; 
 Wed, 17 Nov 2021 12:56:33 -0800 (PST)
MIME-Version: 1.0
References: <20211103234018.4009771-1-briannorris@chromium.org>
 <20211103164002.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <CAD=FV=XOda7vwUPY+WpGLzMwwrbrhQ9RqBQw4LhPwD6Sqhf7vw@mail.gmail.com>
 <CA+ASDXMvZCjn+X98JccyJiLQ0ggq-t-HqnM5SKYMbiQFqZDhGQ@mail.gmail.com>
 <YZVqbZpAPHOBG6bL@google.com>
In-Reply-To: <YZVqbZpAPHOBG6bL@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 17 Nov 2021 12:56:21 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wx581Oq9Jg=bqtWtWU1nrtUUo5YJG2zaf1tDEJ88J5Dg@mail.gmail.com>
Message-ID: <CAD=FV=Wx581Oq9Jg=bqtWtWU1nrtUUo5YJG2zaf1tDEJ88J5Dg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/input_helper: Add new input-handling helper
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Brian Norris <briannorris@chromium.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 linux-kernel@vger.kernel.org, linux-input@vger.kernel.org, 
 David Airlie <airlied@linux.ie>, linux-rockchip@lists.infradead.org, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Rob Clark <robdclark@chromium.org>, 
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_125638_233789_70C9A96D 
X-CRM114-Status: GOOD (  24.23  )
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

Hi,

On Wed, Nov 17, 2021 at 12:47 PM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Wed, Nov 17, 2021 at 10:38:58AM -0800, Brian Norris wrote:
> > On Fri, Nov 12, 2021 at 4:52 PM Doug Anderson <dianders@chromium.org> wrote:
> >
> > (Snip other comments; they seem reasonable, and I'll factor them into
> > the next version)
> >
> > > I guess one random thought I had is whether there would be an
> > > appropriate place to put this that _wasn't_ in DRM. I still wonder
> > > whether we'll ever try to upstream something like the cpufreq boost
> > > driver that we're carrying around and using in Chrome OS. If so, it
> > > would want to use these same helpers and it'd be pretty awkward for it
> > > to have to reach into DRM. ...any chance we could just land these
> > > helpers somewhere more generic?
> >
> > Yeah, I was torn on what to do here as well. I'd rather land something
> > than nothing, and when reading past conversations, it sounded like
> > Dmitry didn't want this kind of thing in drivers/input/ [1]. I'd love
> > to be wrong here though.
>
> I simply feel that input_handler is already a very simple abstraction
> and trying to specialize it to simplify users further is not productive.

I guess, if nothing else, it would be nice to avoid the tables that
we'd have to copy between DRM and cpufreq: the set of input devices
that are likely a sign that the user is interacting with the device.
It always seemed weird to copy that from place to place and if there's
ever a new input device to add it would be annoying to have to update
it everywhere.

It would be nice to avoid some of the other boilerplate code here
connecting things together when all we need is a callback, but I agree
that if those were copied it wouldn't be the end of the world.

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
