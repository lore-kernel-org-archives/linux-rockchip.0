Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47813C04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 13:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTdFkD+M4U3waRfbR1fXNFsH2soP+ji90VxrhbCAS8o=; b=rJW4RsDE04b1qMJdI919Qnjkw+
	FZNa1qY0dwRvzGeT2SRqIxcfbTY+ZW/RkfuHktPREgKc9983zuHuicxA8pbrqXXLCKQRel3N7CPTX
	pwAm4kSOh5nP5fhRZoQ03UfPGtrUgDv4uShJp/8smtIMFuxst3Ss5v30l/JY9I6PHg+1194jKsHRL
	nAMMFLoE0SjQJw+pee1K6NKbNDZ/megFW7/vTFAY5igWtmrx5TylNZrdTv/QaeUuKH+HGmwRIcj5a
	I0lZdEKTxl2/BxCcikSM3VsAh/yzZ0S+j/ixV9WA0nZbkhRWa4Mw6wCRv9319aJNpQD/jAQTc1mVG
	Y+Dm+koQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXYa-00Gb3t-DP; Wed, 28 Sep 2022 13:57:00 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odXYX-00Gb2c-Re
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 13:56:59 +0000
Received: by mail-ej1-x632.google.com with SMTP id nb11so27302483ejc.5
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 06:56:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=NITJHdTB+Lv4ZdxlNq2e36da3EEH3SEz+wsBZBap0Ko=;
        b=cBvA7vpvD6VLKdgMy+ReK73i0ixVjH+NHqnLvjhsoLCDcuJ7j4bGpy992C8ogu24By
         D0PIYl3X/rb4swv7e7mHlN4hOdgCcl6rlPHiYMcKkcGGVX2DnqEINsBb/85UXkVhD24J
         iEGPeyIN6uRJJ0nyz+yaJZCLFejm0v/+UmeDQ0fTWIYJkpS305dVmK1o/3mLggEOKofN
         9ro5lrW7iOG6Av6gjuH2oOHfw5ajIpgvK1kyxuoSs3fMo6GSk55EQqHN8k5shI3HBzjO
         twCzytqBR/7i0tgdJ/btM1DNE795aQHtuiUL0C89HinhW0lVLqAPw3YDfUHkiMUdqEmm
         iazw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=NITJHdTB+Lv4ZdxlNq2e36da3EEH3SEz+wsBZBap0Ko=;
        b=8Beg9p3hmR1Fn/U32t6P+MHmcIUuszV7NT93opt2KSdQcwXUL1zeeKqMEDJ3glQOaN
         pNoxDOfnKMlCXx+yMFhWVNZ7X3bq0tdcZ4OP82CMKlgF0A6ID9MtSl48DgI7ugQffYxn
         NBWhYEFhMXrcq9vDwwIQ6f1fO8ke3p6xZegDi50Cui3XRQYLXCeoZzChmUV2xZm8Fyzg
         AzBuAquytLxV1WXhodw7l084tvGHUsolrafYjMBS9/fEtesGDwV9qMhhpLYLYl6p+djy
         JOgdKHVHdvTiU1haw0lE7sHMonuw2MRRw3imN+8Lq7teIZAHJ/cqksVHtZLlzLp3iFvQ
         2UaQ==
X-Gm-Message-State: ACrzQf2isKl4Jb95er8PKD4Ub3mK5+ER36UNIIBxTuh+/oyiS++zeVQl
	7Hl7rAZ6QnPvld+aU3gKzxo=
X-Google-Smtp-Source: AMsMyM662loIzkObdq2jJvod/cYYA6lPcCmR5Y4oNGQxA1V5Wnd/QHbrmOdLeKgCTb+qlP08nQZCGQ==
X-Received: by 2002:a17:906:9bd3:b0:778:c8e0:fcee with SMTP id de19-20020a1709069bd300b00778c8e0fceemr27979332ejc.275.1664373414890;
        Wed, 28 Sep 2022 06:56:54 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id kv12-20020a17090778cc00b0072af4af2f46sm2436452ejc.74.2022.09.28.06.56.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 06:56:53 -0700 (PDT)
Date: Wed, 28 Sep 2022 15:56:52 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, linux-pwm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Message-ID: <YzRSpGwUQIFT2A3g@orome>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
 <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
 <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
 <YzQ0jTmJCBwV+x2y@orome>
 <20220928130634.x5cfkwegwgqer2xx@mercury.elektranox.org>
