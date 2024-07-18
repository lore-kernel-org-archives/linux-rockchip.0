Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BE2EC3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 11:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pDTlJ2mcWhJm1ElZV+QkYD7CGwEgsNtNAkesfIL+JVA=; b=ZtgjWYHJavfc559vk+ndrOvLGL
	tvk+NCSds1Ud5LzlX19WsYfg17tnpmfxmzUS4V3795R5nh+4OY6AfPYq8P+MgAul90MOcNSQwT+m3
	0e6Mym6tNCy5tuawM4K4ffVetgU7Jw3Ffxwtn8avL0Hk5d2+hd44W0sFxOCCZ8R5vWZT8fynV5r6c
	rOUmE+1csRoMq78OygaZ+/GMkEr9bwbdzDKyLYMAS6O9xhil0a2YCH5H0uzuARu3qu/ApKIB+5ja2
	L9CR4Wx2/btBOuJ7dcMriBIVNWO2AjrY7UJwSNP7wJ75EzVdFi5y4KwMHUiZxhZxzFDWjjT281uUd
	qHqQ+mxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUPfR-0000000GtJm-1E0q;
	Thu, 18 Jul 2024 11:51:25 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUPf3-0000000GtFf-3hZg
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jul 2024 11:51:04 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a77e5929033so78299066b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Jul 2024 04:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721303460; x=1721908260; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vD3tfVsWGs13fLKirLM+QMolfsmQJwO7QPEf2sxf1ks=;
        b=NrA8RnUKBv8/oOo8OOP2+QdwsTsygOmQlEPG4bH2vV8yQ9EK8ej2ry4s9JfCfOU4d9
         QrXvfvdBY7rp3BtRFmsz+Vge3c0FmefDvhfMlgL4Cn7PhlfAqPJY1lopIKgxYzPpCsRv
         LY3RnL6m1xRmbTpWKKpiQ3uPkR4q2tOfufqXdz/GqucUtr91ne4Rcm1pDkSOOcpi/FYR
         xBEfYWG34NKpaKbgZwc2RU4gJIwpjeu7BTw73lL3MmpkXTYTJI9jj8DemCEWiWLV0PY6
         BAoyGIP7J9CNUSCUSk4Bg0C4JGIWNu/JKrrneG1Kju/O2Z8VgH8ebOIk47u+LapaGoie
         PJOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721303460; x=1721908260;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vD3tfVsWGs13fLKirLM+QMolfsmQJwO7QPEf2sxf1ks=;
        b=TgR3vXzm0d/wbUlCMJ1cDDAbR3IcuQ4rZ5ROrpu60g3fAsMMrA4YWVVgcAx1iCdYP3
         WOg9/OHYts+TRJFCN6uKtfEIjtbqKv8jUBfE7GV7JU9E6KBYR2Wgh5+lu34lWmqBTo9/
         7DBPvyeEXhMt9wmL9wl6lQ3dVhoF9hvBkewPgQohIiP2BiPfDiYcFsUKpcVO/jz7YbgH
         dowhTAveryOfbN6Pjyi1pJmS6R0suDZb+hsLdiS6BOdzL/59tZn43leqNTTZd1C/UB5V
         NvIZWU4Xm4Uhh44zejrzztvVMgJ6QKV8uCIBbuTNC8isO1SstU+BNv5hizYl+A/XeR0C
         QjKg==
X-Forwarded-Encrypted: i=1; AJvYcCXyjNB82ug1GZufBqanK00F3c0X3HMEExcI2xAb9n39Xlaz/a0Beisl0Ju5tDbU3aaTE2bRo5jp7mdB/n4gyz7+B/mrBEaKCUiMZA+ni06qvLuE
X-Gm-Message-State: AOJu0YxsOMmzs47VyksUeFEybcrr1mtNyX3VeJE3WSWqK43q32AmJKkM
	xRm9qCM/btPXCCnahBUez1Rs4PyGVlP6a9HudDElFMaw1tDtB4gHG9+LIbbviRI=
X-Google-Smtp-Source: AGHT+IFwXIStMSuamLLszfwue44fiFsyS5r1vkhJKc/V6fjTvStINXv3htkE7bc+brSBhJS1PmJGBQ==
X-Received: by 2002:a17:906:e0d5:b0:a77:c26c:a56f with SMTP id a640c23a62f3a-a7a01130925mr304316966b.3.1721303459640;
        Thu, 18 Jul 2024 04:50:59 -0700 (PDT)
