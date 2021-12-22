Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17BC0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W2gKrUG+BjTDkOY5b3iwk/H4VZK9g63SVFsKiagcsmw=; b=yRer6TGYAq7QVhwwDDXCfXBY68
	5fWba7tYdyRZ1s/agqu4Kkic9EDQ2g0V7TYJZqzQCAuooTDwFEu94W/WMR89HCAo+VkrLV/T0Ie48
	vYtMlFf16QqTf7S+oxPqPfdxteLVtaUMEGwVWJPcl2LwANr0yebUsZ6CJpU6aSwF2MRpGr8RC82zN
	JPcybVziMlbI6hSTkZR8KYunZ5pHUats9edshtYSNw/T3tmEiOl7tGozZua3U9k+y0LR4kqdbk/R7
	WSGJgLjc2ZfDU09qMhbnA+Lyhlwx/whS+ARVXBa/CCN22JQw1ns3ACl0BvDD1/I9WXyiTUt7C2EKY
	ZV4T/PXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01fm-00AWwn-44; Wed, 22 Dec 2021 13:28:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01cJ-00AVNF-3u; Wed, 22 Dec 2021 13:25:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 963A061A3D;
 Wed, 22 Dec 2021 13:25:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EF00C36AE5;
 Wed, 22 Dec 2021 13:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640179514;
 bh=nR4xwe4dlsBLj6hoxeOrNguo8C1T2r8S9EvD4cqoYlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gWNSYl5i1ra1dNgISHgtC/Ragblm/DAknFB57eZaEafCfjjVWvodrwg1SsvJ1EUs5
 0bYQGFHpXqruURx4ecn0i9vy8vC/iEjSlEKlRZ+saNGCISdttKgn14QqCd1xHTGAL0
 TauJzz+4SIBYRBGRYdGGzCoSftZNMqNuA0+I6sCIPCHb0u+4vJs9I8clnLIkpMaFX2
 hn4Xvni54eeMAZilGJyF+6dIIueV/S6Rnb5unXixZsLkgRQ2/+cb4JPXPeqoUbv+pJ
 5/xurOSxPRSYqdlRgXOA1zN+rBXL4yf2fW6T5E/+N/Q0ugbgbQqtbciMVJMk/RJ4vU
 FT8unVeln4UWg==
Date: Wed, 22 Dec 2021 13:25:09 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <YcMnNXu9Iun71uCG@sirena.org.uk>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
 <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
 <YcMhazsAfU26fCa3@sirena.org.uk>
 <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
MIME-Version: 1.0
In-Reply-To: <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
X-Cookie: Weekend, where are you?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_052515_239601_FFAD9334 
X-CRM114-Status: GOOD (  16.98  )
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
Content-Type: multipart/mixed; boundary="===============1554401778780740846=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1554401778780740846==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zggLzLdOTF69soBF"
Content-Disposition: inline


--zggLzLdOTF69soBF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 22, 2021 at 01:19:23PM +0000, Robin Murphy wrote:
> On 2021-12-22 13:00, Mark Brown wrote:

> > Does the SoC actually support the supply being completely off in
> > operation?  A lot of devices want everything powered even if idle during
> > full operation since keeping voltage differentials smaller makes it a
> > lot easier to design to avoid leakage current type issues at the points
> > where the different power domains connect.

> I don't know TBH - the available documentation doesn't seem to go into quite
> that much detail.

In that case I would tend to assume that unless otherwise stated it's
safer to keep the supply enabled when everything else is enabled.  It's
the default thing and so is more likely to be what was designed for and
less likely to result in nasty surprises.

--zggLzLdOTF69soBF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHDJzQACgkQJNaLcl1U
h9B5Uwf+PGxf90Ah1ffK8JJue0F+xHrIeiq7HnTcYV88RCtyo3DSP4OW0e+y50/g
t/iHKnSAWj3GiPoXV60IBHMnG8scDITZtOtHa4nx6EcLtcnElq2O+CTJ6Rwi7BpH
SjbhBNEipsTnRRibN7gvYee+veoBpTWP53a938GjROC6KhqVCWwTGh3oHaDVQ7Z2
EKloD8RwWBQhKap3xPeJgJ7YgNM4Z6RVPmh3sO7sx4kxiUbDDlsKz5/eYQj4xz49
p/yKYS39lAIbcLck9X3aIlhP6u60I0WPnB+3sovH9iDjBoNWdDr4MVv+OLReowWM
s41eUqfK87zkzJEesIkj9sTaaP2ERw==
=I9dn
-----END PGP SIGNATURE-----

--zggLzLdOTF69soBF--


--===============1554401778780740846==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1554401778780740846==--

