Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C3C0C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 10:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LEnO/4DBp56xPNACQcmsMcR45YEBJ9zO7JuZb/iRVRY=; b=oEIMPdbxiwp8n+ojtS1Srl0gcz
	dzKP5SqxbyjvaQsr0hfStTS80n/A4BhBTngxoMyRVX/+PTIBVYhIL5YD4AM9B9CsYqyzZjHvbi9u5
	ZGR/pvCHtsbtKflgU2Z0vUxlvPaoEvdyeS5o1aU0C82oItsm9GbwmobnC7F/zrrjBjx8Pc+ooqWGZ
	sEwQWzcmF3AbmDR7QtrIQtSFbWWEAQUgrD/YBAfm/g0TNE1N4rfja2GHRX3/TPveAaPonCaiTstKB
	cf4wpoUSxppk0XcOx6p+NQW6+UrRehHJCAcbs6nZSJ2BJGVvHaOlLskQuhy7OufCEMGsT5SC5OLXp
	rfBbFQXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1lti-00DCej-0c;
	Wed, 24 May 2023 10:39:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1lte-00DCbv-2x;
	Wed, 24 May 2023 10:39:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 152B660989;
	Wed, 24 May 2023 10:39:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB763C433D2;
	Wed, 24 May 2023 10:39:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684924749;
	bh=97Bo8M7vIcJpKbKSc2UjRTwALsSkh/PCl91iiCIBYgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uTWnnoc9M65z0pi+/RphFF0cyaG7G0fBxhQ/CRdXGcaGayKSEvgqc9qTZKkQ/HcFx
	 wHDyQEVfYGNbGpVedSYEPpvivoUllsZ47udQ2iWNbu8he4ct3pCnc4ZaxCLRdZSbAk
	 exkhiGqn2Mbpnxc9RpMcaKYJIpuH6zT0WNFrH0nzlUiSkSJA51tbO0k7lFeTKElpzT
	 WKIo/kmtZIK84+hcbg/S1AUcDM3n7Xd2pkQBVqEfDVeFgQEXDusM4S/sFEMfU8eYyM
	 TCkDketyaOxgFeoD01aooo9Nlhc+goj7sYD6rroOJK7oN/PF9IDOKhWrXo0s94TeAW
	 +efNTcdc8rVew==
Date: Wed, 24 May 2023 11:39:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Zhu Ning <zhuning0077@gmail.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	David Yang <yangxiaohua@everest-semi.com>,
	Daniel Drake <drake@endlessm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, kernel@collabora.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Assign ES8316 MCLK rate on
 rk3588-rock-5b
Message-ID: <5b3e479f-366b-4de7-a4ec-5348166ebcbc@sirena.org.uk>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-4-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230524074156.147387-4-cristian.ciocaltea@collabora.com>
X-Cookie: You will be divorced within a year.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_033911_036228_E5A8DBCC 
X-CRM114-Status: GOOD (  16.96  )
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
Content-Type: multipart/mixed; boundary="===============5258365623722478178=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5258365623722478178==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ddn++dUqYG3z34LP"
Content-Disposition: inline


--Ddn++dUqYG3z34LP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 24, 2023 at 10:41:56AM +0300, Cristian Ciocaltea wrote:
> The I2S0_8CH_MCLKOUT clock rate on Rock 5B board defaults to 12 MHz and
> it is used to provide the master clock (MCLK) for the ES8316 audio
> codec.
>=20
> On sound card initialization, this limits the allowed sample rates
> according to the MCLK/LRCK ratios supported by the codec, which results
> in the following non-standard rates: 15625, 30000, 31250, 46875.
>=20
> Hence, the very first access of the sound card fails:
>=20
>   Broken configuration for playback: no configurations available: Invalid=
 argument
>   Setting of hwparams failed: Invalid argument
>=20
> However, all subsequent attempts will succeed, as the audio graph card
> will request a correct clock frequency, based on the stream sample rate
> and the multiplication factor.
>=20
> Assign MCLK to 12.288 MHz, which allows the codec to advertise most of
> the standard sample rates.

Surely this is irrelevant with your previous change, and if the clock is
freely reprogrammable as it sounds even harmful given that it'll
restrict rates that are not available with the selected MCLK?

--Ddn++dUqYG3z34LP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRt6UQACgkQJNaLcl1U
h9DN5wf/W5WcD7Og4mMGFdpfZQX2dnzRyeSTEz0CjPCd8IH1EtUjs9/Ynbswoa1h
i4b9JEmZ6FhwJXA/mEhAD5UZ84MDSy3Eiaa1tyqU+WszFsDFkXRruycmYiLvjk3Z
qdz1fqWbl9PFKNcwC9Yx9fDnrph6/yI1ok1Xn+p1RuC13ykFo9eaecWEeowXCoCl
Q88gVYix4yYaXcTRuax6hnPq9PKnysUyuzTPB+FZ/HycBLwAWf51TwLkCUbGkGRF
eWViwSHzF9HVynxOFtINjPzzMS9HVyWh7Jr4a+CK/0NIkqyqvjP/318EfukXyw2k
WEVKpaYD0v05lvNpqUp4kEyVo+IKnQ==
=sTqD
-----END PGP SIGNATURE-----

--Ddn++dUqYG3z34LP--


--===============5258365623722478178==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5258365623722478178==--

