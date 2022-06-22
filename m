Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 863BBC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jun 2022 10:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jaIwU4D3Mrp0s/cBTuquBOA9cXoySCc3lzs3J2bCcpU=; b=lFkoGZdKCRqr3Xqos8l4tQGOKP
	dZVtchgcgz12m/6ml+P6TxpnB8w5WD4cu7FQbP1eq4S9inrkeJSLxs2bsCLx/irwFvEHhWcj/Xt8z
	YgtNWkdMVqHaHXBz2Q8dGKuo/7WKMcxdzrMh7rY9bRc3QbreD6+AVJNAA/JF89DaxFl7Wp4BhgxPZ
	gPFE43xGFvnHqhq3R3jzWbFXVohF8j+zfFdzDqBPbivHLdoSsiPI49qfqaUUX+dcu+2vLqe4Z2HgL
	3H4wAl8oeTyM2ezv84Hlugt2UKyWfE1JnlYiqIHQj5/je61pPCgHs6dXqRUDp3AN2MyzQECS0Ud7S
	yxT8Y6dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3xzy-00A18g-8M; Wed, 22 Jun 2022 10:54:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3xzm-00A135-Nh; Wed, 22 Jun 2022 10:54:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 644DA61227;
	Wed, 22 Jun 2022 10:54:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C635C34114;
	Wed, 22 Jun 2022 10:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655895241;
	bh=G4XroPUQxa6e/wOY4UG53P8PsXH1RZHdojRCRxtIFkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rYovtcRPdYqEUX1Yg7P6xGKNzlkeHiuI8UBV2EJsEeVSqkz0989+AH4S/1o3VfUC8
	 p1UFB8Ycr54oZ2Y5Mm1LPKyXTMD4CIf+bp13SgdufvpiqCqGwLhwFsAkuOlPHxMTvf
	 g/j3fKfAf+oQ805lgMLxegAaE2H3V3ujhgKbdzLm1brWB0sxgkBufBup+s/QNjG13J
	 yM/h1pNKs7fLedLBxqkk2Oze5iTqBXWbXJW8nR+OMZY0RTRc1WSwr/EeVuvXUn9gd9
	 WiQkL/7orpicNW2QwOWP9tSsMxrhB2e/RWtwyvL/M/yOy9Cl/qMjjTUToUCLuNvNR9
	 y3NeBX07/dQeQ==
Date: Wed, 22 Jun 2022 11:53:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: judyhsiao@chromium.org,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Jaroslav Kysela <perex@perex.cz>,
	linux-kernel <linux-kernel@vger.kernel.org>, wenst@chromium.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	briannorris@chromium.org, Rob Herring <robh+dt@kernel.org>,
	Linux-ALSA <alsa-devel@alsa-project.org>
Subject: Re: (subset) [PATCH v4 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <YrL0wzzfeQwmyHfK@sirena.org.uk>
References: <20220619095324.492678-1-judyhsiao@chromium.org>
 <165583076931.271995.9857794745310978104.b4-ty@kernel.org>
 <CAGb2v66+ZjKFvCfq-H3F_ZdyxiKHY6=7juhSCmHPK3o8kgw+Og@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66+ZjKFvCfq-H3F_ZdyxiKHY6=7juhSCmHPK3o8kgw+Og@mail.gmail.com>
X-Cookie: Truckers welcome.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_035402_869583_F24FDAA1 
X-CRM114-Status: GOOD (  12.74  )
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
Content-Type: multipart/mixed; boundary="===============6142417707399897977=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6142417707399897977==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4AruQWY53Tdw7RRr"
Content-Disposition: inline


--4AruQWY53Tdw7RRr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 22, 2022 at 01:58:40AM +0800, Chen-Yu Tsai wrote:
> On Wed, Jun 22, 2022 at 1:00 AM Mark Brown <broonie@kernel.org> wrote:
> > On Sun, 19 Jun 2022 09:53:21 +0000, Judy Hsiao wrote:

> > [1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
> >       commit: 44f362c2cc6dd0c5e3cb499c4fb4ed45b63a6196

> Seems you applied v1 instead of v4?

b4 will reply to anything it knows about that thinks is close enough to
something that got applied.

--4AruQWY53Tdw7RRr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKy9MIACgkQJNaLcl1U
h9COkgf9HKKAvRzjNs2p5CEqeFNtnVzhD95omRkCIyXAyPgMzsXQ86HrXzkr7Qf6
6aty2J1RMF1ryi1b4Jw+B8DfhbDCjmS9nB7H4IV/GlQCmkoUzbFmCdf8qSPLuQNk
bVTyLRDSCh0FUFJXvc894JrLpg1DkjGqfTKmT3OWmAENtixWknby7elcr+CnNAqM
hZujXhxdwazBRH5RtQLO+z8cMOnLgpEWoklHTmzsPrW7EPGMzgBaCbFe4fNac1oI
teB7zkGZqX242LJoeBs9m/yIzPhQYGBAtAie5witncajUnxnAFaWx+Zrbr7PTGci
LOU8M7FkgC0tpcUbs+Eec0tfnEZLsA==
=nzIr
-----END PGP SIGNATURE-----

--4AruQWY53Tdw7RRr--


--===============6142417707399897977==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6142417707399897977==--

