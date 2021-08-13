Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ADD9C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:54:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C36DE60FC3
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:54:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C36DE60FC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9YIebhOrjGD4tPugr4k+12//IemFWYRj4BSvkuilgPY=; b=uFUkW+Y9EjQ9feXe/l/rVxivZe
	zW7dRpfjfWwthLkU9au3szCN2l/fSxa/Ivfs0L85PBadhoH1X76Sc2O8gdGh2Svo2T1DkPS8/ECiK
	vnighydKKQsrOHM9OOksRwlsGb+HUVyvMKYLtFe/OwJkDFiuK5GvckRo9WYQVr5TwGOK2nIy1kB17
	D7NKZre7RzAg98SToIe0Zs7L3oRtR/8SvQPQbXlfnpD1EpVGMcE1uw5nvA3ZxnjkRNvDVgI+Aanp7
	3JfKigS2IjnMzUBoBdqk0+Xi9Gc0WpdVhK5yCymAHR5RJ21K49jCPPk7TDgtwPzq4npWI5wf2AhjE
	aAm98stw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEZVo-00D132-9n; Fri, 13 Aug 2021 15:54:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEZVb-00D10v-2w; Fri, 13 Aug 2021 15:54:12 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 29E29601FD;
 Fri, 13 Aug 2021 15:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1628870050;
 bh=tJWVgi5froVJvA8ey2vsX+89Npe4dBRwLUBJHkjVxxU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bSAdvmE+CD8W/vpFYSjqLytsYxktaeVxeQW3Jxkim70RLVERPDJMnGQkecCWcRlxa
 aqREybTG41HncW8Lp8kOKktqfWUjNHVvuOjhjQe9ppr+WjONx/3uhIulEPVEIyM/yG
 jWfZ/h4qzyc9IHkCYvo47+RM6Phl9bZPMcP834OumIlPHz5o1tLMrEIO9a7ajcw6Q7
 IJ2ZbTSR2AgJAllxB1n8uY6yOQfN2f8osQNECE1P73UcsVkiuQDcjS3NVy+wluIojD
 6DB4UWsdbXaje0HmVc4/p3Tu2FgRU2XrvsHuBvVWwAA14T1JxOAYmMqGdYJ2fkTsI/
 zfw0s4opj+hwA==
Date: Fri, 13 Aug 2021 16:53:50 +0100
From: Mark Brown <broonie@kernel.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Robin Murphy <robin.murphy@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Simon Xue <xxm@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] PCI: rockchip-dwc: Potential error pointer dereference
 in probe
Message-ID: <20210813155350.GC5209@sirena.org.uk>
References: <20210813113338.GA30697@kili>
 <01b7c3da-1c58-c1d9-6a54-0ce30ca76097@arm.com>
 <20210813135412.GA7722@kadam>
 <2917a1c8-d59b-43b1-1650-228d20dfc070@arm.com>
 <20210813143250.GA5209@sirena.org.uk> <20210813154505.GC7722@kadam>
MIME-Version: 1.0
In-Reply-To: <20210813154505.GC7722@kadam>
X-Cookie: E Pluribus Unix
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_085411_207895_36D5B559 
X-CRM114-Status: GOOD (  18.70  )
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
Content-Type: multipart/mixed; boundary="===============1006895711801908011=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1006895711801908011==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="TYecfFk8j8mZq+dy"
Content-Disposition: inline


--TYecfFk8j8mZq+dy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 13, 2021 at 06:45:05PM +0300, Dan Carpenter wrote:
> On Fri, Aug 13, 2021 at 03:32:50PM +0100, Mark Brown wrote:
> > On Fri, Aug 13, 2021 at 03:01:10PM +0100, Robin Murphy wrote:

> > > Indeed I've thought before that it would be nice if regulators worked=
 like
> > > GPIOs, where the absence of an optional one does give you NULL, and m=
ost of
> > > the API is also NULL-safe. Probably a pretty big job though...

> > It also encourages *really* bad practice with error handling

> I'm not necessarily 100% positive what you mean by this.  I think you
> mean you don't like when people pass invalid pointers to free functions?

No, it's the case where people don't bother checking if they got the
regulator in the first place, don't bother checking if when they tried
to enable the regulator that actually worked, and don't do whatever
extra handling they need to do to configure the system for the fact that
one of the power supplies is missing.  It really only helps in the case
where you can just ignore the regulator completely.

> But making regulator code NULL-safe wouldn't affect error handling
> because NULL wouldn't be an error.
>=20
> 	p =3D get_optional();
> 	if (IS_ERR(p))
> 		return PTR_ERR(p);
> 	enable(p);

Your example already misses the error handling on enable...

--TYecfFk8j8mZq+dy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEWlY0ACgkQJNaLcl1U
h9C+gQf/ViZcfsBNoNvLiykQAQseACeSDusRgV0howjP0zujMhkdfwwpnudqKcsf
DbhucuvGyD0G27s4xKKb1J4oU7r8ogVSNgc2eGyIciT85dsSVFGn1wYCVICmxCQk
0s+rakCrDjbTYunX9f7k/0JhzxJ43Q432DY+ro1vEc0Iwi9ZeEg+cGAjg6JVwxYW
2+5djM+OKFuB8nlXSxlRu+bUaD7/40Mgz4nvWMC97esw9SbMvPJqisaIfjuh6im6
9e+Olu8uN4clwg4UcSgwnOiKM0lvgMf1XQZzpzlWkuHY/ffo1jVrmGGACaEg40AW
XdY2AeFvANNrXHSvhHIt3xREICEjEg==
=qDSo
-----END PGP SIGNATURE-----

--TYecfFk8j8mZq+dy--


--===============1006895711801908011==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1006895711801908011==--

