Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 046A8C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 11:04:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LVsrQzj2OTkseAFWe9rSxvgYOTfsQA2H6h0afu43oJY=; b=Mydha1hvV/Bxo+eoCEp3rXxVKg
	J3cif+lP+iDKLaaM5ZkpQW+O42KSHQzQS9rESjMdSMhnUAwupTeVBuD3rFpsh1AQv4fsoE2HH0IeF
	k6UXTLFu+JjysDUl66rqHNBSyKdPj2ghtLD3J+G33VTImBP7Q5hOIcddYGksXwBbLe5RXe3g7hiKF
	6unL0N2J5vAg5NISkp0vzbGLAKxu8MZgzsG6BCB5OpF5i/z+7FILpjJzSDPE0knH1c/YjpXNY7GLE
	xsT/2xlm+6plnr9KX+m4OQJ5TiSFNAD6q//2eZSiyBkni4wUpcexfeG3ccLO9oON6k6WA5lzyVy0r
	nBTqvt2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4KdJ-00Edda-Da; Thu, 23 Jun 2022 11:04:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Kd8-00Edbv-Ng; Thu, 23 Jun 2022 11:04:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 42D8661EC5;
	Thu, 23 Jun 2022 11:04:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D82FC3411B;
	Thu, 23 Jun 2022 11:04:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655982249;
	bh=aIdW+I8dNqFwqnLgbomd19CUJMezjB4BlkNogKF1XZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f94JHIY2LJbI2Z629AcUkVoFj6tJtMk6c6chxLzm/Y40OJmm/H3oD/tx9PhFDkM+R
	 akJg1h/M78V9YOs135hgonnv43OiVa/CDM/PR3a1YGeQ/5n+hYZLJQhmIaeIR/OOCe
	 w/liblWEHu65ul29/nr2gN8BWFXIuCAw/++yEk3UfAGWrbxzwEldfC99bk84QTNfHJ
	 Sm72tCN2sIz+b+wNKtmui59HDfV2Vx4S6YA1Q2RgN4ke86e/9aHDiF7lqDVRpOsFmS
	 ApZ7rzgErYj75gj/K3Lkw262ujnaGbyq0Q2caYXBeuhL3hc+ZnRSXTUufhqvmBzQ8/
	 FBE+onHEaBEhA==
Date: Thu, 23 Jun 2022 12:04:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Brian Norris <briannorris@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 0/3] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <YrRIo62na5FCCa06@sirena.org.uk>
References: <20220623021153.587423-1-judyhsiao@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20220623021153.587423-1-judyhsiao@chromium.org>
X-Cookie: I had pancake makeup for brunch!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_040410_850864_BF19E8EF 
X-CRM114-Status: GOOD (  13.18  )
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
Content-Type: multipart/mixed; boundary="===============7385284439648825115=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7385284439648825115==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bAAQzJfUr8Tz2hZ6"
Content-Disposition: inline


--bAAQzJfUr8Tz2hZ6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 23, 2022 at 02:11:50AM +0000, Judy Hsiao wrote:
> The patches series is to fix the unexpected large DC output
> voltage of Max98357a that burns the speakers on the rockchip
> platform when BCLK and SD_MODE are ON but LRCLK is OFF.

An earlier version was already applied, please send any changes as
incremental patches.

--bAAQzJfUr8Tz2hZ6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmK0SKMACgkQJNaLcl1U
h9CrCAf+LQBNxKh07eXpoNhG69/PzuPmq/iy71grFtQtZnGyzGn2Z1HDltI4l5pW
ac3Pqo+XRj3DYnI6TbysWctR7ZrsootwIfuugKZ4zSLxvC4RX94EnKxKsOSDq+6Q
2+eFccgAih/GvhGR+RXmtx72jixO0eq2Ywpfinfn3+TsbWQSNL6MbyHX1WsErIqR
+OUii5syBaM8/AlOwbJBz53Ad0beGnKYGk4TvN4mNugXh7QIHNX3tRRomZ95A+Kn
f33IjTorYaXsJXsi/3OUT9/Jhb5ZBH7gy+2yVUsRbUH5jQzyIgVAYcHvTRSb0B1A
zP0bwOPq6qUNV60QFV8VXDwMqGzYTQ==
=K5QJ
-----END PGP SIGNATURE-----

--bAAQzJfUr8Tz2hZ6--


--===============7385284439648825115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7385284439648825115==--