Received: from localhost ([193.197.128.38])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a79bc820d2fsm546971466b.200.2024.07.18.04.50.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 04:50:59 -0700 (PDT)
Date: Thu, 18 Jul 2024 13:50:57 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Farouk Bouabid <farouk.bouabid@cherry.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] pwm: add mule pwm-over-i2c driver
Message-ID: <fgpb3aswlk25kkziiwe62cjk5ajwx6xy6xvyfzlx35uc7quzwh@cov5otcowkgv>
References: <20240529-buzzer_support-v1-0-fd3eb0a24442@cherry.de>
 <20240529-buzzer_support-v1-2-fd3eb0a24442@cherry.de>
 <5hd7fndgivgusx76wq6mbvgefngd3tllqsfsk6pppbphchczte@ujagkep4miet>
 <25d71c19-6e94-477d-8d04-758015ca4b2c@cherry.de>
 <e7b3bfpvtrvt5g637yy7qxsbvfiylyzrjvwsro4hzp5t6cmeux@eqafx3k7oaks>
 <33d93798-459b-4d33-ac59-623a68ea48cf@cherry.de>
MIME-Version: 1.0
In-Reply-To: <33d93798-459b-4d33-ac59-623a68ea48cf@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_045101_929716_924E2A3D 
X-CRM114-Status: GOOD (  18.89  )
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
Content-Type: multipart/mixed; boundary="===============1741860053484529791=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1741860053484529791==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ddsoalw7wih372qx"
Content-Disposition: inline


--ddsoalw7wih372qx
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Quentin,

On Wed, Jul 17, 2024 at 10:48:52AM +0200, Quentin Schulz wrote:
> On 7/15/24 5:09 PM, Uwe Kleine-K=F6nig wrote:
> > On Mon, Jul 15, 2024 at 02:16:15PM +0200, Quentin Schulz wrote:
> > > To give a bit more info on this, there are two possible flavors of th=
e MCU,
> > > ATtiny 816 (datasheet: https://ww1.microchip.com/downloads/en/DeviceD=
oc/ATtiny416-816-DataSheet-DS40001913B.pdf)
> > > and STM32F072CB (datasheet: https://www.st.com/content/ccc/resource/t=
echnical/document/reference_manual/c2/f8/8a/f2/18/e6/43/96/DM00031936.pdf/f=
iles/DM00031936.pdf/jcr:content/translations/en.DM00031936.pdf).
> > >=20
> > > FYI, on ATtiny, we use TCA in single-slope PWM generation mode and PE=
RBUF
> > > and CMP2BUF as period and duty-cycle registers. On STM32, we use TIM1=
5 in
> > > PWM mode and ARR and CCR1 as period and duty-cycle registers.
> >=20
> > Wouldn't it be more natural with these to have duty in a base-2 register
> > for duty, in the assumption that your MCUs habe this, too?
>=20
> Not sure to understand what you meant by base-2 register here? I am guess=
ing
> you rather wanted to suggest a different unit/representation of the duty
> cycle in the register in the FW API?

For humans 100 as maximal value for a register is natural, but hardware
usually uses binary representation ("base-2") for values and usually a
register (or bit field) is used completely. That is, valid values range
beween 0 and 2^n (or 2^n - 1) for some n.

Note this discussion isn't really relevant to the driver. Just me
wondering about the hardware design. So if you don't want to follow up,
that's fine for me.

Best regards
Uwe

--ddsoalw7wih372qx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaZAYsACgkQj4D7WH0S
/k4txQgAm2WzqXl0JXzy98Aebusbt2VhAwr2jKTv4YxBaue6sXmXUxAWnguTQCxy
nLoe42a8AStJHRpj8fo1gZe2/2cBr+/0gr6+/VnMvSl4mcMeU6Djur4GTUrMLq52
q73wDi1ujB/D3EqSiBv9lDQazE3HE27hiEIl3DtftfHURQcXW6Lcv34Px2opdkK5
6hwJdNw9orw6h15+QblnBv4SCDNgzf8F3qPR9YNZneGIBkkLPInBSEeRYuGZpOX6
FdAcYHdocdWg7b80RVgEWiDsupOOhEM/UWvxypLeA3/5GnZokkuEli0w8DaYBvl4
E59r+LLHZgfIgeWdZhBw31y8J0G83w==
=3jTY
-----END PGP SIGNATURE-----

--ddsoalw7wih372qx--


--===============1741860053484529791==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1741860053484529791==--

