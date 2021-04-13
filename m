Return-Path: <SRS0=BK0I=JK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F36C9C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:22:04 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B9E2610CA
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Apr 2021 15:22:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B9E2610CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tEEia1x9z9Epnhus5nhBtdDGjhl5Uwhyfy5kmRAOlLI=; b=M5uwEs8HJYZLreryJxYIIOHyA
	TPjBnjcUWPAGV++1YTfXPWgSOtdHdQyDo8vGkkPfz0N+aExotr6rziN7biVYi8Sr1XCk7OEyChSJ5
	6b6S3KFOrE23lbe7QTEDdBPzbP+LoNvxHxc00UR3SOYTiCexN4y79Jo1QKKcKHFPooWTbEHR6DfLQ
	QWJaV5Qotc1d00r9U2RAC9K8ep6Vk94UGA4Qns2nsVfK+L49ZOWgy+zNBSTOGxqA4JSZWlZf9yxF3
	FbEX55x23vt6frHKX0ihhbZiYSKGZ4BRPrrH8hZv39jlfpDI6xCoBGX9ey1HAhWRL9RMeTZK4Pg2O
	2MF6mT64A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWKrY-009d3m-MW; Tue, 13 Apr 2021 15:22:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKrG-009d0a-7z; Tue, 13 Apr 2021 15:21:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=wvbsjDeEfoTWhufFQPq2eN6uA9+l1g6dk9+RKZ4L6GQ=; b=KfXc+oBmAnVg90tTVWIxPFySuO
 RRzas2eYUr+17S9fSLSzPGpzC8/8W8PEBRFgJX3kD0LwJtqEYhPtWZ+ezS1Tml9adISvgoXq8B4O0
 NnEgJ9rnYvJNWn6awiaTyTzXHkWiK9QjndKSUZy3UFrp2mPHooItjnxiyG/6cmj4cshDwhDVlyTgW
 QCGiJG/gj6Yo4bX4HTbkwfv/qMFd8cIJthj8IRgE6Xr+gXxXegvHkFvpXDh6E6ACfy9DreUiFfgvR
 4+/mW09xhl+UFh7EL2nwSRhRPMa/Ab8AW9Z1DOr5dqnANMlL3Vd+pndDs9ddSFwBUz2j/rMshOopE
 niEJQEKg==;
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWKrD-0078b0-Jr; Tue, 13 Apr 2021 15:21:40 +0000
Received: by mail-ej1-x632.google.com with SMTP id mh2so5006482ejb.8;
 Tue, 13 Apr 2021 08:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wvbsjDeEfoTWhufFQPq2eN6uA9+l1g6dk9+RKZ4L6GQ=;
 b=UqxNfWhTNKnA82WzHIc5GDXXEfEB8N6TyZSzfiG6HymVxX7aqr9WdTyFqNC8A+Speq
 KXkOU3W34B6Dp4yQaCE60bmpRDlvAxyertWxs8dVBOI+Jf1iWmG8yHzqWZVoN2Cj2Hc6
 N+eCCuR3833yiTUbTExQpC6XElN9Y41mG+PK6odJFOKY22ofaCKlO5d4zyiRRJyE8Mhr
 /1crW6vxfkRYSZP431EEDJkyPyb9Fagy+VBuS2rIxXNCbi7sdOLFug0dUHf+/WGDfc9T
 UN8aE4Gqllci+f4+tnyYuA7lISwjvYSSO9bWli8PjoWuX/nE0M1iCKzuLRbkLSGSYMRN
 JJlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wvbsjDeEfoTWhufFQPq2eN6uA9+l1g6dk9+RKZ4L6GQ=;
 b=UIWW4w4mxXRpsM3CHDIKr9ptgDywFf3QwJVQ10TjPV9kpDG2B6uS0BlUKF4UimHc+b
 d0fjygl+aSaNQh7sN5MemqXlFKQAHpkMqKq64gWV7c3s/kb+hTDYTb0vVZNySnV5TS+Q
 x9ssa/5kgDf1tVyGiDpoeE8wJX70xeU/8ZBYy+MPhRqNDzZVqO2NPwlsP1mpQ9XGfDT2
 V+yM2r2b0djjEvwEYvED40ufBwFzaR0qR/5EZY8mSjrVVx1/iOyYy9EwfZXW3y2x4W0+
 YZVeLOxWp6oNaqgB2A42rLQSpe4Hc2yMBNo23Dnri5pXTlMFNTLt96Fi1beFTXAw6s4c
 S3Sg==
