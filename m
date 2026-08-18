Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597A2C5DF80
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2026 08:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hexg25Ip4W63laRLObVNTJHpaRiYEY/QPB0/x3Pu60w=; b=KrviCB8rd/NPms1pC2Gy7prnLR
	YQ9/0vwHnvSUC/hb6mAehObmt//hzB6Ohw8imKPvnVWwpDDtYsnhj3SxBDkxwUvLfx4i8sgErql+4
	Llh3N7e3yjt7dJPdQNaop6s4kA6fxJA2nrpXNWCO04Q/+i4vCziMRJaPqfW4GjjGIrwRanVLg1utL
	CC934wP+O6KHAwrG/Wj4vCirn1hL9Tsxr6IEh/m9bVc2gqtIMvrdODtNaQAjngoUQMEShB9TGEaaw
	OrUYtivjPO2/KXWJhbX/nZ2FBib2uIEw7OcnqUGnGOVsoMjIKCgXRGciO0SzFMSfp3p8VbNegy5N+
	Bbdq/zYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFf8-00000007YkW-06Ns;
	Tue, 18 Aug 2026 08:59:14 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFf5-00000007Yjs-168g
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Aug 2026 08:59:12 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-49557167508so44293125e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Aug 2026 01:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1787043549; x=1787648349; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=q+Aet+yk5wErYuGPUVzhzsTqySNhCGJLGb9Ej6EWM+c=;
        b=b5OyF6axHLoLj1IdWBfFp+3QbSbvEJWkEDZA/DCbi9BEHslrhBQgTDjyIS46ybI5qN
         Jp0LN9zdc8bcxFTpE9q71f0hYnlwY0ScymjQXnVahx/qL6izNjDUcTMQn2FEmDxw0Syt
         iWxbh5ue4w6+3t/OJ49Wr7I8miJcCxNC4Du08zZUo6bdcZiecstrrJY0Z3OHvVyk3MXf
         Wil6AMoUKJXPZ7jOQ8LZv3FqbmDeAXbvzFR1ZjF+ed8IELQhcstqGOJ4GTBWCndzEDDO
         IkxZENT1Vk3BaGQiEL73mTNUgqgzcXc2DlzUwbCObye7nuLyIsKAjQ9psj4i/m5n2477
         ruKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043549; x=1787648349;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=q+Aet+yk5wErYuGPUVzhzsTqySNhCGJLGb9Ej6EWM+c=;
        b=RSbC9WYmwc3MdV2baO6z4wuSUrea8xYkig3qF1EwTONif4nqVirBYHmtWQedPMAK+T
         rQfVPa/r7ByhAIw6dSonbTMJ2N9Rx8+q9MebqkSatm8UFAhxQXw27UbYj8rI6EpdgrVp
         U0Dx6kXBFkQR5r+B1/I3mMYKjNlBUcd3pF6xnGuLjYEaPOKcuB2byDSfiVqshMHwX2kK
         3tXFf/yYFj85tDP6bnHreRE/SBH6juerY5E90GTATKj73MH1+L1rGEDx7hgheVAGbgS+
         MGdjDE79FjDEmWaH2QKKT2fVJvzL2fzwUPpSWQdaHG6jq/GjOke4xt4WnKPSEZi1gkHL
         7eUA==
X-Forwarded-Encrypted: i=1; AHgh+RqijJi5I7xZ8+pmraeYgaQslaCB5TzR7TPv7xWCu9wXYPSFS9XiHOe4o2G4jDWn9pjc7CRPTpy2WrwR5YpaAg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGNBKvs4Lc54hsCLc9xwMDxA8WYQTpjwMv8ujYOQ7eIJYBHVWm
	W/vkOG8BIoMUl4j317vJICQHHjfKBJmvZj9oqMJp7zkDrKQ230h0IjWfcD9E7yM9PiQ=
