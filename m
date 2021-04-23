Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF15CC43460
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 12:19:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 544B261458
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 12:19:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 544B261458
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fV6w0q96eMr56wvoYzgsDrBCQzbZc/TXutvtnGA2jAY=; b=TUHyFOlughtSGCR5qSyTpXeOk
	TiYjZNLn9PQkI93atDYc5Ah9mNbeYeQhZwvA4GvUbnm/diK5Eeeg95oQOlbIBCSEDRnTamaIlWnCu
	CQiR21JIaLgmAU84cVYSa9gWiWWNolx/S5Qy9nZLnRK4D3VVHFo7YWxXlgLTsihDJ2y9PB3XCL1NX
	89eXke3AL1y3D0kIGJhrcae9G4EO+NrDVbDDxvqH4SoxLepvmqTI/e+gFkKiodhU3vyeEWDqZXbV2
	dDX9fHUpK8i+81TbB6mZLtlL6Z42LurVafAlEGcS8JqklgotVCTLxydPyno8QS/aOZS6JIDUGZCrd
	TGukyjxhw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZume-001S0I-FF; Fri, 23 Apr 2021 12:19:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZumP-001Ryh-Er; Fri, 23 Apr 2021 12:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dog/xLpQqowTjGHGJP07KiadhPbfqltRniXkM2vOlrg=; b=PCQ+1JKh1BV7yAuRGA0XBRT0c0
 N0gc2ULbWl0FcfEaP1yzdGT397eAVER8k/NM1LYbeQJc45XkQMYO+xamjmdzAjcREWY9ooqZEpgX5
 uRaBPAbsRwOtqcfe9bwZJ9p5zJKcRZy6sZxpxnPTe/oS43j+7i87D+N86m35QloH87UmjFulu8szv
 ZmubJrUaL8mRS/27yYMTHZvg/mfqVSrT86NMvv6uqXILldCut3psSmJuCh+ArPolmStvOqZgo6MMD
 DP4QUjTMiOlwKwN6wDYu16p2S612slQfVtAq+FunHiEe4rWnKOAoDG2iscTaWSAbvCUupL5LdMeKs
 uDuiDPYQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZumN-00EOOI-3O; Fri, 23 Apr 2021 12:19:28 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id C56E161164;
 Fri, 23 Apr 2021 12:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619180365;
 bh=dog/xLpQqowTjGHGJP07KiadhPbfqltRniXkM2vOlrg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dNtxBSIOB6wwJuefe79wQs8JtYvDcHIomkXTdZzXbtcrS14ktbaRnqJ67gQMUnm6H
 hNC1gURi91HMPZP6MaV24w70ZAcX5CzdHTLT9f+1Pm4bO38f36F8wHu2aCsPQncZDU
 U3RTgMMFghaBYIsqVfmA/b8wsNChZ9AoiZSy80fo5b2SjxijhMTx0bGquopFSJs4Ny
 vyM/SNTxTNFm8D+Z/5//1wFFw2hNiPYY1XX1EpwHUSx/bjVZjGwGeIvlwyCXtQgzSJ
 7XikMoheXf5I01ZdUFtmFVDUPXSgLnqeIlF333w1funMZUblrnsatEozPhH0uLF49V
 FhmYsIMvxWwPQ==
Date: Fri, 23 Apr 2021 13:18:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@esmil.dk
Subject: Re: [PATCH v1 6/8] spi: rockchip: Set rx_fifo interrupt waterline
 base on transfer item
Message-ID: <20210423121857.GC5507@sirena.org.uk>
References: <20210423084155.17439-1-jon.lin@rock-chips.com>
 <20210423084750.18533-1-jon.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20210423084750.18533-1-jon.lin@rock-chips.com>
X-Cookie: This is now.  Later is later.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_051927_202208_C091A33E 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2790252977298570255=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2790252977298570255==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="96YOpH+ONegL0A3E"
Content-Disposition: inline


--96YOpH+ONegL0A3E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Apr 23, 2021 at 04:47:48PM +0800, Jon Lin wrote:
> The error here is to calculate the width as 8 bits. In fact, 16 bits
> should be considered.

Bugfix patches like this should go at the start of a series so they can
be sent as fixes without any dependencies on earlier patches.

--96YOpH+ONegL0A3E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCCuzAACgkQJNaLcl1U
h9AAAQf/Qjm/+4+LzO33oO9cV6hO6Qouo3JWI+uca9JvRsgPC6FYe4Ajmmw8b8WZ
PRoYsyzo4vOVeUp+rLJRjyQn1tY5H24YC82WcjxmA1BYEF0Nk0JHU8iZIgFU4sj7
f5yte8EOXePjXnXsqfK0DqoPH2UZv6VISlI8Cc4Up8dMd7PYHwMmG+eB0DPvfZhw
u5KoFmT4nEN2uI5+NkcYr70JKfsowcgPceOqpv4HKwPGgeiASTLq0m2hpTyDedv+
V8sUu19feaaG416yuEenLFzpGFbo9DO0WWvZuZY3bmIVWuGWhCX5p5niLJn0iWnk
bRfd1AGKRw7eR8JJ1bXXGPRSD+T1zg==
=23Tg
-----END PGP SIGNATURE-----

--96YOpH+ONegL0A3E--


--===============2790252977298570255==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2790252977298570255==--