MIME-Version: 1.0
In-Reply-To: <20220928130634.x5cfkwegwgqer2xx@mercury.elektranox.org>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_065657_927312_F39F85B5 
X-CRM114-Status: GOOD (  36.13  )
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
Content-Type: multipart/mixed; boundary="===============8348673709867019336=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8348673709867019336==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KB+NSNt/SxmW23eH"
Content-Disposition: inline


--KB+NSNt/SxmW23eH
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 28, 2022 at 03:06:34PM +0200, Sebastian Reichel wrote:
> Hi,
>=20
> On Wed, Sep 28, 2022 at 01:48:29PM +0200, Thierry Reding wrote:
> > On Tue, Sep 13, 2022 at 04:16:01PM +0200, Sebastian Reichel wrote:
> > > Hi,
> > >=20
> > > On Tue, Sep 13, 2022 at 11:12:02AM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > > > Hello Rob,
> > > >=20
> > > > On Thu, Sep 01, 2022 at 02:14:55PM -0500, Rob Herring wrote:
> > > > > On Thu, 01 Sep 2022 15:55:23 +0200, Sebastian Reichel wrote:
> > > > > > Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> > > > > > on a rk3588 platform.
> > > > > >=20
> > > > > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.c=
om>
> > > > > > ---
> > > > > > No driver changes required.
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
> > > > > >  1 file changed, 1 insertion(+)
> > > > > >=20
> > > > >=20
> > > > > Running 'make dtbs_check' with the schema in this patch gives the
> > > > > following warnings. Consider if they are expected or the schema is
> > > > > incorrect. These may not be new warnings.
> > > > >=20
> > > > > Note that it is not yet a requirement to have 0 warnings for dtbs=
_check.
> > > > > This will change in the future.
> > > >=20
> > > > Is this a list of *new* warnings, or is the report (somewhat) ortho=
gonal
> > > > to the actual change and you just used the opportunity that someone
> > > > touched the pwm-rockchip binding to point out that there is some cl=
eanup
> > > > to do?
> > > >=20
> > > > > Full log is available here: https://patchwork.ozlabs.org/patch/
> > > >=20
> > > > Hm, that gives me a 404.
> > >=20
> > > This is an existing problem with the rv1108 binding.
> > > The rk3588 does not have pwm interrupts.
> >=20
> > Can somebody go and fix that, then?
>=20
> I assume this will be taken care of with the rk3128 patchset, since
> that is affected anyways:
>=20
> https://lore.kernel.org/linux-pwm/f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gm=
ail.com/

That patch is already acked and I've pulled it in, so better make it a
separate patch.

The point I was trying to make is that somebody needs to fix this,
otherwise the automated checks are not going to be useful. So saying
things like "this is an existing problem and the new compatible is not
affected" is not helpful.

Thierry

--KB+NSNt/SxmW23eH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmM0UqQACgkQ3SOs138+
s6HhJg/9H9mzZqDA/iGGUXTdr3g5Wu3TWv2PholqP+c/mBRjbpoiaZ3nCygx7nwm
u0IqOMwOt3il0WNH4en0R1MQKIDC5c1zHSIHDtUMqb9oJrIQWWimevXWr+/ed3IM
dgV4DCU4O+V6oDroOA2q2z+8lHB9yeCxFc/9jDoYI8kOMxh4HsPmRqQ3BQG1lCjD
xDVTbqeVrmwHzjxqWmtVm3penUvrLDgLpjRFvk3RYj2krrJ5AhmrRwMFBej9PCg1
p3vv+hNKTUZYENe55UqgDw9996HGigM3dnLXDdOjpO/39Xu/Zem12VsE7kbNeY2n
DDDuVvuGA7jiyg6BvB0OnjicNj+2RTyhlVF44hF2SAplCPRFsmrZS5HepZQEIRPb
O3JrH62+YYnwaojIoCJRQfEwFSUiQ3Os0O7HB5yeG0Hr6Zro9VP7GIX8/7KalJRD
6vCtxkxrZiIFgHCPXlEPmys4jRa3HAew6A74nG5eZDnG4+7WaIAFNox+sF2PmbqD
5yG5yE3eovuMixINSmy3la5L533acwGIFHFcGkeudhuN4YCnFCq1MAZ8mVQb0x0V
zHN4XiGc/Z5OrmrYe1h4wKOtE+E2JJatfigoqSDanG7mhGxtZjsZHDYdqTY4kqAc
aDaJN4yX/OvJiTo5LO7mU8c0I78epPaxjql+d2mnDq9W1QhFbfE=
=IwQz
-----END PGP SIGNATURE-----

--KB+NSNt/SxmW23eH--


--===============8348673709867019336==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8348673709867019336==--

