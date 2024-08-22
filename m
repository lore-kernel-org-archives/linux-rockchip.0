Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4345AC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 09:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k269iTkZs8qukN+nBMeyW/QKmf9Fd/UKqxSQA/doZb4=; b=d2nEJXC2EzQcKF71ScUSSIrBe+
	8IRBg+borxTZQtQwpVwM4Jssge7hL0wctssNgcvYH2s9QdUAzHavnYZ8V1HLvMSPAS/HMs7WNg8KS
	i732RRpQjle1fpQgz1jrER5hVPkyaOt9APHWaAF7NNB2U0mJBb77kq8zn3yydpuavMs4Fks8LxGA/
	HpdkkNvriLv2rQRwk55tmkN9Jla57vl6ZlGhE0shX7k44CFexm/nByCMBP4nIAjGgTqjjrwFVyyjH
	57HPn1fhmb3Qk1UPbtU1nZkHJG05wvJYtOr2UtfCZcuhe7rLBZC/LEKpagsIQ4ZllB74CeY2fO0Ws
	ix7zoEPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh4OC-0000000CJ8X-2vzC;
	Thu, 22 Aug 2024 09:45:56 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh3Nf-0000000C6XQ-1Zza;
	Thu, 22 Aug 2024 08:41:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 64404A40136;
	Thu, 22 Aug 2024 08:41:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AA19C4AF09;
	Thu, 22 Aug 2024 08:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724316077;
	bh=qfCsE2TARh/0Jkqs1tOSCtPuFozHgbbnBIGeahfVo4w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ImlOSxZqPU2Q0pU6PiB1Lrd06gaA6GAh3l9ygooynVI9lp1GJn398Le0w3DFW2Dc4
	 beVWkktTt4Ktr+VfuPtaDtr0xhQJq7Q/ImOyeTHo+bWYI9R/TQhkaoDL+3Fm7C+qKP
	 QyaX1MbnL1XzNmNx5fXaQI2L5vdYywsXzOTQJ3hf0SCp4Xp9tJfercshJir8dD0SmA
	 Lc8RIj1kG3pg7b7crOFi8GCrlgGQ6Pp23KsGG1NqIk8BYibZ1ySXDAWTbRz3cKLwOj
	 saAUZAyKd4AlPGd42RImlnWsxCSX/t7IBSzfRlgRprdFs2UEfrKb2YWCVHrV27OVMU
	 dNIoNoGWLm/0Q==
Date: Thu, 22 Aug 2024 09:41:10 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v4 3/4] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <20240822-pushchair-premises-f4055779216a@spud>
References: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
 <7E8109D4-A353-4FE3-9152-3C3C6CB7D634@sntech.de>
 <2085e998-a453-4893-9e80-3be68b0fb13d@collabora.com>
 <4167579.6PsWsQAL7t@diego>
MIME-Version: 1.0
In-Reply-To: <4167579.6PsWsQAL7t@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_014119_795439_2FD6FDBF 
X-CRM114-Status: GOOD (  14.29  )
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
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luis de Arquer <ldearquer@gmail.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, Jonas Karlman <jonas@kwiboo.se>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandre ARNOUD <aarnoud@me.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Mark Yao <markyao0591@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: multipart/mixed; boundary="===============4477608040713847739=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4477608040713847739==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Z+weBBqJ58Bi1CtB"
Content-Disposition: inline


--Z+weBBqJ58Bi1CtB
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 22, 2024 at 09:01:34AM +0200, Heiko St=FCbner wrote:
> @Conor: just for me, did some shift happen in our understanding of dt-
> best-practices in terms of syscon via phandle vs. syscon via compatible?
>=20
> Because Rockchip boards are referencing their GRFs via phandes forever
> but similar to the soc vs non-soc node thing, I'd like to stay on top of
> best-practices ;-)

If IP blocks, and thus drivers, are going to be reused between devices,
using the phandles makes sense given that it is unlikely that syscon
nodes can make use of fallback compatibles due to bits within that "glue"
changing between devices. It also makes sense when there are multiple
instances of an IP on the device, which need to use different syscons.
My goal is to ask people why they are using these type of syscons
phandle properties, cos often they are not required at all - for example
with clocks where you effectively need a whole new driver for every
single soc and having a phandle property buys you nothing.

--Z+weBBqJ58Bi1CtB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsb5pgAKCRB4tDGHoIJi
0rLhAQDqY1gu1PD4V30d8emILN4UQA7IqbfNHPYXVGBNqADBXwEAj497+bHi0qU5
bnjxze+ZiZvdByZ4C9o+h+n3wfVJhQA=
=vu81
-----END PGP SIGNATURE-----

--Z+weBBqJ58Bi1CtB--


--===============4477608040713847739==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4477608040713847739==--

