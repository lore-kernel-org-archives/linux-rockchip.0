Return-Path: <SRS0=Lfqv=QG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48B0AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 09:54:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC64B61A8A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Nov 2021 09:54:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC64B61A8A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+AmANJDn8Dzrq333360JvowDH8aZZHU980zfXXmcIPs=; b=hYQ65VuNllWuwttNk0CB60vWt+
	UY+M1uSB28sO74kl8j+WguDwfpNnzF66v2KFRNNl7DptV6+uuRzq5U3QmnRAtSbQ9zBhHtDdLtONg
	z6rCSNrDj1Dy1pNfNxDsVb6NKvjsOuCGp8PefO8I47x5XBCvqyo1FBVw1fDikNedx63A6z1HuQh+2
	mTc3i6qvzPxafUQQobnWGGTYR+pLN2lZkolt1QLYTjV8lqRij9rkd594kT9QC9bCfG+VZlQOpnw+X
	1BUHJUsR6F8dsXQnSduyD+diC29/+z6/j0HMKY4tIq5JjG19grzpdl2jJq3cxwGxUyIO2YIWxh5G5
	RoDjb6+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mo0bD-00A2US-Qx; Fri, 19 Nov 2021 09:54:27 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mo0bB-00A2U4-EM
 for linux-rockchip@lists.infradead.org; Fri, 19 Nov 2021 09:54:26 +0000
Received: by mail-lf1-x134.google.com with SMTP id f18so40946242lfv.6
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Nov 2021 01:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=cCmbb3DeLLP09ki4kuTJnLQtb2WYrPD5nXeA3cU7GHA=;
 b=CBkTq6ESHlhgDp68NHzmdZpbcEmNLLnQWp1+ZPSbbqH0lNdBvmM9mKgBhKUg2BwNZP
 lQ8Sle9W/OpUk/RPmfqTfYK0+1s4Ci3uZZvnV4AG7/snRoZS7NZZc/nNkFMXaIoPdP+5
 29hoODFIbGpE77eRmKctbKZ5WhVgMTMJM9cB+SFEOxSDKqrQG45G1rehYYJNW8TgRRpA
 MVM3dWAd5/++pqjAs8qdq94k8RojhP2yE/gT4sdlFT67qYlcr8QBXlCEmTjYQE68q0gL
 AfA7aBmDqMt2/rsY9F2XhUDcmFxczzt1A5Cb8yevWLWXo4nYDsgUs0vXA54KlznNm7WS
 8utg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=cCmbb3DeLLP09ki4kuTJnLQtb2WYrPD5nXeA3cU7GHA=;
 b=jHG4Hy/NK/zs6hRfIRQM4ZMnu7sRJXkFDiCFQjwzBMmg5pdR2BFmeCJ5LusVSmrwAi
 h3EkWW/Eh+E5dMwwiDgB6VmVgVuVB36+WSvvO6hzjIDNLjG4VQdgIPFpeVaT/as43YMG
 rKFE90LihWPn4TwwWm9FsHOJaoVa/osSdDt6Vg38j4TzppP9PHy1zvhIYfGH7g8i6i8M
 omzo+xSJEUX6lJUt/wX06jnSmpbppx91Mor15d13t19Nqxro7twq/CMGfwuGyp7msB4X
 Jg0ZWbDVdCD+9xmGFNu+w2fepM7scIubohZddGw24BaY40NYs+Q9AeUBFLLAFdO0UXcW
 1VMw==
X-Gm-Message-State: AOAM532xqkoar1yNdPiqXoWcVM0K8JeGt45wjhlsQZmq7FqwvR56wM1r
 XuhDhzyfrhxfAy4t1JHjutM=
X-Google-Smtp-Source: ABdhPJyMAsdZM1wTFviXfnVXe1xpTGDJW5bHj20TI7D62Huwj4l4m4Q0rLsX2tTFp2ikjlKXTD9LCQ==
X-Received: by 2002:a05:6512:1154:: with SMTP id
 m20mr30708122lfg.600.1637315663309; 
 Fri, 19 Nov 2021 01:54:23 -0800 (PST)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id v24sm240363lji.120.2021.11.19.01.54.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Nov 2021 01:54:23 -0800 (PST)
Date: Fri, 19 Nov 2021 11:54:19 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Rob Clark <robdclark@gmail.com>
Cc: Brian Norris <briannorris@chromium.org>, Rob Clark
 <robdclark@chromium.org>, Andrzej Hajda <andrzej.hajda@intel.com>, David
 Airlie <airlied@linux.ie>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Doug Anderson
 <dianders@chromium.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>, "Kristian H . Kristensen"
 <hoegsberg@google.com>, dri-devel <dri-devel@lists.freedesktop.org>, Thomas
 Zimmermann <tzimmermann@suse.de>, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <20211119115419.505155b5@eldfell>
In-Reply-To: <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211119_015425_525859_7EA667B1 
X-CRM114-Status: GOOD (  40.90  )
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
Content-Type: multipart/mixed; boundary="===============4592028581212394314=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4592028581212394314==
Content-Type: multipart/signed; boundary="Sig_/GCMqU3cCDFY4+95vMjiPI4b";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/GCMqU3cCDFY4+95vMjiPI4b
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Thu, 18 Nov 2021 15:30:38 -0800
Rob Clark <robdclark@gmail.com> wrote:

