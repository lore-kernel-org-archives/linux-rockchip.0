Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6325C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:39:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96116611F0
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 16:39:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 96116611F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5S6zWyP9qXEEmj9up5qXyuR2xQTyPl3MjR3mV+ouYkE=; b=oUR3jQ6hz5i5WR
	0v0QPKel3T5kY8nPdQkDtAiLTpWzUtj2MTvqAVdjrxPfvuFaYOgAsTDDx5gZ/kokWRsl9RzD0Qaqc
	znjO2jpQSYRLAlYo+0PPf/7oycWLZtFoYcMTImrzn1mgyPveqnZBmDPGZFWODTXjf0KcMXUMK2Shq
	K+CPa5hqNFmnzaWJ9mpiLQwzXNBBGpR/z4EUe/nsdAoPtYoQmeXOOWQzFq0CKsMO2MDsV2OwqPOr7
	akGoLvjAJn+8k/SxU8IU5VQbjVNLsySrvRzyXRglcZDX2UlTtruaxm/UDsGFYer4trOdRTIZAOtta
	NWhbs8InrwJWn+YUdLKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo6vS-00B4Zm-HY; Fri, 19 Nov 2021 16:39:46 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo6vP-00B4Wv-Bx
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 16:39:45 +0000
Received: by mail-wr1-x434.google.com with SMTP id c4so19117270wrd.9
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 08:39:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WWxvb18J2OY31IOdF8stiBLalQgXLoh0/wK/1Bc450I=;
 b=G/0sZg/TTmfGtyUBtoN7qKLoLhMKvoJ+uHbBFtA+vUeA4c8l/a4gvR/KvwdM5GgdeG
 K5aGLhWroUkdVAKoyOy9XSCgOlka18S9LVxC4hEtS4m4ZcIjqzIt4C398fELpvAkBUGp
 kAGIO0R+WKD0F7cs70CDOsgmPk907XfZuEH2TFWQWMJFVVvBt6fhuOcVE1VhUNQrMz/2
 gfd7zVIdQsyQkNG4ybBUzMmdaB1YV2Daeeie5XKJWliXPsmVm1GQimSuJyTIxGBT8STd
 HkAQkveIny04C9zN6ddwK532QR+/Fm9y3SRYaHOWk8z/fIbx7RL87GP3mWFYDPUyKWxC
 3piw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WWxvb18J2OY31IOdF8stiBLalQgXLoh0/wK/1Bc450I=;
 b=6LjftZmMFKGZFRoak6zOykQw+j5gONyV4f0Uib2ndEkJRHwIflih5SA+jYAMetamt0
 gYWTZb8P6wsZG8epPdUiEfTKg0SboK53A/vlAPzEAMHOeboSnfD2KtOREW2JhbHZInw0
 dRKPWPlrUw2d3t/nJ/ZDvKh/yWsYjdg43MwxFjevE9o7ZRc96t2SzK+XoZxC5oeBVKEd
 WK1ECIEkydVuM3QWQNJrllgE9bcNBBK2UcjxjU5G8+QGDru0GEwGbZP3Dow5m0S7CDuG
 QUr94b6N7XlUSZ6WyANR5EWG7QBPcEuhiD1TNqQa3QIKYzKPymb6OPOMvsDZxYkJ0snG
 SMmQ==
X-Gm-Message-State: AOAM533A2P2DZ/iHD6Xs1rvsgqCgWQ2HtnyFgAJsQs5cHgrA+90X2v+Z
 KOiOGQDSmOKH1/BcBFeuCUvDnK3c4r/5m/gRd5M=
X-Google-Smtp-Source: ABdhPJxfl7O5ix42iKo6OVNO1pcXl3m9LKgUvG/qGjMcTbNPkTvvG4O8hTy0Lvlihamj11q+V2U2n8BSL8Km1tAxcyc=
X-Received: by 2002:a5d:6351:: with SMTP id b17mr8718687wrw.151.1637339981245; 
 Fri, 19 Nov 2021 08:39:41 -0800 (PST)
MIME-Version: 1.0
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell>
In-Reply-To: <20211119115419.505155b5@eldfell>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 19 Nov 2021 08:44:45 -0800
Message-ID: <CAF6AEGus9CtgjvpJRX-YPkrrNeE+--9KeGxKBN_U=aOzzRE8FA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
To: Pekka Paalanen <ppaalanen@gmail.com>
Cc: Brian Norris <briannorris@chromium.org>, Rob Clark <robdclark@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@linux.ie>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_083943_454455_0741E77A 
X-CRM114-Status: GOOD (  45.89  )
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

