Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50ADDC43327
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 06:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zYB7qRsyeau/4ecuAaNPFWLRA4CUirucp7pv6Ou+114=; b=H7tQCsBAiYq5RjcVzNpRmmjDJU
	e7aV88FN+dSw28w3eGZG3o4Xr5+gYrI+dBWPN+EZhewM9upt67Iyo+4R6rZdSQeIBkEp9SVR6kXji
	Qlqn6z3PTx0bzsYlPf9PjUNdYG6bCssDB5XjqFJMYrid2Sg0UtJQdCg77yVOdsbNqcoavuMc5CQDq
	yXkFuaoFGDfFC6VjjP6D2lUflKXAVl1CYwYhtG+lA3uVl+gQHREhE0CyrcL/6Kxah4/arRjkSzufs
	2bWpO9MkGWeBbnh/4w6MGGaLL0h/aXzJ4J0AayMJYBfPgYt/3IUeaoice5m4uwWr3CxDksuZ6o+HT
	pbVg0jlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weRaE-0000000FrkL-2LUa;
	Tue, 30 Jun 2026 06:04:34 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weRaB-0000000FrjC-1Key
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 06:04:33 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-490cf322ed0so28684465e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jun 2026 23:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782799469; x=1783404269; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b5BBnItCnxunKMbKk5r5XGq35MhHqmNERXs298mNYZQ=;
        b=TILyuRxiPjeYGmmLdOyfamHAMDMwObIJUWnlzMtULtH8Xa+KcOxjQ83PXTKQX8oQDL
         1c6aGqLUKc9H7waq3Wc9Wf2Z9Jx2524pfj5U76ZXEGAa5dhLSgSR/YqWHeh9MOiv81Uw
         auW+pkf5NKdAPtBnU+aG6MRA0T9lUO1VOWol5t2vHKr/2rtiKQZ+KY299hNWMAPaRjy9
         dLLsGCGukHZumhhZgMmHCjkb+mShgbMIlh6SNLL18ZgthMqINySKickPYBYGrgdXb+mE
         XGAxdUZGp3VS8U9kp86ePuungiidxqkOYZQh3vIXsCcgm9yPP+5OnMjvPGMwFIrlc/AX
         9Rtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782799469; x=1783404269;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=b5BBnItCnxunKMbKk5r5XGq35MhHqmNERXs298mNYZQ=;
        b=PXgPy45eaSc14ekR4QhV38l6aCOdweRU2Y3QVbnQgYdKeBNfilx/siLN7D67ZWPcd6
         yNifqS7zahqWvkx7HaGf+RKOvH92iYHBh6o5hkUS8IysfxbiMIKb39jD4J7T854d/DfM
         ecBIc1FW94Pr0YuBOfo4fpXx/GgITps/kr5o2lukbmozZiIEALAHeifxFIT0NSzSfj93
         Kz91ciJSMw/qe22l+AOGrX/foOqt0ityMXC5LAfqJYGXMzdwFB4oAfkio/o4Du2z4DRy
         GX9GNpO6ytuK8MC++5r3NYK4fmgoZ3u+bBpdMuXoZghKNnZzVwFmUsv8NLCb9HpfcPW7
         KWBQ==
X-Forwarded-Encrypted: i=1; AFNElJ93dQIYInh3sbxZpOxMEhee7l8QwT26gM07kAmgD/rajMNzNXA6VTJLhJxobEmWuyoiKOYkRtxnYKouzlklIw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpdewD97qho7fYJtCNTCNpgj3mUgpQAE56Muv5uaApuZUwRZW3
	olH8xinviuFbmKSbmgK9jl5ocEcExE+q8Q4MN8+ExiZZn/CYbWTnDsEH+OEl+ZZrdiQ=
