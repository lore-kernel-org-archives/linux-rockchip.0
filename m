Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F90DC43457
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 10:27:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E9A2220872
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 10:27:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="gfYwpkPk";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJD3ZNlx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E9A2220872
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RyBwiKy1J0/vAPGi6fdzkTb5s8dOP8WNL7j6zyc1ksA=; b=gfYwpkPkez5PyXZHLvp3RTn2D
	bLOg5QqJ/tN1nV7ua68wBqqGNA5JS2nYuamhzmEgxHfDjBVgJ7tgpkbtOi25NATeMo9YDOUKO7uHT
	nOvynMWWVwXoL3abueVSy4nCFV2jSxP0iqREbjl/Sk34kM5YTCF6EHnPcqFMoVV6wOv9qog6LD+Oi
	CIXDs/2bvo99JUN2RN650DPAFe0HVWUDZr6tFR67fgXuqDgA6NDeV5sLjsgyqfAxtyUu/xpEx9zzd
	K6i75QM+khiAC3y2YVV8psGpYIJjzVHVWDm/JRKudNqZUvbCT+o01ahBp2nGUef9iVneqodT65HYS
	v0sOh7JuA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSHWL-0002ZZ-GL; Tue, 13 Oct 2020 10:27:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSHWJ-0002YO-J2
 for linux-rockchip@lists.infradead.org; Tue, 13 Oct 2020 10:27:04 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8FA32080A;
 Tue, 13 Oct 2020 10:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1602584822;
 bh=19VK6zpHdezOuuklZf7plr8Sr0Qgx/oJRYyG6wSDmqA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tJD3ZNlx+zgGQVmwQIEJy8GJzYiSbN7sxe5T+h7NPSViVO3e/dOYlWxi5AXaAHbaH
 24cjQgTtTOIzMvXCvwr+yVJamjEORZ6Hu+ao/OqFQS7UJ9idcv9YpeEIt91Npl6IfH
 QmW+JGyWMkWblEEIKKUSnT9Bdd2iP1vIp7GJ48ds=
Date: Tue, 13 Oct 2020 11:26:56 +0100
From: Mark Brown <broonie@kernel.org>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Subject: Re: [PATCH 07/18] regmap: mmio: add config option to allow relaxed
 MMIO accesses
Message-ID: <20201013102656.GA5425@sirena.org.uk>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
 <20201012205957.889185-8-adrian.ratiu@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20201012205957.889185-8-adrian.ratiu@collabora.com>
X-Cookie: do {
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_062703_714957_CCC0A2D9 
X-CRM114-Status: GOOD (  12.87  )
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
Content-Type: multipart/mixed; boundary="===============5602084675907949781=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5602084675907949781==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 12, 2020 at 11:59:46PM +0300, Adrian Ratiu wrote:

> -	writeb(val, ctx->regs + reg);
> +	if (ctx->relaxed_mmio)
> +		writeb_relaxed(val, ctx->regs + reg);
> +	else
> +		writeb(val, ctx->regs + reg);

There is no point in doing a conditional operation on every I/O, it'd be
better to register a different set of ops when doing relaxed I/O.

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl+FgOwACgkQJNaLcl1U
h9DfBAf/aCgHrO/JPO6kC9zlq8FPBcVZgOCd/XI9J+z55ZKCSSN6Ikr+Bf8JqOpd
E6QaabPUOJUcGLeJh3bf04rAq8De42ez6sq71N9UzwHEuQtDjqNExwkAdS5UjlD7
2nFyJwB6xg5tFRX8yJTKI8A2i1HSWBOz7COQ9+c88EnziZHIpMVK/CKln+dUM4Iq
SaxqQpcFtLqAOgq2EGB3SEViUui5oBGqMrKzZMNvDnHJSRqT0FijXPCw2IhOs7fe
gEP8AL3QDSJCNe/nLC3UT1/hw1RMWbpEUN2cVWuqCnFAUrAKIIuGAQLBb4zH9AuE
XTXIVY9BdeTsBxaQZCIQVHVn6Jvbhg==
=S9Bp
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--


--===============5602084675907949781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5602084675907949781==--

