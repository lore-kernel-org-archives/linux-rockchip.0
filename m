Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C246C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 11:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6VJojbLzCw4zxQ7qSI6TKBQJw06zyCVFPi/IKnSl6QY=; b=A6z03sYHLcyoBlDwiHoJOH3t4k
	KxoN9p90C+rE+dblncrbBgOUszPbwC54sOuAxZI7IQG+6BulV6DjV0W1DDqkbFK5EToXJuIshMmOf
	9adzcUHtnWEmDqRwYQmbJXKU/Am9OuN9KAIEWlw5PBr+IKBIWPxHprsjIXg3rTnp7mBfUftOGd6XD
	Mvm2KvZDvM8E+S/8FKuLLrcIhrvOt78YlhPQc6Qf7L0PrJdTkn454HncWBSPiZSI8CLjwKONzk1cs
	agqsHtV9Gp2Zqkx/Q55oH1vIEcuulE7yCo7sSKZ3RlBbURsPFNpDb3XznHx/vCgEFm8kr1MPEaufG
	8jdmJSZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIU3y-006sA4-5o; Fri, 11 Feb 2022 11:26:06 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIU3j-006s5a-B6; Fri, 11 Feb 2022 11:25:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id D8728618CC;
 Fri, 11 Feb 2022 11:25:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA9BBC340E9;
 Fri, 11 Feb 2022 11:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644578750;
 bh=ooE2AsnndLLEx4IulCajtBCoOFATRnSUIKVcqUODsfw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZVTDbyw3LUGxl1D//PLAAiRYqvaahdXQgc9XJv51V+RP3s3k7fRvuoSq46DWV7Cy4
 FBKp/GWGXw/4DMwbZB2W2dA53fbdVizW64wfQl9yG6xtDLD+ExToVXX+Mj0C1jVUlO
 CdTcYXUzaC6PfLmSwuOvUAN4mOWrcFyB6+g5r9RMR445u8DFUuPktsy+100pKVAXek
 9974LFFHv7cy1+gl/GtWTEWQnPRYhaS8ag+k3nVoxF7N0CDjPoKyDEekY9IiHcappd
 c9g8g+6gfDP0tUKrWjYHsK36u8LgSJUQD+EO/v8uHmtTtgfOCY6qPTO1DQMAStYJq0
 adTis85IiCpUA==
Date: Fri, 11 Feb 2022 11:25:45 +0000
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] spi: rockchip: Fix error in getting num-cs property
Message-ID: <YgZHuSCZWvl7XC1t@sirena.org.uk>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-3-jon.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20220211034344.4130-3-jon.lin@rock-chips.com>
X-Cookie: do {
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_032551_439176_F39F1D7E 
X-CRM114-Status: GOOD (  10.35  )
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
Content-Type: multipart/mixed; boundary="===============0551521692874634556=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0551521692874634556==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+3G0Mf5QYROxU3Hp"
Content-Disposition: inline


--+3G0Mf5QYROxU3Hp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Feb 11, 2022 at 11:43:39AM +0800, Jon Lin wrote:
> Get num-cs u32 from dts of_node property rather than u16.

Bug fixes should go at the start of a series so they can be sent as
fixes without dependencies on anything else.

--+3G0Mf5QYROxU3Hp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIGR7kACgkQJNaLcl1U
h9AF6wf+IsUGIpR8g7NGFO5SPH84Ca4yPmqUlnZbd6YyB6j9zQwVX+AO5vy8BILj
wC4vTWKhaFTHmC8BVzFzLQk6J38QEYgFy94Y/Xi6g+8E193AVRqi3Zja3QPgoAJH
uUB8kaq1NbLQigE5SqsIE0xOMpPLR4DnTuIr7MC/RhqXgM8lp2TNKHpZE9ZmOb5U
0swruPV2Xj38yUSt+xJKj5a2RX8Dc0lGmU2t6XsxLf5IZCVJ4g0DTvxkPOM7Kcvc
rhSHkDa07szRs1dtcimH0o96pnxaWI1wvSdwy17PfG81/a6j3Te77WaW99z04N56
l/c8TMoVTf+bTlV53bljJT2p1frykg==
=NXJy
-----END PGP SIGNATURE-----

--+3G0Mf5QYROxU3Hp--


--===============0551521692874634556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0551521692874634556==--