X-Gm-Message-State: AOAM530uvQfAW+U25zF8QRl7lPW57W+tCeLyqN56sDbn9RVYIs+5vW0r
 XgPb9b8sJujDLn1PpqgujkA=
X-Google-Smtp-Source: ABdhPJzESd66N75pQj5J9ADwovRTRCyUJiyF4dmRuIV7i5fV7fbM2KXMBtILXKdcsbsyZh6UZmI2jg==
X-Received: by 2002:a17:907:e8a:: with SMTP id
 ho10mr13119638ejc.110.1618327298123; 
 Tue, 13 Apr 2021 08:21:38 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id q12sm8365263ejy.91.2021.04.13.08.21.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 08:21:35 -0700 (PDT)
Date: Tue, 13 Apr 2021 17:22:16 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Message-ID: <YHW3KFN8zCZBAhS3@orome.fritz.box>
References: <20210412200155.5316-1-jbx6244@gmail.com>
 <20210412200155.5316-2-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210412200155.5316-2-jbx6244@gmail.com>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_082139_681929_F0D67719 
X-CRM114-Status: GOOD (  20.63  )
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
Content-Type: multipart/mixed; boundary="===============0014229543478013962=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0014229543478013962==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Br5dDdxMYaQS0SvZ"
Content-Disposition: inline


--Br5dDdxMYaQS0SvZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 12, 2021 at 10:01:53PM +0200, Johan Jonker wrote:
> The compatible strings below are already in use in the Rockchip
> dtsi files, but were somehow never added to a document, so add
>=20
> "rockchip,rk3328-pwm"
>=20
> "rockchip,rk3036-pwm", "rockchip,rk2928-pwm"
>=20
> "rockchip,rk3368-pwm", "rockchip,rk3288-pwm"
> "rockchip,rk3399-pwm", "rockchip,rk3288-pwm"
>=20
> "rockchip,px30-pwm", "rockchip,rk3328-pwm"
> "rockchip,rk3308-pwm", "rockchip,rk3328-pwm"
>=20
> for pwm nodes to pwm-rockchip.yaml.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Note for rob+dt:
> A tag was not added on purpose, because by the change of schema
> for clocks and clock-names I add "rockchip,rk3328-pwm" to
> the "if:", so strictly speaking V1 and (V2) V3 will not be the same.
> Please have a look at it again.
>=20
> For some SoC nodes this patch serie generates notifications
> for undocumented "interrupts" properties shared between
> PWM channels till there is consensus of what to do with it or
> someone makes a solution for the whole PWM block.
>=20
> Changed V3:
>   fix mistake with compatibles introduced in V2
> Changed V2:
>   changed schema for clocks and clock-names
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

Acked-by: Thierry Reding <thierry.reding@gmail.com>

--Br5dDdxMYaQS0SvZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmB1tygACgkQ3SOs138+
s6Exkw//W7Ns3sxaY7TE0CKgghe3adkn7JPz+/mZQq0UGlGSbEGz4URJi8vu7B9o
imzT131spMO5DgpQ1GOdy34fNXDzPPIr/wnCug4XoylyGrrPyvNEGNafmL5mBV8P
Yhsz2Hygfd9g/JzudisGaoNr5+tDHdj4HIOnO/MfqehzjLoHCojGCdSJ1cK4TnFn
cf5mD0wVpWotutxUmEXM4RghqbWK2spHqQS/+Zvgcme+YUyy+0VcWrXMexVuDyj9
i5RTCi4cIlYTSf3glVRNA7FKaBzuOiE8BCEwXUu3MBK6/WBgdGF+bRnNQX/MfRGh
56q/dI0QvuAc7+cugjUzvSN9pvWTlaxrGJPtRbvrrPUW29n1XAT9tmFHV2arTonE
3zcizATvTBZJq3P1jl1r3icWaWZVHCNQ+MFpxcFbOzPHlO1DK9KWXfUEXqmF9y9b
XwKy2tr3QdjKR22j67DAi8VZuX64iMt8Y1pYFXr7L3Arzawbd+pZxW+X91bjkKgO
eLuwXOjadWBFX48A1WHDeU8XNZTE5Zc1hAzdW01/e7fSIWNXRIsehJI5BbRb/5IK
OcwdSRbJYcq6HySeM4gXjF8HfZt1SZBo8CRQKTrp/Tvl8vWGSAhMPtoGfIVjMSCN
jJ9Hzk0+/AgGz16GVBqmzl0rM2ZNGnRrU0WDiyl2nY5CIBZEeaU=
=hFd8
-----END PGP SIGNATURE-----

--Br5dDdxMYaQS0SvZ--


--===============0014229543478013962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0014229543478013962==--

