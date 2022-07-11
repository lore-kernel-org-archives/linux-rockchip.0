Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED902C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 14:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gZ0A9tlb8xtL4+l6WA/b7N8BY6Tt5OSxiY0mfXZnHcU=; b=PL8Cc0eDiMUwVBTEaYNt36C4oT
	7iqewrlV4usD2upd0PEfVz4mzPlYX0+k89Bt3iSMXxJxV3gmca3chcq14gs4uyiLeCqNmIQuJCQCA
	kPiRvYz7QXd9Ona4+QGPfJU8xQwSzXplsnQekHgKHxKoO1Q/XUijMKhM1lszCQ4r2mDVrRTe6pw5H
	Yc3O7mB7lHgWk0vzLm5w6wTjcGPlcHLSq9CsB8j7WM3FiwXGZnmR2pX1b03H4DpsFkfFENgVzyAoO
	Q6Y9js3ioKL/XFqryBcLWtVkhVkIEshqPZ8UgU8H4F62A+EFPbxYGST1ImGDleQYAkFaHWjss4Y5K
	oU8e5ksA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAuc4-002SD2-NR; Mon, 11 Jul 2022 14:42:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAubT-002Rgp-O6; Mon, 11 Jul 2022 14:41:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4ACF4B80FB3;
	Mon, 11 Jul 2022 14:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEF62C34115;
	Mon, 11 Jul 2022 14:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657550497;
	bh=bONJCw5eJMmcoc8rRf6p6ImOc81UA3qM6eCZOEwehdE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hS97Lc/+nw0Yk0Mn3D7qCB/Me1go3u1l+4zKDmcpzfMCTSQJPfAbUylTn9aLDAc7B
	 khSLsW9+f1BhHSeaD0IFu3pGRBwBiP67iJLiTCo9Taus9cmM3FLEw+zzVv+FDA/BnK
	 AuYhwNoC4PYrk1+xOpuZtYVj5mBGkN8neS+TRhRMXs3fXQQGJvK6ovyTbOJ0wsWhXc
	 JQaN6eHQ3sTimjH9qLx+AA8LuvTikmbkVZWnbY25DOKaZDHxrc4XLR+2cHcxR2LRht
	 cwKsimZAuofEOgLBtUD6T/2Xli15kA3dALdcofr9cANrHHnBPYvUB5KX6htWdRlX5A
	 ACWSf9oqhUN7A==
Date: Mon, 11 Jul 2022 15:41:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
Message-ID: <Ysw2mzhw4pyrxirc@sirena.org.uk>
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
 <Yswkb6mvwUywOTLg@sirena.org.uk>
 <YswoOE/sP088lius@monolith.localdoman>
MIME-Version: 1.0
In-Reply-To: <YswoOE/sP088lius@monolith.localdoman>
X-Cookie: I am NOMAD!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_074140_104478_05D62A9F 
X-CRM114-Status: GOOD (  23.47  )
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
Content-Type: multipart/mixed; boundary="===============2977049388251277401=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2977049388251277401==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WbHIuEdIlgHTyV0d"
Content-Disposition: inline


--WbHIuEdIlgHTyV0d
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 11, 2022 at 02:40:08PM +0100, Alexandru Elisei wrote:
> On Mon, Jul 11, 2022 at 02:23:59PM +0100, Mark Brown wrote:

> > Please think hard before including complete backtraces in upstream
> > reports, they are very large and contain almost no useful information

> I'm at a loss here. Are you saying that those 4 lines represent a complete
> backtrace and they are very large? Or are you talking about the panic log
> that I've included in the commit message?

I'm talking about the entire log that that was the start of, I deleted
the bulk of it due to the excessive size.

> > relative to their size so often obscure the relevant content in your
> > message. If part of the backtrace is usefully illustrative (it often is
> > for search engines if nothing else) then it's usually better to pull out
> > the relevant sections.

> Would you mind pointing out what you think the relevant sections are? I
> would also find it very useful (for future patches) if you can explain why
> they are relevant, and why those parts you've left out aren't.  It's not
> very easy to figure out what is relevant when you're not familiar with a
> subsystem.

It really depends what the information you're trying to convey with the
backtrace is, in general a couple of frames of context might be useful
if there's something interesting about the context from which things
were called since that's the unique bit that people might search for.
For example things like the standard set of generic functions you'd see
when probing a device is rarely going to convey anything meaningful, and
similarly the standard kernel entry backtrace for something triggered
=66rom a system call.  The full register state is also commonly not of any
great relevance if it's not illustrating something in the rest of the
message.=20

If you are just including an entire splat on the off chance that it
might be relevant consider just not including it rather than including
everything.

--WbHIuEdIlgHTyV0d
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLMNpoACgkQJNaLcl1U
h9A2RAf+N0AAEGr/N2lYkhPRA9ScXTpy5ypMOXGfYbxd9cx5STM9WUG5VDyMiCDL
9WlBtSWFVXiRKae6env9zFsCAWWQPFr0KRlTgRDX2buDhyorm6LF85qOddnmkJQc
nLv6nKoR25X8ODyldf4MGn28cp3x+vj0SmBhncY3jmjWRWfo9TVmpDVTM/MH+cyD
WuVixZH6n/fyZ0OTTi0dTz15fm00chqk+lMXjOrXolz3lqc7T2WkPZRNadBjhNhY
JV+sRaogmIL9dSPrPmnkuhszS3mDBUPTiMnYqhogf+vajTip7on89K67toG/ff5x
t4bVqxlzEkSaRnTvGBn2aXG/Xn466w==
=dvsB
-----END PGP SIGNATURE-----

--WbHIuEdIlgHTyV0d--


--===============2977049388251277401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2977049388251277401==--

