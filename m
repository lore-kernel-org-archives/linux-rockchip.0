Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22ADEC44508
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 12:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GsCFVM/XfDzNIII84ZZK5TCGQVwQw46nErHireUhnEM=; b=VfqGI8lhmg8s0VpH/q8dCrbmU7
	VugQ+3h7rbZJ03QXcO2q1ugOxfkXgwI46B5SJCJwVeUoBo+FLJAsOlNYRhTj0FqOXvyNux7bphZgv
	eCKDUQ60fNLy3I0R/x2/LO8nvwHoluSV03ihU/uaceQfajVw8C7k/pf8WwWkGwyOIoEY6u+suEJg7
	+UwcgIsIV1DLm9DBJ2RejfvVBCbO5rC1u+VH9dhq6MyqsImu0lTFZ5mU/PBbgnGU1FWCOdjfragXC
	ShVdDV1yl3UeEY0vNPox7ATtdDeP45/0gIUZ20xZWd+GPQJ6WNureYFVo5/Uuj/OmcfnsvSh8YnMH
	ZYRmjUbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjc6F-0000000BtiM-2Ql0;
	Tue, 14 Jul 2026 12:18:59 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjc6C-0000000Bthc-2Wd3
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 12:18:58 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4921eed3fa2so36353185e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Jul 2026 05:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784031535; x=1784636335; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1NJQhaiRxRZvI5codpeHWU5ZWtOmLBBBHRcCW2P8aLE=;
        b=b4UvMgXtMXlcq6ZZ54qfbscwvrUaW1ZEAvovnUIMpLfGD3d+lBShDcXEBWe81CNWEe
         dew9VZcXLp3RiLYth50eLqZkpspJXGeZQJi2PJgC7JnFoU7wUsz68YR7IwhHVGI1lPNg
         LTnBxVhGmEwdxPHHfHMk+oDgijyblNVZK9T1u5wysQplaP0JyE15RXE446pMB4pgIWfy
         0o006hMOzQg8cIONWL6QUML434IxvfhV2JBM49cbp52qwiuEY2OXpXxnO9qzW34aRC9g
         s4564lm4ZvAtEwdmzDrfrKUbIt1X6kLQBYKFYMYpNhO5AcL3Wd7kP0Ux9faz0s2cEmXd
         X98Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784031535; x=1784636335;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1NJQhaiRxRZvI5codpeHWU5ZWtOmLBBBHRcCW2P8aLE=;
        b=TnQX/Lm5kVT9V1OLXf8yPGOaX3Hk7K6DYLo46z457JAJlg3XMcWBgt0dtAW7ngJa3p
         IPe04RMfrYmQOHy0ApC6YTIVipe/cMIx1ly43FygklCVirjIm+d5+Ob8wWvH/KsJQvfY
         o4i5Rjbp/DyYIRfiHDs5+pPYzl1hTuIFO6mWlil3bkLRFmwY8ynUHNpAplFxL0dKvQA2
         v0c1BX2dXYOIvv2bfv2Xsw9fXsFXFkv8zLt9mvJgg9fIPkEBPcvTSvfa0cA6FA8y5b/P
         9RRu8uohofI2vydAj17Eiyb5tSQ2pFK6awE+bw+Hd8JBV7+YMXBLlyk4TCegbxNd8whr
         hX/w==
X-Forwarded-Encrypted: i=1; AHgh+Rrvgnz4yt8zkSC+AuoiLEmm9eZpAkYyaB87Jj2YIpf67lqU2cUYOC/noWsuffjVhPb/CIjmBB3IHD/UaRw3vg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHuMyuggN9ZQPgJuzhDgvsGmaynfJXYwLl+etdm7hDp8T7Xhfo
	XcR1n59FDxF5aL3a9fatJcLxpUbsZ2F8WS7HEH4wIMoqdjIvKaMlL5GTDkzOdpzGmfU=
