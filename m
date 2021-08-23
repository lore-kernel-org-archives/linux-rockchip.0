Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22027C432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 11:20:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E478F6138E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 11:20:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E478F6138E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VnZx4DBpMmXDWDCRIp1CU8jfOc4ddcjauL4wijuzqvk=; b=4BYsntQXxNCyt9JmRxpStStZWt
	/KcZcv2c2Vyg+3ZAUfwzp67zP7ptWHebkLDswCr9C1n/aGtHlIaTjeKXfLRkixFrMgV5EbzFpA7yO
	blo5YEbpQChYwaEdVGAK1D+FiPw8LM8diR5kcZ4ySbQIZhd9oULbl3NQRmjOgeLSFdnfE2GH/RvoC
	gX2nkg+P6JZYNRlZSPue9yGoxgXwM2q9b6Vu7eOHMFwo/CZitgqK8gLy9C5E5YVL7A6anUMJq0WgI
	KSdjgX5FQznp5KFfI3oiAEUkH7rG+0SzH/y12jcFKVqWAT/lb7mbIkpNZUXdek/TDwSCKGhMkWBoR
	oAgnSFwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI802-00GXd1-Ch; Mon, 23 Aug 2021 11:20:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI7zp-00GXYm-DV; Mon, 23 Aug 2021 11:20:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E1CA6138F;
 Mon, 23 Aug 2021 11:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629717604;
 bh=Wclgrw6m6BxICpicnUto8OUs+4WdnXkyrzgO5hXEq08=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oekp8axDqIoeW5CHA/lnpv36WzCW/r9tpNUkqPHzTLF/4RkKXSBPHKypz90C1GJAq
 Y0jk36XHrmFMOIALTDpiRY4EwJWSZawxsOxCQcVmuqJ4qKcDXBpknPbyFBXxt+n2C8
 niInnEj6nL8gFNoItsmNvxaLJP/nVhVhOAVwp//Q25iFQ025NgBvbgqv6YQJflYu3H
 ET5thGUfqABm/ZuNuPznMUeXXM/1d2gi3DEcR56YleVsqtdc9HCvQ6RXGrR4L4aKRP
 GesMXaoltgiT4PnmU6MZWHpFX+Au89Y008wOJBFIGZ9Ht/21LU2XIwqBFAkpBF8m2z
 5zfPe32vgO79w==
Date: Mon, 23 Aug 2021 12:19:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] ASoC: rockchip: add support for i2s-tdm controller
Message-ID: <20210823111938.GC4380@sirena.org.uk>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
 <66d6bd43-ee43-eff4-7a68-333fbb996787@linux.intel.com>
 <3469189.PC3msRC2N5@archbook>
MIME-Version: 1.0
In-Reply-To: <3469189.PC3msRC2N5@archbook>
X-Cookie: APL hackers do it in the quad.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_042005_523328_3C5321E5 
X-CRM114-Status: GOOD (  14.28  )
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
Content-Type: multipart/mixed; boundary="===============8379040566808354511=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8379040566808354511==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eRtJSFbw+EEWtPj3"
Content-Disposition: inline


--eRtJSFbw+EEWtPj3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Aug 21, 2021 at 10:45:52PM +0200, Nicolas Frattaroli wrote:
> On Freitag, 20. August 2021 21:02:16 CEST Pierre-Louis Bossart wrote:
> > > +	regmap_read(i2s_tdm->regmap, I2S_CLR, &val);
> > > +	/* Wait on the clear operation to finish */
> > > +	while (val) {

> > delay needed here?

> The rockchip_i2s.c code doesn't have a delay here either, but I can
> add one of 1 usec for good measure, it seems weird to retry the
> read as fast as it can.

You should probably have a cpu_relax() in there at least.

--eRtJSFbw+EEWtPj3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEjhEkACgkQJNaLcl1U
h9DRvwf/eYPzwI/HK4Jzi3lJiLh1vo6ezpgKS2ev6fNjoSB5emwL3rxmM/SHYkhd
vOoWprclRkygu+R5bIiLPc9Y2h6i34D/mc8aT6D2dqG+fDq5SaHx3FSX91PTLGU0
MIZLUdFQqJAINWBwgZmtZPj5ssgK6VsZ3Re9bUsaKi+R0q43eWAqSRiZ54fqFIwI
18takfFGAfqMRNfrzAXHcIqRG3viwccrBxcxIGSbxF+RrT0O++c6q8R4rB4c5nvm
/m23A2wdczve2z2hmaV6T/48gI4gVQReDFMb/S3T3hslTd4DzghMFSBIzQZx5OEY
jWofpFXTysAcWf6nQMM48fBkf/RAAQ==
=E6qU
-----END PGP SIGNATURE-----

--eRtJSFbw+EEWtPj3--


--===============8379040566808354511==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8379040566808354511==--

