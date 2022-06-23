Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D2DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 11:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l9Lhj/BYYfeXwD7GMsXaMye32muTSwq7Ex+ltNcEeeI=; b=TTNHCdPTbEGMu7g6pfL2w8GuTH
	KoqNcaXakrBjHb9ro8EQAzx7jEsSdhJUDna3bWUysU1uDJx54PVgvVeEoqKZ3dJK4ETE2dY/CgLME
	1c+21dHQBboen8XX+CWm3KAKjsNd3e399wjDMmIuVwVWlZa6de+nKjhcV4xfPAFoD+0Exf0FTi9oy
	OaC9SKPcAfRNANRDQBj1kN199g+cPtnkP8U5moWSF0QsLI/+Uq0BHmtwxKIa7w3QunwssfHhddd8f
	4G70SqO+E1zHJ9vNguB3rng+e4wqONzYq1X1bA/5ysit3dT810Wt07hL/VVmYei7CpLzGzBCAaaII
	EoNaIfag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Kbw-00EdKB-4a; Thu, 23 Jun 2022 11:02:56 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Kbs-00EdIO-Ph; Thu, 23 Jun 2022 11:02:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D195061ED8;
	Thu, 23 Jun 2022 11:02:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1C860C3411B;
	Thu, 23 Jun 2022 11:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655982171;
	bh=QWxmpYJIQevrOn+jIA9BiDlZ1Jm6cS7KRCVZB/rj9MU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uQk8I+JcFVSOI+L8cXE8qm9iQ8k8bUT7pZ8ijL0cSccXLN/EnEJluw10gdhEyLr88
	 s6xeP9hTwyT3i50PQskxDM7s5sJ2nLymilcYIEePm8cIm44TRyGaEB2yaLeixVYMrg
	 0mAYkNT2SfaDKlQsjc/t8JthcQT6mrQJK6lEVobXtbCMLERvjkwCLxxYNMtYejSyuS
	 HSovhcM4827L2LVHZT2VNMWzjxl7vsjEsFQKWsfL1FBmkr3e3R9PDrzQmE8758RzF+
	 yE7Esv/81d3SjOJ4ZNdwrzouWuT87mR+AC21FSj5henoKNvlHs7tJDzCKhtuX9qPOn
	 ITMDCSQZB//dg==
Date: Thu, 23 Jun 2022 12:02:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Charles Keepax <ckeepax@opensource.cirrus.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	lgirdwood@gmail.com, kuninori.morimoto.gx@renesas.com,
	mripard@kernel.org, airlied@linux.ie, daniel@ffwll.ch,
	vkoul@kernel.org, nicolas.ferre@microchip.com, nsaenz@kernel.org,
	shawnguo@kernel.org, linux-imx@nxp.com, cezary.rojewski@intel.com,
	pierre-louis.bossart@linux.intel.com, linux-mips@vger.kernel.org,
	linux-amlogic@lists.infradead.org, daniel@zonque.org,
	srinivas.kandagatla@linaro.org, linux-rockchip@lists.infradead.org,
	krzk@kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-xtensa@linux-xtensa.org,
	peter.ujfalusi@gmail.com, jarkko.nikula@bitmer.com, heiko@sntech.de,
	jbrunet@baylibre.com, kernel@pengutronix.de,
	alsa-devel@alsa-project.org
Subject: Re: [PATCH 27/96] ASoC: au1x: Migrate to new style legacy DAI naming
 flag
Message-ID: <YrRIUef2WAs15/Mg@sirena.org.uk>
References: <20220616143429.1324494-28-ckeepax@opensource.cirrus.com>
 <202206230910.wUXKFP3z-lkp@intel.com>
 <20220623093951.GG38351@ediswmail.ad.cirrus.com>
MIME-Version: 1.0
In-Reply-To: <20220623093951.GG38351@ediswmail.ad.cirrus.com>
X-Cookie: I had pancake makeup for brunch!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_040252_910678_0FD28E17 
X-CRM114-Status: GOOD (  11.10  )
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
Content-Type: multipart/mixed; boundary="===============0636127282646964150=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0636127282646964150==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aRjk/oNkrDuhHxkv"
Content-Disposition: inline


--aRjk/oNkrDuhHxkv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 23, 2022 at 09:39:51AM +0000, Charles Keepax wrote:

> Mark do you want me to send a v2 for the whole series? Or given
> the size would it be better to just resend this patch?

Series please.

--aRjk/oNkrDuhHxkv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmK0SFEACgkQJNaLcl1U
h9At5wf6Ax7J+7EqACjWVB1NBLm4Fqt/fn2hmYjsWEp5xg2nu64uAExOpqhd88Ub
8EiQ8JJ5Yh+LqGAd+ebgMayuxNfGx/YW+EBYI86mKPNt5JUiC9pf7v5IDM8Tdowt
ItjroWnrAvyu755n93nXekhH53LbekNQZ3r38IqmgYxXfRwuBwo+6LDpWwG+yuZM
qsKAlnQyapzbY/t5/1ziDvbV9Tu1jRGLpytGhBD3ishspCgdES0U6CAXTAiQbGpc
MjSi61J4JAE+Xhu37HN97vid7MjwfolyUldVhZBQk80qRTtR78Iu5cv5Mg1kJ1v7
BEu+WlV4O3xD0frAhInPwl3skpKkHQ==
=ECPa
-----END PGP SIGNATURE-----

--aRjk/oNkrDuhHxkv--


--===============0636127282646964150==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0636127282646964150==--

