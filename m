Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5E52CEFC38
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 17:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xQKqxJpUduosVGx4if3Q8ESbr5EQmk12uykx/3EmTHU=; b=Qerz3VCyHYq6Kk1ACMVA6M8rLv
	JIzGh85KrbI2u8/mrAlXNpy8D5uPocl465YIO4JCODXwHsqFUWMTyqDA1hX4rZ8p9MVPPX6M+30ZW
	Y5DnVjHe5SToCjpQi6POWl2jOf9KnvTfglhK2guj7QP4nbsd54fvPSU/j5KNkwpRyiKOXCeeAANsM
	d0aG4HgCElYw4BELbdoyEyEplmlnMjScsFTWmF8MaY8zUkv9YDO7WC/8tRadZJLguvtjjoNV6uybT
	3dMcgH6l+YtE1D2N8w+cQ3DIf+GQDYvhyJ014G2rHTk05sWrJscn3bRX5l8zeFS5tsgUF5fcxkXbM
	ih7aB4vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syEHi-00000006hPu-2Neu;
	Tue, 08 Oct 2024 17:46:10 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syE9p-00000006fZB-1Cbp;
	Tue, 08 Oct 2024 17:38:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id BB33EA41D8F;
	Tue,  8 Oct 2024 17:37:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66EAFC4CEC7;
	Tue,  8 Oct 2024 17:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728409079;
	bh=BJ31tWGgWIkFEfM3an1hvQTx5iLrS2z6Qu7X016gHEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ujxl7g5RxzFi1e2P90HheHYUpVml++HJCrWWdl1Ykg007mfzEyWXm2DWxoneS/zYX
	 k2lXD5pHr57L5PNuaa/auxgvh12V6+aH3OxShbDvJVaLCTkZeR8Brl4HvkjHe6QMQ+
	 AaihhXVPDpO+JeYbNgMWMleFmJYbBHSn9OWWx9KexPO/5SP6+uVbE4Zt+z/FYKdBrE
	 HA9wkpKPjjhPFmpUaZBgoDu98WkGYpXQpCSXmG/Q8mn5EAlgzW9hVYJ3mRsLQGLaO1
	 eg/Uo8QmXOyMvY5ZrPPspHUGR6+sNo1V12DZ8tXp67pPX6PRdC5HdCOOjxGa2Z7KLR
	 14iRFE6xrEKYQ==
Date: Tue, 8 Oct 2024 18:37:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	heiko@sntech.de, gregkh@linuxfoundation.org, rafael@kernel.org,
	oss@helene.moe, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] driver core: Add device probe log helper
 dev_warn_probe()
Message-ID: <ZwVt9e44jc3CQaV1@finisterre.sirena.org.uk>
References: <cover.1727601608.git.dsimic@manjaro.org>
 <2be0a28538bb2a3d1bcc91e2ca1f2d0dc09146d9.1727601608.git.dsimic@manjaro.org>
 <e8cbbf877cc0e6838afd2d6de3b7bfa1@manjaro.org>
 <ZwVlE9bgHYNT8J7J@finisterre.sirena.org.uk>
 <c4a72fcf91b30a8eae2fff851f01d10a@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <c4a72fcf91b30a8eae2fff851f01d10a@manjaro.org>
X-Cookie: Editing is a rewording activity.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_103801_406921_01C386B3 
X-CRM114-Status: GOOD (  10.97  )
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
Content-Type: multipart/mixed; boundary="===============7987715464931102390=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7987715464931102390==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o/mJtvBmFcf33s5p"
Content-Disposition: inline


--o/mJtvBmFcf33s5p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Oct 08, 2024 at 07:32:18PM +0200, Dragan Simic wrote:

> No worries.  I just sent the incremental patch, [1] please have a look.
> Thanks for merging this patch series!

Oh, sorry - actually now I look again I got this confused with another
patch and it's still in my CI so I can actually fix things up before
merging.

--o/mJtvBmFcf33s5p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmcFbfQACgkQJNaLcl1U
h9AaKgf/XO0FMAXJJkUkas1jH+dzY2hoEPBpdCgmQ8Cpn4Jt70keLNNW1u4sTE+9
Cb09tobajLzVX8aRVVYKveazE8pxu4srSw0GOPPK5aF+SbB8nKn6r2y+d3LLbUgM
2C3wMFoWqJ8OTFIiwfQY/a4XNW07dZwuIRflTSTA0QbulDUGr448uTuipPAbqpWK
4Lk19r94uo4ptWH5IdxA4pTa3dss/0orAdCTTSf02O27yOA+sHon3ZarV34VqgrW
IMgR8mEflE1z4yxdrY0KsperCDvn7LvucnUF1dWdhb1CzGIOFIva590OFt36Eg5u
Ijv1S0PaneNlutJXaoNakiKDKXnF6w==
=nzfO
-----END PGP SIGNATURE-----

--o/mJtvBmFcf33s5p--


--===============7987715464931102390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7987715464931102390==--