X-Gm-Gg: AfdE7cmi3qGMARUP0h3X5jvJHlcwmIj55fgHLPgV6lxVRJ/p0LJu6spmSxsH6HhjzCK
	p5rPHqVBs+Gt11EKtmM1b+GzlsLKCihm+izVXlN14w4lzoTkafTx3weyULgYwknekVOYQo4DxHj
	KNZEt/hzr5lH+l124lRypL34u5kgjZj5cAsh98yGEgHOeGF3NIN3wl0oHo2BI1mt9AT9189CmJd
	sRJ3XmLUsuw2z+QYUEVS9xKPYAJnNBzp3dhyLXSyxRcB62/bZpRmntOoXHsi5k6Owbljdv479n5
	KQvxwnyPrTJLnYf3tsBuJO7nrxrMFCHp3iXyQzmSr4KdZxdgYiREY1pfErKa4zegvduoaHYso6s
	EXWcLxceh40t8qIwE2SOhicTYX6Kluj/6nmyyMEycaFtQVLRyT1zcCSWJvOdbK9e/VwxDVo5Ahn
	e6TL9kqMu/ZET+MeljII2Lb5qXByZ+mLHbe6YwzKuH3KTe+vmt+aGlBOwqefvSw0OJhLw2OEfXg
	Zxf6X4mpZnw+n4=
X-Received: by 2002:a05:600c:1d9a:b0:493:c8f7:3631 with SMTP id 5b1f17b1804b1-495389bcc3fmr24238165e9.22.1784031534838;
        Tue, 14 Jul 2026 05:18:54 -0700 (PDT)
Received: from localhost (p200300f65f47db04b44a80421173aa03.dip0.t-ipconnect.de. [2003:f6:5f47:db04:b44a:8042:1173:aa03])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4950a322dc6sm75437145e9.10.2026.07.14.05.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 05:18:53 -0700 (PDT)
Date: Tue, 14 Jul 2026 14:18:53 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <alYoUSf_jGegFP9E@monoceros>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-5-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260713215842.69097-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_051856_658719_4B7BC82E 
X-CRM114-Status: GOOD (  11.71  )
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
Content-Type: multipart/mixed; boundary="===============9159998717298080404=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9159998717298080404==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hsdmlg2odk4qgvo2"
Content-Disposition: inline


--hsdmlg2odk4qgvo2
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v16 04/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
MIME-Version: 1.0

Hello,

On Mon, Jul 13, 2026 at 04:58:34PM -0500, Chris Morgan wrote:
> +#include <linux/i2c.h>
> +#include <linux/mod_devicetable.h>

Please don't use <linux/mod_devicetable.h>, to get i2c_device_id and
of_device_id it's enough to have <linux/i2c.h>.

> +static const struct i2c_device_id inv_icm42607_id[] = {
> +	{
> +		.name = "icm42607",
> +		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data,
> +	}, {
> +		.name = "icm42607p",
> +		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, inv_icm42607_id);
> +
> +static const struct of_device_id inv_icm42607_of_matches[] = {
> +	{
> +		.compatible = "invensense,icm42607",
> +		.data = &inv_icm42607_hw_data,
> +	}, {
> +		.compatible = "invensense,icm42607p",
> +		.data = &inv_icm42607p_hw_data,
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);

It would be enough to provide the driver_data pointers in the
i2c_device_id array only.

Best regards
Uwe

--hsdmlg2odk4qgvo2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpWKSoACgkQj4D7WH0S
/k4vjAf9EhLLO6r3K/guJlw31Vj9bk1/VbXkK1ojy2ZTV1OfNoaUZWMmjlDIeiJN
jAPXLjn483i08lLHZTuzuQRVUe6nJ+S+bjtVUOOaPS0d0cgpehOVTCQzZGGYFTrc
j7Oy7IDiQv3oAPPJLc0FD+SPQPLgLvyr7ejigSbTIWMWi61GOj0jIPEOfiF+JDxl
CXZPuX6mCIr7kOETT9GvUsQOZX3T+dOQ0HBvc1an9QbtrqUG0+VFex0Ic3HAzrhI
0Yat0mQBsjw4p96cvfD8Jx4F/9QoadJYRhf+Yk+pWEDbCLksKdClqojVbLVVVNmq
4lva2HNPJjfdFrDJ8RIyfJVwW5ZGhw==
=ej9W
-----END PGP SIGNATURE-----

--hsdmlg2odk4qgvo2--


--===============9159998717298080404==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9159998717298080404==--

