Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCCF8C433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 12:30:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A474F2065D
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 12:30:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Xnf2kObi";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKcxKtnJ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A474F2065D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U5BVPVNXArQzeTgN55wjqhPYPX4Y5WtysKEXrkPKoOk=; b=Xnf2kObi1b/ClMY878PXcNNGW
	tE3WKF7V/zGz1VLW8CgCPw8NslWxQ/La5NkLh3voSVtLRiRNXurFsKafufVaJ5mpVjTSp5yIDS1Ua
	4ZkatgW+v30CjGZFe9JfL8KgYBaXxVgP4m42WK1ih2hwRzBi1+VPXwC4T7i50AK1DMatO+kJlDRP2
	6kkK0WeA8mMVVfm3Oj+OBYz1j2Kdmv+SyH4Y/8MI4famvmWXnbbLBWvj2qkRjZG+saTOSVDPv6+1W
	gCguuwiLhh+93fmqX3ohyJnhDHa33yqs0uGBBvVGqQbgUER6n22swaBHqqVIbBIY3XRdk8RHpxBSl
	nnz2vUQHA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k80lQ-0008Ir-7n; Tue, 18 Aug 2020 12:30:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k80lM-0008Hv-GW; Tue, 18 Aug 2020 12:30:49 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BDD72065D;
 Tue, 18 Aug 2020 12:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597753846;
 bh=eHNv9FdwsK7uVxIPYmdOittfWJ5rJzEkrVPozM1SQu4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SKcxKtnJrC7cXoPgNbvfatsTcUqQhXRNKGPXtOc0RgH4w9KY00FBZqzp1j8kQ2QZw
 ZzBaqCkEH4QbKmE2zV4HIk0defjdZ64vYVLhewYYIeqY7p994IAwXa/3ppqOTMNNGd
 nMguyU5y+4CN7DYElJUpDnrUftjA7P8DWV1/7Uv4=
Date: Tue, 18 Aug 2020 13:30:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 1/2] ASoC: rockchip-spdif: add description for
 rk3308
Message-ID: <20200818123015.GA5344@sirena.org.uk>
References: <20200815112437.6662-1-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20200815112437.6662-1-jbx6244@gmail.com>
X-Cookie: Ma Bell is a mean mother!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_083048_712079_09A7B011 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, lgirdwood@gmail.com, sugar.zhang@rock-chips.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2718323879247723628=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2718323879247723628==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="45Z9DzgjV8m4Oswq"
Content-Disposition: inline


--45Z9DzgjV8m4Oswq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 15, 2020 at 01:24:36PM +0200, Johan Jonker wrote:
> A test with the command below shows that the compatible string
>=20
> "rockchip,rk3308-spdif", "rockchip,rk3328-spdif"

This doesn't apply against current code, please check and resend.

--45Z9DzgjV8m4Oswq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl87ydcACgkQJNaLcl1U
h9ATqAf+Kw1JpgjNUlPGU5ePMTxIX88Ulj71aDatZmH8W/yzzfj7Lq5d1Rd2SDTC
e7WeRvDuKmtoPbccucFH0aNFO3ev07yvSzgyQEzjlnvEIWiYO7RTxSQaqWfwGYJJ
NgJ22Gfro6WhWVyOE4Wj6SQ9lGk5AkdmBEIiExWBgudwa+m7rwnzY5zM3oaLWCnO
5zvlTV1yglKX5xuYjO38wOmmq2c1ZyWs8qriuXShJGQr9R96wZEvstrJlExGn/V/
gR5Y0HvcEnAkCGWj8vqoeeq+Ot8vwbIkF4LZoAJpKVSDW5NELwr6IX7aww6k9p7+
jsmCl584BsniWd/wfF6j7sQSETp0DA==
=ZzoW
-----END PGP SIGNATURE-----

--45Z9DzgjV8m4Oswq--


--===============2718323879247723628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2718323879247723628==--

