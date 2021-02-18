Return-Path: <SRS0=3svJ=HU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 226E2C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 13:05:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B588F64DE9
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Feb 2021 13:05:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B588F64DE9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=konsulko.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8tsIDSwHK8CKWfx2HzmVRULfB0PYN9/zjXUPNzM+A3k=; b=kEOZiPRi8HBD/cN3lQmYudsLM
	yFsyOBQedEBfFs6jgjoMlACcKqi9psrIIJeaHrgbL5U8wdvAkaed3AIJen+nUYNfxLc5OmJdVFqa1
	9MU2mm8ppYxggxK0Ea1zIg47dsDyCaXNGXrFEZBVdUUVG9Y27ejbwDFKJuMMOvBoNuDkPrZ/YdXsJ
	PV8UKyefp2u32D9LOjMnq1O6WiFa6i6v6CdCkjUnQnmaWwoB7gWyYi+KXRnWOdoewSxI6g9A7xsWT
	GAxkroA+oWUs/XUkBQ+L7mxI4P+w4Rm2j1XSkIYVXfC6zcc7Te2JcgtDIviiLO5nL+WSwDJPDR1o8
	M00IBSY5A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCizc-0000BY-T3; Thu, 18 Feb 2021 13:05:16 +0000
Received: from mail-qv1-xf2c.google.com ([2607:f8b0:4864:20::f2c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCizZ-0000Av-Q1
 for linux-rockchip@lists.infradead.org; Thu, 18 Feb 2021 13:05:14 +0000
Received: by mail-qv1-xf2c.google.com with SMTP id dr7so860168qvb.1
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Feb 2021 05:05:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bx0dHO1NStOZnP8Dwp0xcGeXkCVM+e+SEk9FILUS5/Q=;
 b=kdx4sUrlkKG+hmDfYGCZ4Kq3ObqXfImUO//pewwhA3tUj34qS/NhmC5zlogeztarPf
 nFNqlEIL6Yu6vYa6wdM9a1V8jL4opXe3SeuFbJoUr4fHNkQWFBIT0pw9WvrJZOXJEvuo
 J8rQVoNMIxcvbKtRA0DVxypILfdb9ZLWirMGg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bx0dHO1NStOZnP8Dwp0xcGeXkCVM+e+SEk9FILUS5/Q=;
 b=N9y6eVUvRDgwBetOd83x0yFfrVyXUkuFzlbX0ySlO2W+EEcXHI9I9jEPXekkTP3qj8
 OiHPW9uP1iiFxYNzWdAdLyQdtK8NM066qDlOY6iFOMdwwd6wtgOhWxDqcLhe8Oxs2Nrs
 b79xx/vhtjPN6u6J2m6xDrV7MqfGmsWulUHGE9e9ZOpL/+rSCwv0+5xICJEAe56Lx7t1
 VZNSGete/gI2v7r2KezgcwkmjFn5IbnagN1WB+FYDN8+S5WlUDhr4cA2JWzNgWgnNMgS
 XW9PswlHdVrw04yzds6FB6Ufxk5Y9cGgMEdggz0zbaI1qWnFZdv54zDRy5runTe5kS3P
 xS6g==
X-Gm-Message-State: AOAM5307C41pqzGKNUlK+trFyUiARV9DmwQH2nfYdCRfHTZujZuFvAFu
 1tGuw8jecurEK6kU9I6/fvM6lAQaMSnC1A==
X-Google-Smtp-Source: ABdhPJwuKJYpVb4NLoLQvS+sP7dAV6oubKRnKmJlr0Y+ipY+BNA89s4ODrN7OYbe9/DXAX4d9lNF/A==
X-Received: by 2002:a05:6214:174d:: with SMTP id
 dc13mr3990028qvb.62.1613653510249; 
 Thu, 18 Feb 2021 05:05:10 -0800 (PST)
Received: from bill-the-cat
 (2603-6081-7b07-927a-cd6a-0ce6-a297-a53f.res6.spectrum.com.
 [2603:6081:7b07:927a:cd6a:ce6:a297:a53f])
 by smtp.gmail.com with ESMTPSA id i7sm3995918qke.5.2021.02.18.05.05.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 18 Feb 2021 05:05:09 -0800 (PST)
Date: Thu, 18 Feb 2021 08:05:07 -0500
From: Tom Rini <trini@konsulko.com>
To: Simon Glass <sjg@chromium.org>
Subject: Re: [BUG] [BISECT] rockchip: roc-pc-rk3399: TPL misses dtb
Message-ID: <20210218130507.GD10169@bill-the-cat>
References: <a197cddb-f363-f790-f743-5012341591ba@fivetechno.de>
 <20210215151124.GN10169@bill-the-cat>
 <CAPnjgZ2Cz1zhbvTBPpOb0jaMWT_J7+okXKUrh8Td5_LfUNSV+g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPnjgZ2Cz1zhbvTBPpOb0jaMWT_J7+okXKUrh8Td5_LfUNSV+g@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210218_080513_975930_89091B18 
X-CRM114-Status: GOOD (  23.01  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Markus Reichl <m.reichl@fivetechno.de>, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>, Levin Du <djw@t-chip.com.cn>
Content-Type: multipart/mixed; boundary="===============6050349619038921978=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6050349619038921978==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z+1a/1p256hrSZOG"
Content-Disposition: inline


--z+1a/1p256hrSZOG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 17, 2021 at 09:45:44PM -0700, Simon Glass wrote:
> Hi,
>=20
> On Mon, 15 Feb 2021 at 08:11, Tom Rini <trini@konsulko.com> wrote:
> >
> > On Mon, Feb 15, 2021 at 03:05:20PM +0100, Markus Reichl wrote:
> >
> > > With recent U-Boot and roc-pc-mezzanine-rk3399_defconfig
> > > and booting from SPI flash I get:
> > >
> > > U-Boot TPL 2021.01-00884-g0a2aaab0b6 (Feb 15 2021 - 14:36:50)
> > > Missing DTB
> > > ### ERROR ### Please RESET the board ###
> > >
> > > Bisecting points to:
> > >
> > > commit 0a2aaab0b678fd1778ff2fc59d0770fc82995532
> > > Author: Simon Glass <sjg@chromium.org>
> > > Date:   Wed Jan 13 20:29:49 2021 -0700
> > >
> > >     fdtdec: Use CONFIG_IS_ENABLED in board_fdt_blob_setup()
> > >     This setting may be different in SPL and TPL. Update the code to =
check
> > >     the correct setting.
> > >     Signed-off-by: Simon Glass <sjg@chromium.org>
> > >
> > >  lib/fdtdec.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > Reverting this commit fixes booting.
> >
> > Thanks for the report.  I'm about to push a revert for this and I'll add
> > a Reported-by from you.
>=20
> I'm not sure what is going on here, but possibly we need to add
> TPL_SEPARATE_BSS to the board config..

Yes, that's the most likely case, I'm just not sure if we can
progmatically figure out what platforms are missing it.

--=20
Tom

--z+1a/1p256hrSZOG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAABCgAdFiEEGjx/cOCPqxcHgJu/FHw5/5Y0tywFAmAuZgMACgkQFHw5/5Y0
tyzP3Av/QnNABHYIFhyVHBFTAOqWCxXkyGAu3xb0S4Z6RpLazRt/7BCqttHFhFps
CmrMXWDhVN25fHNMMP8MbqAPdgWtbM7cjXEv/Y7ep2heuEhAlVA7sfnxeDvWWUFw
XVowOMXGjjLv3YDJ7AaiQKRRlhKFXNr+OZk/eW+qFPk3PAjMmQcN1hrILeUehD0K
Yx64D0P2FsYD5RVfq0L8apMQsE95M2yNb9hcZb0RzHTckwBPlcqDwbxHSOq35dJv
S/eGHPNCJFEWktn+iIlkSWKpqi1EKimO8Jaq7eQFOfhoZiI7eV4pK0D4BgNO6cxC
HX9vqRvmK6tGQShw4Ce7JEeaBVwS7DM+FzLd27K2Zkj1/kWWojICq+Z9MDPInnVE
ypMvGTGAPTiJNmVTWBek3rOFE2DfK6U30Z/iPi6WtNh7ZrGRuqCy9giWIGJLrheM
Rqe++Ix9xKVrkYecGKxwXoV9KUpInckEw8xmWejpvbS4BC2/RzyjDjFpFg4a9bJS
zY/wcgRr
=7Jpm
-----END PGP SIGNATURE-----

--z+1a/1p256hrSZOG--


--===============6050349619038921978==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6050349619038921978==--

