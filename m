Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 216E5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 14:13:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5B5360FC0
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 14:13:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E5B5360FC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tjUj7VHK7uHA2IScrVE1fNDh94ClMKXnIybqOsV2nXs=; b=VaK4zEAWFkIxaw8p9skb94Z3Tl
	WLrCSxxqfmJEiGTVrXl9Dxhy86uwgiktIUs0Ao3EntXYHp59vhqWD69VUU/cDn9l9j+yiVGWvYo7a
	8yWCXeYxpO1jWmPzfE29R3weZJv1D83UX8Uwd6QrTGroCLFsulU7Gta0lrPU3l2KyVLP3q3Hj5Hm1
	N0/4zHP03FIBS/nkF15WWGkYnrVPh76rIZX3y0sBHtQ6AA0r01HlAtxsL0myoBXVB/GViG0H/nB5X
	sM27KYHOg7vBBn1IUhIBVb9PnNDarSQTlJmCQlHUav7OJmiXV4DVakYUbK8Y6xNDBOxuKc/URF9Ls
	Tw35dM6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQVfA-009I3v-0m; Wed, 15 Sep 2021 14:13:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQVev-009I0Z-1p; Wed, 15 Sep 2021 14:13:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1DF0A610E9;
 Wed, 15 Sep 2021 14:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631715188;
 bh=3VliXwA8hFR5zM12Xw58dE/ygC/s5PPHveglLCGMbSc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PS78lEARdU0wIKnld6n9NNWJ1mO9jd5q8hzpG6/n6ktqhPn2qraMg7zytVGWxuPgy
 uVmKlcwND4cfAlP6sZmxExrSSNzvdzZ8jrfX2gQgQqtBoFT6iN43MEWUC/OPz0jUnS
 1WU2kademhOEO1hNplPxskA8IUPJVMqD6i3snzE2scNpB5H8lxsR1AxwnXd9zkXOT3
 /BnFpEOTPo74R4EMz50aMl/flyo1oSF2+xnjVnbui+QS3Cub2xTcGYDG+1rhTHAEwK
 BvOBW3SR9VZ7IaZZK5BnSsk5Ld/5PavxG4P3Pck1VBGr1CSPzO/VF/dhwJL+E1QeGW
 2oL6+nrM+7+Fg==
Date: Wed, 15 Sep 2021 15:12:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/4] ASoC: rockchip: add support for i2s-tdm controller
Message-ID: <20210915141227.GD12513@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-2-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210903231536.225540-2-frattaroli.nicolas@gmail.com>
X-Cookie: The more the merrier.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_071309_145734_4F9CE141 
X-CRM114-Status: GOOD (  12.15  )
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
Content-Type: multipart/mixed; boundary="===============2785245446019433961=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2785245446019433961==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W5WqUoFLvi1M7tJE"
Content-Disposition: inline


--W5WqUoFLvi1M7tJE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 04, 2021 at 01:15:33AM +0200, Nicolas Frattaroli wrote:
> This commit adds support for the rockchip i2s-tdm controller,
> which enables audio output on the following rockchip=20

Please for future submissions include information on what's going on
with dependencies when sending partial serieses to some maintainers -
the usual thing is to include everyone on the cover letter.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
(for the bindings)

--W5WqUoFLvi1M7tJE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFB/0sACgkQJNaLcl1U
h9A4Zwf/QB3O2kBDkYXbIH/HOolQ1QepbZfvybO+g3uaV9wzSVDEm/p0cTYOKmaB
uXFMNkXLL64UsvgTw/ECheXMAzmRgW0uQhhOngfsOw2opR6QaemuYaALuqI6C2Fx
aWlRrDY7nYq9nGxwwRFYh013qTxMSPOmyUoTeTopHvwYprdt20mNhm5lwLhBKaOu
5SjkcoeJoaQih5aX5Xtm3RWYL2DNy9Wf/bLUB+FZSoGSOG2ZtKWxT5rCuZLMOXQT
3iN69D9F1JtRe+BwAiqhwazUXmfr4Zd0sDnUsWVis2Nc9V7T8J7JH/+9hekw5iPW
Y+hRZc5APTVu0HPo/3WRinjld5481Q==
=eohL
-----END PGP SIGNATURE-----

--W5WqUoFLvi1M7tJE--


--===============2785245446019433961==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2785245446019433961==--