On Fri, Nov 19, 2021 at 1:54 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
>
> On Thu, 18 Nov 2021 15:30:38 -0800
> Rob Clark <robdclark@gmail.com> wrote:
>
> > On Thu, Nov 18, 2021 at 2:39 AM Pekka Paalanen <ppaalanen@gmail.com> wrote:
> > >
> > > On Wed, 17 Nov 2021 14:48:40 -0800
> > > Brian Norris <briannorris@chromium.org> wrote:
> > >
> > > > A variety of applications have found it useful to listen to
> > > > user-initiated input events to make decisions within a DRM driver, given
> > > > that input events are often the first sign that we're going to start
> > > > doing latency-sensitive activities:
> > > >
> > > >  * Panel self-refresh: software-directed self-refresh (e.g., with
> > > >    Rockchip eDP) is especially latency sensitive. In some cases, it can
> > > >    take 10s of milliseconds for a panel to exit self-refresh, which can
> > > >    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
> > > >    with an input_handler boost, that preemptively exits self-refresh
> > > >    whenever there is input activity.
> > > >
> > > >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> > > >    render new frames immediately after user activity. Powering up the
> > > >    GPU can take enough time that it is worthwhile to start this process
> > > >    as soon as there is input activity. Many Chrome OS systems also ship
> > > >    with an input_handler boost that powers up the GPU.
> > > >
> > > > This patch provides a small helper library that abstracts some of the
> > > > input-subsystem details around picking which devices to listen to, and
> > > > some other boilerplate. This will be used in the next patch to implement
> > > > the first bullet: preemptive exit for panel self-refresh.
> > > >
> > > > Bits of this are adapted from code the Android and/or Chrome OS kernels
> > > > have been carrying for a while.
> > > >
> > > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > > ---
> > >
> > > Thanks Simon for the CC.
> > >
> > > Hi Brian,
> > >
> > > while this feature in general makes sense and sounds good, to start
> > > warming up display hardware early when something might start to happen,
> > > this particular proposal has many problems from UAPI perspective (as it
> > > has none). Comments below.
> > >
> > > Btw. if PSR is that slow to wake up from, how much do you actually gain
> > > from this input event watching? I would imagine the improvement to not
> > > be noticeable.
> > >
> > > I think some numbers about how much this feature helps would be really
> > > good, even if they are quite specific use cases. You also need to
> > > identify the userspace components, because I think different display
> > > servers are very different in their reaction speed.
> > >
> > > If KMS gets a pageflip or modeset in no time after an input event, then
> > > what's the gain. OTOH, if the display server is locking on to vblank,
> > > there might be a delay worth avoiding. But then, is it worth
> > > short-circuiting the wake-up in kernel vs. adding a new ioctl that
> > > userspace could hit to start the warming up process?
> >
> > In my measurements, it takes userspace a frame or two to respond and
> > get to the point of starting to build cmdstream (before eventually
> > doing atomic/pageflip ioctl).. possibly longer if you don't also have
> > a similar boost mechanism to spool up cpufreq
> >
> > But the important thing, IMO, is that atomic/pageflip ioctl is the
> > cumulation of a long sequence of events.. input-boost is letting
> > whatever it may be (PSR exit, GPU resume, etc) happen in parallel with
> > that long sequence.
>
> Right, exactly. That is why I was musing about a *new* ioctl that
> userspace could hit as soon as any input device fd (or network fd!)
> shows signs of life. Would that be enough, avoiding all the annoying
> questions about which input and DRM devices should participate here
> (and what about non-input devices that still want to trigger the
> warm-up, like network traffic, e.g. remote control?), or does it really
> need to be kernel internal to be fast enough?
>
> As Brian wrote about his quick hack to test that via debugfs, sounds
> like the userspace solution would be totally sufficient.
>

The question is, I think we want to use this for at least a couple
different things.. PSR exit, and/or early GPU wakeup/boost.  So I'm
not quite sure where/what this ioctl should be.  Different drivers may
have different uses.  Also, because of the CrOS userspace sandbox
architecture, the place that could do a kms ioctl isn't really the
place that would know when to call the ioctl.

But if we want to move the policy out of the kernel, one approach
would just be to have some sysfs where userspace could configure the
input_device_id[] filter..

BR,
-R

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
