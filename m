Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65BFC2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 11:41:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3115120663
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 11:41:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dJHBjpVZ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c3KyNeHQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3115120663
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ojq2FHPSrW3izhk43DhOOduii6ue/xTTqTr9SRHxaok=; b=dJHBjpVZ9C/E9/rOUK6CHu99n
	WxjIJeDQBLgspGtkcS5P9Hxcs4P1kYdEgbJ2yOeXfBHZ20u7vMoFoIEXKnaC8A9zb200G0b9jjSM9
	ydYS5aKo8/ItbYdUKjQDAOsSfZ+Kfn5Z/rXzuZrkRu6RTdh9yMVXxbhGDaUg+HHjmELVPVGV96rtw
	FiJHzreKIbBFBtulvKJFFvNV29cjBMOg0/M/ERyLB+qiEs9dtXxwhiXyDEzoVuDHTQ7XherIqDaUi
	ilaStJgpcRuq1AReCWdhm21ed3asnatAKik54MaCurJKegxIwyTPt9flHWda3yEDhffSgzQar4Yz+
	DfM6eFILA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL39W-0006wH-Cr; Wed, 23 Sep 2020 11:41:38 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL39S-0006vl-Ns; Wed, 23 Sep 2020 11:41:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id e2so639135wme.1;
 Wed, 23 Sep 2020 04:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=p4mihPRoQCANp4qVuEkbYRoFAh2NqYQy3VWqKlKO1vI=;
 b=c3KyNeHQUzvRPGV9gSMHgJBgCdcOJVCIicxTeiug9tMVL6LDnGahm6kQL+UdN1nSKa
 wlAwr5aytLR91YbO9Nui/nTvDksXG3tM4oEf/1WQe9XFESby7odQm/XUheLPn7S+SdEL
 7UwlAxOOr+KYUS0Haq6h/GEB6LuJHfuFQ8dI19/i/2cadrvF0oAgd2s92UBoJwPFLIsg
 QzwxeRwx7Iyd4gblp0gyNVnxPQa8+8VS1HbBouFgFr6j8IxDZ/jSmPLaOBfw0zZbOeqr
 NyriY5RhWXEGsv8low+SI/QAM9j3VaoEmRQ9gnTvMvv9u5eGhVObPiUAql0/Gv4jR4ku
 7JwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=p4mihPRoQCANp4qVuEkbYRoFAh2NqYQy3VWqKlKO1vI=;
 b=JMTDGhZBXdTOG9TA9bdh7mMde14eg42BotSGm+t9hJekBdOmaa4LlEr0dOvfAHblLZ
 vRQkmdKETtMlpeo+KWH+jCfmKh7kMOsS2TjoOUz+uiU+r0G/Tcb0UL6oFaZZaFcE2jMM
 NInuWB7aHLXmqi1dY5LrBLQgNIqOArmHnoPlNBFJff1V0tCsCV8VQxzb2jg/L6gG4xmS
 N7m31rjroceqswHjTH4b+Yc7+1geEli5pmrfmeqgjkiDDOW36a9Fe9WPJ4NVi4MCDw65
 vO2+YokpxSTjHPEFmNX4dzmq4SKrfwmg5sHKxrPG8kF8NkIYLEhTt1H6UJkYXiIIYcvZ
 bUng==
X-Gm-Message-State: AOAM532XuZt9RVL1Q75OyL4aHtu01cM8iAuFYZyzgXmXVh5v+PHzBA6T
 Wt4ApRkFYZuzAssQN3RJAQs=
X-Google-Smtp-Source: ABdhPJw58cU4aJogL+numudSDKYtNdPm8z83Q3R0F0oTiHb08B9pS4k+5R6LWmDN0C5XZ1wYJUBX5w==
X-Received: by 2002:a1c:7c13:: with SMTP id x19mr6234350wmc.45.1600861292623; 
 Wed, 23 Sep 2020 04:41:32 -0700 (PDT)
Received: from localhost ([217.111.27.204])
 by smtp.gmail.com with ESMTPSA id p1sm9950378wma.0.2020.09.23.04.41.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Sep 2020 04:41:31 -0700 (PDT)
Date: Wed, 23 Sep 2020 13:41:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH v2] pwm: rockchip: Keep enabled PWMs running while probing
Message-ID: <20200923114129.GB1846003@ulmo>
References: <20200919193306.1023-1-simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <20200919193306.1023-1-simon@simonsouth.net>
User-Agent: Mutt/1.14.7 (2020-08-29)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_074134_785212_02FFDFCE 
X-CRM114-Status: GOOD (  17.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2493284631600092387=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2493284631600092387==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oLBj+sq0vYjzfsbl"
Content-Disposition: inline


--oLBj+sq0vYjzfsbl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 19, 2020 at 03:33:06PM -0400, Simon South wrote:
> Following commit cfc4c189bc70 ("pwm: Read initial hardware state at
> request time") the Rockchip PWM driver can no longer assume a device's
> pwm_state structure has been populated after a call to pwmchip_add().
> Consequently, the test in rockchip_pwm_probe() intended to prevent the
> driver from stopping PWM devices already enabled by the bootloader no
> longer functions reliably and this can lead to the kernel hanging
> during startup, particularly on devices like the Pinebook Pro that use
> a PWM-controlled backlight for their display.
>=20
> Avoid this by querying the device directly at probe time to determine
> whether or not it is enabled.
>=20
> Fixes: cfc4c189bc70 ("pwm: Read initial hardware state at request time")
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>  drivers/pwm/pwm-rockchip.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks.

Thierry

--oLBj+sq0vYjzfsbl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl9rNGkACgkQ3SOs138+
s6H5vg/7BLq+yp7GbrJXifMXvsI3VsHdW7jTyQZmcOK7uKngyYnNZyzUHdzPf4gA
FSmVLNwUtKkwFZ7nEdkoJt3htRj365B6AehpphCsK75q1WvojkWpscAeY82GzYTr
2XCcFYMi2akQFKufsTZdgUwNLHirHv4Ezp/Q32pA3jZe354yaOqo4c/qUsSyr11a
aarWMneooGRbEndssSFU9ejCOGSGfg8w1i/4glh3tzttwra1wt9TlV5vemjvhd3/
GKEW0vQEM8cRWz78IQ8z1Gufk/4NnJWldfH3Flz0NLlGRUQNCoHvcflMIu2Tlag5
zamhTqXuzJNGndwxz2eR7jIHXeu/rxzssJhtyMgiotootLpNkIKpJKczlJaaN9Sv
+lE5Ut3SUwf1p5B2E5ckfeurzpOn2HoeH7RxC2YyAUMK6u7m9Wd3p5s9ogwYPIhD
9IMDJHy8JL7pnjlVKY71DsX+jHAOkGbZ621Jh2PbAAD7HsJGu+H2iaE4YH5gdy0l
mbl9KRujfdxxAeP4rPYm6DIjgx07lWg4emp9ZT6zoT8B1mujoHF3P2RNzhwWzShu
eNCMo8epcAL5WM/UwKleEfh92RvNakmdtuSJ3QfhJ3IG0vX9uieXHYbYoCRumZl/
OMHSprXljJGc6mS/M7FEvWfW99hkA9OUml9xJb60nPdINtwBuF0=
=f+D5
-----END PGP SIGNATURE-----

--oLBj+sq0vYjzfsbl--


--===============2493284631600092387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2493284631600092387==--

