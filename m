Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E5D1C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Feb 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j51b4K9J2nh80SPXaQ5hxRWbeNcnZjMPb89dh96iEQY=; b=hlHpZgJTgdefwB05AaMW4KFW7D
	zVOVA/d3u2Bw6nWlI/baqlLnRrjXGariG/xzt6xIG4JdnCzAR2sGrYqJZq7tzrzVmLT3YrKmfhK4S
	FEbSSZv75xGwk8zW9goLKpw/YljbZf+CpjBkUaZBFS+1zUgpOV5RT2kWX5RRorTl29kiyfU8XO+rT
	rxE8mnDhRhMOoANf6CQikvYbpHkvSYKlNpJVRv1ylw6pmzd6pvLSTs/ixpozoAIwf9ybxwJwp7+H+
	v2w6MuoUwJldWkTWucMJ/mXDkEcJKJgFMmC4nUKV8Wt+D4J7/s81oQzZghi9WsBO2AHvg0PcQ+MCQ
	6YRexO8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJayF-00FK4b-E9; Mon, 14 Feb 2022 13:00:47 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJanu-00FFm2-QW; Mon, 14 Feb 2022 12:50:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A96E9B80E99;
 Mon, 14 Feb 2022 12:50:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E67EFC340E9;
 Mon, 14 Feb 2022 12:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1644843003;
 bh=dCZAZFFTFztaUC3w9E7PynQEzmnHStV4WtGOFsBCoMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NxuzBnXVhRj04xQho/0LIHIQWG+EkuGcsPcdH80rm/QChJgLscBCwiEIrFWu1I9Ig
 UgkI+xyU50G6u5+t+lNJSNW/HEtSdBRL0oOzFH83eXtZQbIQ92FiYwkLov3vpZGIln
 NU8XzL8C6+/lhtAy4CvvbKb/v1blCUd1Vzi66K2EETkJn51JpahjmH3s+YByDuW9ja
 Wv8BQ8RFp0aQs9sfW9RMtGqDJgjgwf0WTeSYGUA0j9DIxcQME/GuHEWBH8qrFL0uHQ
 KFdJUAeG/I0dONMbAe6iDvOZwc7uzp5t6mTegnEiF+qjW7LkoDWHkGsp+1lwNnBHsy
 UrI0lE4UaIkAA==
Date: Mon, 14 Feb 2022 12:49:58 +0000
From: Mark Brown <broonie@kernel.org>
To: Jon Lin <jon.lin@rock-chips.com>
Cc: heiko@sntech.de, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/6] spi: rockchip: Preset cs-high and clk polarity in
 setup progress
Message-ID: <YgpP9j80OuhkCN8p@sirena.org.uk>
References: <20220211034344.4130-1-jon.lin@rock-chips.com>
 <20220211034344.4130-2-jon.lin@rock-chips.com>
 <YgZHalrdhhilxROt@sirena.org.uk>
 <4222ce7d-a1e3-1728-fec2-976946b06ba9@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <4222ce7d-a1e3-1728-fec2-976946b06ba9@rock-chips.com>
X-Cookie: Am I in GRADUATE SCHOOL yet?
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220214_045007_304413_F477CFA7 
X-CRM114-Status: GOOD (  20.86  )
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
Content-Type: multipart/mixed; boundary="===============5081061725137271783=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5081061725137271783==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WgfHOPUjhPwyc1Eh"
Content-Disposition: inline


--WgfHOPUjhPwyc1Eh
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 14, 2022 at 04:40:19PM +0800, Jon Lin wrote:
> =E5=9C=A8 2022/2/11 19:24, Mark Brown =E5=86=99=E9=81=93:

> > > +   cr0 |=3D ((spi->mode & 0x3) << CR0_SCPH_OFFSET);
> > > +   if (spi->mode & SPI_CS_HIGH)
> > > +           cr0 |=3D BIT(spi->chip_select) << CR0_SOI_OFFSET;

> > What ensures that this read/modify/write doesn't race with a transfer
> > running on another client device in the case where the controller has
> > more than one device connected?  Similarly with the mode, though it's
> > not great to have devices with different modes connected to a single
> > controller.

> I have no idea how to deal with the conflict configuration between
> different cs, and also I find nothing strategy in others spi drivers.
> As we all know, some configurations should be consistent for different
> CS devices, such as SPI_CPOL, so I suggest the framework to make
> corresponding early warning prompts.

As covered in the documentation setup() for one device may run while
another is active, therefore if multiple devices are configured in the
same register you should use a lock to ensure there can't be multiple
writes.  Note that the above appears to not just be setting the mode but
also the chip select so if you've got two SPI_CS_HIGH devices then
they'll both be going in and separately setting cr0.

--WgfHOPUjhPwyc1Eh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmIKT/YACgkQJNaLcl1U
h9AZKAf/VpLE2vWn6R3N7yXYDuY8eeyBOVUEXfG484ts/lnv56h0WYC6lFZRT6Ge
4yg6uV+fWsAsC+jbNXgNg5+AOpVwuN/fDkAN/5E3bVOAVTnTaWDvT0A7U1YvsP+u
IGrkUB3RTshl8j/w7V2v7axa+tWkEH8s6lkz1T+UhgqQFPeFtQfuHY6kRbuFYAGW
IOs1d3Au4t0jQmhhT3dT9Q/2Cm0lM7nOCNxqh/JbkPD/G6Va1NKYh2dLSUgR2pZe
tkD6K1gmx05dWC+olXHVLYu8ZHuqjJysmrrwpQM7pprHZAShZ8+MYW8UGnYPJ+Bx
6k2s6LozuXeMH+w3ygNO8f4axFUKVQ==
=xViN
-----END PGP SIGNATURE-----

--WgfHOPUjhPwyc1Eh--


--===============5081061725137271783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5081061725137271783==--

