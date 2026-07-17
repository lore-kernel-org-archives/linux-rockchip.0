Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03AA4C44507
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 09:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pGKRuwfi16XlnjFs8EdmHpnrJ7RZ+An1DWpqzOWsboI=; b=U/e2lnKIgTHV9E7RDMvvn9hXFc
	AA6IH4Dm0BsoQA6Pm3bqi0b77+iKUKCF8iZUw08jtfhgK3eRAz5SLe+EhIRa6xdCCczgXFYf4FWMp
	XwRsOFb7wSfjtAu2pgYk19JEXX8kRBoDCspAEI2VzYHbIkOItngovYtJf9URljiOmHOM1PCubqsRz
	QUYn5FNiyorQKfjBRZ0O5i9HzIZ8b3t9y2mJDQP/qfv0fVuMmX/1Z/9AxvjkuF/xz9b3OT0PxbkHx
	FFp06qp0qQMJhfmfoPfJU4L2nYxL53jIorcJrPU4OLgrEOtUxNwwdgtVo4biP99OgenxPQv3AhQQe
	gwUzal1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkeTW-00000001ln2-3mh5;
	Fri, 17 Jul 2026 09:03:18 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkeTT-00000001lm5-3CZR
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 09:03:17 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-493b966dd74so30597995e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Jul 2026 02:03:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1784278994; x=1784883794; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=devex1NxxbO5Ce8hDzE0PrM0NXXbvrKcL0k+gmPGkkk=;
        b=j4oWXYwhSKwHniJxUuMIVZf1cZm8JCcIXw0SoHf7MkQZugjEtU5kXH2B1vNFhysNAX
         7GCEegiANdpQfQg4bkOpjo/wSHJBP5d+eO2Y2QzrZ6EtreFAQ8G1NufSEB51Z8GVMb1U
         7Ns5XapyYj+I84iv0I3JH2czULODLuyJimvToG0Q/dQd9Q9OFMDPq+FbSjRNNOfIMX9T
         2nak9vM6zR5ovc3ttI8feAnVE6Tncg+6NLQ3Sj6QOOXHVuFFv+IdZznISui0iHSDo9Ri
         5fj+toZDIzpWlU8QA9HIVvQ2eEknbKZ7qL22j4gnmGItG9anmCILZLTMJ16Eul7iQmUJ
         mvIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784278994; x=1784883794;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=devex1NxxbO5Ce8hDzE0PrM0NXXbvrKcL0k+gmPGkkk=;
        b=YfVehl/9IRi6fFEZRpNvbCWb93vVUkt89nBp4QbUcdbOEcecAl3bwgaJMs62aThi0X
         8AETG/5cObYohkTRy9uY+AOwi/SA4ZgRJZmyw+5VV2teKV5hzZHEexLzyQVzinpT7oKs
         yjKOQXS+7c89Nqwv+3tGAzsddkNy34e/6cVE3DYd+rQGOKZl+gcwJqT6ab039Q1Svmt6
         OBjk2rj0iDbibRScKYJhYtDvp531oAoQlXA04XknAZhWMMVytNNiTXP7EVOkCZuYzoN4
         07LDn8KBSoLu0YqThjWa9eEC2uiZMm/Sv5NPrvpH8IFfOpx33bD2qLGttFx1CnXYdwwP
         ZLLw==
X-Forwarded-Encrypted: i=1; AHgh+RrXe867IvVdQ99veE7MMG76Ozl0Y/ANuDIjB8GtVt/ZrnG9h2G0o1Stk9KT4is42pKUrsCUdvb9UiT28YYAaw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwNiLDdalqwVPJ9ZiJDwA4zg7ir1mZja2iR+QwSRnySFBDknG0R
	KFZvviHET/agLrJzQstEMs1r1BYZebX2bDC2Pqi0HmJse8oITVGt9LFrbE2zFgOAe+8=
