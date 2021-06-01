Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E20C47092
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 12:56:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 606B661028
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 12:56:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 606B661028
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pp36G3GmDT5XA1AHvluQNZZNLecSIUodHCGTN9WCjPk=; b=cT3r/QUNiKi567pukYciMg5wuk
	eG3lSsWHXotL8NRSu+BAyXYBFXJeP6fUoiRSA65bI9p+DapIYT3KHwwUba/hSch/aLaE2pN60IS3D
	1GsgeY7rpI2UQfs9HiHIJDw7M39Jq/ltB4j+yOjMis5OcacZ/O32hsgeU06DkROwbQ69Tb9IhyiQy
	GBhXkrfrZqMIZRU+rCvXgYD/1D2woLooLVdkCzdaDWihskNvWn+zV+/YakvU0SKoJU39MLvWTMJgJ
	zNeHarSAeA72LVCOj7KZ2O2Ho29I41q8TDffxA0/SHXKKpn7+hs9jhKnCOSHm6lE02VsaEpVWDNZf
	GXlQPHMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo3wU-00GdQF-1w; Tue, 01 Jun 2021 12:56:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo3wR-00GdOv-8W
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 12:56:20 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D1D856135D;
 Tue,  1 Jun 2021 12:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1622552178;
 bh=2Cl6MC1zMLi1wVlxtabUNKw40xMLYyr3h9FF5PfzyX0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CnvVCbpOOeN9rkItCc/yoTJVnjIYphOmRUyy31lUnBN16ztG508cC6bnbwExyyPfz
 4frf2pAynhv11HOAms0oRJEahYMeG0tJWXOcmnXyaYSyI5zbD90fISxnTj4ZD6Zrsu
 4KHdr3lui/UR2XVz30gQggHNZhJS55ocfbFdK16AfxECbi+7onftdTHdC+8eHRpC82
 GWlAQENZUjuDWUGrWnwevhodDw/4bAXrNsXQkb3paumbXLiPRNnt3HSl2qklurQNhy
 3q5C+9yipXhvNBsOICFkwI5+XJgxlaAX54znzWYBKxd9gnLFPnGUHNcCqiwrtgL6xa
 WhMI/9Tmb8M+Q==
Date: Tue, 1 Jun 2021 13:56:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Rudi Heitbaum <rudi@heitbaum.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 chenjh@rock-chips.com, pgwipeout@gmail.com
Subject: Re: [PATCH v2] regulator: fan53555: add tcs4526
Message-ID: <20210601125608.GC4089@sirena.org.uk>
References: <20210526162342.GA20@8bbba9ba63a4>
 <20210528101946.GA418765@96e513df87d1>
MIME-Version: 1.0
In-Reply-To: <20210528101946.GA418765@96e513df87d1>
X-Cookie: Sic Transit Gloria Thursdi.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_055619_356595_51E790E8 
X-CRM114-Status: GOOD (  10.10  )
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
Content-Type: multipart/mixed; boundary="===============6110508693848993411=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6110508693848993411==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Q0rSlbzrZN6k9QnT"
Content-Disposition: inline


--Q0rSlbzrZN6k9QnT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 28, 2021 at 10:19:50AM +0000, Rudi Heitbaum wrote:

> ---
>  drivers/regulator/fan53555.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20

This is adding a new DT binding, it needs to update the binding document
too.

--Q0rSlbzrZN6k9QnT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmC2LmcACgkQJNaLcl1U
h9BzHAf9G464dHNtQknzDW/5kAgdMbejI7xxx5QTf4tseVQ6XY22i3ThsC5iivxi
5OiLoEmJJ62CFt4fcej2+g9xrtqlrML+fU+D1YwIV4JnBKcNwf1PUKsufpxZdlOl
jVRFThjrGk8ZXaYnuVu+U+9FbnoYGzidvMT8xdWqcDCUhGT0mUpMcQP3jAsRWXIh
XqsJpBQrLyCoZE188rbXZN5PEyRHKymDKzSCgJalshiSxReexKZpeJNgZ8IEFcaE
LZOQNJv01ie/uh7h1Y+5C0bDNlHM6HE89egEY+ATVbx5uHpH2r3GN8wMtBHJk5Hx
s9+s5oOePen3qqty+jum80ZePycKGg==
=8JU/
-----END PGP SIGNATURE-----

--Q0rSlbzrZN6k9QnT--


--===============6110508693848993411==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6110508693848993411==--

