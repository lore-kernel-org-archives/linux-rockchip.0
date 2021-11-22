Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D7A0C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 09:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A1zZbJankB4vw5IT8oth1I9FeqYaPNYywDqLAnuwWg4=; b=GBUlDVEv835KaAZ0IqoBYSD0s5
	d5tochPtnQrzq/JAEwKBOqwOs940142dsPH2Wr5dADbvIcggLv3hOnKZvOCLXm2Nqivpmad/GRdPu
	78hZZJ4kyD3OEOdtaGFaynqtJQiCOaFSfWBklI5k+ezqmRK13yHCg3eGrxmh1RNudRL2MDl4pegdB
	NaJQrsztB+5sFRY0creYKNM9NefUrmEfqOpifX3N9/mZcYXUADGjUy6pprnzM/pvi2SgYLFW/KZfz
	6HCXkfo4upWPDKqr1uINoyXficUp9s2dK/gQYAISSpsWEJtFOWannV3z+wPnfyqWRQOM+3UvwyR8p
	lFk95JWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp5rC-00FesQ-Ac; Mon, 22 Nov 2021 09:43:26 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp5Za-00FZDL-2C
 for linux-rockchip@lists.infradead.org; Mon, 22 Nov 2021 09:25:15 +0000
Received: by mail-lf1-x134.google.com with SMTP id b1so77296428lfs.13
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Nov 2021 01:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=xxQtWyJocXmtu7ZkhSsQxz4Z9a1g2nRcvrt+ZIrEyGI=;
 b=qJVfJ35Xw3XQ8Z7iBFBc0ObJZM+HqYomwU2i7WW+4ksPrOyv8jnBkvXYGYsepoB5P6
 1EHLmM3TN1fBlpmW13vxAlMzDU1CHnJaEfNo/pM2LvcFQwPQcsKCSuJdk5PpdecRmdX3
 5DgeT73XdQv8YyaLiQ5VkuodppI7r+id/mMWfZIQw2vM9plSYGADMRlNlJIhIEdFnCB9
 6KZAuqb5M9D108KUbcnpo/fc2kUvmGM3U0EcVsmmqzLmabiidOeIWQ7Kk2qETxPpgAkx
 Tk5fBKD+1Ge5XeCdqadQ+kN+qgxReTYjbqn7bl86I+puK2YGyvdrgRTu5TD1ODn4ILdN
 MVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=xxQtWyJocXmtu7ZkhSsQxz4Z9a1g2nRcvrt+ZIrEyGI=;
 b=c10+BielEBKw/I6DGLv6z2nz3NiqUS3MVoBtfmvXZ9AfGi9bKlRjhfZbckEtGjrJG+
 D/9kcE8VD3O4hYtIiDOkBV2yp6GvRQXnaQ/FrXj/UKDHEWOvEr2ddxzbpdXU1bPT9lEC
 kh0t5+jjgyjZWAgFXpD03xqG9BxfMFC9jI34lIcWFnnt7LTDX/fViicRv4izY95Tm58T
 hKbuxUkbR1wFDrTpxjvqReTwH0fRVHX7V6sBuXYAmSPgUy91q4sdCORj55Xc4R6Ya0zX
 5ewA1UxzsO7GYJwRIyvSEX/YiqqNQSb9kLAIS4iATKFADDCUN5xFyrbbNFjOyCahZ4Fl
 GoUw==
X-Gm-Message-State: AOAM531G14eNwOgqwb3vxiDcftU3odUOS0ivI3i2jesE50Vkr8pYgIqW
 H2STq3dciPiwf9iM9d6Jf3Q=
X-Google-Smtp-Source: ABdhPJwRzFsFc6m7LbXk5yEmkvBbNjw4oQ4fPMsXutabrGsODK2z5xsPYxFA5vhjquk7lHXpA3xRzw==
X-Received: by 2002:ac2:4f90:: with SMTP id z16mr55965325lfs.381.1637573112420; 
 Mon, 22 Nov 2021 01:25:12 -0800 (PST)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id f19sm902545lfm.119.2021.11.22.01.25.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Nov 2021 01:25:12 -0800 (PST)
