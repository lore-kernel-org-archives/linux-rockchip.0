Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF0B7C43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 15:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=phRBdQDoCtoNZFvSDMX748SEM8whDLzyyZ3ARv6+evQ=; b=gJi2+8Pak5leiWFSgCg2u4qpdC
	mkk7FZV3kJeeZwdPVUIK+pMYnF1vPY85dfDEn1n7aI+7rwqGnzYYtKToImv1eA7TLsFJxf8GxcYBK
	f5YebNRie2iTATQdN1oTRoKALi3k9PcTyU1x1h+aenWzuWcEQhjNRUUynKgmBSdUkFIgR/mOxYNzS
	7ZwJmykpkfm1B+d//mXNZrVbnnCmCEgnUVH57XP37TMV8rki3EPYntxC1bkF/QPCV/VeEiaDw/Hjm
	EfcB+rkHG2Qeg+YFMbBGWpeO2eohiyccWVw/bS0K/IZ4zPj8F6LdIsRjawWuCpTmjA2OFRhXWyR4D
	ejJ535Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAvlg-0032ho-9X; Mon, 11 Jul 2022 15:56:16 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAvlU-0032bW-6O; Mon, 11 Jul 2022 15:56:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A641AB81032;
	Mon, 11 Jul 2022 15:56:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D788C34115;
	Mon, 11 Jul 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657554961;
	bh=8HV9yZZGFBJidulDHDzfWS4Ajwr3bhBQMRksoe8XUHI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MDIxfWkN7FUIOBu2c4cTc5keVGVoKO2v+NQgGOoloxL6OwZ0VNankrbwYB3yBk7pk
	 TSFHe2oY+KK0YR7zfpizEhsXxn0wbAhNnNKmqyBCCaE8mncbW134UskBO4J8gmY/6L
	 2xHvfMTI7f3VV2PQM3arYmPQrV2zsKU2Y0LZd2umyPXMPPtdw2DsjmkMF6xU63sj8g
	 7djIbycrg4FC4RKZmUXtLnaeiOSHXpZh6p/Aoowqy+L41xsSyo1DNrwgEiWV/a52vO
	 5dekxUddpSXcHrEvl6jwjgYqJ4nWHmo8xjwF3GJVAyIenm0zM1heexVSuuykMWNGKk
	 AnxZ5mZxddM8A==
Date: Mon, 11 Jul 2022 16:55:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
Message-ID: <YsxIDCaMf0Z0BnxH@sirena.org.uk>
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
 <Yswkb6mvwUywOTLg@sirena.org.uk>
 <YswoOE/sP088lius@monolith.localdoman>
 <Ysw2mzhw4pyrxirc@sirena.org.uk>
 <Ysw+3Hg+GbDjXuTn@monolith.localdoman>
MIME-Version: 1.0
In-Reply-To: <Ysw+3Hg+GbDjXuTn@monolith.localdoman>
X-Cookie: I am NOMAD!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_085604_428994_84C272F4 
X-CRM114-Status: GOOD (  10.42  )
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
Content-Type: multipart/mixed; boundary="===============8694267699071185547=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8694267699071185547==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tg1MdlMwJWKMRNAi"
Content-Disposition: inline


--tg1MdlMwJWKMRNAi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jul 11, 2022 at 04:17:37PM +0100, Alexandru Elisei wrote:

> Do you want me to respin the patch with an abbreviated splat?

It's fine, just leave this one.

--tg1MdlMwJWKMRNAi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLMSAsACgkQJNaLcl1U
h9DfVAf3fsWaAiN9qpjwm1k+G3+bQFU/BeOTROHaL2wDeSqy50zlg6PJy+C8/DWW
FLEDtXUo/3Y+fuC9hjkEhpElWej3xK292MXE0d3gkc+pZe3FQzOYn6JTNvOeUS3u
MQIZKwXplY4jbXBYnDzt9JKl7Hc8ZdVYfngtQkOj/bJiU5IrqRQIrQpivaNi6Jpz
wRNdd01A/z5Rk09lWCQz6uTg8XxLpI8pxrL3BL6Q0TjA5J8rIp8ki5UMYhkcmi78
8tMo/IOyLGRLJCJij+wAilMpUZPIoAgexZhuSJlZyWyuHf0qWEFZSSK+z0g7Ybfn
KE6lm2sRo6syEO4ln0OneVdgv/9a
=vq9L
-----END PGP SIGNATURE-----

--tg1MdlMwJWKMRNAi--


--===============8694267699071185547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8694267699071185547==--

