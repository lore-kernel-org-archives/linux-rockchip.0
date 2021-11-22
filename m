Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11395C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Nov 2021 10:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fHR1wM+NtajJuFkTMVBSU+dd6gINZJ00RtUR+tMj+/c=; b=V3y6UUhsRD8UsAXj6jtrOF9PId
	pvYXhvFu3LjZlyVwEzYrXlRhS/y1zxcaH+6gk3Rajbh6mHNIe7gDp55RQqtzCruKZ7uji6hWVfP0R
	n5oHvutpvbRgnKgq0XePmU11+pDW0SNZO8L/Ziy47N19og1WeOOdLNZY/d2s0zyyzjEC6KczoKIGM
	mMw9RqmegRAYM3tSr59d1qc0vL75GtCJ/wN3++NKFzLNSXsEM/SAHRnLi1mn4W8kMy6agVZ5b4cu3
	5DPYixJUC65U35yuO6ehVuIbXV12roYKENd2lJd6Qxg+57iJ0lGS6GriY9enRw3/Q8yseNo/kO/GO
	Tozdhl9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mp6CG-00Fl5N-UZ; Mon, 22 Nov 2021 10:05:12 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mp5rX-00Fezb-P9
 for linux-rockchip@lists.infradead.org; Mon, 22 Nov 2021 09:43:49 +0000
Received: by mail-lf1-x135.google.com with SMTP id c32so77946799lfv.4
 for <linux-rockchip@lists.infradead.org>; Mon, 22 Nov 2021 01:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=96YdYnrZU5YLxN1JzFIGG7wsDdU9R5NPYgLUAZOsBTE=;
 b=VTqdQfaP+qvVnDG3bStis/xCYyypIyT+471LdosA7whE/T+oVfo9jWGHt5XyVoLlnU
 ZU+TyADxR9ZApFtRWKeRkwdNWU1pcDVSqGVbyopG6gn7pByUhSF5zQdp1xV/nDTTQA11
 O92gShWh8DW9Qg/MUO3U7hEopnrXo5KWeQYWIiJolxdAI8TUZibOpSubIxflTxmMjQoE
 p7FHuX4p/+WZsAleEQUy0/EbyDDKCj5TOWDFLgyp2w9wvaLLEpyG67DCyhz6c8PUhaLZ
 wvmmQyTTK8fbdcId1xdbaa8IQajw+x+2eUJ9fp6sRfDpFVwJsSyMjhP4wVgSwW/gU6pi
 /8ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=96YdYnrZU5YLxN1JzFIGG7wsDdU9R5NPYgLUAZOsBTE=;
 b=WlXTPj722m1Sagt8RE7Jb88eslmFox8wmNmqBw96sF3AVDaSVgelHRVAaQdewJ9aOY
 xxlrXLvwQyUKrEN+siGAEjdmzYtepdFBWc3n802D+yamVuBw8Q53ospJGcuzd3TpOFmT
 r64Pccsrj/UoDNiXVJ945LU+jRwL0or96d5tmqeF+rU7U6KXGjQwZ1g11kujEE4tpI3a
 52sDDjhCff8iiPxy+kOKeDmeEMcVUbmCjxLHoq/cK/z9JlBY9zSzAMFEosNa1JUu/kpM
 YM89o4fy8NKN7SH8Rm6PHZDP+jm5HGRX4RYc5pbYCJ78HbsLl3/uQH7B3xdObONmdnKQ
 6tZw==
X-Gm-Message-State: AOAM530rU8kzPY89ytrfZ7lpQXlSqmWWULmwnkLGrX4/UfqoL0so22aF
 tUdJdeHqh694kAZzRmdq8AA=
X-Google-Smtp-Source: ABdhPJyVJLl2xLchsCGW10or57QJEWPuQfw4b5lPbZL4JZeso1zXXGSWnfL4uP/pDhnt+ZUrEggi9g==
X-Received: by 2002:a2e:4a0a:: with SMTP id x10mr51646760lja.322.1637574225739; 
 Mon, 22 Nov 2021 01:43:45 -0800 (PST)
Received: from eldfell ([194.136.85.206])
 by smtp.gmail.com with ESMTPSA id z2sm902449lfd.301.2021.11.22.01.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Nov 2021 01:43:45 -0800 (PST)
Date: Mon, 22 Nov 2021 11:43:42 +0200
From: Pekka Paalanen <ppaalanen@gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Simon Ser <contact@emersion.fr>, Rob Clark <robdclark@chromium.org>,
 Brian Norris <briannorris@chromium.org>, Andrzej Hajda
 <andrzej.hajda@intel.com>, David Airlie <airlied@linux.ie>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, dri-devel
 <dri-devel@lists.freedesktop.org>, Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "Kristian H . Kristensen" <hoegsberg@google.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, linux-input@vger.kernel.org
Subject: Re: [PATCH v2 1/2] drm/input_helper: Add new input-handling helper
Message-ID: <20211122114342.0d23890f@eldfell>
In-Reply-To: <YZfMm3GkFereYPTZ@phenom.ffwll.local>
References: <20211117224841.3442482-1-briannorris@chromium.org>
 <20211117144807.v2.1.I09b516eff75ead160a6582dd557e7e7e900c9e8e@changeid>
 <20211118123928.545dec8a@eldfell>
 <CAF6AEGuc9JbOsC4Lrvoqo8VzMHq+7ru7Y6_UwoZaGV2wHQ6E5g@mail.gmail.com>
 <20211119115419.505155b5@eldfell>
 <YZfIgd8s7uGXAD2X@phenom.ffwll.local>
 <98236dpcx39iOz8xAYrwGLfiLdwgUlljrbBgHL3wd8A0Wz4KzRk3PR8s_tb5Rxu4eScKI4483kB6Vhv-T64CJYOeQqwXlqo2c-64HvoS5cg=@emersion.fr>
 <YZfMm3GkFereYPTZ@phenom.ffwll.local>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_014347_877568_7646D993 
