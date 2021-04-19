Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5033EC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 16:51:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 17E636102A
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 16:51:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 17E636102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cYpTqN+A1xX0hwpkgRYR+3F+RlfHH1dkOOv3rjw3Stg=; b=QsOAKyWdlzhnesyWEpg5RdbFF
	jimrCY4nMlx0SnMHC+Zrrl+71RJdzoOG0nbdw11MJCjvJlzrDLk+8THg3Ex/e0tmX47xraguuHi5P
	ZxwcF3Gdw5zOw6a4wlZMKOXTlgyQ/FmP4+Bc2IEpHlCcg4l0bGJ8SzkbCFDzI37YOnUmNXV53mzGN
	xRyctC0y/AXW9EqItjitkPGJ/sIBjDCaPHRKwwEYTgOOJ7olc8UVUe/7GtXZaEeJrkF7a7R/hjVD7
	Qmgwm8qTVjHgafANC/FTKL8nI1k/CXpiLvJSwOcOyBEk5t64f4Z5TGtbcMF8MwORcoS+TZIQZeDvF
	LWcCpjf5Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYX7n-00AJWI-L0; Mon, 19 Apr 2021 16:51:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYX7m-00AJVx-3e
 for linux-rockchip@desiato.infradead.org; Mon, 19 Apr 2021 16:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OnQsXA4yJ9RhSYUKn2SMNMzKxvfoke7s2CXYhpYyRL4=; b=VYft5tICyGku4CiggFGRTalqiB
 CSmgYJm8TZ5CU6v3OxrWZAuSBuDdOizWBJcC6mc13j8etpYGCq8ta0lweRehmPOffXhOgQ9gONG4Q
 A8//6tvCi6WbzgqvUAmQOQiveAaiAiLYOJ2oYkyujw0AmICh7lXh7+HowM9WaiwQ14/Cep3SViLDN
 CBhR3kvHTrGaxFquJbrmRbhRuZRROLlOxw2h/OX+r+dJlAdS3SBA2pKFcRctbiCQ51QI9/P1m2/0C
 n+h9JH7BvuCzgkuymEU2Bb+qeOrfOCg3fiNI1P3Wuid+U52hLurcJ5cVeR+g47r8BjjPPzmCVH0jq
 Rkkflrag==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYX7g-00BXTV-Dq
 for linux-rockchip@lists.infradead.org; Mon, 19 Apr 2021 16:51:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id EB17761157;
 Mon, 19 Apr 2021 16:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618851101;
 bh=t9sKdxxzF27jAaOVI4eHqjzPUfXADPMgQYX+irmFUk0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CwFymYgI15t5RJdIt0yPfIuTQtPQwHkpO6pDwb1d03MI1+VR896Udz77inzmv2zMF
 /bEaNAulEu3ZnL6QUlbSgsDZzVvOU6zOx6vhgMvzDi4Cpa74ty3D7bZSjRuZ7e/890
 PP2hnN7E6696JYCxvrl/n3thppWVNEQVWGEU9gAvyRNHtPDyl6TIPbowwwzwSk82EX
 7VGl4ZuN3VnpNEE4Y6USl56WYdeQ4JD0vTD1x4gtlrolDEbTpbIdSfP0QGc02kJdbk
 2FB1c+T9zrzhHmIY3Qi6v1vnkyjtgWftIFEHy6Cu4h4MPxPIypfcQOkhQ8SowtK4FA
 uFZLY2Tpvgihw==
Date: Mon, 19 Apr 2021 17:51:16 +0100
From: Mark Brown <broonie@kernel.org>
To: Chris Morgan <macromorgan@hotmail.com>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [v6 1/3] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <20210419165116.GE5645@sirena.org.uk>
References: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
X-Cookie: I will never lie to you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_095144_506089_278066F1 
X-CRM114-Status: UNSURE (   9.59  )
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
Content-Type: multipart/mixed; boundary="===============7467969133505710597=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7467969133505710597==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KlAEzMkarCnErv5Q"
Content-Disposition: inline


--KlAEzMkarCnErv5Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 19, 2021 at 10:57:16AM -0500, Chris Morgan wrote:

> +#ifdef CONFIG_SND_SOC_RK817
> +	case RK817_CODEC_DTOP_LPT_SRST:
> +#endif

The register map of the device isn't going to change based on the kernel
configuration, I wouldn't expect any ifdefs for it.

--KlAEzMkarCnErv5Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmB9tQMACgkQJNaLcl1U
h9CIoAf8D+K0DW5kV8X4IhrEH80ku3GWfao1S2OxCs8G5XD7/051b/5x8HhBIHBQ
pvgT9Tm1ggkXtVNknjxzDKtmZbKngRQ31gqUJtYw9emHlD2CAk6pj9BpH+gq7RBZ
OWq8WRHO83aTGFJ66Q7kc8z6j+0t6nMKe9/IB+fDq0AbH/eKlYK1UZDOLWvG2XI/
R5PZ21SuIrA5iVCBJnKs9y9Re5Cj+bTVL0Kkp4LQAeB+v+1OglgYC8dMag2al52c
vvCibAvGmJ2CzJxgZX6reyY5n1r0Op/3a4NHRIi2bSeI/tOPXRoSn+R5Ad4VUEJD
ZO08QlNJkRlB6Q/4iQIwP30aexXaBg==
=9x18
-----END PGP SIGNATURE-----

--KlAEzMkarCnErv5Q--


--===============7467969133505710597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7467969133505710597==--

