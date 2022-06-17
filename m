Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA4EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 08:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dKfKhOQBYAYEuQIu3BEvxX7ecn6F3OkGtOClMi/rj6g=; b=ud/6SNVhqovxlfdzyOVQcccmCp
	4w91gTAb/XhufEpr/hiOJ9WTVyKE31+zYo0umUpgXWXVb6Icd5bRdNM3GpdF6euvF8U6IDyPaUGVA
	kBG5Rl+Z0OzWvPR6bur7vUvK9X2do8tx1+Ddg8azk87sgGgYgesFVzfWqbvJlRW7OV3uTfXMh6Nzo
	W5laJFvtGXo4UdiegnFBAEDYi9sjsSTI7DdSltg03OmPfmesUE3ckq+/utjuu8XdEIU2tEvWPuan/
	7QTzcbPDiBDoln0/jmETy0lFSzRSiS5FGsqEpSaUeEkEgsobujmOOBAGZbXEPWH1ysml2K8Kr33sS
	Q8zLtllQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27kf-006VDf-Mg; Fri, 17 Jun 2022 08:54:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o27bY-006Qs8-7y; Fri, 17 Jun 2022 08:45:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8BD5F61337;
	Fri, 17 Jun 2022 08:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BBD5C3411B;
	Fri, 17 Jun 2022 08:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655455523;
	bh=yqzhLHcKPAJYHbRZbKXDOvARyleooSL+Wl+IzjUN4p4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UcxHZnnNY9YJMK/0j7CavYwMR4LNBIcWcBMa62qHUvOAEXrVqtH6V+LS5oz+jZJS0
	 qT3ZRdlvEcrhBCUzfISNq/c15rlmZyHYbMtG/IQ1ZMcwSCRgR8tqWt6Su0WOpDfQZm
	 yvwQYttfIBB+6uaRfR5uD1uLtRCWyc+XQVrKF6yVaxAYhr0lLUvDerQGnT7b1tj8Eh
	 K+Ojta6jA3AFtXowcVyEOZ6WSccsFNoPm6lcNxSWIHyVHr0qbyqDec3VGeuoR8Ld8t
	 Ipq/iCF/S2AQiIWP0AmmCfkROXNAacAy3UsBgGLK7d3+pIXCZ6eLkTlMDSXJj4ag9R
	 pLZ2vAdO16r9w==
Date: Fri, 17 Jun 2022 09:45:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <Yqw/HbgbdkFPht8D@sirena.org.uk>
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220617044251.4029697-1-judyhsiao@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20220617044251.4029697-1-judyhsiao@chromium.org>
X-Cookie: 98% lean.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_014524_375863_BB7E7B08 
X-CRM114-Status: GOOD (  15.52  )
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
Content-Type: multipart/mixed; boundary="===============7457377086771082529=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7457377086771082529==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aLv2GpDJ47ZFHIwQ"
Content-Disposition: inline


--aLv2GpDJ47ZFHIwQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 17, 2022 at 04:42:48AM +0000, Judy Hsiao wrote:
> The patches series is to fix the unexpected large
> DC output voltage of Max98357a to burn the speakers=20
> on rockchip platform when BCLK and SD_MODE are ON but LRCLK is OFF.

Please don't send new patches in reply to old patches or serieses, this
makes it harder for both people and tools to understand what is going
on - it can bury things in mailboxes and make it difficult to keep track
of what current patches are, both for the new patches and the old ones.

--aLv2GpDJ47ZFHIwQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKsPxwACgkQJNaLcl1U
h9C/VAf6Ah6++LNhpFFUJaZ0Bc+FLeKDMzIEESVc0bMzROauZlkjBbR2EunJMmq4
BhlzGKMafwI0RT4sGVbO7nPwVr5ltH7tfcIxMz57xvVwie7Bb2tld2ZTSAqP5xXq
bJUNA+bJVHSW8KwiYfcydoQeCvcNMuik4ywZ6nubQPX806JQLxM9cQFdu0ayaMzM
pjFAFbXkeyJKUrsbvXfP0BQ+PVAoqnJe53NAHwd7GkTOw/vHO7zx+0Mz5HSSZ3p5
HEM9h42NagL4ZomdmeStvS2zUxms/g62hrgi9KcWiclSYGBWXDfvL4nbJ3MFugRY
ZufRWrarft2pGXl6wfWVsQwSmx05Rg==
=tvsr
-----END PGP SIGNATURE-----

--aLv2GpDJ47ZFHIwQ--


--===============7457377086771082529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7457377086771082529==--

