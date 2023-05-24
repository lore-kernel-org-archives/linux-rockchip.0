Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6AD2C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 10:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CUlRtROhHZMlyAXDtdWmhw31zEKPzUG7JF5epYh+b8c=; b=ezqPbgV3NQMbdIMY7UaZRDxt5+
	mxMGhYNoZUbiWbNQUF26znNLc+0DXIQH3EZGsXAlSbnxnTEiXwfOajMTQ0cvwNvDjLTghacQndbjg
	kKn/DzgjChNqbSe2z0wJRWtvKKXn5I9rM1sXMyPsAfFibhIah9f/rR0HxgLtMeU7rxUYFeTzU+bPp
	7XJ2hY2tekcPywqqNw8vxjIK4q6GndqHcpNUwQJcY9mVjCNFksPBh/+UVoFUAhHw1hSlx5aQFHk06
	u+mfG+TWFBA5G2rPQP94HXvg7RrezPt84shMJR2tQFqoUSCJxw89xuIId+TfhirMH4GoMh2J5+sfB
	omR/rmmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1llg-00D7X5-0y;
	Wed, 24 May 2023 10:30:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1lld-00D7TJ-04;
	Wed, 24 May 2023 10:30:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id EB7D563124;
	Wed, 24 May 2023 10:30:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D7ADC4339B;
	Wed, 24 May 2023 10:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684924250;
	bh=WEZcHPlDfYf7TtWz9LXQxs+qNwVnCMerNu5/zi8CBAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D4L9oGHJHghir4insEGgFs9ibzZsVUeZ4vEQf53PekPNNs28AkELJW9lm2CEVyYux
	 HNJiR3cfNgbsRsCm2P+NwQXfT4dlrca3PEHVdVkBo8uyPmjA4qJAPzrYLVVTwDrPlL
	 BGGa43VwuK8rWKRiFgwn95CKqMi4ursGstH/HwN/o9CKuUSNwO5FT0qZ7DgjEhw3GA
	 s0OAZ9iPsT2nBC9kRRRdG0KG8QrFYu7JQ84Pxu5XAX0DPQ8mgLsiqziLUPCtoQJ0re
	 ZDt8xoKyubueuy0YQyc3e6huSH1yESvim1PUOuYbKEShY4S08D22Mx51Nbs9j/8bvp
	 uY0k/F08iShvw==
Date: Wed, 24 May 2023 11:30:43 +0100
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
Message-ID: <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
X-Cookie: You will be divorced within a year.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_033053_155713_72B95B17 
X-CRM114-Status: GOOD (  18.70  )
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
Content-Type: multipart/mixed; boundary="===============7527281527870687098=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7527281527870687098==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4CLZw5f0knrgRlGR"
Content-Disposition: inline


--4CLZw5f0knrgRlGR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 24, 2023 at 10:41:54AM +0300, Cristian Ciocaltea wrote:

> This means that either the hardware default is wrongly set to 0xB
> instead of 0xA, or the specs are incorrect and instead of having the
> range 0xA-0xF mapped to -1.5 dB, the single value 0xA should have been
> mapped to -1.5 dB and the remaining range 0xB-0xF to 0 dB.

> Increment the max value allowed for ALC Capture Target Volume control,
> so that it matches the hardware default.

> -	SOC_SINGLE_TLV("ALC Capture Target Volume", ES8316_ADC_ALC3, 4, 10, 0,
> +	SOC_SINGLE_TLV("ALC Capture Target Volume", ES8316_ADC_ALC3, 4, 11, 0,
>  		       alc_target_tlv),

The description above of what the control does doesn't seem to match
what alc_target_tlv specifies - it is:

  static const SNDRV_CTL_TLVD_DECLARE_DB_SCALE(alc_target_tlv, -1650, 150, 0);

which is saying that the value goes from -16.5dB up in steps of 1.5dB
but your description above says that 0-10 map to -1.5dB and other values
are 0dB.

Presumably you can check the effects of changing the value?  It seems
plausible that what's written in the code might be accurate and the
higher values might actually change the gain but it'd be better to
check.

--4CLZw5f0knrgRlGR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmRt51IACgkQJNaLcl1U
h9BBFAf+K91gpv3OOpIomfDxOtcWJQeELJ8c/CLvL/L7u9SR7wrJxAXP+x0I6m8V
M/Soju79ZHj9rtO8/vf1Qlawdk7CUvthUzBwUEnIal57dR1m1B/CrPWl0gVtY2t+
r8O/SrCF4LVeIazbzm3hEtwnE+d7oKJV6f1R6r08DfB/Yh3pXoMO7CaqaHIMXYZK
OahYu0IBVvCb4KGrNHTOusU22LoPS2A1N+rTiXhtHM3BY4mt0PKH4PcDsgU8izx2
Hc6IZjLTbatLFHGzyUJbCw1gXreoHIkjEmVO1V+TovEBeu/sSabTiIIILOAJUzj4
OL+XGPHyh9TISGyaSPgSt6f8HcnDQA==
=UXce
-----END PGP SIGNATURE-----

--4CLZw5f0knrgRlGR--


--===============7527281527870687098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7527281527870687098==--

