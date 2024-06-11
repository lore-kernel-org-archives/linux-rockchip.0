Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 586ECC27C65
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 22:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LyA8SQN2y6gBUepwOtLYgIZ2RC1D9rspsvrrpQ7yFo4=; b=U0StWe0oy9nQr/hhlQ61dECmVa
	wRLR2+t+iSis19dxQboa0Zu2zERrngKCvO3WOPp5hkAH3zrwOAM/zbwlH30D1DcMqmxLv+djR67sH
	ed18JWzKBMnpWN/czKZufHnEiIif57n8ZboAvjMZksvpL+epE0R4Zf3X1+sDiTVcKIJQw9z7NcCJp
	CQnB+JTTUQZCFd7u1zLL9GpgticS2IX/of2cjvyVsn+YIjwV2N38SraRyYRspHt/g8WrVKeFBCg9A
	JmArXfOv/9waDZ/jSFtLvyq/krC5nIHlFdeCbXiylZF4JQXPV2+KQGNECa18G1L2QqyK0/6x9PhHj
	MmRCM+aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH9jq-0000000ANDz-0nLI;
	Tue, 11 Jun 2024 22:13:10 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH9jm-0000000ANCt-0qrP
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 22:13:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=9IZI
	pdPzR9DR3MCp+AyrdUtLauredv0OWoF1WwgDZ50=; b=C+9rKeQklbHFCmWU7lCN
	bd8ThpgmhSUQLC44BUTfUIFi1T9mP5KlAvXOtTzCHelbdlfqPj5hvilEzhXrxgl4
	hUy75vkRoK1CUGXJx8D4RVm/EI6XGDfe6RftoFbE8H+rEJs5pF1x3fn+4ASgDy1N
	44u1quA9f3LqtE2ervu7TH49wlNaQfre15O4lJ0btF9sIhbri3Zk+vl+jYPzvbdt
	u2tELFsDEem2FFj9tLB4pO9RjnpbnSwTllvJNM+B5mb8FMQMwUFLrsyNe/0e1A+2
	vDv+kywG35AuhNozt5g2fhsz6gcHqf2ntk84/EjuFRVzNMFF/o3ciAcDo7/Lpix+
	Bw==
Received: (qmail 574999 invoked from network); 12 Jun 2024 00:12:59 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 12 Jun 2024 00:12:59 +0200
X-UD-Smtp-Session: l3s3148p1@bqWOkaQaeIxehhrL
Date: Wed, 12 Jun 2024 00:12:59 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>, 
	Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 0/7] Add Mule I2C multiplexer support
Message-ID: <ijj3xp5oacsyhygobi4nynerd6dxgfjxh5uzj6quvzraqrkf7x@eejujooa6odi>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Farouk Bouabid <farouk.bouabid@cherry.de>, Peter Rosin <peda@axentia.se>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
MIME-Version: 1.0
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_151307_155327_22267DDF 
X-CRM114-Status: GOOD (  16.58  )
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
Content-Type: multipart/mixed; boundary="===============8730102020384471622=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8730102020384471622==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bkvmb62faawxzci5"
Content-Disposition: inline


--bkvmb62faawxzci5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Farouk,

first of all, thanks for the patches and tackling this problem. I have
to say that I have many concerns on high-level, though. I hope to be
able to give helpful recommendations.

> Mule is an mcu that emulates a set of I2C devices which are reachable
> through an I2C-mux.

I am not 100% convinced this is really a mux. Another possible DT
representation could be (pseudo-code):

	i2c-bus {
		mpu@42 {
			comptible = "mule";
			reg = <0x42>;

			subdev@0 {
				compatible = "subdev"
				reg = <0x00>;
			}

			subdev@1 {

			...

		}

	}

Dunno if MFD can handle that. Maybe someone else knows?

If all fails, I think you could write an I2C mux-driver which uses the
above DT snippet. It should then do:

- write the mule config register according to 'reg' of the subdev
- replace 'addr' in all 'i2c_msgs' to the addr of the parent mule device
- i2ctransfer
- restore 'addr' in all 'i2c_msgs' to the original addr

A little simiar of what i2c-atr.c does, check
Documentation/i2c/i2c-address-translators.rst

> The emulated devices share a single I2C address with the mux itself
> where the requested register is what determines which logic is executed
> (muxing logic or device logic):

This design is... unfortunate, if you ask me. But well, things happen.

> The current I2C-mux implementation does not allow the mux to use the
> I2C address of a child device. As a workaround, A new I2C-adapter quirk is
> introduced to skip the check for conflict between a child device and the
> mux core I2C address when adding the child device.

Not acceptable, sorry. The adapter itself is fine, so this is clearly
not an adapter quirk. The client is what is quirky. I don't want to
maintain patch 1 because of this one "creative" design of a client. I
think we can handle it outside of the I2C core.

So far understandable?

Happy hacking,

   Wolfram

--bkvmb62faawxzci5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmZoy+cACgkQFA3kzBSg
Kba3axAAgZhZa5f9hUe4bSz0GKDi69RP0Z8Vz038So0ej0oN/S6UtQikhS+zh1Gb
ZJqvCEfw2Gzm6dK8QgpLNg8FsUCpiT1m2ZIQItoKUELSzGaL1R3svGj1cZuR268D
Zr6gdsbFDjZwg+Fa8roHfCB6+dyIyYuvcHPgckpFtNB24knAN7l13wlW+1Z32/xP
1OEOpThyD+Wq4R6gvJ3Yg0ZnJIJEu+qH+9Pm2ItalPsHgoZNtVTEKkCyLbki2dzZ
5j+d3sl7avBP6mEeOFSCO+cJtf+D6Z8VPx/SlA7A+iSCJugU4t03u/OJyyDDvmhj
bynHKAh6CHdzVlNdFvEjP4Hk5wPpqqcvzGDgNt+4zjq1zSf19hlaSS0fVfgT8QsN
IjRMH/5nsHEadFlOwTkSKIbG5RTM3WFbAdtnWrh6UgYVZyDAClm4AsC1esxgNOOm
kWCJV8yrc82BFovMQs0fTwZT2fMaLZoQNGGtySg9wtz+SyQfXTAkM59W2QuXzxpb
S4OUDgdv1lOuW9PG2tG0rdLlwkG0qTYKzwDrdcKoSMNjbWJcRC++/c9++juwPJv0
fM9oS0/wZjRGiDZkXMbKhdaQ5EoJOZGJxsZylgeHt8G77Rqy06nAkVqZBXRb1CP0
VWeWBqaEGvpliLkVTp7Psfd6G0TaMza0/geIiOxw/puIBHVMbfU=
=guh5
-----END PGP SIGNATURE-----

--bkvmb62faawxzci5--


--===============8730102020384471622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8730102020384471622==--

