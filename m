Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 183D2C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 12:13:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BBEA20848
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 12:13:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="twp23Ap7";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFyLPmV+"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6BBEA20848
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Bb5yDQuO2aoy6Uh7qHHmQi5tOiKjoyY0L+qEG0PBDQ=; b=twp23Ap7YDJaMtoUTx7IQlazw
	u2COK6h5JPiXfIdwzfJpJ7jk7pt0P//o3yCFwZDPEjx/YoZ6obVRIrnGcSRjqh3SyG0sJJ1hvJ9TK
	8Qyj+blrnhPRCdcv4/vk6lbOU76Gdh+48Y8wT3sOR7Vn8e7z87Z6DqytNXOMef2x0s53zO3i49cok
	aIsM2bD6Qv59OKoEZm4bJGQ1lpEkpqQh83DYp25Ohme6yzdSD+UjzK2KenagZOWw/1mi4fsGH5o+1
	5RFQ9EOmXF96x6136wqh/tXzx9y6g4ekhoSoo76w/m0qjntcaTSi6Ux42bT9OBXlO+MzjZnhHKqel
	HO/eLIWyw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSfeN-0002vk-0J; Wed, 14 Oct 2020 12:12:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSfeK-0002vK-Oc
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 12:12:57 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF06320848;
 Wed, 14 Oct 2020 12:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602677575;
 bh=cmKTV1EBll0j+ItdD8eP3aHKUumuPZb6PnNWSGoC0ec=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lFyLPmV+KiUAhxMxiAYwGMF8OsX3RT+mdfLJ/P03BmP4zIS/RIqVxwt9BeXs8dKVc
 oKu26geObF7+BU8Be0buKPtbEmJFASNBtI2iE+CtnyS9ZuHFlPNBtrG53AaGWqIBJ7
 CWgdTUIE9BIx/5uUDyu7suGLzcwKXYDE0/6GG++U=
Date: Wed, 14 Oct 2020 13:12:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH 07/18] regmap: mmio: add config option to allow relaxed
 MMIO accesses
Message-ID: <20201014121249.GA4580@sirena.org.uk>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <20201012205957.889185-8-adrian.ratiu@collabora.com>
 <20201013102656.GA5425@sirena.org.uk>
 <87o8l581ql.fsf@collabora.com>
MIME-Version: 1.0
In-Reply-To: <87o8l581ql.fsf@collabora.com>
X-Cookie: Take an astronaut to launch.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_081256_963417_988ECD2A 
X-CRM114-Status: GOOD (  26.06  )
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
 Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, kuhanh.murugasen.krishnan@intel.com,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============3623970052449108498=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3623970052449108498==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AqsLC8rIMeq19msA"
Content-Disposition: inline


--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 14, 2020 at 02:51:14PM +0300, Adrian Ratiu wrote:
> On Tue, 13 Oct 2020, Mark Brown <broonie@kernel.org> wrote:
> > On Mon, Oct 12, 2020 at 11:59:46PM +0300, Adrian Ratiu wrote:

> > > -	writeb(val, ctx->regs + reg); +	if (ctx->relaxed_mmio) +
> > > writeb_relaxed(val, ctx->regs + reg); +	else + writeb(val, ctx->regs
> > > + reg);

> > There is no point in doing a conditional operation on every I/O, it'd be
> > better to register a different set of ops when doing relaxed I/O.

> Indeed I have considered adding new functions but went with this solution
> because it's easier for the users to only have to define a "relaxed" config
> then test the regmap ctx as above.

It seems like you've taken this in a direction other than what  I was
thinking of here - defining separate ops doesn't mean we have to do
anything which has any impact on the interface seen by users.  The
regmap config is supplied at registration time, it's just as available
then as it is when doing I/O.

> Thinking a bit more about it, yes, it makes more sense to have dedicated
> ops: this way users don't have to be explicit about adding membarriers and
> can combine relaxed and non-relaxed more easily, so it's also a better API
> trade-off in addition to avoiding the conditional. Thanks!

I'm not sure what you're proposing here - it does seem useful to be able
to combine relaxed and non-relaxed I/O but that seems like it'd break
down the abstraction for regmap since tht's not really a concept other
buses are going to have?  Unless we provide an operation to switch by
setting flags or somethin possibly and integrate it with the cache
perhaps.  Could you be a bit more specific about what you were thinking
of here please?

> Question: Do you want me to split this patch from the series and send it
> separately just for the regmap subsystem to be easier to review / apply?

Sure.

--AqsLC8rIMeq19msA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+G60AACgkQJNaLcl1U
h9B+Jwf/XOdvtPoXpgJ7rC8kdzSUBfvgEXpd8VEr0zJtWSXU2NbIb3vbR0fVsRSL
ybbGwGTzR7DzFlOqNfl+Rq7/DxGjL5WXo+HAdlOreida+X5fq9hsPjijp/cMuY8K
pQPU55p+uXFdbKQ4YnQKI32wgdFJE0zNAsmPJ4xPTVjL8f35D5Sz7jPLzke8AyPX
1AU+ZLrsdkb3FbPc/9iFR/rK2dHJnP1+4+869Q2nqdQRmBS6J3rhgMDIII3WjjcE
2f6eTQ9Nfk2Bh5RUhv06v7XSgAFa52SjxPntzcSycw1NeWw4LG+xd38Mhbs0qGR9
Y7XiGt0GEcQ76mjFHzyzV6GD6OELdw==
=gcB2
-----END PGP SIGNATURE-----

--AqsLC8rIMeq19msA--


--===============3623970052449108498==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3623970052449108498==--