X-Gm-Gg: AfdE7cmQ/dsPcC8VIQ6f+rmYMKbzder1kDhjJxO+aUF2Tn6Z3wd6v7n4/4si6ohmW8a
	pcEX8ucIh2dGe4WPAu5g1CAjkZ5OJEALxLxe+O+j/HbIfGXct6hsiV0T5pxdnoKkUNzuGdFYNW7
	Wjxm/not4mETbBET0G3OFsZrP+jjhIOmCwY4x0Q05cbYpklieq/7NCIF4DoPOLk3llVhYMSBwH9
	2kyopmR5njrwt4y8h/SivBlQ8Ga0Xdl+04L19EFISatXHWmPG7ulsBPy4WsScmDJ4pR4XQU9pa6
	9iiTwTyllfsqZCZ9Dq2ahgBDfoOJaWN3Iy9hF7n/1Z7b06+2/U9bIAM8Ly4OAuG7fL3d3CmPbUl
	aZf/uM/BfU5eNpU6HYJ5ktCdHhQU7Uorn/RH3d2Rl7uZhvSyH3O4RWO8XiShfPs6dO3g5g0U1vU
	AwqlX+ifhRShx6DuHMlQ==
X-Received: by 2002:a05:600c:8285:b0:493:bacb:1341 with SMTP id 5b1f17b1804b1-493bacb176dmr13964925e9.4.1782799468463;
        Mon, 29 Jun 2026 23:04:28 -0700 (PDT)
Received: from localhost ([2a02:8071:56d1:2de0:559d:eec2:887f:c200])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-493b8cd3018sm45429405e9.5.2026.06.29.23.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2026 23:04:27 -0700 (PDT)
Date: Tue, 30 Jun 2026 08:04:26 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig_=28The_Capable_Hub=29?= <u.kleine-koenig@baylibre.com>
To: Takashi Sakamoto <o-takashi@sakamocchi.jp>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Mark Brown <broonie@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, Bill Wendling <morbo@google.com>, 
	Justin Stitt <justinstitt@google.com>, Raag Jadav <raag.jadav@intel.com>, 
	Sohil Mehta <sohil.mehta@intel.com>, Dave Hansen <dave.hansen@linux.intel.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Len Brown <lenb@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, linux-kernel@vger.kernel.org, 
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	linux-media@vger.kernel.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Danilo Krummrich <dakr@kernel.org>, driver-core@lists.linux.dev, 
	Jonathan Cameron <jic23@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, Pei Xiao <xiaopei01@kylinos.cn>, 
	Shashank Balaji <shashank.mahadasyam@sony.com>, Ben Horgan <ben.horgan@arm.com>, Johan Hovold <johan@kernel.org>, 
	linux-usb@vger.kernel.org, Nikita Kravets <teackot@gmail.com>, 
	Hans de Goede <hansg@kernel.org>, Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>, 
	platform-driver-x86@vger.kernel.org, devicetree@vger.kernel.org, linux-i2c@vger.kernel.org, 
	Daniel Scally <dan.scally@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Tianrui Zhao <zhaotianrui@loongson.cn>, Bibo Mao <maobibo@loongson.cn>, 
	Huacai Chen <chenhuacai@kernel.org>, WANG Xuerui <kernel@xen0n.name>, kvm@vger.kernel.org, 
	loongarch@lists.linux.dev
Subject: Re: [PATCH v3 00/16] mod_devicetable.h: Split into per subsystem
 headers
Message-ID: <akNYUdAS3sbEdRqC@monoceros>
References: <cover.1782682124.git.ukleinek@kernel.org>
 <20260629235804.GA414914@sakamocchi.jp>
MIME-Version: 1.0
In-Reply-To: <20260629235804.GA414914@sakamocchi.jp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260629_230431_397798_D4A88802 
X-CRM114-Status: GOOD (  28.36  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2773656374008518837=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2773656374008518837==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bjsp2vxvxtx3lqot"
Content-Disposition: inline


--bjsp2vxvxtx3lqot
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 00/16] mod_devicetable.h: Split into per subsystem
 headers
MIME-Version: 1.0

Hello Takashi,

On Tue, Jun 30, 2026 at 08:58:04AM +0900, Takashi Sakamoto wrote:
> On Sun, Jun 28, 2026 at 11:58:35PM +0200, Uwe Kleine-K=F6nig (The Capable=
 Hub) wrote:
