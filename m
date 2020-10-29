Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC1FDC4363A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 14:48:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49465206E3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 14:48:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uzKbP3Rv";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4FEJ5HP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49465206E3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fXd7+SCvFAsHQqswjpyA+4UguZE2o5QWkzm+zT/FZUM=; b=uzKbP3RvUoGVVXIEfrlNovtuY
	S4NdsXdxTfkm58Vil+aVJghDaaE8ftyLM+RKxDUmR1/ftiKMwyg7+S4bzBUDlMicNGGG8bl+6/j2M
	HtVCx446Ii/tNhoKxWtiPWChgN8YkBYrztAHEH3Py2tWvgKSkMtISwOeig4L17z/pQw2UqPFY7U9Q
	MvTOBu/RaQKCYiv1LL3RFxWedupW0RYyQa1HGRlrPBl7K+A4dyKT/HwFV4XTonnJj7v4nKEqFplkr
	SHwrdVX2YAjy0lqEgJ1hgkrw0SgoGUo7ZSrRFEInLnXG90EcGfOLQdH7DDP1DABlGCy2xWevJYoau
	QuYO165aQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY9E2-00021V-3p; Thu, 29 Oct 2020 14:48:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY9Dz-00020S-LM
 for linux-rockchip@lists.infradead.org; Thu, 29 Oct 2020 14:48:24 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2207206E3;
 Thu, 29 Oct 2020 14:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1603982902;
 bh=1WVgpSeBTg23BnkNEmrqmNenj4irnsi1ikEUl8Vv6Wo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i4FEJ5HPwWmEOBfL7UrgMlFlHNz8cK6TPZeEdahQV/hnidqkE5aDW1VXDW8bcEZ3k
 nKSm+dMHUiYT3k+i5SjzOonCiCk9sfD5brDCx7hZ3DWjgJar4/xK7v3nhCd2yp6IXP
 r8lt84NFqgwlM37J9zt9IN2eSKblG3BWWGdWZvtI=
Date: Thu, 29 Oct 2020 14:48:15 +0000
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 00/18] Add Hantro regmap and VC8000 h264 decode support
Message-ID: <20201029144815.GA5042@sirena.org.uk>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <d4d080658113ad97816eda9262736e5fcc7b017c.camel@collabora.com>
 <0dd9fb9d-3f33-b9b0-a7a8-6d3111e92d64@arm.com>
MIME-Version: 1.0
In-Reply-To: <0dd9fb9d-3f33-b9b0-a7a8-6d3111e92d64@arm.com>
X-Cookie: Monotheism is a gift from the gods.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_104823_803791_B2BC4E82 
X-CRM114-Status: GOOD (  13.91  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>, kernel@collabora.com,
 Daniel Vetter <daniel@ffwll.ch>, Adrian Ratiu <adrian.ratiu@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kuhanh.murugasen.krishnan@intel.com, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7769313646135231548=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7769313646135231548==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline


--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 29, 2020 at 02:15:10PM +0000, Robin Murphy wrote:

> Or maybe the regmap API itself deserves extending with a "deferred"
> operating mode where updates to the cached state can be separated from
> committing that state to the underlying hardware.

> ...which, after a brief code search out of curiosity, apparently already
> exists in the form of regcache_cache_only()/regcache_sync(), so there's
> probably no need to reinvent it :)

Yes, exactly.  One of the big use cases for regmap on MMIO devices is
being able to access the register map without the hardware being there,
this would be another application of the cache stuff.

--1yeeQ81UyVL57Vl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+a1i8ACgkQJNaLcl1U
h9Chkgf/YvgbkyG7kUEIq4QfEROF8JYpkMBdUkwEFiZ29CTsLlroKBVQ5tAuawRY
pfo16Z2PmnfFoxJ8TOXEZgBjCPiKHpaONRLUICnX6eVBYr0toBty+CCxIYLfZZ9n
LZscGBuAFAwZx6wbsLmnEFUeB5WemZUelSGwPPLg9pf3Q3o/7ujGCd6jRpkcApCf
RSxUi+wCAWsXA5RV/loCcfnRWPdtcZTH57uUrLtkYblhZXrsvLyijzErixL1Dhdd
BSOLkG+c4h/Ji2M7QgUYQVbK5Qnt72Q7CotPmJKtGCnjAu/il+uVZGE+SHziWr/r
f0wS3wW7YIxIpC71JOo48eKTyJrhCQ==
=FSAs
-----END PGP SIGNATURE-----

--1yeeQ81UyVL57Vl7--


--===============7769313646135231548==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7769313646135231548==--