> On Thu, Nov 18, 2021 at 2:39 AM Pekka Paalanen <ppaalanen@gmail.com> wrot=
e:
> >
> > On Wed, 17 Nov 2021 14:48:40 -0800
> > Brian Norris <briannorris@chromium.org> wrote:
> > =20
> > > A variety of applications have found it useful to listen to
> > > user-initiated input events to make decisions within a DRM driver, gi=
ven
> > > that input events are often the first sign that we're going to start
> > > doing latency-sensitive activities:
> > >
> > >  * Panel self-refresh: software-directed self-refresh (e.g., with
> > >    Rockchip eDP) is especially latency sensitive. In some cases, it c=
an
> > >    take 10s of milliseconds for a panel to exit self-refresh, which c=
an
> > >    be noticeable. Rockchip RK3399 Chrome OS systems have always shipp=
ed
> > >    with an input_handler boost, that preemptively exits self-refresh
> > >    whenever there is input activity.
> > >
> > >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> > >    render new frames immediately after user activity. Powering up the
> > >    GPU can take enough time that it is worthwhile to start this proce=
ss
> > >    as soon as there is input activity. Many Chrome OS systems also sh=
ip
> > >    with an input_handler boost that powers up the GPU.
> > >
> > > This patch provides a small helper library that abstracts some of the
> > > input-subsystem details around picking which devices to listen to, and
> > > some other boilerplate. This will be used in the next patch to implem=
ent
> > > the first bullet: preemptive exit for panel self-refresh.
> > >
> > > Bits of this are adapted from code the Android and/or Chrome OS kerne=
ls
> > > have been carrying for a while.
> > >
> > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > --- =20
> >
> > Thanks Simon for the CC.
> >
> > Hi Brian,
> >
> > while this feature in general makes sense and sounds good, to start
> > warming up display hardware early when something might start to happen,
> > this particular proposal has many problems from UAPI perspective (as it
> > has none). Comments below.
> >
> > Btw. if PSR is that slow to wake up from, how much do you actually gain
> > from this input event watching? I would imagine the improvement to not
> > be noticeable.
> >
> > I think some numbers about how much this feature helps would be really
> > good, even if they are quite specific use cases. You also need to
> > identify the userspace components, because I think different display
> > servers are very different in their reaction speed.
> >
> > If KMS gets a pageflip or modeset in no time after an input event, then
> > what's the gain. OTOH, if the display server is locking on to vblank,
> > there might be a delay worth avoiding. But then, is it worth
> > short-circuiting the wake-up in kernel vs. adding a new ioctl that
> > userspace could hit to start the warming up process? =20
>=20
> In my measurements, it takes userspace a frame or two to respond and
> get to the point of starting to build cmdstream (before eventually
> doing atomic/pageflip ioctl).. possibly longer if you don't also have
> a similar boost mechanism to spool up cpufreq
>=20
> But the important thing, IMO, is that atomic/pageflip ioctl is the
> cumulation of a long sequence of events.. input-boost is letting
> whatever it may be (PSR exit, GPU resume, etc) happen in parallel with
> that long sequence.

Right, exactly. That is why I was musing about a *new* ioctl that
userspace could hit as soon as any input device fd (or network fd!)
shows signs of life. Would that be enough, avoiding all the annoying
questions about which input and DRM devices should participate here
(and what about non-input devices that still want to trigger the
warm-up, like network traffic, e.g. remote control?), or does it really
need to be kernel internal to be fast enough?

As Brian wrote about his quick hack to test that via debugfs, sounds
like the userspace solution would be totally sufficient.


Thanks,
pq

--Sig_/GCMqU3cCDFY4+95vMjiPI4b
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmGXdEsACgkQI1/ltBGq
qqcdOBAAl9X47lu2lO66cWGjSsacbgjGDy+MldM0YFq5JF8ooCZXNGL176wqkChG
yz9SMJGDApoJ04/NsIE73coxTYU3xKBYTbAeuFxM5IklcXEqKc/4VXDCcim7Lwlg
VzUxOxb1XfNfZNyn4uMANyGpk0uO4dnIpd5u1uaWXhKajn9RTZKwQ2SBbbEt4Dcl
hcDBpGXGU9evx5ZBvUHTNUPcfEsAYWyHKMDGhVZwH5YUYAgwG2P5IHFstX5PUori
O/6SBot5hj7JfCOpV6wZcASeonCeescV2Nq4muPF6yHGI9mbgppaaYi2ezcx6Os+
udxpoovlLoYU54foZaqjsJvy1nlLZLHi4pPIfHmAn8+hJ2IvU5yQoB+7QZe6FhQN
tKhkoqUpUYCSUTMy1v/0mJJ0+zBBChNV3Y5uT/Q8c7TJPPORtAMjU8bP0xgL1SpA
6CB2CPZy+QyCGeQJpR+lAlMGtgZPPzsx9zgS3SM/sItEl+yNDDvkoJMPfYlKjvqH
ZI9KUtZ1BIfYzeU3F2B5vztJRIpG4sDS4nRa+WXHLTQi0eit4ZFqaRU+5oU1HQP8
OmOu+bAlP45l8QiunzbwvCFmq/Kq5PY61ly+iN08+26EXLxeCmVLGi3UGkcIMulI
WeqfT8f3422boYyBp9ftzCnEakQHcU2Sl4gZnXnonw+7SpNNSYY=
=g0x0
-----END PGP SIGNATURE-----

--Sig_/GCMqU3cCDFY4+95vMjiPI4b--


--===============4592028581212394314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4592028581212394314==--