> >  ...
> >  drivers/firewire/core-device.c                |    1 -
> >  drivers/firewire/net.c                        |    1 -
> >  drivers/firewire/sbp2.c                       |    1 -
> >  ...
> >  drivers/media/firewire/firedtv-fw.c           |    1 -
> >  ...
> >  include/linux/firewire.h                      |    3 +-
> >  ...
> >  sound/firewire/isight.c                       |    1 -
> >  ...
> >  1649 files changed, 1575 insertions(+), 2544 deletions(-)
> >  ...
> >  create mode 100644 include/linux/device-id/ieee1394.h
>=20
> I have no objection to the above changes relevant to firewire subsystem.
>=20
> Acked-by: Takashi Sakamoto <o-takashi@sakamocchi.jp>

Thanks! Added to my tree.

> Consequently, unit drivers just include include/linux/firewire.h to refer=
=20
> to 'struct ieee1394_device_id'. After merging the changes, I'll post more
> patches to modify the following unit drivers, since they are left from the
> patchset.
>=20
> * drivers/media/firewire/firedtv.h
> * sound/firewire/bebob/bebob.h
> * sound/firewire/dice/dice.h
> * sound/firewire/digi00x/digi00x.h
> * sound/firewire/fireface/ff.h
> * sound/firewire/fireworks/fireworks.h
> * sound/firewire/motu/motu.h
> * sound/firewire/oxfw/oxfw.h
> * sound/firewire/tascam/tascam.h
>=20
> By the way, the changes touch so many files. If it takes more time to
> apply, I think it better to make steps to modify across several kernel
> generation.

Touching so many files is the motivation to do all the high-impact
changes in a single go. As of v7.2-rc1 <linux/mod_devicetable.h> is
included (transitively) in ~18000 of 21500 .o files below drivers/ for a
x86_64 allmodconfig[1]. So touching that file requires a near complete
rebuild. If we spread the changes over several trees/kernel releases the
need to recompile the whole tree repeats more often than necessary. Note
this bites not only during the merge window when building the
development tree, but also during bisection.

> For example, getting rid of direct reference of
> mod_devicetable.h from drivers at first (in the case of firewire
> subsystem, for 'Replace <linux/mod_devicetable.h> by more specific
> <linux/device-id/*.h> (headers))', then adding these per-subsystem
> headers and applying relevant changes.

The impact of these firewire changes is limited to the firewire
subsystem. So doing these later is a smaller issue. I plan to tackle
these when this series is in. (But if you want to care about the
firewire bits, that's fine, too.)
=20
> Of course, I don't mind to apply the v3 patchset as is in upstream.

There are a few changes that I collected (Added SPDX markers, a few less
#includes added as my script evolved, a new patch to fix a hppa
fallout), so I will send a v4 later today.

Best regards
Uwe

[1] I did in my build tree (with the series applied)

	$ find drivers -name \*.o.cmd -not -name \*.mod.o.cmd | xargs grep -l /dev=
ice-id/ | wc -l
	19221
	$ find drivers -name \*.o.cmd -not -name \*.mod.o.cmd | wc -l
	21597

That's a bit wrong as my series changes the numbers, but the ballpark
should be right. In
https://lore.kernel.org/all/20260622210733.1743063-2-u.kleine-koenig@baylib=
re.com/
I found similar numbers for 7.1 (17038/21330).

--bjsp2vxvxtx3lqot
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpDXGcACgkQj4D7WH0S
/k6p0wf8C/fqLWElPKeEJ6VYZOMbHAVQFFSaiocKgLhyatujJO/xABylQtIrG2bm
oNQHPUayrcWacObHGF3fEjQy4hRJLu10iu9WrGW/FvZUPjhCWUzPdhuXpmSnE4fH
zd/NVmkNUTbomy4rUfxcWTKfXtWxqi+pwwPvcbEeQBUCqK/R3MK9MTJPeo+fuS0w
N7J2Vv4yLihgZU1OW8Y9uT+TbrHb5Kn77XyKCF3bvRyrDK82GHBAEy0UIojDpJnT
sIhHykaiFL1/5jUZb/iCqMx0+2OUeNz8HOywoSete10zzE2qFPFgI683oSrO6gcY
cBQF6NX+zboS6GmYI42xlkzJTj7ODw==
=GSrp
-----END PGP SIGNATURE-----

--bjsp2vxvxtx3lqot--


--===============2773656374008518837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2773656374008518837==--