X-Gm-Gg: AR+sD11h9kHUZO3CPgkZ5Ya5iB32DZunEbvK4I7uy/De22Yy5c+bFj0dF8gSYgoFliv
	/bWqgieIN3ERc1kRyPwqzCtz8T9M5USFVPAF2D1MiKJNjrE2FF/PA/n30TnNOuVnb9WUa4laOaM
	o1FHKnxAdhCG3j9XMH6/PI8PEK2DzN2tzsh2Z92b1YUjq5kh3/c64TLMMwPQJCzLDYFUDCh8cKQ
	l1naQD12mxvmSfHyaFPNfvWrkpMOzhfks3YNG8/qzK2eryh/F1KiX1NvjYp9M27GGhPhXCO+rDA
	wgVXrPnb7aHd93j0pZH0r8sps1xAZBrz+HLEHD4b/FLtMTCyBykj+VLsTWDS/7mHrFus/yGXI3y
	EYUHDqyOxjaE4I/bnwcRt2KXRkaHpezNbRnHp1xcQ6gbJSsO2zlpUMXH4pNu/8j8UGv2PpDKvXy
	OnJyDUKeHUoHu3HMiBK2KxOlGGl2gEmfuc/cM86AkFpwNqyfeLC8NrlBrIdO+PFUDG8H2vC+nD1
	cEpVNnDbGuqM+VsuRW/QGZNwNMjvkqn+71z+DxWHVLbXS+hck6d
X-Received: by 2002:a05:600c:848e:b0:499:8156:cd3f with SMTP id 5b1f17b1804b1-4999fb3f78bmr112284285e9.8.1787043548729;
        Tue, 18 Aug 2026 01:59:08 -0700 (PDT)
Received: from localhost (p200300f65f01710416869d85a644e839.dip0.t-ipconnect.de. [2003:f6:5f01:7104:1686:9d85:a644:e839])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-49987b278fbsm215087975e9.2.2026.08.18.01.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 01:59:07 -0700 (PDT)
Date: Tue, 18 Aug 2026 10:59:06 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, 
	robin.murphy@arm.com, ulfh@kernel.org, p.zabel@pengutronix.de, ogabbay@kernel.org, 
	zhangqing@rock-chips.com, royalnet026@gmail.com, chaoyi.chen@rock-chips.com, 
	diederik@cknow-tech.com, alchark@flipper.net, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, iommu@lists.linux.dev, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 10/12] accel/rocket: add RK3576 NPU (RKNN) support
Message-ID: <aoQdns-GHS3fg5BJ@monoceros>
References: <20260817113603.1436067-1-gahing@gahingwoo.com>
 <20260817113603.1436067-11-gahing@gahingwoo.com>
MIME-Version: 1.0
In-Reply-To: <20260817113603.1436067-11-gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_015911_309111_1D9DC711 
X-CRM114-Status: GOOD (  11.59  )
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
Content-Type: multipart/mixed; boundary="===============1333050308625192597=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1333050308625192597==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvayaecgmyelikx3"
Content-Disposition: inline


--uvayaecgmyelikx3
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v8 10/12] accel/rocket: add RK3576 NPU (RKNN) support
MIME-Version: 1.0

Hello,

On Mon, Aug 17, 2026 at 11:36:01PM +1200, Jiaxing Hu wrote:
> diff --git a/drivers/accel/rocket/rocket_drv.h b/drivers/accel/rocket/roc=
ket_drv.h
> index 2c673bb99..0096c4ab1 100644
> --- a/drivers/accel/rocket/rocket_drv.h
> +++ b/drivers/accel/rocket/rocket_drv.h
> @@ -6,10 +6,12 @@
> =20
>  #include <drm/drm_mm.h>
>  #include <drm/gpu_scheduler.h>
> +#include <linux/mod_devicetable.h>

Please don't use <linux/mod_devicetable.h> but <linux/device-id/of.h>.

The former is a mixture of many subsystem specifics and thus a
dependency-hog.

Best regards
Uwe

--uvayaecgmyelikx3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmqEHtYACgkQj4D7WH0S
/k4U9gf/aUhrYYFY54POvnsxnelsCZk9pbdIP6pqEh4NpwVQM+NfUIh1SYqcLXIf
NqdrFegte49P8wGlByYbp2BP8P+Vh/KdPn+VPTi15o5ivhF6/lS1s3Smp5hwDS1N
lDMzlLblQBoye2bS2VSkmaaJyzaZEARrJK3GOBpmc8PXGkMOFRFgF+ZgXiyEC91u
E3rOSqRX153lKJWaHX3SH4yO0RUjN22sW6htFUwQZTm4iLRG6IzaP2+BM2cpWnCe
I4RwXW6GaPue9NnC/Bf/659cN68fjK7fUU5JJn80cMtfO47GjXmA3ceX28vIB/rm
WKAMBlhKd47VGV36uZrPNREsoz3v8g==
=ee9u
-----END PGP SIGNATURE-----

--uvayaecgmyelikx3--


--===============1333050308625192597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1333050308625192597==--

