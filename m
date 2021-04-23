Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B110C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 16:53:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0967D60FE6
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 16:53:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0967D60FE6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F8SWY7PU//pmiiseZqmSyBnGRhSNicWqeXLcBbhafM0=; b=AoPn3X5RY1Ywyjm7NXHM5/3Qg
	ZHTq/IT60P6YKlMmFECdRJvQDsr1Ej2UkZuG2O+SRXoItE/W6/0jAPCwsBYnLY2maGshtGMpcRZqq
	nMjtu2t6JxGOv9A13iDS6Bq+i7Zcelvi6gA+x4oCbRVCk5wmHWw7oOAk2PSvP+pYE/NHeajvtul3J
	47jOWX5Pp4Hhr2V3MDjKDC5sJ4NX5fiz1l4Fkyur13rhWtwhlb8Y/cWhMxiaUaJcuFeKEOZK8EVfn
	F8UcaqeetJgVA5+t3P8Gn9jBGZYna1ZwqtaEJmnUXBH6oULwbBic1wfBgfdIt4gjZPB0s8fJKPgAQ
	rffOXKyZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZz39-001vyC-Oh; Fri, 23 Apr 2021 16:53:04 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZz2s-001vxF-GJ; Fri, 23 Apr 2021 16:52:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=jFCniOtGAUvh5tDuIWS7uZa9/8xrAA1r1T8fT2Kl1d8=; b=DEYaShbwktohRTd8VFK75hESNA
 yuJDPJmuCQnCq5OFnTsuSMrlbKpdpaUpAIwtuEXHPCSca/YGJJblUiYgJBB/B7MZpMqKr1nKVVp7O
 JYtt3txXkQvl97FKjeP/NW/6qQpmAVUUrQlOfmyPGML00RBv6IIDDzhAyQ3bqKLLEdH+q5j30TXMg
 L0yLwTIZ+lojlunhd7zlmpmXEvSEN1dz9laL/QR7/tzBNzq0He2fMxAm2iJmRF5cPBxGpg7zIqqxa
 B5NtUeMxwxZ6C96ybuAKSMRnI58WVXnvgiiAqza1E4TGISpX+xLcnFayKunxREafu02M/D+rRtNju
 XKDMHd4w==;
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZz2o-00EZ8K-GM; Fri, 23 Apr 2021 16:52:45 +0000
Received: by mail-ed1-x535.google.com with SMTP id h8so18036557edb.2;
 Fri, 23 Apr 2021 09:52:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=jFCniOtGAUvh5tDuIWS7uZa9/8xrAA1r1T8fT2Kl1d8=;
 b=FjQGgLqAoRAhJDP8bvbuAIWX1fRLtXTbDahJh8lyg9ZwyYqTYQ1JrARnNmgGE1G2fF
 NddJewqq3uVP6kIqIhAVFRXj1BLLalyAk3qquiW/5rFAl7uuyy/UrdEOdKRK/uP/Fov7
 Can6OluAi2QOdBAXmgyWKMDze3WaAF20Y7wlUdt4v8a/kFPqjpfneJQpQEca1vvzXQQ1
 e7D99+zVtTmacVRvTWzKb/tyWzekicGmRNvV/wzHXKSUv4/ASkhoVpvQ25OGiXpblfO3
 LH0NLRkGWpHDLY/8P069PE3KUJLRo+/6SNsQs6Ymw0TZ0kHFX6U7IW5/lEoBLz7D3Ejw
 aD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=jFCniOtGAUvh5tDuIWS7uZa9/8xrAA1r1T8fT2Kl1d8=;
 b=iGyi6fNNoDfbCUhP5LVYvo8QjmrsBF8SEgeNCddyk2qNrnKMVmsNPoZKwYeuvep/s8
 FM0vZ3Vbf18drs0W/US7NFiXPg8JAAr3C7+mG1EReztRR1Uxf2fVT/YGxM0yoZDLlh1L
 ZFjTz0cbZiZ5goHzbKRDPmi4wuxk+dmOKDK0tE8wP/0pB/r1a9ERS+mYDjk2mOAcC9zT
 GxjmyZZZsDsO9RW0cqwrj2a6z/AV9MFjzDh4uTYC+KefSrGYgQelS3jAMY7cDs1Ibxya
 RwGgaBONDjah7SwdoryCiBgvo8NKTRH1TLqviSRDg3l1U/AW8Jo4p8OG5jBf2YG0yer3
 sq3w==
