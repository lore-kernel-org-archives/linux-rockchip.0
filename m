Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D48A8C77B7A
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 11:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IgBb2pvNNSQEVfh00LtFhphNxS+4iZTULD50Udz2a40=; b=M521OhIYvw4xsMnC8QDFdiuvDN
	1g2Q+FmNsWixF+tk3y3IXk0U3RY7d5i3TLSZeXeKYpd7DPqGOP6QnUW5KZf7+/ZrSwwK5xxHsiJYB
	RX2yghyFuw//9zS0vbYT0kV4Y8hNbY8dRUxOouWggA3wbNo5GpV9bZ4OHNj+TBzgXoo4lK6JNS/9B
	BdrSE65ZcjGCE8WWOVj1saG9eJvIaXBZAAyXcuMbPqP00PdskKAbMUdSeMzkIOUS38pZmfX6RFPAn
	35eRQZevYlbHjj9uNnEJ4U2qvYuJWdWItJ3xfVfvhhxaM5xkvJUbw3bkumC1RA0r61iUibuQzUh+M
	2lNarNig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xep-00DfVl-2b;
	Tue, 30 May 2023 11:36:55 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xem-00DfUO-2D;
	Tue, 30 May 2023 11:36:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2A20B62260;
	Tue, 30 May 2023 11:36:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72E40C433EF;
	Tue, 30 May 2023 11:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685446607;
	bh=iXCnSpqvku5TBvKgY0SIrL7G7nudm6YESXMmzmXUbU8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GTcik89aH1GnRIFAEfVubBgatbsO1FId7GW/IRBcONL4z03EgtErF/yMgEsdsRQZA
	 WCHlU8TMmnjd2fEuOhJP9psrh5ZK3tq2H6sMZS5IVwsn1cqklw6knLDGF83906Mm3b
	 hV5DxEd/3g6UpXojZxw/xkh8dNMZdKcCeAjcLFEoV9tByq24DlBt/giTfLEVxcNORk
	 +Qo1KszQrpQG/fQhf174Ns/NlDzklyZLJezgBL+lEPX2RUnFo+Me7vUnP+oFyZDPKR
	 OCKfgjykoQy0fVdFmIdVZnNXgw/jZnRwyh7edoQyrn5XMt4KWCxJjHjmLUinu0zfBs
	 ZUMkezRxrGs2A==
Date: Tue, 30 May 2023 12:36:40 +0100
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
Message-ID: <4a3f54a3-2cbd-4a22-9742-9ba60e78643b@sirena.org.uk>
References: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
 <20230524074156.147387-2-cristian.ciocaltea@collabora.com>
 <5dbcbf84-602a-44de-ad99-268d4d5b4b2f@sirena.org.uk>
 <cfa23203-1626-440b-ec27-efe56cb297d2@collabora.com>
 <01fd1a9f-56c7-4864-bb2b-8b004284c8cc@sirena.org.uk>
 <3c6b67a4-4892-0057-3dfc-65ed6c7ebc37@collabora.com>
MIME-Version: 1.0
In-Reply-To: <3c6b67a4-4892-0057-3dfc-65ed6c7ebc37@collabora.com>
X-Cookie: I've read SEVEN MILLION books!!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_043652_773205_00E13C04 
X-CRM114-Status: GOOD (  15.97  )
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
Content-Type: multipart/mixed; boundary="===============0620986734902511532=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0620986734902511532==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d7bOgmCsIJ4exiLW"
Content-Disposition: inline


--d7bOgmCsIJ4exiLW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 26, 2023 at 09:11:49PM +0300, Cristian Ciocaltea wrote:

> -1.5 dB  |  50-51 %
> -0.0 dB  |  50-51 %

> So it seems the specs are correct, and the problem is the hardware default.

> Is there a better approach to handle this than extending the volume range?

The other option would be to change the value in the register during
probe to one that's in range, that wouldn't stop any existing saved
settings from generating errors but would mean there wouldn't be any new
ones.  Either approach is probably fine.

--d7bOgmCsIJ4exiLW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmR138cACgkQJNaLcl1U
h9AZDQf8CRVQJfTeFq5Qw9fVO1/pJlyLSgRpJGmTNzHtJqiQWeIHUvhUdQk308MA
F8c9ONRYZYqB1lr26oNF0MWRJYI8BQJC35xYxLiK2EyKYLvyiK7K9JekQybKdzpk
o4fAXlKCjlMHBqVF9ivHEBUjMyM2aZrLc7D0DSX2N+VhVP9evvNNNyccAKxGUE91
7UDcJARuzCs1ENlzyaJKrZxiGDKbVapt6KMcnz7evtqAQpKgjfdDYOoKWyZcRSAp
5yQjcYk7+XfGkn8KddHjGbgAV6ZJ9BKcZfJ4PwwMm9iJhoVTONpUBPn6UQMb4PN0
PmKgoDkU7j2X/W+b/zWraTxZvy6O/g==
=buze
-----END PGP SIGNATURE-----

--d7bOgmCsIJ4exiLW--


--===============0620986734902511532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0620986734902511532==--

