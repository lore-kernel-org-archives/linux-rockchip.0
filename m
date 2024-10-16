Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CC7D1AD38
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 09:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gv1Hy1L7pnF0fmHipAgxkBVSGpysgDZRIWOgDuOdcU0=; b=YBtUeHsBFUG0YGxE7I7OKITLyE
	h1qxlyHOHAC6P1xre9tBJaglIU1qiBlW3luIbBvXOFlXNtFvNrj67QDm+vP5K5qzBpSdglF4D2Wgz
	JLEFq9M+WUEW2re8AlhqIi+/I+E8A7PRRlb1593vMAT0HfvkJNMHnJosP+i8/Tj/uJfLrpaIggIJe
	UNz421ZwMd5x9nn96gus2oF3LCPVqGfDoE7i3yy018muSIV+2vXNfMhd9CORZs50EupfjsLgMwYHY
	Vh58lLXZSg2AqVjymkMUqzrOuPxDHZm+5W1vcbi79LwTWQuf/u05wlnHy/Sq/nQvyQfpi4+wfqKnF
	nHjn890g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t10PG-0000000BFK7-3M7w;
	Wed, 16 Oct 2024 09:33:26 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t10Jf-0000000BELS-44AF
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 09:27:42 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a99e3b3a411so120100466b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2024 02:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729070858; x=1729675658; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xkTWYiGZQ+keiIE1fDd/NGylZkJ/o8QzKwt0lHenVNU=;
        b=W3DWaIMpt/HqLVWaHQZcNHbgRjpPFuzP597BQ/pWcSUaiso8HR7yTtsAYgqMnGFxHV
         4UGW0jLAXLb4XYeH6AAc7/OuItzWbLoEAAI/JV4vxaKSWBWcf1q0l56rScGzyjkn6O3x
         lK7LDg1QNgJI1A1nE2Ta0t4CAqsU5oXtHdcONBbg+Mse4YhC9sJEGBE74HkZdfi3k5xc
         GrQ9Hm5BDu3p8u7z0r0grbhVIbabolPPJQB/huQyhD8J24ImV2MTbHJjfoDfvugeL5mz
         zEw/A+FCD6ZCZsysC8PSQEKDeOxgAo/Za2HKHWjKf6tFbdr+FDPDLVZK+ghCnMBQo8G2
         u5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729070858; x=1729675658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkTWYiGZQ+keiIE1fDd/NGylZkJ/o8QzKwt0lHenVNU=;
        b=aaM//SsAeVI7ShOhMycUmyJvcIgosRnQ3+Km2ruqqBgkQDFF8eXz7FQFaNuubRUqON
         8Ee8uVzrbhLC71RCh4XzYRvENQnB3FPdndSgb35ddtmMY+/RlCMAVU/54ImTqIguDMac
         iRv1WZSpJSsiIBPShl3O8bhzJuHMqKBRTAjCCSKI9JU9llia1eipLhvBtdkAThIEq3iZ
         vm7NEzFb6jHjofRolDLhrfM/rKoXx7d3vOaNh4bjJqyuO6rkv1GnVvNnmrBlpYWLSRCW
         1bPuTW+nUCi43Tqn+MBmds4krTWMoaXGN3fn0uWcONeMDANfCD2X32f0TxlFwk8+dQHO
         ggVg==
X-Forwarded-Encrypted: i=1; AJvYcCUsw0g1KNSoxSS5o4BC7Kg7xJBBcRtqnn6tU89DTgAzSXKPlnBO66PFrSTfm4PQCHHSc0g+UknrRVQr2xFBpg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxj5YUCqBFZW10ZyhnHNHagZsIxoI4NgTB9GaKYJdED7awEYFRx
	ahJC5YF3Z7UAyT67fKck4OC1YJIIJtuNN3CpunW65QYOVA07cR9dSgfPPG1ifaI=
X-Google-Smtp-Source: AGHT+IHsN4Gvg9FXmit1XET1Omd/eAaw9Bqv6hVqc+m9T0ybnBbiCdCdwTlYq6+4D4QNBZh5AvCM+Q==
X-Received: by 2002:a17:907:7da6:b0:a99:5687:496 with SMTP id a640c23a62f3a-a9a3370fc51mr241819266b.30.1729070857783;
        Wed, 16 Oct 2024 02:27:37 -0700 (PDT)
Received: from localhost (p200300f65f19e3002f38cf427133ca7b.dip0.t-ipconnect.de. [2003:f6:5f19:e300:2f38:cf42:7133:ca7b])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a29844cc9sm160331866b.182.2024.10.16.02.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 02:27:37 -0700 (PDT)
Date: Wed, 16 Oct 2024 11:27:36 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>, 
	Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v9 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Message-ID: <3wjk75z2ozz2lg7qx6by3phjoe2brov6rz4jezpowrreedjua6@wt2js5hzqqdi>
References: <20241010-b4-rk3588-bridge-upstream-v9-0-68c47dde0410@collabora.com>
 <20241010-b4-rk3588-bridge-upstream-v9-3-68c47dde0410@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20241010-b4-rk3588-bridge-upstream-v9-3-68c47dde0410@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_022740_039555_74F890BD 
X-CRM114-Status: GOOD (  10.72  )
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
Content-Type: multipart/mixed; boundary="===============5605369709792056354=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5605369709792056354==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kxr7txtbzz25ydaa"
Content-Disposition: inline


--kxr7txtbzz25ydaa
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v9 3/3] drm/rockchip: Add basic RK3588 HDMI output support
MIME-Version: 1.0

Hello,

On Thu, Oct 10, 2024 at 01:40:51AM +0300, Cristian Ciocaltea wrote:
> +struct platform_driver dw_hdmi_qp_rockchip_pltfm_driver = {
> +	.probe  = dw_hdmi_qp_rockchip_probe,
> +	.remove_new = dw_hdmi_qp_rockchip_remove,
> +	.driver = {
> +		.name = "dwhdmiqp-rockchip",
> +		.pm = &dw_hdmi_qp_rockchip_pm,
> +		.of_match_table = dw_hdmi_qp_rockchip_dt_ids,
> +	},
> +};

After commit 0edb555a65d1 ("platform: Make platform_driver::remove()
return void") .remove() is (again) the right callback to implement for
platform drivers. Please just drop "_new".

Additionally I suggest to drop one of the white spaces between .probe
and =.

Best regards
Uwe

--kxr7txtbzz25ydaa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcPhwUACgkQj4D7WH0S
/k711wf8DoNI0nAJrwWSlZ6jh7cUNs9hFjDKDxrrmJWOmI/UNFwavdEYgYH50Gwd
0g2uYmZW7C9N3fJlT4+gYj9ReVz3+SEPGgrgp8NFdoyAvrqx1pbJ9WRX9Oo5X48J
jEm0/qX2zpy6mUD9EMbU8SbckuNB7WtlsKF/ruOFztTR+ieEe3WEpmRVZfBrWUyH
OMC2rev1TYtyQT3hN0fG8lbee3IMRjopaFXRNZEq9wHLYgienLj6eheiEm51gb5x
PeXUp+b+wQnUTWOoX1POE07IjfK0oUDvhOLIP74zGPwXeOCpMidZQeHjTtIq2gYM
d/mVwN0enReCIbhebaBqmfP4cd3vTQ==
=REG3
-----END PGP SIGNATURE-----

--kxr7txtbzz25ydaa--


--===============5605369709792056354==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5605369709792056354==--

