Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF4DC433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 16:50:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6DCEC61166
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 16:50:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6DCEC61166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UQUera/5iwFMvAYY7dlTMqS6qrydaNj4F2i3ZUsrSp4=; b=aMqkCBybBrRokLkMUnPJObr4L
	GBzGek/CehUQ0mDVPcyIkCi3SSBBtJ72Y8nWG0uqqsPuXssaRBGHhIydk+wXUg4Rxu90m8MRH83G3
	QlHctOfFySlXJFS2B+s6g6SgIVdptHUqFQpSzeauyHNrqaoKQwT3MdsFxlDxZyyzDDLZyFZVuZ+p0
	gBSlrEVzwJFt4gSJj+U392bqjOdJr2Qg91PC+THgTXoBUN2QC5CJNqDELMFhYn1vwEivLZ6cT7yX5
	Fq+kFARMCGKgdrx6CtblMFbrA6dpOe6LFl1reCpA1qqS83Oa9hHp3rq79SIFMwznTSGDEE+bxGftG
	601ECJLxg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYX6A-00AJPd-U5; Mon, 19 Apr 2021 16:50:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYX69-00AJPT-39
 for linux-rockchip@desiato.infradead.org; Mon, 19 Apr 2021 16:50:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=G6gi9IjvdNZuZmHQ/8XdX7I5tvLU/HvmeSYi0RrlJh0=; b=lYlfo4qun5kMpVRm9W5WaHnA2a
 cgOPmn+t9KjXIyVJovYtWvvloAYUFphL4eXFIUzN8pQ4qau3whraeKg1W7wbGnQ3uqH4khUtzK20x
 b7dqcEpLt8aI+e2/zjDpyL1g4z9ME2yrLi+y5FGX9eOOj9Jzosi6dxlGjqh9tUuhbCZ+slgKMMpmi
 qyCILpMhNCNpUFpdvl6UUmy4Hfn3+oJUvhp40IAguNlTfeNHHge7xGuWkycNCLAf1kmedDf7Kl+pa
 E8W6npGttD0GxapJwyu7LQat3fkUglesu+2rsbSay+KeoGJFed0ADnzwXtmzKHYSvOs5Myl/P4sCQ
 5MwGCGyQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYX62-00BXPd-DQ
 for linux-rockchip@lists.infradead.org; Mon, 19 Apr 2021 16:50:06 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A88B761157;
 Mon, 19 Apr 2021 16:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618851001;
 bh=G6gi9IjvdNZuZmHQ/8XdX7I5tvLU/HvmeSYi0RrlJh0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rcx8KDUspMsnso4SdE1irJBmyMVW7dUsAzNGrCdhztyAh6zSGvQ+OBZnC3lN0GJHt
 qEwW9ZWHLbsHa4dam13PWxl7QXF8uB+wODR89NOHKFhDxIemDicY8AeuKOkyWh29tF
 9HLNuvoN1WHTvQ9wnf98rwWlvw6RNmQHrHU1HtKNdgbT6HyL5tXhy+LYYTQM5UNGOM
 e6RIHQf258ClL/BSuOsOJSIiozY5sFXD0ZmsRbOz9s8h3jaMP1I2JpM7hnU+q14S3g
 IbTM+OTTpC2Za3bWZVZ+CvWB2wr1xIJYTjZc4N6GA6wR9LVApPlmLAC9m9DC8RbxOa
 YdFBYd6QkAOvg==
Date: Mon, 19 Apr 2021 17:49:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [v6 2/3] ASoC: Add Rockchip rk817 audio CODEC support
Message-ID: <20210419164936.GD5645@sirena.org.uk>
References: <20210419155718.17348-1-macromorgan@hotmail.com>
 <SN6PR06MB5342B0506101902E4889B335A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR06MB5342B0506101902E4889B335A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Cookie: I will never lie to you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_095002_525089_89AB3FA0 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============4644054233348297523=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4644054233348297523==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="76DTJ5CE0DCVQemd"
Content-Disposition: inline


--76DTJ5CE0DCVQemd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 19, 2021 at 10:57:17AM -0500, Chris Morgan wrote:
> Add support for the Rockchip rk817 audio codec integrated into the
> rk817 PMIC. This is based on the sources provided by Rockchip from
> their BSP kernel.

Reviewed-by: Mark Brown <broonie@kernel.org>

--76DTJ5CE0DCVQemd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB9tJ8ACgkQJNaLcl1U
h9COQwf9E3C8jlYIm7wGEcFotmudBgIWSQEkeJ9fvGuyz5NgjBU2HPyJG3r2XMeG
Q16qzMuSYLrcmKp9UKL+I04sRxmbF6CVUhwmz4qwkB+KXo1XncQgxe/U9r21kvsx
egbsEcowqE8efCYXQPaGKQfT1V/YgSSzWUaDmbv09RzZ6i0OuVTrMQsmZoOmVtqH
yoBTdNLvTCNGJ7fRqeuvWzP5K4CCyxA+pO3Z0qMGLJx6GzKBrol6CY92Bp7boqOm
InC+F/7hBtgQgjL8tzojOl+MMh2j067ICSQYcfr/rfxuA4Pb07/gJuZZA8HzV9mg
Et4oE70z2RXFXMzbzesIPIW3wUGq4g==
=7Sjc
-----END PGP SIGNATURE-----

--76DTJ5CE0DCVQemd--


--===============4644054233348297523==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4644054233348297523==--

