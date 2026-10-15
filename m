Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1247CCC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 11:12:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bbBveBHwIfvqPTzyQsyFX5x1oSKc7m9z8OuhTPdSxhg=; b=ppfZIqfbYw3BP9N+zJ3+Bfcnre
	UTQS6NwM/c08zwU1Egq7Xz572Az3pNAzSsz49M84Q09cwpt/qx7uTE7RhcrJ2N3IQJcDu5uvDRudZ
	jDG5AgL8/7jEpp/s594GDEBGd6MeGiRiNy4Sk1Rtap0KnBQYPPggeorqKuyR5g/zjyd2wojEZaZpR
	ilZ8QILs1fzxrj5dttvn7yARIlvuwLHNawyYQILi+Xo5xBSGJIIcKZsdD5YSMHzo9fFTAXwa/4MDa
	9LUeofe0fv59FaUDTw16UWYhmU5IK64HW4WpUlS6jgRbBYtaBFPA0MlnBiYNe+hSR5gEMvRxrtz8i
	0JGZ4zEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJNy-0000000HXhL-3nxP;
	Thu, 15 Oct 2026 11:12:34 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJNw-0000000HXh9-1wgo;
	Thu, 15 Oct 2026 11:12:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CFC5443277;
	Thu, 15 Oct 2026 11:12:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5727F1F000C4;
	Thu, 15 Oct 2026 11:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792062751;
	bh=Hd6BBnEO5pGpbCON7Q87RSeR9u1q3VXpiWY+WMKFASs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=R+8xOXUkDkZ9pKZHBmcNtj8NyuP6cR0oqQgoZ8UCc+tB3DzT4QCvEJXW8Nh+PAHLO
	 l4qO7p4Clap8JJBD57iJA17dF9oaApVDpvp9NMyxi2p9zza3C5/jxCXVuqp97P3kH/
	 6RncdVn38CsHW39zcgI8DIfqy4X+t2GhIU9JFMzzboPBxl+hGJOmX6ojQV+MHKJjzv
	 keBaU7H/dW4cHXdRTPAOoj3PXUzd0obz4/xGRkI4yhpdkI4hjeNJmNTCIIZMIQGcGL
	 wUvK5fhMpbxaZqaxQQpRrEEA+IDFwqvTiLrkNMorRjRdP64wUDyKUMoYHX3QYp6pVZ
	 cc0SD3e32mliw==
Date: Thu, 15 Oct 2026 12:12:17 +0100
From: Mark Brown <broonie@kernel.org>
To: phucduc.bui@gmail.com
Subject: Re: [PATCH v2 00/25] ASoC: Fix constraint return value handling
Message-ID: <ad722297-5ca5-42c5-a07e-59fa958387c1@sirena.org.uk>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
X-Cookie: Tax and title extra.
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
Content-Type: multipart/mixed; boundary="===============0377280096953371102=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0377280096953371102==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="syrl3Afg657kytt3"
Content-Disposition: inline


--syrl3Afg657kytt3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 15, 2026 at 08:42:59AM +0700, phucduc.bui@gmail.com wrote:

> Changes in v2:=20
>  - Add Reviewed-by tags from Vijendar Mukunda and Chancel Liu.
>  - Remove redundant integer constraints already applied by=20
>    snd_dmaengine_pcm_open().

v1 was applied, please send incremental changes for the differences.

--syrl3Afg657kytt3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmrQtRAACgkQJNaLcl1U
h9DzAQf/WcguhgqKmLmBlSGrfAmohZap9b+qyUgyk3gBcdL4pfDRN2N0m/jg80sq
EGu7yBR6LzgAalcEkMLnjACfVsi4kZuopa6nijef9rrYX/cJcxUrOSjK3l2G+rD8
U6h20fO6YVWgAkmtLtV9G7PU+gy+06ZO8snDL9dTODv9DYyWZvQ4mTgJvAK7rYQP
mBKi2rhlpXe2rMyRIvXW4FQtX1kqOzt+gtSHjApzltjchxaDuM6/jThE4a8+o4Ms
XpUeCo9/Bg4u29Zt4okIN1S1up/cOjyNcEQwgf+5Lf0qlZXbV4Dyk43TNms3vuED
ZSE26kZ6DpaP/lgPoejNuYeJrPX9Pw==
=HbjQ
-----END PGP SIGNATURE-----

--syrl3Afg657kytt3--


--===============0377280096953371102==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0377280096953371102==--

