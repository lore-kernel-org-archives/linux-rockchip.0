Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D9DDCD98F2
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 13:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LxhJsEW/xCUoqUeBxf/29jQgbSBAsTmO7x9Biw2riG8=; b=rL1Ejfy8aMfjhNb4HV9GC1Tw/a
	bpQoRDuhvLhzWv/zKOSdPHxLb8nnzLW6MtbyVDMpdKnLjL6DQ7TCnS7BfLCJOx328Hfw1j1GtRKpI
	KNuPtNNj60iUK+cCCPnLW5AnAkSbtBtepUcK9CHa5WYG/u6Bdu5IJV5wNWcT1vt/qRI/hsOrT2bOA
	0ZBOzvu0Kpz1no0J8qAKw9pwJTZAJKppgUZKnoesgXIo1n405iZm5AzgwVPVGDSoKXRX1PUP3HnKO
	Th7cOZQqAeyDbtemZwJgQrv7uthZpu9cnRI6BQsn3rWvWOlbRk0UHFG+zRRIJXnPyV18UARkcunb2
	61E250AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waZgS-00000002Ven-4Br8;
	Fri, 19 Jun 2026 13:55:01 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waZgQ-00000002Vdh-2QqE
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jun 2026 13:55:00 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-464192ab2e1so1311102f8f.0
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Jun 2026 06:54:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781877296; x=1782482096; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4Xcl53W/d1zCewy2NCxbH3yCSfF9le45zZCAWmtsM2w=;
        b=QRJk7h/cRD0zHIvXC4wna7uyJOWwcIzjxGLzXHTEjOpg7xQi6mvSVxQtmbgj6PeKUe
         qKUAZKZcQruZ4Sw0MjAN+vmeROFSW1x3w0OZFdbYU1rO2RtTtVUpExcO4EyoSq38gZDF
         ql2FGL7buwhy47n6Tusl6WLbtVBBu71YvQqbIJsZ/aaWOWnH0IrvvoIJ5xRjRMBzseWM
         KWlFudUBHS0lgKpAAnG2xWSBHJe2mYX71BHjNaxr81hoUPFYO2XqKBUr2hzXkOcL8dUM
         VwomT0ra3JskFTVZSv/1Mpx7QU6kE+C+P4+CUbOdnMQuIzeXdTaKalWoeQCwAcz1JoYg
         KU8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781877296; x=1782482096;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Xcl53W/d1zCewy2NCxbH3yCSfF9le45zZCAWmtsM2w=;
        b=c49rzj2PLnM0GExWwA5caD1eKLCkL4lt9mXlXjnPlkmqS/f7lKUjKhSZPqRWvkPpDa
         2iSsG7FGg3cyZNJHJddxBb09YxvmUsU0VY5kYw2q9kXLolB9/E8XiTxxL4uejYpjna9Q
         fpHRFoQat+8yo3//tf6B3ROA5U+SEMH3L2vtABNAcPkTcQHu3anQMc0V6qqStLRsXpty
         BHH4GXLi4xdYjScmqxPc2sO/ZAkuzkgJYM7GyWNc/ESc8npQUzQMCEHTFi09DkWFYzRW
         uouk3JXmA6HQ4+QuIh+bqfJURC6VMARrrlHExhGY8O2Henof4K08i8W0jwtxxkqW2INP
         pXeQ==
X-Forwarded-Encrypted: i=1; AFNElJ8DAYOil09+eF+jOK4J1vdVkaTZiFEas38Eh0Gk2PS3COxQGtWOYe6z53opDc41fLgA4FEDWMn1hLLjXKbrIw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyW6fpZ46rhrvH8124T+ny1KCtBbrai5+m0jRKdnGKV6oBFzMNQ
	qwn+0WAb/V3msSzKqD7348VdFIF7wzQ9/XgWDiHA2IzJWur+KNMzavcKTugNhLjUo30=
