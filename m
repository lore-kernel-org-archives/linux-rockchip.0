Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38E9EC531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 15:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QMUTS/fMZgRYIi0MJdf3DbCIdbbyS+88N2gTzIOiyBU=; b=Sgjvtxh8k9TpB8lLzkLlEp+nzB
	ILmy+C7VRAk+TxdRIdT1GadQSNO/2wcI9p8QQrufnbj9JQQcNL2/si8ZfbrU4Z9nyC184snq+wYp1
	S8Sg6EEY7Zsw7Q7BIpYsFaO0rpn6Wi1tAi2Ef9FCLG3f0pgdNm7MPRjar/im6PQURuCZf6QpC0FjS
	zjsMCh11TXSk1aRa7Zs064Ci0wIoBWcc6CkUVsOqCbQCWDGrikFm0kmrUa3cwEnlBdRCFjslGxP2y
	c5Ni8IdW+Kj9Xc6K1YQ9djXoXxr3f3LbEiYIuH2wYlwSTKnQCXwfD/7h3X4nuZ5kbjo5Xn4QlwdIm
	R67KxpLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woNM2-00000003Bah-0ZfP;
	Mon, 27 Jul 2026 15:34:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woNM1-00000003BaR-0IO1;
	Mon, 27 Jul 2026 15:34:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2012160008;
	Mon, 27 Jul 2026 15:34:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40A101F000E9;
	Mon, 27 Jul 2026 15:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785166495;
	bh=OSE8IoasrD58unzxSgBtl5+T5ruydJA2kXXGe4djiMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=H/huRj+FkZT8rxFDSm2hICMewRtrDeCyVfV74XdKso+0RoccHn2jC5Mgzz3404BZL
	 4rBoIWZ92IlWdwpSV4/xTuLCcx55APa3ZaQ7tx6veMsqKxODNwZLwYtfRsq/QZxKWg
	 ivcvEse9xj/uKusBGiIvnUAidQrYBrfXv5qyi14PubnBkkhkPZchGK/8KAHmT2CX0R
	 MjZnwgdsVvEI5LxQ3bGb6iGdvS6kK8Vdm5/KZFJ8Jlsm3+0hHixn8vncVvUbpDNR4j
	 GCTq+lnN0eoFPD+JcKEPwNyymg1LkELLWJlFPPLTMqtkl35+Di1c+2k4ulBPXcMlI5
	 /A6pMq8nXNOgQ==
Date: Mon, 27 Jul 2026 17:34:52 +0200
From: Thierry Reding <thierry.reding@kernel.org>
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Prashant Gaikwad <pgaikwad@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Tero Kristo <kristo@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v2 1/7] clk: mvebu: clean-up simple provider misuse of
 the consumer API
Message-ID: <amd6lIpfUb29Gal_@orome>
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
 <20260724-clk-provider-simple-clean-v2-1-56f306156d25@baylibre.com>
MIME-Version: 1.0
In-Reply-To: <20260724-clk-provider-simple-clean-v2-1-56f306156d25@baylibre.com>
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
Content-Type: multipart/mixed; boundary="===============8046020726182560760=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8046020726182560760==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2f3tnfstgthwesf2"
Content-Disposition: inline


--2f3tnfstgthwesf2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/7] clk: mvebu: clean-up simple provider misuse of
 the consumer API
MIME-Version: 1.0

On Fri, Jul 24, 2026 at 11:03:52AM +0200, Jerome Brunet wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
>=20
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist.
>=20
> Reviewed-by: Brian Masney <bmasney@redhat.com>
> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> ---
>  drivers/clk/mvebu/clk-cpu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Thierry Reding <treding@nvidia.com>

--2f3tnfstgthwesf2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmpnepoACgkQ3SOs138+
s6GLgw/+NQfYR/3Wzn80ngNgyBG/2ubRWiFGqh6kqFPvkRAEs5StLHQNS2eDIqKm
4V74umZnlJA08SglJLRkgRdPWy+4IBuipiGQpD6n+UrmGEUg5DBDlajeQEytQwnu
IUq4BryldySDYFXKTEzzDV5eTxf27wG1sqFMBLL4aqV58o4vSK2q2d8CDZ2CjgXZ
XhD30hil1dvV280lPDjBg3vWiL0SqOSl3NubqUYHvEApRYWSGHVMjwcnJVSkq2Ko
mwNHlMNFVQUCcWLCRLh/qkXe8dKuJex/e6XIBjIhX4tdXdAyvQ+5hRUnmqQPWe7S
xlMnQSbewWsuJxDwEMUmcAAD8mAzNf+t4dFtNfLlvtdVSjpkEyIkfzohLqbnG1s4
JSIPmI03mifLMctCpfQ2qDWitTMns00tAvkK2SzfS9GyeW0W6yVxFCU+2UsTwse7
CZR63ywGOUmQGB1Xw0LZKsp1/6t4ESMq+T6DPc54V3g8K4+JCUnYSKCxqa+Ck3Xx
P/tJNBJjPkqLP6rvag1AZm3z1x5BsI3nWYZ1ZtyGMFRQxIf3RKeuo7taW+R3Bq1n
tRGbbx2QW5AXgjCmjvLNYzFEkvDZIJbWEfPjLORLuVRVle9vnzCE2BpPZT3L55pG
ayihIatqmM9Cba66uZL/tn08KDmubR0X0Fbvs/Orc5WCvlkaug4=
=XS/f
-----END PGP SIGNATURE-----

--2f3tnfstgthwesf2--


--===============8046020726182560760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8046020726182560760==--

