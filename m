Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0DDFC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 17:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W16A0aPEhBuHU1P7pTTTGryQgYcn/G9F9YIFcKWiPOI=; b=mMGjbOFEM3iZ+lqXnkBhiYiWE3
	akGcEBHxxgwZC+JrIpXPnpsIpa+0gDxwOIW7nl8E1uxnK6wNCDgEUlY7JpSG+yVxWA6dhdnf/fRY7
	p9qyrvlJ2sND29IpgqL2tdqCSXcQXt37VbXvfbgDb53P9e8qWipUX+zUBKBtRz6dso21hPkkt9dwL
	387zBerzjxLMxb19yNE3AGsqBqpRGp8s/nRg/b5p8HKebOPynUTcvVlu1p3yVsaXBueOfbuvA72uY
	b1MClJfAMiG5qeyXoYcGOPeqz+uVy+K33SsJREt/ATpMvVzyLj7UbCWh463eE+Wf+7OE6WVWm6gNk
	D/VFTmtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdok-00Ev6m-0f;
	Tue, 19 Dec 2023 17:23:42 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFdog-00Ev4m-2H;
	Tue, 19 Dec 2023 17:23:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E90A3CE19E3;
	Tue, 19 Dec 2023 17:23:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9ADBEC433C7;
	Tue, 19 Dec 2023 17:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703006616;
	bh=20UlB/3GfBU7VYZQewkO6lNFHuoMJTapMIPvG5CgEsA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TggN0vebKJ6zeSIXebegrggCNwejrthasvy1lIIA7g8T3m8pdMjO+QzvSkWd6kacP
	 a3V8Cu4UM2V7YHffN0m/T2R07vKhPE5MxMXOJBkiOCdjBFyVQGZNjWM2jV3msavsSv
	 p5MVd8ONuLdnHnCLdlYi/W6DlzUk7laGzv1vMTU6D9U6uatOpuaok2mFiQYtH9P3+T
	 2HYHCcaQwSC8qHB6CcUV6OG3tEWv6Uod+MBQqbRw+CsIfJiHCjIxgsP2xih5nazRSw
	 ozaG412tuzBggoNg+tacIncA+mG2GQnBrcJsRq51UiV5d1jfc2cxiTfAG1gcx+vRYx
	 hFf07aavyy11g==
Date: Tue, 19 Dec 2023 18:23:32 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
Message-ID: <ZYHRlMukbJUZw7cO@shikoro>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
In-Reply-To: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_092338_917096_EB5B03BB 
X-CRM114-Status: GOOD (  11.39  )
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
Content-Type: multipart/mixed; boundary="===============4632761485955384011=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4632761485955384011==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lI4kUQ0cF6rdsM1g"
Content-Disposition: inline


--lI4kUQ0cF6rdsM1g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 07, 2023 at 04:21:59PM +0800, Jensen Huang wrote:
> Possible deadlock scenario (on reboot):
> rk3x_i2c_xfer_common(polling)
>     -> rk3x_i2c_wait_xfer_poll()
>         -> rk3x_i2c_irq(0, i2c);
>             --> spin_lock(&i2c->lock);
>             ...
>         <rk3x i2c interrupt>
>         -> rk3x_i2c_irq(0, i2c);
>             --> spin_lock(&i2c->lock); (deadlock here)
>=20
> Store the IRQ number and disable/enable it around the polling transfer.
> This patch has been tested on NanoPC-T4.
>=20
> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Applied to for-current, thanks!

But I'd like to see the follow-up patches somewhen which have been
discussed in this thread.


--lI4kUQ0cF6rdsM1g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmWB0ZQACgkQFA3kzBSg
KbbOVw/+NVen+AGSOw4eMjuOsuw6K8gqDN/xh3Ljd6DswQnEF9MIELUKGPoq8/Iw
AgJfpJdu+JLIxqZ7n8wxXAzQNeq4cA7/66j+5N4NSPE5C5DV7iAcQIvlQQHi2P93
uxCjDe6OnDoeS2JA3KCwL+Kce2JQvZ7EWLp5A/UaX1sANt2L3aZ4Xs0vj6yFpRg2
keWp0ouKrsMhRt9Vmi5zFWxtd1M0vdiOLywFLcWRq9vbVB6ZKjcMidjLQHPQ96sM
uKm+3QbhLrV4qPZE+BLI+WAFfAr6x9/geqZ7qyFQeJOfWEcFFHFYMWEba+zybCKa
P9zdG4vAkn8ZzRzoRJ/+xhvoXwUh7RbumsdnNiR51pGnSBF68BsQla5A/cg/mhHL
fMrdIg9d/2BBm0rUrOpIE2EuSRLDJWCWaPuVyx+QNKRDzOlVIYM9PyZbREiWNEyP
1n+IZf09ueeTVy5OJRpQVq4tGy6tp0+R4F/kFLfZKUe4UYr6CQdiUH4ctQw6YBt0
01RAzx4GWxyRpXBjp8uH+Ili3ZIqJpLFDfABErhxfUIMluAOsBetPSuNdEIcWny8
7JICmbtPoYvWoLahdHT8DE3YNQcjf25IQZY3j2mCNKicTeibisXBkgsWieRbcAXS
D8p6y+ALiam4Yx9t871AZAMqZlUq/cXQT7TrkxVaXp/OfsviIpo=
=dZSq
-----END PGP SIGNATURE-----

--lI4kUQ0cF6rdsM1g--


--===============4632761485955384011==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4632761485955384011==--

