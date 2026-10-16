Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8DBCCCA48B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 10:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LrFzaMRBfuQQt7lBPDiwqqbhcy22z+/vXRRrvjoT09o=; b=nJrsiOZyoH7mYPDi9NiIV/1dYd
	3G6uC5ZrwGgU+wh/+GP314YvEDS8SIoBNjnjtSr+2NSOO16A/sNEmMmRf9/8dza65AKR7dJfcp5jd
	ATSt/t4pPq3s5QmTIT4Z/b8iEFFTQw8o25/bEb+NzAgS/OR+Nu3VFl1l87KRrTE0W0Fy0m9//mTnr
	TmtukZcI+rYSqUnPlpTcGLieheCryv+sNJIbrbs6sBCH1R7sYoKDJA8FIilOb9eNsvZsgDfXxhEqo
	RuPwbivXpiFci/BLuES6lYBrYeoq71D6LvZIi21lxfwdy6D1di2sCGamp3Y/R9LoxJE5Wg1/tIxQB
	nVgdrtKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfAA-00000002bwQ-2DNM;
	Fri, 16 Oct 2026 10:27:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfA8-00000002bw4-0Ge4;
	Fri, 16 Oct 2026 10:27:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2C42F60008;
	Fri, 16 Oct 2026 10:27:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2AE71F000C4;
	Fri, 16 Oct 2026 10:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792146462;
	bh=U0J00jo5OiHeBPxzEIa6F1DcCXv2U6x9A+gpdOvbR5U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fHEL6kP6IS5s8belsewK7AeFU5zIrffBszsKo3//zeOY4pQ+UIumG35dxnULGf/3d
	 EGt29felUqNf9Ch2QvIQZsnCqtVy/W+u/st4lU4MN3C/Dcl/dTc7W/ZbbvESn7cHBc
	 eqi6D1ok1vbZ5mqfq+W0prdxLrbNmI58Lp7Jtrx5vsHRjUFxpjvTNcwCLCMNZlw8vx
	 dAmhzmT4L+uzQJ81JqVTU1ciXGN2fNgY0dXoFx6rvI5v5OP64DuDhSesR7W4ptJl6o
	 pR2pL8DNGR8LlR9297+A5XzUqMTod1ALxmn/eUISmu/nTdZ7t3YKh25BYzSomJDpfx
	 LCuJ//VjMWTGA==
Date: Fri, 16 Oct 2026 11:27:29 +0100
From: Mark Brown <broonie@kernel.org>
To: phucduc.bui@gmail.com
Subject: Re: [PATCH v2 25/25] ASoC: rockchip: rockchip_max98090: Mark the
 link as started on success
Message-ID: <46a96bc8-2ee7-4c6f-ad8e-94321f8b9630@sirena.org.uk>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
 <20261016040048.506531-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20261016040048.506531-1-phucduc.bui@gmail.com>
X-Cookie: <<<<< EVACUATION ROUTE <<<<<
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Bard Liao <yung-chuan.liao@linux.intel.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: multipart/mixed; boundary="===============2131045965850213228=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2131045965850213228==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tqlzx0giHWNwlE1k"
Content-Disposition: inline


--tqlzx0giHWNwlE1k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 16, 2026 at 11:00:48AM +0700, phucduc.bui@gmail.com wrote:
> From: bui duc phuc <phucduc.bui@gmail.com>
>=20
> snd_pcm_hw_constraint_minmax() may return 1, which is then returned
> from rk_aif1_startup(). ASoC only marks the DAI link as started
> when .startup() returns 0.

Can you please resubmit this as a separate patch as a new thread without
the series numbering?  This is really going to mess with the tooling :(

Please don't send new patches in reply to old patches or serieses, this
makes it harder for both people and tools to understand what is going
on - it can bury things in mailboxes and make it difficult to keep track
of what current patches are, both for the new patches and the old ones.

Series numbering only makes sense within a series for ordering, if
you're sending something separately to a series or a new series then
preserving the ordering of the series just causes confusion.

--tqlzx0giHWNwlE1k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmrR/BAACgkQJNaLcl1U
h9AosQf/VknJyrGXrKz1JvZbJBxS2f4nWntI49PwwvAzQ6a4SD3xfvD3bg/M7LAZ
J5+AHHz3VAcAYPq1gkxEy4pCm8MVao9XTc3Ujwu5jluXqeXIubKVaZnzHh+J84Ux
cjBkHDIed/T5gVNU5Q+CpctZcDl1jrOFs3dUiUzMw9T3JTDLH3NN8u10CbKzFsaO
n7SWoLoUuganF2oSbR0LpA9qfDv+AVTwzA0kxeNZA0Uu75kwlJ7nmFxDmpw857/8
BHCXxOUkS3ASKZ05NU5uuVGM2XAfSRzRAS/AY1SCT45ujPw9O9lhufB70UDqLW7a
SnN5ueA4U9Y+tWt2D0rrEe/M9oXKtw==
=No3u
-----END PGP SIGNATURE-----

--tqlzx0giHWNwlE1k--


--===============2131045965850213228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2131045965850213228==--