X-CRM114-Status: GOOD (  32.89  )
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
Content-Type: multipart/mixed; boundary="===============5545589765271199564=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5545589765271199564==
Content-Type: multipart/signed; boundary="Sig_/_evsixBuO_dMS.WYC8Ptp6x";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/_evsixBuO_dMS.WYC8Ptp6x
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Fri, 19 Nov 2021 17:11:07 +0100
Daniel Vetter <daniel@ffwll.ch> wrote:

> On Fri, Nov 19, 2021 at 04:04:28PM +0000, Simon Ser wrote:
> > On Friday, November 19th, 2021 at 16:53, Daniel Vetter <daniel@ffwll.ch=
> wrote:
> >  =20
> > > Random idea ... should we perhaps let userspace connect the boosting?=
 I.e.
> > > we do a bunch of standardized boost targets (render clocks, display sr
> > > exit), and userspace can then connect it to whichever input device it
> > > wants to? =20
> >=20
> > On IRC we discussed having user-space hand over a FD to the kernel. Whe=
n the FD
> > becomes readable, the kernel triggers the boost.
> >=20
> > This would let user-space use e.g. an input device, an eventfd, or an e=
poll FD
> > with any combination of these as the boost signal. =20
>=20
> Can userspace filter eventfd appropriately like we do here? And can they
> get at that maybe 2nd eventfd from logind or whatever there is on distros
> where /dev access is locked down for compositors/users.

(Mind, eventfd is a specific thing, see 'man eventfd', and evdev/input
device fd is different.)

I don't think any of that is any problem when userspace prepares an
epoll fd to be given to the boosting machinery. The boosting machinery
could have several different targets as well, PSR vs. GPU clocks and
whatnot.

I envision a compositor to maintain an epoll fd for boosting by
adding/removing the same device fds to it that it already uses in its
operations. I don't see any need to open new device fds just for
boosting. It's only the epoll fd given to the kernel and after that the
epoll set can still be changed, right?

The boosting machinery would never actually read or write the
registered fd(s), so it would not interfere with the normal operations.
But it also means the fd will remain readable until userspace services
it. Userspace may need to set up that epoll set very carefully to have
it work right (e.g. edge-triggered?).

If your input handling is in a different process than the DRM poking
for some reason, the epoll fd should still work if:
- it is possible to use SCM_RIGHTS to pass the epollfd from the
  input process to the DRM process, and
- you cannot extract the watched fds from an epoll fd.

Do we have those assumptions today?

Then the attack surface in the DRM process is limited to changing the
epoll set of which fds can trigger boosting, but the DRM process can do
that anyway. I also presume the input process can still add and remove
fds from the epoll set even afterwards.

> I do agree that if we can do this generically maybe we should, but also
> the use-case for input boosting is pretty well defined. I think it's just
> about making sure that compositors is in control, and that we don't make
> it worse (e.g. with the sr exit adding latency when the compositor can
> redraw quickly enough).

The epollfd design sounds very good to me. One can register an
arbitrary set of fds with it, and use even eventfds in the set to have
purely software triggers.


Thanks,
pq

--Sig_/_evsixBuO_dMS.WYC8Ptp6x
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEJQjwWQChkWOYOIONI1/ltBGqqqcFAmGbZk4ACgkQI1/ltBGq
qqddPw//Qlx3c98y/lzr7O5yeBvbHMGOutdUbTN4frjqqEhhM6TRvl1yMT3oNxBC
N2MxbN1yhJKJihbRqLMI5RkDEiJMqE2e5VBWqwV9ir2DdNG5vR1qqimzkeJeuJsr
f77q2taZwGgnXqqmocroQPPeMxmJD5274xzF55cerzZy6YKE1JoQSpsr4Km1lc/j
/B+N3CDx9c/ezZ6k0Lc0NvuhFFHB1IVtstwOKSPKPqo8XGDrDW9PehcpGOaNGFD8
4wBdVzHGC8JzWfGZqNdVXAtxWZgGDkHYg2uXDUq6Y/BMEilRCXrBYlxjTnce4JAT
wq6jZZXtchRYmXaqyIZ+D93smC1vxxkIBvErCVc/Z1AiCgq99P752jcpUq39QFN+
/bVcr57syOk6+u/WU2S5chtU64zyNcLwu6vEKUZO9/DIDF4rGsGci0ZgjXdj9kHf
/BiYybwmZWmXjxbGjHMU6ZaBjTvl8cq1cIt7Nq1A5IcoBpiqb6ohL5b3i0gg7WCB
Z3J8rPoNQIZTPIusSb6L1BJZCqeRiIA95tTiX7UIlgDQoHOVPdMPU1of0wQa4uke
7K6P5Sg0QSfIpfIVd8Tu657ia53/ucnr1GyTnep9Cm+o46pFfNzZSEgoBOQB4ugl
4MCipr9Y8XvCskwR6myOwajP7qfdjJ0Lm36vfxShtbiSVieen+8=
=kYcC
-----END PGP SIGNATURE-----

--Sig_/_evsixBuO_dMS.WYC8Ptp6x--


--===============5545589765271199564==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5545589765271199564==--