X-Gm-Gg: AfdE7cnzNWUxYPI7U98TnIzX9PVK0c2fMrEy5/hLlFrbx08do0figDgxfQLPS8D2BPO
	igN1uQkBpsexEDp6t7sXAdrjqrhBJhByvU1QD0NnEHubrRufNtv8KmoEawnZWVVkcgrPKuwqIDz
	7Kynm2D+adO9BRQoq7iEmbNpQmqtTouNNdyeGKN0vbaPS6s1LcMBJC1B14dtEmqnP60sGD0WL6E
	T5SHIcpeVf6A7ErTbLGKwDl9Abu6EA0AcxswctiIOUP5/Ll035mdOKQqQHy0dkLFa02zYnjU/hi
	DNLjGclfi0oNVYFWA4sSp/bMDjdBxdYPv+j2gRKtaQWuywXvLDDU4vxkLFCAPxrfGxIzMqAJlJW
	LBVkSzTS1P2oLDmDyGs8GNX0RcSegwdXv5hzOBpWTgEtl958h5u54WjXPkqXbQhZvwap3Tt6O2J
	XoisNYaHmJ81FdEN5l2TCNJlyH2BiKJa2lw5wCyMOzxmAGWnf7fUeYJNHQnHF23hwT6Et1PuiaU
	yyQ
X-Received: by 2002:a7b:c416:0:b0:493:bc92:ef45 with SMTP id 5b1f17b1804b1-4954a50c54dmr12670645e9.24.1784278993613;
        Fri, 17 Jul 2026 02:03:13 -0700 (PDT)
Received: from localhost (p200300f65f47db047d2d8b161e35ab77.dip0.t-ipconnect.de. [2003:f6:5f47:db04:7d2d:8b16:1e35:ab77])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4954a2e850dsm35096125e9.9.2026.07.17.02.03.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jul 2026 02:03:12 -0700 (PDT)
Date: Fri, 17 Jul 2026 11:03:12 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V17 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Message-ID: <alnvV0OwqMtRVmF5@monoceros>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
 <20260716182637.24310-5-macroalpha82@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260716182637.24310-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_020315_823031_3D2CA205 
X-CRM114-Status: UNSURE (   8.85  )
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
Content-Type: multipart/mixed; boundary="===============8800242631448002937=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8800242631448002937==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e324wvcflz4pjyjc"
Content-Disposition: inline


--e324wvcflz4pjyjc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH V17 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
MIME-Version: 1.0

Hello Chris,

On Thu, Jul 16, 2026 at 01:26:31PM -0500, Chris Morgan wrote:
> +#include <linux/mod_devicetable.h>
> [...]
> +#include <linux/spi/spi.h>

Please don't add an include for <linux/mod_devicetable.h>, I'm working
on removing that header. The two device-id structures you need
(of_device_id and spi_device_id) are already provided by
<linux/spi/spi.h>, so you can just remove the include line for
<linux/mod_devicetable.h>.

Best regards
Uwe

--e324wvcflz4pjyjc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpZ780ACgkQj4D7WH0S
/k4xZAgAtfjTKvZT7A4NQhBqkvJ3Oh/IEog67mulCKGQg4I14S3TLgflro4SP/yy
Ok9NOw1Vn3j3SaeaMFYTK5mkJ8Pl3zl8WKMkZwRK0VDFFNM+3RH0T4UdYMzkGGw7
XC0daPY9wUVkAZnnrtimlUmStbsWWa11jGq1yDHeRSypF3U6dBhyEcOFdaC7pnlD
9h5M0F43a/c9H6lRUVWguiN2egwEtvJtzQzQmW+r1+5I4zUanpbR5xP6gGhYcnPz
HF9zOCNiqJV0BiUdzTFh1cFZyHdMTktzpDmWvPm3kmGSetsOtzLp6y2rEXxx6r1w
X8sGDrKRln9uoLX3A9H0jCz8WLXAoQ==
=wy4O
-----END PGP SIGNATURE-----

--e324wvcflz4pjyjc--


--===============8800242631448002937==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8800242631448002937==--