Date: Mon, 22 Nov 2021 11:25:09 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Brian Norris <briannorris@chromium.org>, Rob Clark
 <robdclark@chromium.org>, Andrzej Hajda <andrzej.hajda@intel.com>, Peter
 Hutterer <peter.hutterer@who-t.net>, David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Doug Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <20211122112509.4d7e6ad3@eldfell>
In-Reply-To: <YZfJET55LjuW4BP+@phenom.ffwll.local>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell> <YZcB4ooqpvP3gHdx@google.com>
 <20211119123841.1d628cb6@eldfell>
 <YZfJET55LjuW4BP+@phenom.ffwll.local>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_012514_170316_77F2A564 
X-CRM114-Status: GOOD (  48.31  )
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
Content-Type: multipart/mixed; boundary="===============0564825652094243224=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0564825652094243224==
Content-Type: multipart/signed; boundary="Sig_/JE8=lbNU9pXwl2HdVmDFmA_";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/JE8=lbNU9pXwl2HdVmDFmA_
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 19 Nov 2021 16:56:01 +0100
Daniel Vetter <daniel@ffwll.ch> wrote:

> On Fri, Nov 19, 2021 at 12:38:41PM +0200, Pekka Paalanen wrote:
> > On Thu, 18 Nov 2021 17:46:10 -0800
> > Brian Norris <briannorris@chromium.org> wrote:
> >  =20
> > > Hi Pekka,
> > >=20
> > > Thanks for the thoughts and review. I've tried to respond below:
> > >=20
> > > On Thu, Nov 18, 2021 at 12:39:28PM +0200, Pekka Paalanen wrote: =20
> > > > On Wed, 17 Nov 2021 14:48:40 -0800
> > > > Brian Norris <briannorris@chromium.org> wrote:
> > > >    =20
> > > > > A variety of applications have found it useful to listen to
> > > > > user-initiated input events to make decisions within a DRM driver=
, given
> > > > > that input events are often the first sign that we're going to st=
art
> > > > > doing latency-sensitive activities:
> > > > >=20
> > > > >  * Panel self-refresh: software-directed self-refresh (e.g., with
> > > > >    Rockchip eDP) is especially latency sensitive. In some cases, =
it can
> > > > >    take 10s of milliseconds for a panel to exit self-refresh, whi=
ch can
> > > > >    be noticeable. Rockchip RK3399 Chrome OS systems have always s=
hipped
> > > > >    with an input_handler boost, that preemptively exits self-refr=
esh
> > > > >    whenever there is input activity.
> > > > >=20
> > > > >  * GPU drivers: on GPU-accelerated desktop systems, we may need to
> > > > >    render new frames immediately after user activity. Powering up=
 the
> > > > >    GPU can take enough time that it is worthwhile to start this p=
rocess
> > > > >    as soon as there is input activity. Many Chrome OS systems als=
o ship
> > > > >    with an input_handler boost that powers up the GPU.
> > > > >=20
> > > > > This patch provides a small helper library that abstracts some of=
 the
