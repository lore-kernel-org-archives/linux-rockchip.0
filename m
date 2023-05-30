Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F273C7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 12:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=geHP51m2WL1xFwaM7xuGznk4s8i3eIIPg8ydcVqfmQk=; b=dMPUzt520wmqcN+CJsKoV+EE3M
	o4n9/Av6dhHV+R3a6fZtih6xtL4VJ/me1JAbd1K0PluNMmmQroBR2TbR/4hVJBEpYQtWNrQMEkIYN
	58TG67zje3HMgF5iJpxqyyrXd+DQOP5O3cMmHd+3rsEsMvCeSdwYjhBca8ZqOsC1FRUZJmVs7MRg7
	0SR94/c4bqJNMDqMSbpfQEm6TyZ5p/eS/ZC5mjp9S5MpPkyNryk6ZtGOQRmkczyRrjY6oZsMyhQ/e
	r0y2Accm6DzC6BuUIryMSeETYFHJGSmYZIuIo6OX56kNEI8WTIXhPGXGX3iOMpt53vZ8tOWH3v+2B
	wZo3SaVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3ysp-00Dwq1-2q;
	Tue, 30 May 2023 12:55:27 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3ysm-00DwpX-2T;
	Tue, 30 May 2023 12:55:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3AD4462FA9;
	Tue, 30 May 2023 12:55:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85A34C4339B;
	Tue, 30 May 2023 12:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685451323;
	bh=gB3DzdnTcOqeQ/yA5xB+mEAqSvWsE3BKi0eELAC2ZuU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pzdYG80fmSksEi1YqUZ/UD8oa6/83PEBXNA8vWUOjnLjj6dlwM8ykT+Kg8m0SBViG
	 tiFksq2POWgCBG827I15unwmNmbyKokVztJsZu3e67tlkluMWjgL8/WFHku2stydtW
	 ASOnoJomueeMvc8Z7GwvuUbkEs3tNmYqA3wXwoFJIZhsh62axEHtg3bVpISSNPqLk4
	 dHktdeIJu0f8n07kxYk8SNWU5KbvZYR6yZ2SL76bLu7KwPKMQNV3VLhUDb5g6RiSqk
	 szaSQS3PQcwd9+8rlDcKdcx3aMal6HROoXQln7Cg5tJaRscSfGLSUMc3zNaAadZK8B
	 ykuyD3Cp99QhQ==
Date: Tue, 30 May 2023 13:55:16 +0100
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
Subject: Re: [PATCH 1/3] ASoC: es8316: Increment max value for ALC Capture
 Target Volume control
Message-ID: <d15fb475-07da-4273-8a4b-2b493f3feb4d@sirena.org.uk>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
 <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
 <cfa23203-1626-440b-ec27-efe56cb297d2@collabora.com>
 <01fd1a9f-56c7-4864-bb2b-8b004284c8cc@sirena.org.uk>
 <3c6b67a4-4892-0057-3dfc-65ed6c7ebc37@collabora.com>
 <4a3f54a3-2cbd-4a22-9742-9ba60e78643b@sirena.org.uk>
 <8247660d-4b95-0ed7-9444-b23da23560ac@collabora.com>
MIME-Version: 1.0
In-Reply-To: <8247660d-4b95-0ed7-9444-b23da23560ac@collabora.com>
X-Cookie: I've read SEVEN MILLION books!!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_055524_861585_BBD0777C 
X-CRM114-Status: GOOD (  16.84  )
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
Content-Type: multipart/mixed; boundary="===============6570908264981275742=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6570908264981275742==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VwKU/hThU0aasoKT"
Content-Disposition: inline


--VwKU/hThU0aasoKT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 30, 2023 at 03:52:52PM +0300, Cristian Ciocaltea wrote:
> On 5/30/23 14:36, Mark Brown wrote:

> > The other option would be to change the value in the register during
> > probe to one that's in range, that wouldn't stop any existing saved
> > settings from generating errors but would mean there wouldn't be any new
> > ones.  Either approach is probably fine.

> Thanks, I will prepare v2 and keep the current approach.

OK.  Remember that the TLV will need to be updated to show the two
values having identical effect.

--VwKU/hThU0aasoKT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmR18jMACgkQJNaLcl1U
h9AK+gf/W47UY5pQEtAzD8tOdAXdQkK+SUUtr2KaUO7DO0hgR7cNOxU/oKB0MnLB
1JPcc2WAZd/t5T9zzvE9dXc0gyWN44UcrlJjRsYv2mVkarSBRSF7121NCcxeUhfB
MpXr4LSLG4F/7jsYsfwrqmHEH/5Rm3YtqacLuQLoajf2xvC/g//JJn1k51f3kgpd
WTCV4QQJSMBq35eCjXVEPS/vOIUAyZ7iYLE6ZgErkoxXgm9VcvKPXbhWdni9XuR3
5lpJHKyx9XEh9cDwNeq1dp5CAy9Pa8enWT5FOY1G0VAWgY2RGhJPvn3ACleHS7dX
Nrl0SlmWElUBaMDXpYAUslS9x0lP9w==
=wTrZ
-----END PGP SIGNATURE-----

--VwKU/hThU0aasoKT--


--===============6570908264981275742==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6570908264981275742==--

