Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53062CEB2CB
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 00:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9A2rJ3cwsBN650gFVYoHIzoX/S0uLnadui6+lscBFTY=; b=OCPqhv1VSEfDasXGz88An5wSIJ
	epyCbfBgR/00b3CS3Kldg9x7V44wm3qZE0ikVgmNZIOFdoznbOsn7/yE9hUfsFMt6WaFzA3hDPSS7
	flIEa0bnsxb4kZWYbuN1ysMcP5j4MDGuj6iOn8LAivb830kFPWvt8nTa4ucaon377dfsGKwQ4oMn3
	KXHUls1BeQ81D6qdgEcZL6QLl3mJZTBUv4h7LiyX2HOxJOYBeHpJ4h4JPp8hIQxJzXcfW7DABFVyu
	sD4ho8Y+wNAS6foiP2KHTPBqfoWtc3R0skRJXgApPws6fcsj40cXyH0w83h//sEnmEPBhqPqOf+r7
	S3himI7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svQQI-00000001BIt-24T2;
	Tue, 01 Oct 2024 00:07:26 +0000
Received: from out-175.mta1.migadu.com ([2001:41d0:203:375::af])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svQP5-00000001BD2-1aYi
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Oct 2024 00:06:12 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1727741163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=OLYSl3uPz9uWh2oK2ezbGeqOKbGm3+dSSTg0u5EoJYo=;
	b=kmzpxzoi2vMTGjAcBTezW69XgEdjKsbGAG0UFu/ykgU6u1A45R+QPScqDAsCsNjx4DJgDn
	rlYDtQdnFfjBinz5lUj9jSDMjyDRjGUBZ2TCMdp1AFwS8AIPOxFosJQERnur8v9YH6BkNs
	bVlit91rf1xvhXmrqy6UhQ7t6ABMb/A7q4koWEM/LHyaoeRY41EvlVBjJ99HYiwRlAOY3j
	3HovYJJ7KduTdfppy1gXREgZFFjLSo63Xd5rvQ1L3G93udqmfkZbHaBQ6LuDth/JhhkGHs
	COON6C1Fn8uWAAwITmVCoWoUzdTBRUzZKMRblwng70VtTEAC95Sgsi127c6kDg==
Date: Tue, 01 Oct 2024 02:05:48 +0200
Message-Id: <D4K14E2EOSC6.1VYBGSQKSIRW1@cknow.org>
Cc: <heiko@sntech.de>, <oss@helene.moe>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: (subset) [PATCH 0/5] Improve error handling in Rockchip SPI
 drivers
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Mark Brown" <broonie@kernel.org>, <linux-spi@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, "Dragan Simic" <dsimic@manjaro.org>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <172774028424.2264837.4595727034314147956.b4-ty@kernel.org>
In-Reply-To: <172774028424.2264837.4595727034314147956.b4-ty@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_170611_566569_AFE0A874 
X-CRM114-Status: GOOD (  12.42  )
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
Content-Type: multipart/mixed; boundary="===============6534102971223159031=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6534102971223159031==
Content-Type: multipart/signed;
 boundary=c4ca35aad4119c62b8c875a33b152758ce7c211678c87d53274b64774749;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--c4ca35aad4119c62b8c875a33b152758ce7c211678c87d53274b64774749
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Tue Oct 1, 2024 at 1:51 AM CEST, Mark Brown wrote:
> On Thu, 26 Sep 2024 10:38:11 +0200, Dragan Simic wrote:
> > This is a small series that improves error handling in the probe path
> > of the Rockchip SPI drivers, by using dev_err_probe() properly in multi=
ple
> > places.  It also removes one unnecessary check of a function return val=
ue,
> > and performs a bunch of small, rather trivial code cleanups, to make th=
e
> > code neater and a bit easier to read.
> >=20
> > Dragan Simic (5):
> >   spi: rockchip: Perform trivial code cleanups
> >   spi: rockchip-sfc: Perform trivial code cleanups
> >   spi: rockchip: Don't check for failed get_fifo_len()
> >   spi: rockchip: Use dev_err_probe() in the probe path
> >   spi: rockchip-sfc: Use dev_err_probe() in the probe path
> >=20
> > [...]
>
> Applied to
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-ne=
xt
>
> Thanks!
>
> [1/5] spi: rockchip: Perform trivial code cleanups
>       commit: d87ec94e48dd2da27fbe948f2dc6c8fedc98fff4
> [2/5] spi: rockchip-sfc: Perform trivial code cleanups
>       commit: 6c510eac1528d8939bad8b6df72c7b23ffec8c25
> [5/5] spi: rockchip-sfc: Use dev_err_probe() in the probe path
>       commit: 1482c40b440fa58f956bc3e1ef3426e0cdbc09e0

It looks like you applied some patches from v1 of this series while the
current version is v3.

https://lore.kernel.org/linux-rockchip/cover.1727601608.git.dsimic@manjaro.=
org/

--c4ca35aad4119c62b8c875a33b152758ce7c211678c87d53274b64774749
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZvs83wAKCRDXblvOeH7b
bmmBAQC5Sqa/wMVjVF0L1VQOzUAOomq+fDixzHpirzQlQECPAQEApOOwS/CvnD+R
E/elHbuA0L+DfIavm489OHIApIpidAE=
=8ucX
-----END PGP SIGNATURE-----

--c4ca35aad4119c62b8c875a33b152758ce7c211678c87d53274b64774749--


--===============6534102971223159031==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6534102971223159031==--