> > > > > input-subsystem details around picking which devices to listen to=
, and
> > > > > some other boilerplate. This will be used in the next patch to im=
plement
> > > > > the first bullet: preemptive exit for panel self-refresh.
> > > > >=20
> > > > > Bits of this are adapted from code the Android and/or Chrome OS k=
ernels
> > > > > have been carrying for a while.
> > > > >=20
> > > > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > > > ---   =20
> > > >=20
> > > > Thanks Simon for the CC.
> > > >=20
> > > > Hi Brian,
> > > >=20
> > > > while this feature in general makes sense and sounds good, to start
> > > > warming up display hardware early when something might start to hap=
pen,
> > > > this particular proposal has many problems from UAPI perspective (a=
s it
> > > > has none). Comments below.
> > > >=20
> > > > Btw. if PSR is that slow to wake up from, how much do you actually =
gain
> > > > from this input event watching? I would imagine the improvement to =
not
> > > > be noticeable.   =20
> > >=20
> > > Patch 2 has details. It's not really about precisely how slow PSR is,
> > > but how much foresight we can gain: in patch 2, I note that with my
> > > particular user space and system, I can start PSR-exit 50ms earlier t=
han
> > > I would otherweise. (FWIW, this measurement is exactly the same it was
> > > with the original version written 4 years ago.)
> > >=20
> > > For how long PSR-exit takes: the measurements I'm able to do (via
> > > ftrace) show that drm_self_refresh_transition() takes between 35 and =
55
> > > ms. That's noticeable at 60 fps. And quite conveniently, the input-bo=
ost
> > > manages to hide nearly 100% of that latency.
> > >=20
> > > Typical use cases where one notices PSR latency (and where this 35-55=
ms
> > > matters) involve simply moving a cursor; it's very noticeable when you
> > > have more than a few frames of latency to "get started". =20
> >=20
> > Hi Brian,
> >=20
> > that is very interesting, thanks.
> >=20
> > I would never have expected to have userspace take *that* long to
> > react. But, that sounds like it could be just your userspace software
> > stack. =20
>=20
> In the other subthread we're talking about making this more explicit.
> Maybe we need to combine this with a "I expect to take this many
> milliseconds to get the first frame out" value.
>=20
> That way compositors which take 50ms (which frankly is shocking slow) can
> set that, and kms can enable sr exit (since sr exit will actually help
> here). But other compositors which expect to get the first frame out in
> maybe 20 can spec that, and then the driver will not sr exit (because too
> high chances we'll just make shit slower), and instead will only boost
> render clocks.
>=20
> Thoughts?

I wonder if the compositor or the userspace stack can know how long it
usually takes to prepare the first KMS submission after a pause. I
guess it would need to measure that at runtime. Hmm, doable I guess,
sure. Input to output latency in general is interesting.

However, that sounds like a pretty vague API with the delay value. I
think it has a high risk of regressing into a boolean toggle by
userspace choosing an arbitrary number and then assuming the threshold
in the driver is always the same.


Thanks,
pq

--Sig_/JE8=lbNU9pXwl2HdVmDFmA_
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmGbYfUACgkQI1/ltBGq
qqeG7g/+LSlc5q6r2WtPf9z7hRt/C7xOrGRWRYIWMKqn1N4Hkf1nTqrdPcnfYP7U
P79qWxup8ZJsrs4GUI/HlcZf4/XCZNBly7H/mEfCPOdHD9BpnXSo+oPkP08KK0Rw
h8sI+I88O4Hwjr5G2E+o3bd5rEoZ74NvqI1KwygjyfIOJ08r/nY5PXlw5W7mYsb1
wVpMDb0UUviRsz67zXZheFdVYKvWvt7aksKePY3rwB7G8suBTLexaj794R3O1Mlh
I2M51wOU2FjpvYkUsY6N8UAN5Q3EJDSB0elG8DYbV2aTwxoc+5DrnDnIU7BNgZXm
XGp3AXYVInRSfZ8+dEHpABBiiZ3T7n0cKE9gGxpsw+h9jO6mXzlbY0xcwrgQPc6V
yNVN2R+2KcApkVl7M+X3Kd6QPA0zkKb1COtprTSdhWzluZgWNqvlBhnddKrS3OvQ
p3KSPY9yAwNV1lzKZrShUeygXbYm7mCSnV4v78HzcEtD6nxfOAv3gm7eEWnYznx8
JdT/CE72i1hqPx9GbRfgHIbfhw7gRItzo3B5n3PoXoe1UIYapWiK6yUVfx6ZvYAi
Skv/Mh+i7xfFaUBpZRjxNHKli196wQphamw/GR160QErlUUmLvDYf22DBsF+6guL
OhHVbHpFKr8wWMK79MzV3NUgWk9vvrK+2uSi3koB0JqoinlwIyo=
=XnSG
-----END PGP SIGNATURE-----

--Sig_/JE8=lbNU9pXwl2HdVmDFmA_--


--===============0564825652094243224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0564825652094243224==--

