Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E25DC2BA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 00:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cONWOBMU1awk6uat6Y2kwzCI+0ObT96KMSSkDFlJ5Zk=; b=kgBjFCtRe7Q1uDwUH1FIrn9NUG
	R6hRHuYuLBxA29O1fHjv2O53LeSmqLo0TopKTVw1HMUI81y1LV24ioSmhmzbAi5kSJrAflRole7TP
	f+gTTs5p9t8JKC2Wm2YoPT9Tlbsxrfdf2I5GZEgI2bKul5CMymNcqmiJwvO0RX4qY7O5YypDVxunp
	QTSomq5+LmHoPkCSvGq2oZKBT0OdTgBVqkpjnLzkOWXn5WrbxzxTGVyRaiTBWccE1YQvqGP/W0VgC
	QWNpufg8i4NWJbMZ09426rhmneu5BMwlrdo5vpdl69/kRNjzGPPluDPA9mLUts7BDxEcTICGQz6Sa
	I7MA82DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJMTf-0000000D1iE-2WVU;
	Tue, 18 Jun 2024 00:13:35 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJMTc-0000000D1fp-14by;
	Tue, 18 Jun 2024 00:13:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718669610;
	bh=5aDeHQ6ntKhePhG4Ww9qIOWCKi/Au3oReh9It8GCLrY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MYxg0hj/1Z+b76/CI3qOU7QKV0sqPoWRAr2OPJv1hKmjA/e62dWWuwWcBdeckeg0d
	 VZQHbf9hX3kwonQFh9J5/KNhT9BS+JViHxtpvJ/clwfrTIOa17npcEKmP7Mlj0Bj+G
	 CBtGcC5i22IdtlBEQhDzrZLJI9C5BjDBEEBnC4mWm9/YvZDOdYStB0ndQXUhmoE9Vl
	 iKZVtw+eSlCScLQSnBBaoPUEE9jO+2NBh562HFs7rua23I7yA1DBlPe6b+F4M6van+
	 XUp2tcIXpeKPf2/SZpoP5fW4lD+7B7+DGAHLhPVo8aax3caZF58PTMTiOoA3ESiePb
	 6qXxLdrkgd/0w==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 39FAE378216B;
	Tue, 18 Jun 2024 00:13:30 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id B34271060734; Tue, 18 Jun 2024 02:13:29 +0200 (CEST)
Date: Tue, 18 Jun 2024 02:13:29 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jacobe Zang <jacobe.zang@wesion.com>
Cc: Alexey Charkov <alchark@gmail.com>, 
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>, 
	"efectn@protonmail.com" <efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>, 
	"dsimic@manjaro.org" <dsimic@manjaro.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Add bluetooth rfkill to
 Khadas Edge2
Message-ID: <hk7rrm3ljqmrgvdgf23ymhpzwcnq6otwezratoj5k5zt3d6pc2@vjmeh74xjkck>
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-3-jacobe.zang@wesion.com>
 <f147be11-fc35-44c2-88e8-7421fee47ace@letovo.ru>
 <TYZPR03MB70017A6280F060A6F4A1DD9880CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <a25472f5-3e88-408c-a033-5e338dce6340@gmail.com>
 <TYZPR03MB7001732D8E2F0921BA82B7BC80CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <TYZPR03MB7001732D8E2F0921BA82B7BC80CD2@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_171332_507993_DB0863F3 
X-CRM114-Status: GOOD (  14.41  )
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
Content-Type: multipart/mixed; boundary="===============7143592606038322606=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7143592606038322606==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cuonu76bp3mxpast"
Content-Disposition: inline


--cuonu76bp3mxpast
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 17, 2024 at 11:22:57AM GMT, Jacobe Zang wrote:
> > If you already control this GPIO from elsewhere (such as from the
> > bluetooth driver), then perhaps you don't need to define a separate
> > rfkill device at all.
>=20
> Yes, I missed the error log before. The rfkill driver didn't probe
> successfully. I will remove this rfkill node and reserve bluetooth
> node next time.

Does it work with the RTC clock disabled? Otherwise this also needs
the pwrseq work I mentioned in the WLAN patch.

Greetings,

-- Sebastian

--cuonu76bp3mxpast
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZw0SkACgkQ2O7X88g7
+pr7tRAAnvJzZGEyZhPOc6+tjZHrt5Y/HO4Sifx9FsBeynxBXodpcPQevKqnzMBf
24l1XnbasuC9vvwWAlSDr3iomv5TZjw8zdQZKYrzeyeEEnmhmLr1B3Zde2XT73JN
ElZUojtZIqILKpQJLETSkWknYfemsTmO7VY4l7OR5rW/aingKFtb5DwBG8kx+MGd
A0bmUEFBTxT7tR2Q7lBK9cuKXomz84bIwx7ip/4c7iP9YjHEICO7m8IGdFT3XznX
g2Ehjpwm97Qsm4C10fqVnMSXW/C4h1z+K0wln8f1cHdd9EjVZN7Y/Ce3G+dvL5XT
6YGukt8ybsGdVVSWk9DW3Pkwxf3CNOGkVBO6xua5EdUW78so72Kmj2Z4yevF0nZC
tTobcxuNrMCHtVqSFP22p/PFEuNJxvO6Ss7XR3LkAVvgQsXg6yRu1bJRjMahl9tt
JBmQluBmbiD2Ag4QiPhUVglfAC3c28o1RtFiI7rd9ZCReSDcqu/f77BUg9NTWEHS
23Al34wMMynMiemktx+zXgqMHmHEDPrcqsJhPwgWkauzLO97CGqqFTe+18K+8gvX
cqAa0dySwtZ9WkvznBODfI2XxgsVxGsX/4WyQgP6JKto+SxAyuy3sgw/ljo/9B6x
FCVl6+84Mw/3ilWZTfE1vCuku84oJYmyKCOJ/P4d8NaehDl6Ih4=
=YcBW
-----END PGP SIGNATURE-----

--cuonu76bp3mxpast--


--===============7143592606038322606==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7143592606038322606==--