X-Gm-Message-State: AOAM530jACtR3vuQ56BZJa2KZ4uzDexWwc1Lbh2gQSXHN+AeUR43nxwe
 WR31MBRHqD0f0tcaAfIw7FVxIvkrWjU=
X-Google-Smtp-Source: ABdhPJwztJLM5Bl1NlErdY2qO/fU4NaGrY72Dw41ahvzAZi/41DyvMd8wADZX8VGCRAySbgqCt/D9A==
X-Received: by 2002:aa7:c511:: with SMTP id o17mr5452004edq.335.1619196761013; 
 Fri, 23 Apr 2021 09:52:41 -0700 (PDT)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id q16sm5446999edv.61.2021.04.23.09.52.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Apr 2021 09:52:40 -0700 (PDT)
Date: Fri, 23 Apr 2021 18:53:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: pwm: convert pwm-rockchip.txt to YAML
Message-ID: <YIL7ibC/Pojfw3OT@orome.fritz.box>
References: <20210412200155.5316-1-jbx6244@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20210412200155.5316-1-jbx6244@gmail.com>
User-Agent: Mutt/2.0.6 (98f8cb83) (2021-03-06)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_095242_586613_71C98DE7 
X-CRM114-Status: GOOD (  16.39  )
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
Content-Type: multipart/mixed; boundary="===============6975247089768313355=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6975247089768313355==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zQJ8OWk5MsO8Q17F"
Content-Disposition: inline


--zQJ8OWk5MsO8Q17F
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 12, 2021 at 10:01:52PM +0200, Johan Jonker wrote:
> Current dts files with 'pwm' nodes are manually verified.
> In order to automate this process pwm-rockchip.txt
> has to be converted to yaml.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
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
>  .../devicetree/bindings/pwm/pwm-rockchip.txt       | 27 -------
>  .../devicetree/bindings/pwm/pwm-rockchip.yaml      | 88 ++++++++++++++++=
++++++
>  2 files changed, 88 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-rockchip.ya=
ml

All 4 patches applied, thanks.

Thierry

--zQJ8OWk5MsO8Q17F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmCC+4kACgkQ3SOs138+
s6HqWw//ZMveK8MeXwu6wrXBFllrTVKghpCj/TcBnvjT39S+lh/KNUVhkDbki0+A
VliqplxKSCk2ZPcu9FCnEDN0l8NI7TQLRtJ6QGPnAWuEkAIhn9qaS9VBN1yo6Sob
0mSvzRy5iGUN90xYyjYujns3oXe0vIxNZwRO/KBztsg6uis2sN3E6zqvbyPl6Pdt
ll8pY5N+GimqEG5vACKWOpHkVZUp5j/ojfEWfQL/R9S7iVJo1yzoqVLzTyBc2oYx
CiVFo54KNR/WnacrrC+GIpmgnrLbKEh/bswNugXaZ/Umdd2dhxtgGI8hUMgRUqx1
rIpWFHboxGLlqeFQORoxxV3a4ybFcZB1wdTbHyb5XsMyfYxFRqabED9K84JxMxpB
DaxOOBW2jDBiwmJjhWuy2ICE65rtSx6rrGkr4gply7O14A8bllHKrHG6W0DrT2hY
k1l6J5J+RZc+Ivf3NRpfO1a74/80xXKeXi4KSgfIxl/mM9AGKN6yDVEf0e085rau
9kGHvOdjuItr7XeneUz0FuSqdKK/6UwyMU+QohELgJ313zKeX0/gOQME7+AKa/36
4sbGuTXjTXbIjOK5sAk1kR5VLFUcohMVbRfm4c3lI3wjEkrRfPCKnrD0WRy30leq
7vz7Y0Zn3IciHw0ZL77RMip0doXR8wlX+Qazl5TXqLpY/d4BRW8=
=RnDA
-----END PGP SIGNATURE-----

--zQJ8OWk5MsO8Q17F--


--===============6975247089768313355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6975247089768313355==--