X-Gm-Gg: AfdE7cmEkGzzomhONtvMx/a/9nJtTkMAnqzlA6V4Kk7gFzpf9LTeczv8iK2HTNuKGnf
	BjJtIbz6sCsxCWBkerZcyZ8N6rVjZFpH6Rq4RJ9zTcZJOD+t+481VmbBGG3qrKOkttO2f5pLcuX
	4TWs3LLoIeKrrtfmMUcedTk5APmmhhLGDmCNNqz7HFTTzJIAjDHNxqh1JBaI/kU18k/JGqUVhbt
	PZ/DAdh0ElY/5eNxYjRWVJdwH9rQ5z8c16d7xQ1SQwAPl3v8GCt2Mq9O8ZLPTw1erFUjKA1F+SU
	y4U5JOCa5XbSCNjHDxcZk1G+Xr6lEfpDksl5d1+Fr2uWutWMOEr0MUqBuioxKKxxAmnGhrjb+/X
	wcZnC3FM490aRKFADjhy9rn8Yyy0lAA5NGIIGNEzU/iOdixGyi23syKMEsBShZHE7Y9fbhi9wjP
	lVntYzcsdlZjN6SP4TCSbBhMBBrZZvwNmb5hkIid0keYXQQQ/hFxkpK8SNT0MxiemA+NffzI6iO
	Uw=
X-Received: by 2002:adf:efc7:0:b0:460:e2e:6e2b with SMTP id ffacd0b85a97d-46501d44f6bmr5284891f8f.20.1781877296318;
        Fri, 19 Jun 2026 06:54:56 -0700 (PDT)
Received: from localhost (p200300f65f47db04359fc0e70763236f.dip0.t-ipconnect.de. [2003:f6:5f47:db04:359f:c0e7:763:236f])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4650bc423bbsm8215153f8f.28.2026.06.19.06.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jun 2026 06:54:55 -0700 (PDT)
Date: Fri, 19 Jun 2026 15:54:54 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <ajVKBsanqx_2Js4b@monoceros>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
 <20260610175455.19006-5-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260610175455.19006-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_065458_639677_EBDE4884 
X-CRM114-Status: UNSURE (   9.55  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============2087556530590120139=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2087556530590120139==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fqdmbuvony2rmfoy"
Content-Disposition: inline


--fqdmbuvony2rmfoy
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH V11 4/9] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
MIME-Version: 1.0

Hello,

On Wed, Jun 10, 2026 at 12:54:48PM -0500, Chris Morgan wrote:
> +static const struct spi_device_id inv_icm42607_spi_id_table[] = {
> +	{
> +		.name = "icm42607",
> +		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data
> +	}, {
> +		.name = "icm42607p",
> +		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data
> +	},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(spi, inv_icm42607_spi_id_table);

Missing comma after the .driver_data lines.

Best regards
Uwe

--fqdmbuvony2rmfoy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmo1SisACgkQj4D7WH0S
/k4xngf5AfHOcRigvBqAnsXwv0DuvWRHWEyTHKoVr+MdoJvfw32l9h+n9PyP5GJ0
bQaTazLaUF7bwmmz7OyOXjjAnfgoDG87Aljxk6+ahdxg/pk69KY3jntHRlQsDiJ1
eibfV/XzjGdZ2VfKRPYVRja3Fw8h+3N1nrDDGM5sahOnBHca8nIoxvYbyid4ELmT
Hxr032EqX+p9Ul+wfojNFYGI563rjHf3l3KxPmb7REndTAhYCBIlyD6nbmLp/iHT
iyjkBkMbyQlgiVyRFGtruSO6J02aX+9w+0/YIbG1m5+WYXK87W93DroIeipJI7+O
LmshblDilFCetr1eijawAtkueNnNhg==
=Yazu
-----END PGP SIGNATURE-----

--fqdmbuvony2rmfoy--


--===============2087556530590120139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2087556530590120139==--

